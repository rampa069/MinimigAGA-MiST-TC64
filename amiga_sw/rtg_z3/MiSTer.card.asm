; MiSTer.card - P96 RTG driver for the Zorro III RTG board of the A4000
; Minimig cores: Maximig's and AMIGA4000-MiSTer (MiSTer) and MinimigAGA's
; MiST, SiDi and NeptUNO builds, one driver for all of them.
;
; The board (mfr $139C, product $30, 16 MB) is found through
; expansion.library: its first 8 MB are the framebuffer, its registers start
; at board + $800100, its CLUT at board + $800400. The ID register (+$0E)
; tells the two video backends apart:
;
;   $5001  MiSTer: the HPS scaler shows the framebuffer; ADDR, FORMAT,
;          ENABLE, HSIZE, VSIZE, STRIDE (Maximig's MiSTer.card 0.2, whose
;          code this is); ADDR is the DDR3 address (FB_BASE + offset)
;   $832x  MiST: the chipset makes the timing (Agnus' programmable sync),
;          the board fetches the pixels with a clock divider; ADDR,
;          divider/VBEnd/CLUT, 16-bit, ADDR2 (minimig.card's code, the
;          routines prefixed mist_); ADDR is the offset in the board
;
; The board having a ConfigDev also lets mmu.library tag both halves.

; Adapted by Alastair M. Robinson from a similar project
; for the Replay board - WWW.FPGAArcade.COM

; Replay.card - P96 RTG driver for the REPLAY Amiga core
; Copyright (C) FPGAArcade community
;
; Contributors : Jakub Bednarski, Mike Johnson, Jim Drew, Erik Hemming, Nicolas Hamel
;
; This software is licensed under LPGLv2.1 ; see LICENSE file


; 0.1 - Cut down to the bare bones...

        machine 68020

        include P96/P96BoardInfo.i
        include P96/P96ModeInfo.i
        include P96/P96CardStruct.i

        include hardware/custom.i
        include hardware/intbits.i
        include exec/exec.i
        include lvo/exec_lib.i

; If you define the Debug Symbol make sure the monitor file is in
; sys:storage/monitors - debug output seems to crash the system if
; it happens during startup.

;debug

;HasBlitter
;blitterhistory
;HasSprite

beacon:
        move.l  #8191,d0
.loop
        move.w  d0,$dff180
        dbf     d0,.loop
        rts

BUG MACRO
        IFD     debug

        ifnc    "","\9"
        move.l  \9,-(sp)
        endc
        ifnc    "","\8"
        move.l  \8,-(sp)
        endc
        ifnc    "","\7"
        move.l  \7,-(sp)
        endc
        ifnc    "","\6"
        move.l  \6,-(sp)
        endc
        ifnc    "","\5"
        move.l  \5,-(sp)
        endc
        ifnc    "","\4"
        move.l  \4,-(sp)
        endc
        ifnc    "","\3"
        move.l  \3,-(sp)
        endc
        ifnc    "","\2"
        move.l  \2,-(sp)
        endc

        jsr     bugprintf

        dc.b    \1,$d,$a,0
        even

        adda.w  #(NARG-1)*4,sp

        ENDC
        ENDM

****************************************************************************
;       section ReplayRTG,code
****************************************************************************
MEMORY_SIZE   EQU $800000   ; 8MB framebuffer
BOARD_MFR     EQU $139C     ; the Zorro III RTG board
BOARD_PROD    EQU $30
REGISTER_OFFS EQU $800100   ; the registers, from the board's base
_LVOFindConfigDev EQU -72
cd_Flags      EQU 14        ; struct ConfigDev
cd_BoardAddr  EQU 32
CDB_CONFIGME  EQU 1

FB_BASE EQU $27000000 ; MiSTer physical memory address

; B80100:B80101 :  8:0 : ADDR[24:16]
; B80102:B80103 : 15:0 : ADDR[15:0]
; B80104:B80105 : 5:0  : FORMAT[5:0]
; B80106:B80107 :    0 : ENABLE
; B80108:B80109 : 11:0 : HSIZE
; B8010A:B8010B : 11:0 : VSIZE
; B8010C:B8010D : 13:0 : STRIDE
; B8010E:B8010F :  7:0 : ID = 50 / VERSION = 01

; B80400..B807FF CLUT : 256 * 32bits 00 / RR / GG / BB

REG_ADDRESS EQU 0
REG_FORMAT  EQU 4
REG_ENABLE  EQU 6
REG_HSIZE   EQU 8
REG_VSIZE   EQU 10
REG_STRIDE  EQU 12
REG_ID      EQU 14
REG_PALETTE EQU $300

; the MiST backend (minimig.card's registers)
MREG_CONTROL  EQU 4         ; divider (5-0), VBEnd (12-6), ext (14), CLUT (15)
MREG_16BIT    EQU 6
MREG_ADDRESS2 EQU 8         ; the second framebuffer, for screen dragging

ID_MISTER     EQU $5001
ID_MIST       EQU $8320     ; (and $fff0)
BACKEND_MIST  EQU 1

; BoardInfo fields and functions past Maximig's P96BoardInfo.i (WinUAE's
; picasso96_win.h)
PSSO_BoardInfo_SetSplitPosition EQU 458
PSSO_BoardInfo_GetVSyncState    EQU 486
PSSO_BoardInfo_YSplit           EQU 1636

; RGBFTYPE and BoardInfo flags (picasso96_win.h)
RGBFB_CLUT            EQU 1
RGBFB_R5G6B5          EQU 10
RGBFB_R5G5B5          EQU 11
RGBFF_CLUT            EQU 1<<RGBFB_CLUT
RGBFF_R5G6B5          EQU 1<<RGBFB_R5G6B5
RGBFF_R5G5B5          EQU 1<<RGBFB_R5G5B5
BIF_VBLANKINTERRUPT   EQU 1<<4
BIF_VGASCREENSPLIT    EQU 1<<6
BIF_GRANTDIRECTACCESS EQU 1<<26

CardData_LineCompare = PSSO_BoardInfo_CardData+22
CardData_IntEnabled  = PSSO_BoardInfo_CardData+24
CardData_Backend     = PSSO_BoardInfo_CardData+26

; what FindCard and InitCard saw, in the library after the card structure
; (tools/rtgtest reads it): the calls, FindCard's way out (1 no board,
; 2 not CONFIGME, 3 an unknown ID, 4 MiSTer, 5 MiST), the flags, the ID
DBG_FINDS   EQU CARD_SIZEOF+0
DBG_EXIT    EQU CARD_SIZEOF+2
DBG_INITS   EQU CARD_SIZEOF+4
DBG_FLAGS   EQU CARD_SIZEOF+6
DBG_ID      EQU CARD_SIZEOF+8
DBG_SIZEOF  EQU CARD_SIZEOF+12

;------------------------------------------------------------------------------
ProgStart:
;------------------------------------------------------------------------------

        moveq   #-1,d0
        rts

        IFD     debug
        bra.b   _bugprintf_end
bugprintf:
        movem.l d0-d1/a0-a3/a6,-(sp)
        move.l  $4.w,a6
        move.l  28(sp),a0
        lea     32(sp),a1
        lea     .putch(pc),a2
        move.l  a6,a3
        jsr     beacon
        jsr     -522(a6)                ; _LVORawDoFmt

