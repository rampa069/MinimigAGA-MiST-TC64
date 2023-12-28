	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_CheckSum
_CheckSum:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//main.c, line 76
						// (bitwise/arithmetic) 	//ops: 2, 0, 5
						// (obj to r4) flags 42 type a
						// reg r1 - only match against tmp
	mt	r1
	mr	r4
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	12
	ldidx	r6
	add	r4
						// (save result) // isreg

						//main.c, line 77
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 2
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//main.c, line 78
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done

						//main.c, line 79
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
	sgn
	cmp	r1

						//main.c, line 79
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l7
		add	r7
						// freereg r1
l6: # 
						// allocreg r1
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 4a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 3
						// deref 
	ldinc	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 81
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 4, 2, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	add	r3
						// (save result) // isreg
						// freereg r1

						//main.c, line 79
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r4 - only match against tmp
	mt	r4
	sgn
	cmp	r2

						//main.c, line 79
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l6
		add	r7
l7: # 
						// allocreg r1

						//main.c, line 83
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.global	_HandleFpga
_HandleFpga:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r5
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// const
	.liconst	268435427
						// (save temp)isreg
	mr	r5
						//save_temp done

						//main.c, line 91
		// Offsets 16, 268435431
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435431, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	16
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//main.c, line 92
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// allocreg r3

						//main.c, line 92
		// Offsets 0, 0
		// Have am? no, no
		// flags 260, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r5
						// (save temp)isreg
	mr	r3
						//save_temp done

						//main.c, line 93
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// allocreg r4

						//main.c, line 93
		// Offsets 0, 0
		// Have am? no, no
		// flags 260, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 1
		// Real offset of type is 1, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r5
						// (save temp)isreg
	mr	r4
						//save_temp done

						//main.c, line 94
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//main.c, line 95
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//main.c, line 96
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// allocreg r1

						//main.c, line 96
		// Offsets 0, 0
		// Have am? no, no
		// flags 260, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 2
		// Real offset of type is 2, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 97
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// allocreg r2

						//main.c, line 97
		// Offsets 0, 0
		// Have am? no, no
		// flags 260, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 3
		// Real offset of type is 3, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r5
						// (save temp)isreg
	mr	r2
						//save_temp done

						//main.c, line 98
		// Offsets 17, 268435431
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435431, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 260
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
						//Fuzzy match found, offset: -1 (varadr: 0)
	.liconst	-1
	add	r0
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	17
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//main.c, line 100
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	stdec	r6
						// freereg r2

						//main.c, line 100
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//main.c, line 100
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 100
						// Q1 disposable
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//main.c, line 100
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 100
						//call
						//pcreltotemp
	.lipcrel	_HandleFDD // extern
	add	r7
						// Deferred popping of 12 bytes (12 in total)
						// freereg r1
						// allocreg r1

						//main.c, line 101
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 101
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r4

						//main.c, line 101
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//main.c, line 101
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 4a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r3

						//main.c, line 101
						//call
						//pcreltotemp
	.lipcrel	_HandleHDD // extern
	add	r7
						// Deferred popping of 4 bytes (16 in total)
						// freereg r1

						//main.c, line 103
						//call
						//pcreltotemp
	.lipcrel	_UpdateDriveStatus // extern
	add	r7
						// Deferred popping of 0 bytes (16 in total)
						// freereg r5
	.liconst	-16
	sub	r6
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
	.global	_inthandler
_inthandler:
	stdec	r6
						// allocreg r1

						//main.c, line 109
						//call
						//pcreltotemp
	.lipcrel	_GetInterrupts // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//main.c, line 109
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//main.c, line 110
						//call
						//pcreltotemp
	.lipcrel	_DisableInterrupts // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//main.c, line 111
						//call
						//pcreltotemp
	.lipcrel	_akiko_inthandler // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//main.c, line 112
						//call
						//pcreltotemp
	.lipcrel	_c64keys_inthandler // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//main.c, line 113
						//call
						//pcreltotemp
	.lipcrel	_EnableInterrupts // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.3
	.global	_ColdBoot
