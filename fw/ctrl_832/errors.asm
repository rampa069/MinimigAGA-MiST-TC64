	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_ClearError
_ClearError:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3

						//errors.c, line 8
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 40
						// extern (offset 0)
	.liabs	_ErrorFatal
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//errors.c, line 9
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	5
	cmp	r2

						//errors.c, line 9
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l4
		add	r7
						// allocreg r1

						//errors.c, line 11
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
	mr	r1
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 82
						// reg r2 - only match against tmp
	mt	r2
	shl	r1
						// (save result) // isreg

						//errors.c, line 11
						//comp
						// (obj to r1) flags 4a type 3
						// matchobj comparing flags 4a with 42
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
	.liconst	-1
	xor	r1
						// (save result) // isreg

						//errors.c, line 11
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_ErrorMask
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_ErrorMask, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//errors.c, line 12
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 82
						// matchobj comparing flags 42 with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r4
						//save_temp done

						//errors.c, line 12
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r2 - only match against tmp
						// (save temp)isreg
	mr	r5
						//save_temp done

						//errors.c, line 15
						//pcreltotemp
	.lipcrel	l5
	add	r7
l4: # 

						//errors.c, line 16
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done

						//errors.c, line 17
		// Offsets 4, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
						// (save temp)isreg
	mr	r4
						//save_temp done

						//errors.c, line 18
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_ErrorMask
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
l5: # 

						//errors.c, line 20
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r3
						//save_temp done

						//errors.c, line 21
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
	mt	r4
	sgn
	cmp	r5

						//errors.c, line 21
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l12
		add	r7
						// freereg r2
l11: # 
						// allocreg r1

						//errors.c, line 22
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	12
	mul	r1
						// (save result) // isreg

						//errors.c, line 22
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_Errors
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//errors.c, line 22
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 64, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// static
	.liabs	l10,0
						// static pe is varadr
						// (save temp)store type a
	st	r1
						//save_temp done
						// allocreg r2

						//errors.c, line 23
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	4
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//errors.c, line 23
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 3
	st	r2
						//save_temp done
						// freereg r2

						//errors.c, line 24
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	add	r1
						// (save result) // isreg

						//errors.c, line 24
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r1

						//errors.c, line 21
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r3
						// (save result) // isreg

						//errors.c, line 21
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
	sgn
	cmp	r3

						//errors.c, line 21
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l11
		add	r7
l12: # 
						// allocreg r2
						// freereg r2
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

	.section	.rodata.1
l10:
	.byte	0
	.section	.data.2
	.align	4
	.global	_ErrorMask
_ErrorMask:
	.int	0
	.section	.data.3
	.align	4
	.global	_ErrorFatal
_ErrorFatal:
	.int	0
	.section	.data.4
	.align	4
	.global	_ErrorMessages
_ErrorMessages:
						// Declaring from tree
						// static
	.ref	l13
						// Declaring from tree
						// static
	.ref	l14
						// Declaring from tree
						// static
	.ref	l15
						// Declaring from tree
						// static
	.ref	l16
						// Declaring from tree
						// static
	.ref	l17
	.section	.bss.5
	.align	4
	.global	_Errors
	.comm	_Errors,60
	.section	.rodata.6
l13:
	.byte	83
	.byte	68
	.byte	32
	.byte	67
	.byte	97
	.byte	114
	.byte	100
	.byte	0
	.section	.rodata.7
l14:
	.byte	70
	.byte	105
	.byte	108
	.byte	101
	.byte	115
	.byte	121
	.byte	115
	.byte	116
	.byte	101
	.byte	109
	.byte	0
	.section	.rodata.8
l15:
	.byte	75
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
	.byte	0
	.section	.rodata.9
l16:
	.byte	70
	.byte	108
	.byte	111
	.byte	112
	.byte	112
	.byte	121
	.byte	32
	.byte	101
	.byte	109
	.byte	117
	.byte	108
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	0
	.section	.rodata.a
l17:
	.byte	72
	.byte	97
	.byte	114
	.byte	100
	.byte	100
	.byte	114
	.byte	105
	.byte	118
	.byte	101
	.byte	32
	.byte	101
	.byte	109
	.byte	117
	.byte	108
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	0