.skip   move.l  28(sp),a0
.end:   move.b  (a0)+,d0
        bne.b   .end
        move.l  a0,d0
        addq.l  #1,d0
        and.l   #$fffffffe,d0
        move.l  d0,28(sp)
        movem.l (sp)+,d0-d1/a0-a3/a6
        rts

.putch: move.l	a6,-(sp)
        move.l  a3,a6
        jmp     -516(a6)                ; _LVORawPutChar (execPrivate9)
        move.l	(sp)+,a6
_bugprintf_end:
        rts
        ENDC

;------------------------------------------------------------------------------
RomTag:
;------------------------------------------------------------------------------

        dc.w    RTC_MATCHWORD
        dc.l    RomTag
        dc.l    ProgEnd
        dc.b    RTF_AUTOINIT    ;RT_FLAGS
        dc.b    1               ;RT_VERSION
        dc.b    NT_LIBRARY      ;RT_TYPE
        dc.b    0               ;RT_PRI
        dc.l    MinimigCard
        dc.l    IDString
        dc.l    InitTable
CardName:
        dc.b    'MiSTer',0
; the library's name must be the file's: built a second time as
; minimig.card (MINIMIG_NAME), for the monitors whose BOARDTYPE is minimig
MinimigCard:
        IFD     MINIMIG_NAME
        dc.b    'minimig.card',0
        dc.b    '$VER: '
IDString:
        dc.b    'minimig.card 0.3 (25.Oct.2026) Zorro III, MiSTer and MiST',0
        ELSE
        dc.b    'MiSTer.card',0,0
        dc.b    '$VER: '
IDString:
        dc.b    'MiSTer.card 0.3 (25.Oct.2026) Zorro III, MiSTer and MiST',0
        ENDC
        dc.b    0
expansionLibName:
        dc.b    'expansion.library',0
intuitionLibName:
        dc.b    'intuition.library',0
        cnop    0,4

InitTable:
        dc.l    DBG_SIZEOF      ;DataSize
        dc.l    FuncTable       ;FunctionTable
        dc.l    DataTable       ;DataTable
        dc.l    InitRoutine
FuncTable:
        dc.l    Open
        dc.l    Close
        dc.l    Expunge
        dc.l    ExtFunc
        dc.l    FindCard
        dc.l    InitCard
        dc.l    -1
DataTable:
        INITBYTE        LN_TYPE,NT_LIBRARY
        INITBYTE        LN_PRI,206
        INITLONG        LN_NAME,MinimigCard
        INITBYTE        LIB_FLAGS,LIBF_SUMUSED|LIBF_CHANGED
        INITWORD        LIB_VERSION,1
        INITWORD        LIB_REVISION,0
        INITLONG        LIB_IDSTRING,IDString
        INITLONG        CARD_NAME,CardName
        dc.w            0,0

;------------------------------------------------------------------------------
InitRoutine:
;------------------------------------------------------------------------------

;       BUG "Minimig.card InitRoutine()"

        movem.l a5,-(sp)
        movea.l d0,a5
        move.l  a6,CARD_EXECBASE(a5)
        move.l  a0,CARD_SEGMENTLIST(a5)
        lea     expansionLibName(pc),a1
        moveq   #0,d0
        jsr     _LVOOpenLibrary(a6)

        move.l  d0,CARD_EXPANSIONBASE(a5)
        beq.s   .fail

        lea     intuitionLibName(pc),a1
        moveq   #0,d0
        jsr     _LVOOpenLibrary(a6)
        move.l  d0,CARD_INTUITIONBASE(a5)
        bne.s   .exit

.fail
        movem.l d7/a5/a6,-(sp)
        move.l  #(AT_Recovery|AG_OpenLib|AO_ExpansionLib),d7
        movea.l $4.w,a6
        jsr     _LVOAlert(a6)

        movem.l (sp)+,d7/a5/a6
.exit:
        move.l  a5,d0
        movem.l (sp)+,a5
        rts

;------------------------------------------------------------------------------
Open:
;------------------------------------------------------------------------------

        addq.w  #1,LIB_OPENCNT(a6)
        bclr    #3,CARD_FLAGS(a6)

        IFD blitterhistory
        move.l  a0,-(sp)
        lea     $80000,a0
        moveq.l #16,d0
.fill:
        clr.l   (a0)+
        dbra    d0,.fill

        move.l  (sp)+,a0
        ENDC

        move.l  a6,d0
        rts

;------------------------------------------------------------------------------
Close:
;------------------------------------------------------------------------------

        moveq   #0,d0
        subq.w  #1,LIB_OPENCNT(a6)
        bne.b   .exit

        btst    #3,CARD_FLAGS(a6)
        beq.b   .exit

        bsr.b   Expunge

.exit:
        rts

;------------------------------------------------------------------------------
Expunge:
;------------------------------------------------------------------------------

        movem.l d2/a5/a6,-(sp)
        movea.l a6,a5
        movea.l CARD_EXECBASE(a5),a6
        tst.w   LIB_OPENCNT(a5)
        beq.b   .remove

        bset    #3,CARD_FLAGS(a5)
        moveq   #0,d0
        bra.b   .exit

.remove:
        move.l  CARD_SEGMENTLIST(a5),d2
        movea.l a5,a1
        jsr     _LVORemove(a6)

        movea.l CARD_EXPANSIONBASE(a5),a1
        jsr     _LVOCloseLibrary(a6)

        moveq   #0,d0
        movea.l a5,a1
        move.w  LIB_NEGSIZE(a5),d0
        suba.l  d0,a1
        add.w   LIB_POSSIZE(a5),d0
        jsr     _LVOFreeMem(a6)

        move.l  d2,d0
.exit:
        movem.l (sp)+,d2/a5/a6
        rts

;------------------------------------------------------------------------------
ExtFunc:
;------------------------------------------------------------------------------

        moveq   #0,d0
        rts

;------------------------------------------------------------------------------
FindCard:
;------------------------------------------------------------------------------
;  BOOL FindCard(struct BoardInfo *bi)
;

;  FindCard is called in the first stage of the board initialisation and
;  configuration and is used to look if there is a free and unconfigured
;  board of the type the driver is capable of managing. If it finds one,
;  it immediately reserves it for use by Picasso96, usually by clearing
;  the CDB_CONFIGME bit in the flags field of the ConfigDev struct of
;  this expansion card. But this is only a common example, a driver can
;  do whatever it wants to mark this card as used by the driver. This
;  mechanism is intended to ensure that a board is only configured and
;  used by one driver. FindBoard also usually fills some fields of the
;  BoardInfo struct supplied by the caller, the rtg.library, for example
;  the MemoryBase, MemorySize and RegisterBase fields.

        movem.l a2/a3/a6,-(sp)
        movea.l a0,a2
        movea.l a6,a3                   ; the card
        addq.w  #1,DBG_FINDS(a3)
        move.w  #1,DBG_EXIT(a3)
        movea.l CARD_EXPANSIONBASE(a6),a6
        suba.l  a0,a0                   ; from the start of the list
        move.l  #BOARD_MFR,d0
        moveq   #BOARD_PROD,d1
        jsr     _LVOFindConfigDev(a6)
        tst.l   d0
        beq.s   .none
        movea.l d0,a0
        move.b  cd_Flags(a0),DBG_FLAGS(a3)
        move.w  #2,DBG_EXIT(a3)
        btst    #CDB_CONFIGME,cd_Flags(a0)
        beq.s   .none                   ; already taken by another driver
        movea.l cd_BoardAddr(a0),a1
        move.w  REGISTER_OFFS+REG_ID(a1),d0
        move.w  d0,DBG_ID(a3)
        move.w  #4,DBG_EXIT(a3)
        moveq   #0,d1
        cmp.w   #ID_MISTER,d0
        beq.s   .found
        move.w  #5,DBG_EXIT(a3)
        moveq   #BACKEND_MIST,d1
        and.w   #$fff0,d0
        cmp.w   #ID_MIST,d0
        beq.s   .found
        move.w  #3,DBG_EXIT(a3)
        bra.s   .none                   ; a board this driver does not know