_ColdBoot:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r5
						// allocreg r4
						// allocreg r3

						//main.c, line 119
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done

						//main.c, line 121
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	6
	stdec	r6
						// allocreg r1

						//main.c, line 121
		// Offsets 7, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	7
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 121
						//call
						//pcreltotemp
	.lipcrel	_OsdDoReset // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//main.c, line 123
						//call
						//pcreltotemp
	.lipcrel	_DisableInterrupts // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//main.c, line 125
		// Offsets 5, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 125
						//call
						//pcreltotemp
	.lipcrel	_ClearError // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//main.c, line 127
						//call
						//pcreltotemp
	.lipcrel	_MMC_Init // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//main.c, line 127
						// (test)
						// (obj to tmp) flags 4a type 101
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//main.c, line 127
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l42
		add	r7

						//main.c, line 129
						//call
						//pcreltotemp
	.lipcrel	_FindDrive // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//main.c, line 129
						// (test)
						// (obj to tmp) flags 4a type 103
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//main.c, line 129
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l42
		add	r7

						//main.c, line 132
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//main.c, line 133
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 133
						//call
						//pcreltotemp
	.lipcrel	_ChangeDirectory // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//main.c, line 135
		// Offsets 0, 12
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 12, 0
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 12)
	.liabs	_config, 12
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r1

						//main.c, line 136
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 136
						//call
						//pcreltotemp
	.lipcrel	_SetConfigurationFilename // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//main.c, line 137
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 137
						//call
						//pcreltotemp
	.lipcrel	_LoadConfiguration // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//main.c, line 138
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//main.c, line 138
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 138
						//call
						//pcreltotemp
	.lipcrel	_ApplyConfiguration // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//main.c, line 140
						//call
						//pcreltotemp
	.lipcrel	_fpga_init // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)

						//main.c, line 142
						//call
						//pcreltotemp
	.lipcrel	_OsdGetCtrl // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)
						// allocreg r1

						//main.c, line 142
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//main.c, line 142
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//main.c, line 143
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 4a
						// reg r3 - only match against tmp
	//mt
	stdec	r6

						//main.c, line 143
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l18,0
						// static pe is varadr
	stdec	r6

						//main.c, line 143
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
	stdec	r6

						//main.c, line 143
						//call
						//pcreltotemp
	.lipcrel	_sprintf // extern
	add	r7
						// Flow control - popping 12 + 4 bytes
	.liconst	16
	add	r6
						// allocreg r1

						//main.c, line 144
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 92
		// Real offset of type is 92, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 144
						//call
						//pcreltotemp
	.lipcrel	_BootPrint // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//main.c, line 145
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	80
	cmp	r3

						//main.c, line 145
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l19
		add	r7
						// allocreg r1

						//main.c, line 145
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	82
	cmp	r3

						//main.c, line 145
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l19
		add	r7

						//main.c, line 145
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	84
	cmp	r3

						//main.c, line 145
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l20
		add	r7
						// freereg r1
l19: # 

						//main.c, line 147
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//main.c, line 148
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_config, 39
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 148
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	or	r1
						// (save result) // isreg

						//main.c, line 148
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 39)
	.liabs	_config, 43
						// extern pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
l20: # 
						// allocreg r1

						//main.c, line 151
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	81
	cmp	r3

						//main.c, line 151
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l23
		add	r7

						//main.c, line 151
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	83
	cmp	r3

						//main.c, line 151
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l23
		add	r7

						//main.c, line 151
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	85
	cmp	r3

						//main.c, line 151
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l24
		add	r7
						// freereg r1
l23: # 

						//main.c, line 153
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//main.c, line 154
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_config, 39
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 154
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	-3
	and	r1
						// (save result) // isreg

						//main.c, line 154
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 39)
	.liabs	_config, 43
						// extern pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
l24: # 
						// allocreg r1

						//main.c, line 158
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	82
	cmp	r3

						//main.c, line 158
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l27
		add	r7

						//main.c, line 158
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	83
	cmp	r3

						//main.c, line 158
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l28
		add	r7
						// freereg r1
l27: # 

						//main.c, line 160
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//main.c, line 161
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_config, 45
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 161
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	-2
	and	r1
						// (save result) // isreg

						//main.c, line 161
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 45)
	.liabs	_config, 49
						// extern pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
l28: # 
						// allocreg r1

						//main.c, line 164
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	80
	cmp	r3

						//main.c, line 164
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l30
		add	r7

						//main.c, line 164
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	81
	cmp	r3

						//main.c, line 164
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l31
		add	r7
						// freereg r1
l30: # 

						//main.c, line 166
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//main.c, line 167
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_config, 45
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 167
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	or	r1
						// (save result) // isreg

						//main.c, line 167
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 45)
	.liabs	_config, 49
						// extern pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
l31: # 
						// allocreg r1

						//main.c, line 171
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	84
	cmp	r3

						//main.c, line 171
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l33
		add	r7

						//main.c, line 171
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	85
	cmp	r3

						//main.c, line 171
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l34
		add	r7
						// freereg r1
l33: # 

						//main.c, line 172
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//main.c, line 173
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_config, 45
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 173
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	or	r1
						// (save result) // isreg

						//main.c, line 173
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 45)
	.liabs	_config, 49
						// extern pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
