; RTGTest - what MiSTer.card's FindCard sees: every board's ConfigDev
; flags (CONFIGME, bit 1: no driver has taken it), the Zorro III RTG board
; (mfr $139C, product $30), the ID register at board + $80010E, and for
; LIBS:Picasso96/MiSTer.card and minimig.card whether they open and what
; their FindCard and InitCard did (the counters after the card structure).

        machine 68020

_LVOOpenLibrary         EQU -552
_LVOCloseLibrary        EQU -414
_LVOFindConfigDev       EQU -72
_LVOVPrintf             EQU -954

cd_Flags                EQU 14
cd_BoardAddr            EQU 32
cd_BoardSize            EQU 36
cd_Product              EQU 17
cd_Manufacturer         EQU 20
CARD_SIZEOF             EQU $38

start:
        movem.l d2-d7/a2-a6,-(sp)
        move.l  $4.w,a6
        lea     dosname(pc),a1
        moveq   #36,d0
        jsr     _LVOOpenLibrary(a6)
        move.l  d0,d7                   ; dos.library
        beq     .nodos
        lea     expname(pc),a1
        moveq   #0,d0
        jsr     _LVOOpenLibrary(a6)
        move.l  d0,d6                   ; expansion.library
        beq     .noexp

        ; every board
        suba.l  a2,a2
.all:   move.l  d6,a6
        move.l  a2,a0
        moveq   #-1,d0
        moveq   #-1,d1
        jsr     _LVOFindConfigDev(a6)
        move.l  d0,a2
        tst.l   d0
        beq.s   .alldone
        lea     args(pc),a3
        moveq   #0,d0
        move.w  cd_Manufacturer(a2),d0
        move.l  d0,(a3)
        moveq   #0,d0
        move.b  cd_Product(a2),d0
        move.l  d0,4(a3)
        move.l  cd_BoardAddr(a2),8(a3)
        moveq   #0,d0
        move.b  cd_Flags(a2),d0
        move.l  d0,12(a3)
        lea     fmt_all(pc),a0
        bsr     printf
        bra.s   .all
.alldone:

        move.l  d6,a6
        suba.l  a0,a0
        move.l  #$139C,d0
        moveq   #$30,d1
        jsr     _LVOFindConfigDev(a6)
        move.l  d0,a2
        lea     args(pc),a3
        move.l  d0,(a3)
        lea     fmt_cd(pc),a0
        bsr     printf
        move.l  a2,d0
        beq.s   .cards

        moveq   #0,d0
        move.b  cd_Flags(a2),d0
        move.l  d0,(a3)
        move.l  cd_BoardAddr(a2),4(a3)
        move.l  cd_BoardSize(a2),8(a3)
        lea     fmt_board(pc),a0
        bsr     printf

        move.l  cd_BoardAddr(a2),a0
        moveq   #0,d0
        move.w  $80010e(a0),d0          ; the ID register
        move.l  d0,(a3)
        moveq   #0,d0
        move.w  $800100(a0),d0          ; ADDR high
        move.l  d0,4(a3)
        lea     fmt_id(pc),a0
        bsr     printf

.cards:
        lea     card1(pc),a0
        bsr     trycard
        lea     card2(pc),a0
        bsr     trycard

        move.l  $4.w,a6
        move.l  d6,a1
        jsr     _LVOCloseLibrary(a6)
.noexp:
        move.l  $4.w,a6
        move.l  d7,a1
        jsr     _LVOCloseLibrary(a6)
.nodos:
        movem.l (sp)+,d2-d7/a2-a6
        moveq   #0,d0
        rts

; a0: the library's name: open it, print the result, close it
trycard:
        movem.l a2/a6,-(sp)
        move.l  a0,a2
        move.l  $4.w,a6
        move.l  a0,a1
        moveq   #0,d0
        jsr     _LVOOpenLibrary(a6)
        lea     args(pc),a0
        move.l  a2,(a0)
        move.l  d0,4(a0)
        move.l  d0,-(sp)
        lea     fmt_card(pc),a0
        bsr     printf
        move.l  (sp)+,d0
        beq.s   .x
        move.l  d0,a1
        lea     args(pc),a0
        moveq   #0,d1
        move.w  CARD_SIZEOF+0(a1),d1
        move.l  d1,(a0)                 ; FindCard calls
        move.w  CARD_SIZEOF+2(a1),d1
        move.l  d1,4(a0)                ; its way out
        move.w  CARD_SIZEOF+4(a1),d1
        move.l  d1,8(a0)                ; InitCard calls
        moveq   #0,d1
        move.b  CARD_SIZEOF+6(a1),d1
        move.l  d1,12(a0)               ; the flags it saw
        move.w  CARD_SIZEOF+8(a1),d1
        move.l  d1,16(a0)               ; the ID it read
        move.l  a1,-(sp)
        lea     fmt_dbg(pc),a0
        bsr     printf
        move.l  (sp)+,a1
        jsr     _LVOCloseLibrary(a6)
.x:     movem.l (sp)+,a2/a6
        rts

; a0: the format, args: its arguments
printf:
        movem.l d0-d2/a0-a1/a6,-(sp)
        move.l  a0,d1
        lea     args(pc),a0
        move.l  a0,d2
        move.l  d7,a6
        jsr     _LVOVPrintf(a6)
        movem.l (sp)+,d0-d2/a0-a1/a6
        rts

        cnop    0,4
args:   dc.l    0,0,0,0,0
dosname:   dc.b 'dos.library',0
expname:   dc.b 'expansion.library',0
card1:     dc.b 'Picasso96/MiSTer.card',0
card2:     dc.b 'Picasso96/minimig.card',0
fmt_cd:    dc.b 'ConfigDev $139C/$30: $%08lx',10,0
fmt_board: dc.b 'flags $%02lx (CONFIGME is bit 1), board $%08lx, size $%08lx',10,0
fmt_id:    dc.b 'ID at +$80010E: $%04lx (MiST $832x, MiSTer $5001), ADDR hi $%04lx',10,0
fmt_card:  dc.b '%s: %08lx',10,0
fmt_all:   dc.b 'board $%04lx/$%02lx at $%08lx, flags $%02lx',10,0
fmt_dbg:   dc.b '  FindCard x%ld, out %ld (1 none, 2 not CONFIGME, 3 bad ID, 4 MiSTer, 5 MiST), InitCard x%ld, flags $%02lx, ID $%04lx',10,0
        dc.b    '$VER: RTGTest 0.1 (25.10.2026)',0
        end