.found:
        move.w  d1,CardData_Backend(a2)
        bclr    #CDB_CONFIGME,cd_Flags(a0)
        move.l  cd_BoardAddr(a0),d0
        move.l  #MEMORY_SIZE,PSSO_BoardInfo_MemorySize(a2)
        move.l  d0,PSSO_BoardInfo_MemoryBase(a2)
        addi.l  #REGISTER_OFFS,d0
        move.l  d0,PSSO_BoardInfo_RegisterBase(a2)
        moveq   #-1,d0
        bra.s   .exit
.none:
        moveq   #0,d0
.exit:
        movem.l (sp)+,a2/a3/a6
        rts

;------------------------------------------------------------------------------
InitCard:
;------------------------------------------------------------------------------
;  a0:  struct BoardInfo

        movem.l a2/a5/a6,-(sp)
        movea.l a0,a2
        addq.w  #1,DBG_INITS(a6)

        lea     CardName(pc),a1
        move.l  a1,PSSO_BoardInfo_BoardName(a2)
        move.l  #10,PSSO_BoardInfo_BoardType(a2)
        move.l  #0,PSSO_BoardInfo_GraphicsControllerType(a2)
        move.l  #0,PSSO_BoardInfo_PaletteChipType(a2)

        ori.w   #2,PSSO_BoardInfo_RGBFormats(a2)   ; CLUT
        ori.w   #8,PSSO_BoardInfo_RGBFormats(a2)   ; RGBFB_B8G8R8
        ori.w   #16,PSSO_BoardInfo_RGBFormats(a2)  ; RGBFB_R5G6B5PC 
        ori.w   #256,PSSO_BoardInfo_RGBFormats(a2) ; RGBFB_R8G8B8A8
        
        move.w  #8,PSSO_BoardInfo_BitsPerCannon(a2)
        move.l  #MEMORY_SIZE-$40000,PSSO_BoardInfo_MemorySpaceSize(a2)
        move.l  PSSO_BoardInfo_MemoryBase(a2),d0
        move.l  d0,PSSO_BoardInfo_MemorySpaceBase(a2)
        addi.l  #MEMORY_SIZE-$4000,d0
        move.l  d0,PSSO_BoardInfo_MouseSaveBuffer(a2)
        
        ori.l   #(1<<20),PSSO_BoardInfo_Flags(a2)       ; BIF_INDISPLAYCHAIN
        ;ori.l   #(1<<1),PSSO_BoardInfo_Flags(a2)        ; BIF_NOMEMORYMODEMIX

        lea     SetSwitch(pc),a1
        move.l  a1,PSSO_BoardInfo_SetSwitch(a2)
        lea     SetDAC(pc),a1
        move.l  a1,PSSO_BoardInfo_SetDAC(a2)
        lea     SetGC(pc),a1
        move.l  a1,PSSO_BoardInfo_SetGC(a2)
        lea     SetPanning(pc),a1
        move.l  a1,PSSO_BoardInfo_SetPanning(a2)
        lea     CalculateBytesPerRow(pc),a1
        move.l  a1,PSSO_BoardInfo_CalculateBytesPerRow(a2)
        lea     CalculateMemory(pc),a1
        move.l  a1,PSSO_BoardInfo_CalculateMemory(a2)
        lea     GetCompatibleFormats(pc),a1
        move.l  a1,PSSO_BoardInfo_GetCompatibleFormats(a2)
        lea     SetColorArray(pc),a1
        move.l  a1,PSSO_BoardInfo_SetColorArray(a2)
        lea     SetDPMSLevel(pc),a1
        move.l  a1,PSSO_BoardInfo_SetDPMSLevel(a2)
        lea     SetDisplay(pc),a1
        move.l  a1,PSSO_BoardInfo_SetDisplay(a2)
        lea     SetMemoryMode(pc),a1
        move.l  a1,PSSO_BoardInfo_SetMemoryMode(a2)
        lea     SetWriteMask(pc),a1
        move.l  a1,PSSO_BoardInfo_SetWriteMask(a2)
        lea     SetReadPlane(pc),a1
        move.l  a1,PSSO_BoardInfo_SetReadPlane(a2)
        lea     SetClearMask(pc),a1
        move.l  a1,PSSO_BoardInfo_SetClearMask(a2)
        lea     WaitVerticalSync(pc),a1
        move.l  a1,PSSO_BoardInfo_WaitVerticalSync(a2)
;       lea     (Reserved5,pc),a1
;       move.l  a1,(PSSO_BoardInfo_Reserved5,a2)
        lea     SetClock(pc),a1
        move.l  a1,PSSO_BoardInfo_SetClock(a2)
        lea     ResolvePixelClock(pc),a1
        move.l  a1,PSSO_BoardInfo_ResolvePixelClock(a2)
        lea     GetPixelClock(pc),a1
        move.l  a1,PSSO_BoardInfo_GetPixelClock(a2)

;        lea     AllocCardMem(pc),a1
;        move.l  a1,PSSO_BoardInfo_AllocCardMem(a2)
;        lea     FreeCardMem(pc),a1
;        move.l  a1,PSSO_BoardInfo_FreeCardMem(a2)

        move.l  #113440000,PSSO_BoardInfo_MemoryClock(a2)

        move.l  #1,(PSSO_BoardInfo_PixelClockCount+0,a2)
        move.l  #1,(PSSO_BoardInfo_PixelClockCount+4,a2)
        move.l  #1,(PSSO_BoardInfo_PixelClockCount+8,a2)
        move.l  #1,(PSSO_BoardInfo_PixelClockCount+12,a2)
        move.l  #1,(PSSO_BoardInfo_PixelClockCount+16,a2)