l34: # 
						// allocreg r1

						//main.c, line 176
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//main.c, line 176
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l37
		add	r7
						// freereg r1
						// allocreg r1

						//main.c, line 178
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 104
		// Real offset of type is 104, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l38,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 178
						//call
						//pcreltotemp
	.lipcrel	_BootPrintEx // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//main.c, line 179
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//main.c, line 179
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 112
		// Real offset of type is 116, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 179
						//call
						//pcreltotemp
	.lipcrel	_ApplyConfiguration // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l37: # 
						// allocreg r1

						//main.c, line 182
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 104
		// Real offset of type is 104, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l39,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 182
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_init // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//main.c, line 183
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 116
		// Real offset of type is 116, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 183
						//call
						//pcreltotemp
	.lipcrel	_ClearError // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//main.c, line 185
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 124
		// Real offset of type is 124, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l40,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 185
						//call
						//pcreltotemp
	.lipcrel	_BootPrintEx // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//main.c, line 186
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	stdec	r6
						// allocreg r1

						//main.c, line 186
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 132
		// Real offset of type is 136, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 186
						//call
						//pcreltotemp
	.lipcrel	_ApplyConfiguration // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//main.c, line 186
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r5

						//main.c, line 188
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
	stdec	r6
						// allocreg r1

						//main.c, line 188
		// Offsets 3, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 144
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 188
						//call
						//pcreltotemp
	.lipcrel	_OsdDoReset // extern
	add	r7
						// Flow control - popping 4 + 4 bytes
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//main.c, line 190
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 152
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_inthandler
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 190
						//call
						//pcreltotemp
	.lipcrel	_SetIntHandler // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//main.c, line 191
						//call
						//pcreltotemp
	.lipcrel	_EnableInterrupts // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//main.c, line 193
						//call
						//pcreltotemp
	.lipcrel	_audio_clear // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//main.c, line 194
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_loaded // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//main.c, line 194
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//main.c, line 194
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l42
		add	r7
						// allocreg r1

						//main.c, line 195
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_config, 126
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 195
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_enable // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l42: # 
						// allocreg r1

						//main.c, line 199
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
	mr	r0
						// freereg r1
						// freereg r3
						// freereg r4
						// freereg r5
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.4
l38:
	.byte	79
	.byte	118
	.byte	101
	.byte	114
	.byte	114
	.byte	105
	.byte	100
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	115
	.byte	99
	.byte	114
	.byte	101
	.byte	101
	.byte	110
	.byte	109
	.byte	111
	.byte	100
	.byte	101
	.byte	46
	.byte	0
	.section	.rodata.5
l18:
	.byte	71
	.byte	111
	.byte	116
	.byte	32
	.byte	107
	.byte	101
	.byte	121
	.byte	58
	.byte	32
	.byte	37
	.byte	120
	.byte	10
	.byte	0
	.section	.rodata.6
l39:
	.byte	68
	.byte	82
	.byte	73
	.byte	86
	.byte	69
	.byte	83
	.byte	78
	.byte	68
	.byte	66
	.byte	73
	.byte	78
	.byte	0
	.section	.rodata.7
l40:
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	107
	.byte	105
	.byte	99
	.byte	107
	.byte	115
	.byte	116
	.byte	97
	.byte	114
	.byte	116
	.byte	32
	.byte	82
	.byte	79
	.byte	77
	.byte	46
	.byte	46
	.byte	46
	.byte	0
	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.8
	.global	_main
_main:
	stdec	r6
	mt	r3
	stdec	r6
	.liconst	-8
	add	r6
						// allocreg r3
						// allocreg r1

						//main.c, line 213
						//call
						//pcreltotemp
	.lipcrel	_setstack // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//main.c, line 214
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_debugmsg
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//main.c, line 215
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 1
						// extern (offset 0)
	.liabs	_debugmsg2
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//main.c, line 219
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 21 type 502
						// matchobj comparing flags 21 with 1
						// matchobj comparing flags 21 with 82
						// const/deref
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 82
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	268435394
						//sizemod based on type 0x502
	hlf
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done

						//main.c, line 219
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 21
						// matchobj comparing flags 6a with 82
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	4
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//main.c, line 219
						// (test)
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
				// flags a
	//mr
	and	r0

						//main.c, line 219
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l46
		add	r7

						//main.c, line 221
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with a
						// matchobj comparing flags 82 with a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with a
						// matchobj comparing flags 82 with a
						// static
	.liabs	l47,0
						// static pe is varadr
	stdec	r6

						//main.c, line 221
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with a
	.liconst	4
	add	r6

						//main.c, line 222
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)isreg
	mr	r3
						//save_temp done

						//main.c, line 225
						//pcreltotemp
	.lipcrel	l48
	add	r7