;- Planar
;- Chunky
;- HiColor
;- Truecolor
;- Truecolor + Alpha

        move.w  #4095,(PSSO_BoardInfo_MaxHorValue+0,a2)
        move.w  #4095,(PSSO_BoardInfo_MaxVerValue+0,a2)
        move.w  #4095,(PSSO_BoardInfo_MaxHorValue+2,a2)
        move.w  #4095,(PSSO_BoardInfo_MaxVerValue+2,a2)
        move.w  #4095,(PSSO_BoardInfo_MaxHorValue+4,a2)
        move.w  #4095,(PSSO_BoardInfo_MaxVerValue+4,a2)
        move.w  #4095,(PSSO_BoardInfo_MaxHorValue+6,a2)
        move.w  #4095,(PSSO_BoardInfo_MaxVerValue+6,a2)
        move.w  #4095,(PSSO_BoardInfo_MaxHorValue+8,a2)
        move.w  #4095,(PSSO_BoardInfo_MaxVerValue+8,a2)

        move.w  #2048,(PSSO_BoardInfo_MaxHorResolution+0,a2)
        move.w  #2048,(PSSO_BoardInfo_MaxVerResolution+0,a2)
        move.w  #2048,(PSSO_BoardInfo_MaxHorResolution+2,a2)
        move.w  #2048,(PSSO_BoardInfo_MaxVerResolution+2,a2)
        move.w  #2048,(PSSO_BoardInfo_MaxHorResolution+4,a2)
        move.w  #2048,(PSSO_BoardInfo_MaxVerResolution+4,a2)
        move.w  #2048,(PSSO_BoardInfo_MaxHorResolution+6,a2)
        move.w  #2048,(PSSO_BoardInfo_MaxVerResolution+6,a2)
        move.w  #2048,(PSSO_BoardInfo_MaxHorResolution+8,a2)
        move.w  #2048,(PSSO_BoardInfo_MaxVerResolution+8,a2)

;        lea     PSSO_BoardInfo_HardInterrupt(a2),a1
;        lea     VBL_ISR(pc),a0
;        move.l  a0,IS_CODE(a1)
;        moveq   #INTB_VERTB,d0
;        move.l  $4,a6
;        jsr     _LVOAddIntServer(a6)

;       FIXME - disable vblank interrupt for now.
;       ori.l   #(1<<4),PSSO_BoardInfo_Flags(a2)        ; BIF_VBLANKINTERRUPT
;       lea     SetInterrupt(pc),a1
;       move.l  a1,PSSO_BoardInfo_SetInterrupt(a2)

        IFD     HasBlitter
        ori.l   #(1<<15),PSSO_BoardInfo_Flags(a2)       ; BIF_BLITTER
        lea     BlitRectNoMaskComplete(pc),a1
        move.l  a1,PSSO_BoardInfo_BlitRectNoMaskComplete(a2)
        lea     BlitRect(pc),a1
        move.l  a1,PSSO_BoardInfo_BlitRect(a2)
        lea     WaitBlitter(pc),a1
        move.l  a1,PSSO_BoardInfo_WaitBlitter(a2)
        ENDC

        IFD     HasSprite
        ori.l   #(1<<0),PSSO_BoardInfo_Flags(a2)        ; BIF_HARDWARESPRITE
        lea     SetSprite(pc),a1
        move.l  a1,PSSO_BoardInfo_SetSprite(a2)
        lea     SetSpritePosition(pc),a1
        move.l  a1,PSSO_BoardInfo_SetSpritePosition(a2)
        lea     SetSpriteImage(pc),a1
        move.l  a1,PSSO_BoardInfo_SetSpriteImage(a2)
        lea     SetSpriteColor(pc),a1
        move.l  a1,PSSO_BoardInfo_SetSpriteColor(a2)
        ENDC

        ori.l   #(1<<3),PSSO_BoardInfo_Flags(a2)        ; BIF_CACHEMODECHANGE
        move.l  PSSO_BoardInfo_MemoryBase(a2),(PSSO_BoardInfo_MemorySpaceBase,a2)
        move.l  PSSO_BoardInfo_MemorySize(a2),(PSSO_BoardInfo_MemorySpaceSize,a2)

        cmp.w   #BACKEND_MIST,CardData_Backend(a2)
        bne.s   .mister
        bsr     mist_InitCard
.mister:
        movea.l PSSO_BoardInfo_RegisterBase(a2),a0

        moveq   #-1,d0
.exit:
        movem.l (sp)+,a2/a5/a6
        rts

;------------------------------------------------------------------------------
SetSwitch:
;------------------------------------------------------------------------------
;  a0:  struct BoardInfo
;  d0.w:                BOOL state
;  this function should set a board switch to let the Amiga signal pass
;  through when supplied with a 0 in d0 and to show the board signal if
;  a 1 is passed in d0. You should remember the current state of the
;  switch to avoid unneeded switching. If your board has no switch, then
;  simply supply a function that does nothing except a RTS.
;
;  NOTE: Return the opposite of the switch-state. BDK

        move.w  PSSO_BoardInfo_MoniSwitch(a0),d1
        andi.w  #$FFFE,d1
        tst.b   d0
        beq.b   .off

        ori.w   #$0001,d1
.off:
        move.w  PSSO_BoardInfo_MoniSwitch(a0),d0
        cmp.w   d0,d1
        beq.b   .done

        move.w  d1,PSSO_BoardInfo_MoniSwitch(a0)

        andi.l  #$1,d1
        movea.l PSSO_BoardInfo_RegisterBase(a0),a0
        move.w  d1,REG_ENABLE(a0)
        BUG     "RTG:DisplaySwitch = %lx",d1
.done:
    ;   bsr.w   SetInterrupt
        andi.w  #$0001,d0
        rts

;------------------------------------------------------------------------------
SetDAC:
;------------------------------------------------------------------------------
;  a0: struct BoardInfo
;  d7: RGBFTYPE RGBFormat
;  This function is called whenever the RGB format of the display changes,
;  e.g. from chunky to TrueColor. Usually, all you have to do is to set
;  the RAMDAC of your board accordingly.

        movea.l PSSO_BoardInfo_RegisterBase(a0),a0
        move.w  .setdac_Format(pc,d7.l*2),d0
        move.w  d0,REG_FORMAT(a0)
        BUG     "RTG:DisplayFormat = %lx",d0
        rts

;  [2:0] : 011=8bpp(palette) 100=16bpp 101=24bpp 110=32bpp
;  [3]   : 0=16bits 565 1=16bits 1555
;  [4]   : 0=RGB  1=BGR (for 16/24/32 modes)
;  [5]   : Swap Bytes

.setdac_Format:
        dc.w    3          ;  1    RGBFB_NONE      planar mode (the name is historical)
        dc.w    3      +32 ;+ 2    RGBFB_CLUT      palette mode, set colors when opening screen using tags or use SetRGB32/LoadRGB32(...)
        dc.w    5          ;  4    RGBFB_R8G8B8    TrueColor RGB (8 bit each)
        dc.w    5   +16+32 ;+ 8    RGBFB_B8G8R8    TrueColor BGR (8 bit each)
        dc.w    4   +16+32 ;+ 16   RGBFB_R5G6B5PC  HiColor16 (5 bit R, 6 bit G, 5 bit B), format: gggbbbbbrrrrrggg
        dc.w    4 +8       ;  32   RGBFB_R5G5B5PC  HiColor15 (5 bit each), format: gggbbbbb0rrrrrgg
        dc.w    6          ;  64   RGBFB_A8R8G8B8  4 Byte TrueColor ARGB (A unused alpha channel)
        dc.w    6   +16    ;  128  RGBFB_A8B8G8R8  4 Byte TrueColor ABGR (A unused alpha channel)
        dc.w    6      +32 ;+ 256  RGBFB_R8G8B8A8  4 Byte TrueColor RGBA (A unused alpha channel)
        dc.w    6   +16    ;  512  RGBFB_B8G8R8A8  4 Byte TrueColor BGRA (A unused alpha channel)
        dc.w    4          ;  1024 RGBFB_R5G6B5    HiColor16 (5 bit R, 6 bit G, 5 bit B), format: rrrrrggggggbbbbb
        dc.w    4 +8       ;  2048 RGBFB_R5G5B5    HiColor15 (5 bit each), format: 0rrrrrgggggbbbbb
        dc.w    4          ;  4096 RGBFB_B5G6R5PC  HiColor16 (5 bit R, 6 bit G, 5 bit B), format: gggrrrrrbbbbbggg
        dc.w    4 +8+16    ;  8192 RGBFB_B5G5R5PC  HiColor15 (5 bit each), format: gggrrrrr0bbbbbbgg
        
;------------------------------------------------------------------------------
SetGC:
;------------------------------------------------------------------------------
;  a0: struct BoardInfo
;  a1: struct ModeInfo
;  d0: BOOL Border
;  This function is called whenever another ModeInfo has to be set. This
;  function simply sets up the CRTC and TS registers to generate the
;  timing used for that screen mode. You should not set the DAC, clocks
;  or linear start adress. They will be set when appropriate by their
;  own functions.

; For MiSTer, just set image size

        move.l  a1,PSSO_BoardInfo_ModeInfo(a0)
        movea.l PSSO_BoardInfo_RegisterBase(a0),a0

        move.w  PSSO_ModeInfo_Width(a1),d0
        moveq   #0,d1
        move.b  PSSO_ModeInfo_Depth(a1),d1
        addq.w  #7,d1
        lsr.w   #3,d1
        mulu.w  d1,d0
        move.w  d0,REG_STRIDE(a0)
        BUG     "RTG:BytesPerLine = %lx",d0
        
        move.w  PSSO_ModeInfo_Width(a1),d0
        move.w  d0,REG_HSIZE(a0)
        BUG     "RTG:HSIZE = %lx",d0
        
        move.w  PSSO_ModeInfo_Height(a1),d0
        move.w  d0,REG_VSIZE(a0)
        BUG     "RTG:VSIZE = %lx",d0
                
        rts

;------------------------------------------------------------------------------
SetPanning:
;------------------------------------------------------------------------------
;  a0: struct BoardInfo
;  a1: UBYTE* Memory
;  d0: WORD Width
;  d1: WORD XOffset
;  d2: WORD YOffset
;  d7: RGBFTYPE RGBFormat
;  This function sets the view origin of a display which might also be
;  overscanned. In register a1 you get the start address of the screen
;  bitmap on the Amiga side. You will have to subtract the starting
;  address of the board memory from that value to get the memory start
;  offset within the board. Then you get the offset in pixels of the
;  left upper edge of the visible part of an overscanned display. From
;  these values you will have to calculate the LinearStartingAddress
;  fields of the CRTC registers.

        move.l  a1,d0
        sub.l   PSSO_BoardInfo_MemoryBase(a0),d0
        movea.l PSSO_BoardInfo_RegisterBase(a0),a0
        add.l   #FB_BASE,d0
        BUG     "RTG:ADDRESS = %lx",d0
        move.l  d0,REG_ADDRESS(a0)
        rts
        
;------------------------------------------------------------------------------
CalculateBytesPerRow:
;------------------------------------------------------------------------------
;  a0:  struct BoardInfo
;  d0:  uae_u16 Width
;  d7:  RGBFTYPE RGBFormat
;  This function calculates the amount of bytes needed for a line of
;  "Width" pixels in the given RGBFormat.

        cmpi.l  #16,d7
        bcc.b   .exit

        move.w  .base(pc,d7.l*2),d1
        jmp     .base(pc,d1.w)

.base:
        dc.w    .pp_1Bit-.base
        dc.w    .pp_1Byte-.base
        dc.w    .pp_3Bytes-.base
        dc.w    .pp_3Bytes-.base
        dc.w    .pp_2Bytes-.base
        dc.w    .pp_2Bytes-.base
        dc.w    .pp_4Bytes-.base
        dc.w    .pp_4Bytes-.base
        dc.w    .pp_4Bytes-.base
        dc.w    .pp_4Bytes-.base
        dc.w    .pp_2Bytes-.base
        dc.w    .pp_2Bytes-.base
        dc.w    .pp_2Bytes-.base
        dc.w    .pp_2Bytes-.base
        dc.w    .pp_2Bytes-.base
        dc.w    .pp_1Byte-.base

.pp_4Bytes:
        add.w   d0,d0
.pp_2Bytes:
        add.w   d0,d0
        bra.b   .exit

.pp_3Bytes:
        move.w  d0,d1
        add.w   d0,d1
        add.w   d1,d0
        bra.b   .exit

.pp_1Bit:
        lsr.w   #3,d0

.pp_1Byte:

.exit:
        rts

;------------------------------------------------------------------------------
CalculateMemory:
;------------------------------------------------------------------------------

        move.l  a1,d0
        rts

;------------------------------------------------------------------------------
SetColorArray:
;------------------------------------------------------------------------------
;  a0: struct BoardInfo
;  d0.w: startindex
;  d1.w: count
;  when this function is called, your driver has to fetch "count" color
;  values starting at "startindex" from the CLUT field of the BoardInfo
;  structure and write them to the hardware. The color values are always
;  between 0 and 255 for each component regardless of the number of bits
;  per cannon your board has. So you might have to shift the colors
;  before writing them to the hardware.

;       BUG     "SetColorArray ( %ld / %ld )",d0,d1

        lea     PSSO_BoardInfo_CLUT(a0),a1
        movea.l PSSO_BoardInfo_RegisterBase(a0),a0

        lea     (a1,d0.w),a1
        lea     (a1,d0.w*2),a1
        adda.l  #REG_PALETTE,a0
        lea     (a0,d0.w*4),a0

        bra.b   .sla_loop_end

.sla_loop:
        moveq   #0,d0
        move.b  (a1)+,d0
        lsl.w   #8,d0
        move.b  (a1)+,d0
        lsl.l   #8,d0
        move.b  (a1)+,d0

        move.l  d0,(a0)+
.sla_loop_end
        dbra    d1,.sla_loop

        rts

;------------------------------------------------------------------------------
SetDPMSLevel:
;------------------------------------------------------------------------------

        rts

;------------------------------------------------------------------------------
SetDisplay:
;------------------------------------------------------------------------------
;  a0:  struct BoardInfo
;  d0:  BOOL state
;  This function enables and disables the video display.
;
;  NOTE: return the opposite of the state

        BUG "SetDisplay %ld",d0
        not.b   d0
        andi.w  #1,d0
        rts

;------------------------------------------------------------------------------
SetMemoryMode:
;------------------------------------------------------------------------------

        rts

;------------------------------------------------------------------------------
SetWriteMask:
;------------------------------------------------------------------------------

        rts

;------------------------------------------------------------------------------
SetReadPlane:
;------------------------------------------------------------------------------

        rts

;------------------------------------------------------------------------------
SetClearMask:
;------------------------------------------------------------------------------

        move.b  d0,PSSO_BoardInfo_ClearMask(a0)
        rts

;------------------------------------------------------------------------------
WaitVerticalSync:
;------------------------------------------------------------------------------
;  a0:  struct BoardInfo
;  This function waits for the next horizontal retrace.
        BUG     "WaitVerticalSync"