l46: # 

						//main.c, line 226
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l49,0
						// static pe is varadr
	stdec	r6

						//main.c, line 226
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//main.c, line 227
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
l48: # 

						//main.c, line 230
						//call
						//pcreltotemp
	.lipcrel	_ColdBoot // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//main.c, line 230
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//main.c, line 230
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l67
		add	r7
						// allocreg r1

						//main.c, line 231
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l52,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 231
						//call
						//pcreltotemp
	.lipcrel	_BootPrintEx // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l67: # 

						//main.c, line 238
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_fill // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//main.c, line 239
						//call
						//pcreltotemp
	.lipcrel	_c64keyboard_checkreset // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//main.c, line 239
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//main.c, line 239
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l57
		add	r7

						//main.c, line 240
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	stdec	r6
						// allocreg r1

						//main.c, line 240
		// Offsets 3, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//main.c, line 240
						//call
						//pcreltotemp
	.lipcrel	_OsdDoReset // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l57: # 
						// allocreg r1

						//main.c, line 242
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
				// flags 42
	and	r3

						//main.c, line 242
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l59
		add	r7

						//main.c, line 243
						//call
						//pcreltotemp
	.lipcrel	_HandleRTC // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
l59: # 

						//main.c, line 246
						//call
						//pcreltotemp
	.lipcrel	_HandleFpga // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//main.c, line 247
						//call
						//pcreltotemp
	.lipcrel	_HandleUI // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//main.c, line 248
						// (test)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_ErrorMask
						//extern deref
						//sizemod based on type 0x3
	ldt

						//main.c, line 248
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l67
		add	r7

						//main.c, line 250
						//call
						//pcreltotemp
	.lipcrel	_ShowError // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//main.c, line 251
						// (test)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_ErrorMask
						//extern deref
						//sizemod based on type 0x3
	ldt

						//main.c, line 251
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l67
		add	r7
l68: # 

						//main.c, line 253
						// (test)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_ErrorFatal
						//extern deref
						//sizemod based on type 0x3
	ldt

						//main.c, line 253
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l66
		add	r7

						//main.c, line 254
						//call
						//pcreltotemp
	.lipcrel	_HandleFpga // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
l66: # 

						//main.c, line 255
						//call
						//pcreltotemp
	.lipcrel	_HandleUI // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//main.c, line 251
						// (test)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_ErrorMask
						//extern deref
						//sizemod based on type 0x3
	ldt

						//main.c, line 251
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l68
		add	r7

						//main.c, line 236
						//pcreltotemp
	.lipcrel	l67
	add	r7
						// freereg r1
						// freereg r3
						// matchobj comparing flags 1 with 2
	.liconst	-8
	sub	r6
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.9
l47:
	.byte	80
	.byte	108
	.byte	97
	.byte	116
	.byte	102
	.byte	111
	.byte	114
	.byte	109
	.byte	32
	.byte	104
	.byte	97
	.byte	115
	.byte	32
	.byte	83
	.byte	80
	.byte	73
	.byte	32
	.byte	82
	.byte	84
	.byte	67
	.byte	32
	.byte	115
	.byte	117
	.byte	112
	.byte	112
	.byte	111
	.byte	114
	.byte	116
	.byte	10
	.byte	0
	.section	.rodata.a
l49:
	.byte	80
	.byte	108
	.byte	97
	.byte	116
	.byte	102
	.byte	111
	.byte	114
	.byte	109
	.byte	32
	.byte	108
	.byte	97
	.byte	99
	.byte	107
	.byte	115
	.byte	32
	.byte	83
	.byte	80
	.byte	73
	.byte	32
	.byte	82
	.byte	84
	.byte	67
	.byte	32
	.byte	115
	.byte	117
	.byte	112
	.byte	112
	.byte	111
	.byte	114
	.byte	116
	.byte	10
	.byte	0
	.section	.rodata.b
l52:
	.byte	82
	.byte	79
	.byte	77
	.byte	32
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	0
	.section	.rodata.c
	.global	_version
_version:
	.byte	36
	.byte	86
	.byte	69
	.byte	82
	.byte	58
	.byte	65
	.byte	77
	.byte	82
	.byte	50
	.byte	51
	.byte	49
	.byte	50
	.byte	49
	.byte	52
	.byte	45
	.byte	56
	.byte	51
	.byte	50
	.byte	0
	.section	.bss.d
	.global	_s
	.comm	_s,40
	.section	.bss.e
	.align	4
	.global	_cd
	.comm	_cd,2468