; On minimig can simply use VPOSR for this

.wait_done:
        rts

;------------------------------------------------------------------------------
Reserved5:
;------------------------------------------------------------------------------
;       BUG     "Reserved5"

;       movea.l PSSO_BoardInfo_RegisterBase(a0),a0
;       btst.b  #7,VDE_DisplayStatus(a0)        ;Vertical retrace
;       sne     d0
;       extb.l  d0
        rts

;------------------------------------------------------------------------------
SetClock:
;------------------------------------------------------------------------------

;       MiSTer framebuffer : Not used
        rts

;------------------------------------------------------------------------------
ResolvePixelClock:
;------------------------------------------------------------------------------
; ARGS:
;       d0 - requested pixel clock frequency
; RESULT:
;       d0 - pixel clock index

;       MiSTer framebuffer : Not used

        move.l  #100000000,PSSO_ModeInfo_PixelClock(a1)
        moveq   #1,d0
        rts

;------------------------------------------------------------------------------
GetPixelClock:
;------------------------------------------------------------------------------
        move.l  #100000000,d0
        rts

;------------------------------------------------------------------------------
SetInterrupt:
;------------------------------------------------------------------------------

;       bchg.b  #1,$bfe001

;       movea.l PSSO_BoardInfo_RegisterBase(a0),a1
;       tst.b   d0
;       beq.b   .disable

;       move.w  VDE_InterruptEnable(a1),d0
;       bne.b   .done

;       move.w  #$0001,VDE_InterruptEnable(a1)
;       BUG     "VDE_InterruptEnable = $0001"

.done:  rts

;.disable:
;       move.w  VDE_InterruptEnable(a1),d0
;       beq.b   .done

;       move.w  #$0000,VDE_InterruptEnable(a1)
;       BUG     "VDE_InterruptEnable = $0000"
;       bra.b   .done

;------------------------------------------------------------------------------
VBL_ISR:
;------------------------------------------------------------------------------

        moveq   #0,d0
        rts

;------------------------------------------------------------------------------
GetCompatibleFormats:
;------------------------------------------------------------------------------

        moveq   #-1,d0
        rts

;==============================================================================


;==============================================================================
; The MiST backend: minimig.card's routines (Alastair M. Robinson), with the
; framebuffer in the board and its address written as an offset in it
;==============================================================================

;------------------------------------------------------------------------------
mist_InitCard:
;------------------------------------------------------------------------------
;  a2:  struct BoardInfo, after InitCard's common part: what differs

        move.w  #RGBFF_CLUT|RGBFF_R5G6B5|RGBFF_R5G5B5,PSSO_BoardInfo_RGBFormats(a2)
        ori.l   #BIF_VGASCREENSPLIT|BIF_GRANTDIRECTACCESS,PSSO_BoardInfo_Flags(a2)

        lea     mist_SetSwitch(pc),a1
        move.l  a1,PSSO_BoardInfo_SetSwitch(a2)
        lea     mist_SetDAC(pc),a1
        move.l  a1,PSSO_BoardInfo_SetDAC(a2)
        lea     mist_SetGC(pc),a1
        move.l  a1,PSSO_BoardInfo_SetGC(a2)
        lea     mist_SetPanning(pc),a1
        move.l  a1,PSSO_BoardInfo_SetPanning(a2)
        lea     mist_SetDisplay(pc),a1
        move.l  a1,PSSO_BoardInfo_SetDisplay(a2)
        lea     mist_WaitVerticalSync(pc),a1
        move.l  a1,PSSO_BoardInfo_WaitVerticalSync(a2)
        lea     mist_GetVSyncState(pc),a1
        move.l  a1,PSSO_BoardInfo_GetVSyncState(a2)
        lea     mist_ResolvePixelClock(pc),a1
        move.l  a1,PSSO_BoardInfo_ResolvePixelClock(a2)
        lea     mist_GetPixelClock(pc),a1
        move.l  a1,PSSO_BoardInfo_GetPixelClock(a2)
        lea     mist_SetSplitPosition(pc),a1
        move.l  a1,PSSO_BoardInfo_SetSplitPosition(a2)
        move.w  #-1,CardData_LineCompare(a2)

        move.l  #0,(PSSO_BoardInfo_PixelClockCount+0,a2)
        move.l  #21,(PSSO_BoardInfo_PixelClockCount+4,a2)
        move.l  #16,(PSSO_BoardInfo_PixelClockCount+8,a2)
        move.l  #0,(PSSO_BoardInfo_PixelClockCount+12,a2)
        move.l  #0,(PSSO_BoardInfo_PixelClockCount+16,a2)
;- Planar
;- Chunky
;- HiColor
;- Truecolor
;- Truecolor + Alpha

        moveq   #0,d0
        move.w  d0,(PSSO_BoardInfo_MaxHorValue+0,a2)
        move.w  d0,(PSSO_BoardInfo_MaxVerValue+0,a2)
        move.w  d0,(PSSO_BoardInfo_MaxHorValue+6,a2)
        move.w  d0,(PSSO_BoardInfo_MaxVerValue+6,a2)
        move.w  d0,(PSSO_BoardInfo_MaxHorValue+8,a2)
        move.w  d0,(PSSO_BoardInfo_MaxVerValue+8,a2)
        move.w  d0,(PSSO_BoardInfo_MaxHorResolution+0,a2)
        move.w  d0,(PSSO_BoardInfo_MaxVerResolution+0,a2)
        move.w  d0,(PSSO_BoardInfo_MaxHorResolution+6,a2)
        move.w  d0,(PSSO_BoardInfo_MaxVerResolution+6,a2)
        move.w  d0,(PSSO_BoardInfo_MaxHorResolution+8,a2)
        move.w  d0,(PSSO_BoardInfo_MaxVerResolution+8,a2)

        move.w  #0,CardData_IntEnabled(a2)
        lea     PSSO_BoardInfo_HardInterrupt(a2),a1
        lea     mist_VBL_ISR(pc),a0
        move.l  a0,IS_CODE(a1)
        move.l  a2,IS_DATA(a1)
        moveq   #INTB_VERTB,d0
        move.l  $4.w,a6
        jsr     _LVOAddIntServer(a6)

        ori.l   #BIF_VBLANKINTERRUPT,PSSO_BoardInfo_Flags(a2)
        lea     mist_SetInterrupt(pc),a1
        move.l  a1,PSSO_BoardInfo_SetInterrupt(a2)
        rts

;------------------------------------------------------------------------------
mist_SetSwitch:
;------------------------------------------------------------------------------
;  a0:  struct BoardInfo
;  d0.w:        BOOL state
;  NOTE: Return the opposite of the switch-state. BDK

        movem.l d1-d6/a0-a6,-(a7)

        BUG     "SetSwitch %ld",d0
        move.w  PSSO_BoardInfo_MoniSwitch(a0),d7
        cmp.w   d7,d0
        beq.s   .done
        move.w  d0,PSSO_BoardInfo_MoniSwitch(a0)

        tst.b   d0
        bne.s   .done

        ; Hide the RTG screen
        bset    #13,d0
        lea     $dff000,a1
        move.w  d0,(beamcon0,a1)

.done:
        bsr     mist_SetHardware
        move.l  d7,d0
        andi.w  #$0001,d0
        movem.l (a7)+,d1-d6/a0-a6
        rts

;------------------------------------------------------------------------------
mist_SetDAC:
;------------------------------------------------------------------------------
;  a0: struct BoardInfo
;  d7: RGBFTYPE RGBFormat
;  For Minimig the DAC setting and pixel clock interact, so we set them
;  together.

        moveq   #1,d0
        cmp.l   #RGBFB_R5G6B5,d7
        beq.s   .16bit
        moveq   #2,d0
.16bit:
        move.l  PSSO_BoardInfo_RegisterBase(a0),a1
        move.w  d0,MREG_16BIT(a1)
        bsr     mist_SetHardware
        rts

;------------------------------------------------------------------------------
mist_SetGC:
;------------------------------------------------------------------------------
;  a0: struct BoardInfo
;  a1: struct ModeInfo
;  d0: BOOL Border
;  For Minimig various factors interact so we store the register settings,
;  and actually set the chips in SetHardware

        movem.l d2-d7,-(sp)

        move.l  a1,PSSO_BoardInfo_ModeInfo(a0)
        move.w  d0,PSSO_BoardInfo_Border(a0)

        ; Since we're using the AGA registers for framing, and everything
        ; in AGA land is based around 3.545MHz colour clocks, we need to
        ; divide the various parameters accordingly.
        move.l  PSSO_ModeInfo_PixelClock(a1),d7
        divu    #35450,d7
        and.l   #$ffff,d7

        move.w  #100,d0
        move.w  PSSO_ModeInfo_HorTotal(a1),d1
        mulu    d0,d1
        divu    d7,d1
        ext.l   d1
        subq    #1,d1
        move.w  d1,CardData_HTotal(a0)

        move.w  PSSO_ModeInfo_HorSyncStart(a1),d2
        mulu    d0,d2
        divu    d7,d2
        ext.l   d2
        move.w  d2,CardData_HSStart(a0)

        move.w  PSSO_ModeInfo_HorSyncSize(a1),d3
        add.w   PSSO_ModeInfo_HorSyncStart(a1),d3
        mulu    d0,d3
        divu    d7,d3
        ext.l   d3
        move.w  d3,CardData_HSStop(a0)

        move.w  PSSO_ModeInfo_HorTotal(a1),d4
        sub.w   PSSO_ModeInfo_Width(a1),d4
        mulu    d0,d4
        divu    d7,d4
        ext.l   d4
        move.w  d4,CardData_HBStop(a0)

        move.w  PSSO_ModeInfo_VerTotal(a1),d0
        subq.w  #1,d0
        move.w  d0,CardData_VTotal(a0)

        move.w  PSSO_ModeInfo_VerSyncStart(a1),d1
        move.w  d1,CardData_VSStart(a0)

        move.w  d1,d2
        add.w   PSSO_ModeInfo_VerSyncSize(a1),d2
        move.w  d2,CardData_VSStop(a0)

        move.w  PSSO_ModeInfo_VerTotal(a1),d3
        sub.w   PSSO_ModeInfo_Height(a1),d3
        move.w  d3,CardData_VBStop(a0)

        move.w  PSSO_ModeInfo_first_union(a1),d4   ; the control word (Clock, ClockDivide)
        lsl     #6,d3
        or.w    d3,d4
        move.w  d4,CardData_Control(a0)

        move.w  #$1bc0,d1
        move.b  PSSO_ModeInfo_Flags(a1),d0
        lsr.b   #3,d0   ; Shift and mask sync polarity...
        and.w   #3,d0
        or.w    d0,d1
        move.w  d1,CardData_Beamcon0(a0)

        bsr     mist_SetHardware
        movem.l (sp)+,d2-d7
        rts

;------------------------------------------------------------------------------
mist_SetPanning:
;------------------------------------------------------------------------------
;  a0: struct BoardInfo
;  a1: UBYTE* Memory
;  d0: WORD Width
;  d1: WORD XOffset
;  d2: WORD YOffset
;  d7: RGBFTYPE RGBFormat
;  The start address as an offset in the board, and the board's start
;  as the second framebuffer, for screen dragging

        move.w  d1,PSSO_BoardInfo_XOffset(a0)
        move.w  d2,PSSO_BoardInfo_YOffset(a0)

        bsr     CalculateBytesPerRow    ; Only trashes d0 and d1
        mulu    d0,d2
        add.l   d2,a1

        move.l  a1,d0
        sub.l   PSSO_BoardInfo_MemoryBase(a0),d0
        movea.l PSSO_BoardInfo_RegisterBase(a0),a1
        move.l  d0,REG_ADDRESS(a1)
        clr.l   MREG_ADDRESS2(a1)

        bsr     mist_SetHardware
        rts

;------------------------------------------------------------------------------
mist_SetDisplay:
;------------------------------------------------------------------------------
;  a0:  struct BoardInfo
;  d0:  BOOL state
;  NOTE: return the opposite of the state

        bsr     mist_SetHardware
        not.b   d0
        andi.w  #1,d0
        rts

;------------------------------------------------------------------------------
mist_WaitVerticalSync:
;------------------------------------------------------------------------------

        move.w  CardData_VSStart(a0),d1
.wait_loop:
        move.l  $dff004,d0      ; VPOSR / VHPOSR
        and.l   #$0007ff00,d0   ; Mask off V bits
        lsr.l   #8,d0
        cmp.w   d1,d0
        bne.s   .wait_loop      ; Busy wait until we reach VSStart
        rts

;------------------------------------------------------------------------------
mist_GetVSyncState:
;------------------------------------------------------------------------------

        move.l  $dff004,d0      ; VPOSR / VHPOSR
        and.l   #$0007ff00,d0   ; Mask off V bits
        lsr.l   #8,d0
        cmp.w   CardData_VBStop(a0),d0
        bgt.s   .notvsync
        moveq   #1,d0
        rts
.notvsync:
        moveq   #0,d0
        rts

;------------------------------------------------------------------------------
mist_ResolvePixelClock:
;------------------------------------------------------------------------------
;  a0: struct BoardInfo
;  a1: struct ModeInfo
;  d0: ULONG PixelClock
;  d7: RGBFTYPE RGBFormat
;  The nearest pixel clock the board has for the format, and its index

        movem.l d2/d3,-(sp)
        move.l  d0,d1                   ; requested clock frequency
        moveq   #0,d3
        move.l  mist_PixelClocksByFormat(pc,d7.l*4),d0
        beq.s   .err
        lea     mist_PixelClocksByFormat(pc),a0
        adda.l  d0,a0
        moveq   #0,d0                   ; frequency index
.loop:
        cmp.l   (a0)+,d1
        beq.s   .done
        blt.s   .freq_lt_current
        addq.l  #1,d0                   ; go to next frequency
        tst.l   (a0)                    ; check if the last one
        bne.s   .loop
        subq.l  #1,d0                   ; return to the last one
        bra.s   .get_current
.freq_lt_current:
        tst.l   d0
        beq.s   .get_current
        move.l  (-4,a0),d2              ; current clock frequency
        add.l   (-8,a0),d2              ; previous clock frequency
        sub.l   d1,d2
        sub.l   d1,d2
        bmi.s   .get_current            ; requested clock frequency is closer to the current one
        move.l  (-8,a0),d1
        subq.l  #1,d0
        bra.s   .done
.get_current:
        move.l  (-4,a0),d1
.done:
        move.l  d1,PSSO_ModeInfo_PixelClock(a1)
        lea     mist_ControlWordsByFormat(pc),a0
        move.l  (a0,d7.l*4),d1
        adda.l  d1,a0
        move.w  (a0,d0.w*2),d1
        move.w  d1,PSSO_ModeInfo_first_union(a1) ; two consecutive bytes
        movem.l (sp)+,d2/d3
        rts
.err:
        moveq   #0,d0
        movem.l (sp)+,d2/d3
        rts

;------------------------------------------------------------------------------
mist_GetPixelClock:
;------------------------------------------------------------------------------
;  a0: struct BoardInfo
;  d0: index
;  d7: RGBFTYPE RGBFormat

        move.l  mist_PixelClocksByFormat(pc,d7.l*4),d1
        beq.s   .skip
        lea     mist_PixelClocksByFormat(pc),a0
        adda.l  d1,a0
        move.l  (a0,d0.l*4),d1
.skip:
        move.l  d1,d0
        rts

;------------------------------------------------------------------------------
mist_SetInterrupt:
;------------------------------------------------------------------------------

        move.w  d0,CardData_IntEnabled(a0)
        rts

;------------------------------------------------------------------------------
mist_VBL_ISR:
;------------------------------------------------------------------------------
;  a1: struct BoardInfo (IS_DATA)

        movem.l a1/a6,-(sp)
        tst.w   CardData_IntEnabled(a1)
        beq.s   .no_soft_int
        movea.l PSSO_BoardInfo_ExecBase(a1),a6
        lea     PSSO_BoardInfo_SoftInterrupt(a1),a1
        jsr     _LVOCause(a6)
.no_soft_int:
        movem.l (sp)+,a1/a6
        moveq   #0,d0
        rts

;------------------------------------------------------------------------------
mist_SetHardware:
;------------------------------------------------------------------------------
;  a0: struct BoardInfo
;  The board's control word and the chipset's programmable sync

        movem.l d0/a1,-(a7)
        move.w  PSSO_BoardInfo_MoniSwitch(a0),d0
        beq.s   .skip
        move.l  PSSO_BoardInfo_RegisterBase(a0),a1
        move.w  CardData_Control(a0),MREG_CONTROL(a1)
        lea     $dff000,a1
        move.w  CardData_Beamcon0(a0),d0
        bset    #13,d0                  ; Set LPENDIS bit to enable writes to shadow regs
        move.w  d0,(beamcon0,a1)
        move.w  #0,(hcenter,a1)
        move.w  CardData_HTotal(a0),(htotal,a1)
        move.w  #0,(hbstrt,a1)
        move.w  CardData_HSStart(a0),(hsstrt,a1)
        move.w  CardData_HSStop(a0),(hsstop,a1)
        move.w  CardData_HBStop(a0),(hbstop,a1)
        move.w  CardData_VTotal(a0),d0
        subq    #1,d0
        move.w  d0,(vtotal,a1)
        move.w  #0,(vbstrt,a1)
        move.w  CardData_VSStart(a0),(vsstrt,a1)
        move.w  CardData_VSStop(a0),(vsstop,a1)
        move.w  CardData_VBStop(a0),(vbstop,a1)
        move.w  CardData_Beamcon0(a0),(beamcon0,a1) ; disable writes to shadow regs
        move.w  CardData_LineCompare(a0),(bplhstrt,a1)
.skip:
        movem.l (a7)+,d0/a1
        rts

;------------------------------------------------------------------------------
mist_SetSplitPosition:
;------------------------------------------------------------------------------
;  a0: struct BoardInfo
;  d0: ypos (0: disabled, -1 to the hardware)

        move.w  d0,PSSO_BoardInfo_YSplit(a0)
        sub.w   #1,d0
        bpl.s   .store
        move.w  d0,CardData_LineCompare(a0)
        rts
.store:
        move.w  CardData_VBStop(a0),d1
        subq    #2,d1
        add.w   d1,d0
        move.w  d0,CardData_LineCompare(a0)
        bsr     mist_SetHardware
        rts

;------------------------------------------------------------------------------
; the pixel clocks by format, and the control word of each: the clock
; divider sets the word fetch rate; in 8-bit mode the effective pixel clock
; is twice the fetch rate (two 8-bit pixels per word). Offsets from the
; table, so the code stays position independent.
;------------------------------------------------------------------------------

        cnop    0,4
mist_PixelClocksByFormat:
        dc.l    0                                       ; RGBFB_NONE
        dc.l    mist_PixelClocks_8bit-mist_PixelClocksByFormat  ; RGBFB_CLUT
        dc.l    0,0,0,0,0,0,0,0                         ; R8G8B8 .. B8G8R8A8
        dc.l    mist_PixelClocks_16bit-mist_PixelClocksByFormat ; RGBFB_R5G6B5
        dc.l    mist_PixelClocks_16bit-mist_PixelClocksByFormat ; RGBFB_R5G5B5
        dc.l    0,0,0,0                                 ; B5G6R5PC .. Y4U1V1

mist_ControlWordsByFormat:
        dc.l    0                                       ; RGBFB_NONE
        dc.l    mist_ControlWords_8bit-mist_ControlWordsByFormat  ; RGBFB_CLUT
        dc.l    0,0,0,0,0,0,0,0                         ; R8G8B8 .. B8G8R8A8
        dc.l    mist_ControlWords_16bit-mist_ControlWordsByFormat ; RGBFB_R5G6B5
        dc.l    mist_ControlWords_16bit-mist_ControlWordsByFormat ; RGBFB_R5G5B5
        dc.l    0,0,0,0                                 ; B5G6R5PC .. Y4U1V1

mist_ControlWords_8bit:
        dc.w    $803f,$8037,$802f,$8023,$801f,$8017,$8011  ; clk/64,56,48,36,32,24,18 * 2
        dc.w    $800f,$800d,$800c,$800b,$800a,$8009,$8008  ; clk/16,14,13,12,11,10,9 * 2
        dc.w    $8007,$8006,$8005,$8004,$8003,$8002,$8001  ; clk/8,7,6,5,4,3,2 * 2
        dc.w    0,0

mist_ControlWords_16bit:
        dc.w    $001f,$0017,$0013,$0011,$000f,$000d,$000b,$0009  ; clk/32,24,20,18,16,14,12,10
        dc.w    $0008,$0007,$0006,$0005,$0004,$0003,$0002,$0001  ; clk/9,8,7,6,5,4,3,2
        dc.w    0

        cnop    0,4
mist_PixelClocks_8bit:
        dc.l     3545000, 4051429, 4726666, 6302222, 7090000, 9453333,12604444
        dc.l    14180000,16205000,17452307,18906667,20625454,22688000,25208889
        dc.l    28360000,32411000,37810000,45376000,56720000,75620000,113440000
        dc.l    0

mist_PixelClocks_16bit:
        dc.l     3545000, 4726666, 5672000, 6302222, 7090000, 8102857, 9453333,11344000
        dc.l    12604444,14180000,16205000,18906667,22688000,28360000,37810000,56720000
        dc.l    0

ProgEnd:
        end
