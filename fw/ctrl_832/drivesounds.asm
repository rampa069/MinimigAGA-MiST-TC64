	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_drivesounds_enable
_drivesounds_enable:
	stdec	r6
						// allocreg r1

						//drivesounds.c, line 50
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 42 type 3
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// matchobj comparing flags 2 with 42
						// extern
	.liabs	_drivesounds, 32
						//extern deref
						//sizemod based on type 0x3
	ldt
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 32)
	.liabs	_drivesounds, 36
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.global	_drivesounds_disable
_drivesounds_disable:
	stdec	r6
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
						// allocreg r1

						//drivesounds.c, line 55
						//comp
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r2 - only match against tmp
	//mt
	mr	r1
						// matchobj comparing flags 1 with 42
	.liconst	-1
	xor	r1
						// (save result) // isreg

						//drivesounds.c, line 55
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_drivesounds, 32
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
 						// extern (offset 32)
	.liabs	_drivesounds, 36
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//drivesounds.c, line 56
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
				// flags 2
	//mr
	and	r0

						//drivesounds.c, line 56
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l6
		add	r7

						//drivesounds.c, line 57
						//call
						//pcreltotemp
	.lipcrel	_audio_stop // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
l6: # 
						// freereg r2
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
	.global	_drivesounds_queueevent
_drivesounds_queueevent:
	stdec	r6
	mt	r3
	stdec	r6
	.liconst	-12
	add	r6
						// allocreg r3
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
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 3
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//drivesounds.c, line 63
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 40
						// extern
	.liabs	_drivesounds, 32
						//extern deref
						//sizemod based on type 0x3
	ldt

						//drivesounds.c, line 63
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l10
		add	r7

						//drivesounds.c, line 65
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_drivesounds, 24
						//extern deref
						//sizemod based on type 0x3
	ldt

						//drivesounds.c, line 65
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l12
		add	r7

						//drivesounds.c, line 66
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_start // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
l12: # 

						//drivesounds.c, line 67
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 403
						// extern
	.liabs	_drivesounds
						//extern deref
						//sizemod based on type 0x403
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	mul	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0x6a
	mt	r0
	st	r6
						// allocreg r1

						//drivesounds.c, line 67
						// (bitwise/arithmetic) 	//ops: 0, 7, 2
						// (obj to r1) flags 82 type a
						// matchobj comparing flags 82 with 6a
						// matchobj comparing flags 82 with 6a
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 6a
						// matchobj comparing flags 82 with 6a
						// extern (offset 36)
	.liabs	_drivesounds, 36
						// extern pe is varadr
	mr	r1
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 6a
						// deref 
	ld	r6
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 67
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 42, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 6a
						// matchobj comparing flags 42 with 6a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r1

						//drivesounds.c, line 68
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 403
						// matchobj comparing flags 2 with 42
						// matchobj comparing flags 2 with 6a
						// extern
	.liabs	_drivesounds
						//extern deref
						//sizemod based on type 0x403
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	mul	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//drivesounds.c, line 68
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 82 type a
						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with a
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with a
						// extern (offset 36)
	.liabs	_drivesounds, 36
						// extern pe is varadr
	mr	r1
						// (obj to tmp) flags a type a
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 68
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	4
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 68
						// Z disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 21 type 502
						// matchobj comparing flags 21 with 1
						// matchobj comparing flags 21 with a
						// const/deref
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with a
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with a
	.liconst	268435410
						//sizemod based on type 0x502
	hlf
	ldt
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r1

						//drivesounds.c, line 69
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 403
						// matchobj comparing flags 2 with 21
						// matchobj comparing flags 2 with a
						// extern
	.liabs	_drivesounds
						//extern deref
						//sizemod based on type 0x403
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 69
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	15
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_drivesounds, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
l10: # 
						// freereg r3
	.liconst	-12
	sub	r6
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.3
	.global	_drivesounds_stop
_drivesounds_stop:
	stdec	r6

						//drivesounds.c, line 76
						//call
						//pcreltotemp
	.lipcrel	_audio_stop // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//drivesounds.c, line 77
		// Offsets 0, 24
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 0
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 24)
	.liabs	_drivesounds, 24
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
	stinc	r0
						//save_temp done

						//drivesounds.c, line 78
		// Offsets 0, 28
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 28, 0
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 3
	st	r0
						//save_temp done
	ldinc	r6
	mr	r7

	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.4
	.global	_drivesounds_start
_drivesounds_start:
	stdec	r6

						//drivesounds.c, line 84
						// (test)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_drivesounds, 32
						//extern deref
						//sizemod based on type 0x3
	ldt

						//drivesounds.c, line 84
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l18
		add	r7

						//drivesounds.c, line 86
		// Offsets 1, 24
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 0
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// extern (offset 24)
	.liabs	_drivesounds, 24
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//drivesounds.c, line 87
		// Offsets 0, 20
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 20, 0
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 20 with 24
						//Fuzzy match found, offset: -4 (varadr: 1)
	.liconst	-4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//drivesounds.c, line 88
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 21 type 502
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
	.liconst	268435410
						//sizemod based on type 0x502
	hlf
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 12)
	.liabs	_drivesounds, 16
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 89
		// Offsets 0, 16
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 16, 0
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 16 with 12
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//drivesounds.c, line 90
		// Offsets 0, 28
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 28, 0
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 28 with 16
						//Fuzzy match found, offset: 12 (varadr: 1)
	.liconst	12
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
l18: # 
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
	.section	.text.5
	.global	_drivesounds_nextevent
_drivesounds_nextevent:
	stdec	r6
	.liconst	-8
	add	r6
						// allocreg r1

						//drivesounds.c, line 97
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 98
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 403
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_drivesounds
						//extern deref
						//sizemod based on type 0x403
	ldt
	mr	r0
						// (obj to tmp) flags 2 type 403
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_drivesounds, 4
						//extern deref
						//sizemod based on type 0x403
	ldt
	cmp	r0

						//drivesounds.c, line 98
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l22
		add	r7

						//drivesounds.c, line 99
		// Offsets 4, 0
		// Have am? no, no
		// flags 2, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 403
						// matchobj comparing flags 2 with 2

						// required value found in tmp
						// (save temp)store type 3
	st	r6
						//save_temp done

						//drivesounds.c, line 99
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 403
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 4)
	.liabs	_drivesounds, 8
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 99
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 2
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	8
	mul	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 99
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 82 type a
						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with a
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with a
						// extern (offset 36)
	.liabs	_drivesounds, 36
						// extern pe is varadr
	mr	r1
						// (obj to tmp) flags a type a
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
	add	r1
						// (save result) // isreg
l22: # 

						//drivesounds.c, line 100
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 403
						// extern
	.liabs	_drivesounds, 4
						//extern deref
						//sizemod based on type 0x403
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	15
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 4)
	.liabs	_drivesounds, 8
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 104
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type a
						// matchobj comparing flags 42 with 82
						// matchobj comparing flags 42 with 2
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// freereg r1
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
	.liconst	-8
	sub	r6
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.6
	.global	_drivesounds_finishsound
_drivesounds_finishsound:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
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
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 111
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 111
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	add	r1
						// (save result) // isreg
						// allocreg r2

						//drivesounds.c, line 111
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	12
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//drivesounds.c, line 111
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
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
						// allocreg r2

						//drivesounds.c, line 112
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	20
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//drivesounds.c, line 112
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
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

						//drivesounds.c, line 113
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	16
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 113
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//drivesounds.c, line 114
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 6a
						// reg r3 - only match against tmp
	//mt
				// flags 42
	and	r3

						//drivesounds.c, line 114
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l26
		add	r7
						// allocreg r1

						//drivesounds.c, line 117
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r3 - only match against tmp
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 117
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	add	r1
						// (save result) // isreg
						// allocreg r2

						//drivesounds.c, line 117
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	12
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//drivesounds.c, line 117
						// Z disposable
		// Offsets 1, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 52
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
						// (save temp)store type 3
	st	r2
						//save_temp done
						// freereg r2

						//drivesounds.c, line 118
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	20
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 118
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 64, isauto 0
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
l26: # 
						// freereg r3
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
	.section	.text.7
	.global	_drivesounds_render
_drivesounds_render:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-60
	add	r6
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	36
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r1
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//drivesounds.c, line 132
						// (test)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_drivesounds, 8
						//extern deref
						//sizemod based on type 0x3
	ldt

						//drivesounds.c, line 132
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l118
		add	r7

						//drivesounds.c, line 138
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	32
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_drivesounds, 12
						//extern deref
						//sizemod based on type 0x3
	ldt
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	40
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 139
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
	sgn
	cmp	r0

						//drivesounds.c, line 139
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l32
		add	r7

						//drivesounds.c, line 140
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	36
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	65536
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	40
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
l32: # 

						//drivesounds.c, line 141
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	36
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	127
	sgn
	cmp	r0

						//drivesounds.c, line 141
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l34
		add	r7

						//drivesounds.c, line 142
		// Offsets 127, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 36
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	36
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	127
						// (save temp)store type 3
	st	r0
						//save_temp done
l34: # 

						//drivesounds.c, line 143
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	36
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	256
	mul	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	40
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 147
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
				// flags 2
	//mr
	and	r0

						//drivesounds.c, line 147
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l130
		add	r7
l121: # 

						//drivesounds.c, line 149
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	36
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done

						//drivesounds.c, line 151
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type a
	st	r0
						//save_temp done

						//drivesounds.c, line 151
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type a
	st	r6
						//save_temp done

						//drivesounds.c, line 151
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r4
						//save_temp done

						//drivesounds.c, line 153
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
l122: # 
						// allocreg r1

						//drivesounds.c, line 155
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 155
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 6
						// (obj to r5) flags 82 type a
						// (prepobj r5)
 						// (prepobj r5)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	mr	r5
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r5
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 155
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	12
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 155
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
						// freereg r1

						//drivesounds.c, line 155
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l43
		add	r7
						// allocreg r1

						//drivesounds.c, line 157
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	4
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 157
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 158
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	20
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 158
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r1) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	2
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 158
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 5, 2, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type a
						// reg r1 - only match against tmp
	mt	r1
	add	r4
						// (save result) // isreg
						// freereg r1

						//drivesounds.c, line 159
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	44
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r2

						//drivesounds.c, line 160
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r2
						// (save result) // isreg

						//drivesounds.c, line 161
						//pcreltotemp
	.lipcrel	l131
	add	r7
l43: # 
						// allocreg r1

						//drivesounds.c, line 154
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r2
						// (save result) // isreg

						//drivesounds.c, line 154
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	13
	sgn
	cmp	r2

						//drivesounds.c, line 154
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l122
		add	r7
						// freereg r1
l131: # 
						// allocreg r1

						//drivesounds.c, line 165
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	13
	sgn
	cmp	r2

						//drivesounds.c, line 165
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l132
		add	r7
						// freereg r1
l123: # 
						// allocreg r1

						//drivesounds.c, line 166
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 166
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 6
						// (obj to r5) flags 82 type a
						// (prepobj r5)
 						// (prepobj r5)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	mr	r5
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r5
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 166
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	12
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 166
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
						// freereg r1

						//drivesounds.c, line 166
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l49
		add	r7
						// allocreg r1

						//drivesounds.c, line 168
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	4
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 168
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 62
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
						// (save temp)store type a
	st	r6
						//save_temp done
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 169
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	20
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 169
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r1) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	2
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 169
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 7, 2, 1
						// (obj to r0) flags 62 type a
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 62
						// matchobj comparing flags 4a with 62
						// reg r1 - only match against tmp
	mt	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching
						// freereg r1

						//drivesounds.c, line 170
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	48
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r2

						//drivesounds.c, line 171
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r2
						// (save result) // isreg

						//drivesounds.c, line 172
						//pcreltotemp
	.lipcrel	l132
	add	r7
l49: # 
						// allocreg r1

						//drivesounds.c, line 165
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r2
						// (save result) // isreg

						//drivesounds.c, line 165
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	13
	sgn
	cmp	r2

						//drivesounds.c, line 165
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l123
		add	r7
						// freereg r1
l132: # 
						// allocreg r1

						//drivesounds.c, line 176
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	13
	sgn
	cmp	r2

						//drivesounds.c, line 176
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l133
		add	r7
						// freereg r1
l124: # 
						// allocreg r1

						//drivesounds.c, line 177
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 177
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 6
						// (obj to r5) flags 82 type a
						// (prepobj r5)
 						// (prepobj r5)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	mr	r5
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r5
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 177
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	12
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 177
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
						// freereg r1

						//drivesounds.c, line 177
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l55
		add	r7
						// allocreg r1

						//drivesounds.c, line 179
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	4
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 179
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 82
						// deref 
	ld	r1
						// (save temp)store type a
	st	r0
						//save_temp done
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 180
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
	.liconst	20
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1

						//drivesounds.c, line 180
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r1) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	2
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 180
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 2 type a
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r1

						//drivesounds.c, line 181
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	52
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r2

						//drivesounds.c, line 182
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r2
						// (save result) // isreg

						//drivesounds.c, line 183
						//pcreltotemp
	.lipcrel	l133
	add	r7
l55: # 
						// allocreg r1

						//drivesounds.c, line 176
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r2
						// (save result) // isreg

						//drivesounds.c, line 176
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	13
	sgn
	cmp	r2

						//drivesounds.c, line 176
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l124
		add	r7
						// freereg r1
l133: # 
						// allocreg r1

						//drivesounds.c, line 187
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	13
	sgn
	cmp	r2

						//drivesounds.c, line 187
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l134
		add	r7
						// freereg r1
l125: # 
						// allocreg r1

						//drivesounds.c, line 188
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 188
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 188
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	12
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 188
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 72, isauto 0
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

						//drivesounds.c, line 187
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r2
						// (save result) // isreg

						//drivesounds.c, line 187
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	13
	sgn
	cmp	r2

						//drivesounds.c, line 187
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l125
		add	r7
l134: # 
						// allocreg r1

						//drivesounds.c, line 191
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 1 type 3
						// const
	.liconst	32768
	mr	r1
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_drivesounds, 16
						//extern deref
						//sizemod based on type 0x3
	ldt
	sub	r1
						// (save result) // isreg

						//drivesounds.c, line 191
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	sgn
	shr	r1
						// (save result) // isreg

						//drivesounds.c, line 191
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	36
						//sizemod based on type 0x3
	ldidx	r6
	sgn
	cmp	r1
						// freereg r1

						//drivesounds.c, line 191
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l61
		add	r7
						// allocreg r1

						//drivesounds.c, line 192
						// (bitwise/arithmetic) 	//ops: 0, 0, 4
						// (obj to r3) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	32768
	mr	r3
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_drivesounds, 16
						//extern deref
						//sizemod based on type 0x3
	ldt
	sub	r3
						// (save result) // isreg

						//drivesounds.c, line 192
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	sgn
	shr	r3
						// (save result) // isreg
						// freereg r1
l61: # 
						// allocreg r1

						//drivesounds.c, line 193
						// (test)
						// (obj to tmp) flags 42 type a
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//drivesounds.c, line 193
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l63
		add	r7
						// freereg r1
						// freereg r2
						// allocreg r1

						//drivesounds.c, line 193
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 193
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	add	r1
						// (save result) // isreg
						// allocreg r2

						//drivesounds.c, line 193
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//drivesounds.c, line 193
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	20
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 193
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						// (obj to r0) flags 6a type 3
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r2
	mr	r0
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 6a
						// matchobj comparing flags 6a with 6a
						// deref 
	ld	r1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r2
						// freereg r1

						//drivesounds.c, line 193
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
	sgn
	cmp	r3

						//drivesounds.c, line 193
	cond	LE
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l63
		add	r7
						// allocreg r2
						// allocreg r1

						//drivesounds.c, line 194
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done
l63: # 

						//drivesounds.c, line 195
						// (test)
						// (obj to tmp) flags 62 type a
						// deref 
	ld	r6

						//drivesounds.c, line 195
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l66
		add	r7
						// freereg r1
						// freereg r2
						// allocreg r1

						//drivesounds.c, line 195
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	44
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 195
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	add	r1
						// (save result) // isreg
						// allocreg r2

						//drivesounds.c, line 195
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//drivesounds.c, line 195
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	20
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 195
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						// (obj to r0) flags 6a type 3
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r2
	mr	r0
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 6a
						// matchobj comparing flags 6a with 6a
						// deref 
	ld	r1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r2
						// freereg r1

						//drivesounds.c, line 195
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
	sgn
	cmp	r3

						//drivesounds.c, line 195
	cond	LE
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l66
		add	r7
						// allocreg r2
						// allocreg r1

						//drivesounds.c, line 196
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done
l66: # 

						//drivesounds.c, line 197
						// (test)
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6

						//drivesounds.c, line 197
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7
						// freereg r1
						// freereg r2
						// allocreg r1

						//drivesounds.c, line 197
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	48
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 197
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	add	r1
						// (save result) // isreg
						// allocreg r2

						//drivesounds.c, line 197
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//drivesounds.c, line 197
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	20
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 197
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						// (obj to r0) flags 6a type 3
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r2
	mr	r0
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 6a
						// matchobj comparing flags 6a with 6a
						// deref 
	ld	r1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r2
						// freereg r1

						//drivesounds.c, line 197
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
	sgn
	cmp	r3

						//drivesounds.c, line 197
	cond	LE
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l69
		add	r7
						// allocreg r2
						// allocreg r1

						//drivesounds.c, line 198
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
l69: # 
						// allocreg r1

						//drivesounds.c, line 201
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// extern
	.liabs	_drivesounds, 16
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	sgn
	shr	r1
						// (save result) // isreg

						//drivesounds.c, line 201
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 201
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 6
						// (obj to r5) flags 1 type a
						// const
	.liconst	458752
	mr	r5
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	add	r5
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 203
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 4a
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	2
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 203
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_drivesounds, 16
						//extern deref
						//sizemod based on type 0x3
	ldt
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 16)
	.liabs	_drivesounds, 20
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//drivesounds.c, line 204
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	32767
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 16)
	.liabs	_drivesounds, 20
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 207
						// (bitwise/arithmetic) 	//ops: 0, 4, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	36
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// matchobj comparing flags 42 with 2
						// reg r3 - only match against tmp
	mt	r3
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	40
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 209
						// (test)
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6

						//drivesounds.c, line 209
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l72
		add	r7

						//drivesounds.c, line 211
		// Offsets 0, 20
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 20, 0
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// extern (offset 20)
	.liabs	_drivesounds, 20
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
						// allocreg r1

						//drivesounds.c, line 212
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 212
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 164 with 20
						//Fuzzy match found, offset: 144 (varadr: 0)
	.liconst	144
	add	r0

						// required value found in r0
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r1

						//drivesounds.c, line 212
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	20
						//sizemod based on type 0xa
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	20
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//drivesounds.c, line 212
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// (obj to tmp) flags 22 type 3
						// matchobj comparing flags 22 with 42
						// matchobj comparing flags 22 with 42
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 42
						// matchobj comparing flags a2 with 42
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
	.liconst	8
	ldidx	r6
						//sizemod based on type 0x3
	ldt
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x22
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 22
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 22
	.liconst	8
	ldidx	r6
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness
						// allocreg r1

						//drivesounds.c, line 213
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	44
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 213
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	mr	r0
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	28
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r1

						//drivesounds.c, line 213
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	24
						//sizemod based on type 0xa
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	20
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//drivesounds.c, line 213
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// (obj to tmp) flags 22 type 3
						// matchobj comparing flags 22 with 42
						// matchobj comparing flags 22 with 42
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 42
						// matchobj comparing flags a2 with 42
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
	.liconst	12
	ldidx	r6
						//sizemod based on type 0x3
	ldt
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x22
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 22
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 22
	.liconst	12
	ldidx	r6
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness
						// allocreg r1

						//drivesounds.c, line 214
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	48
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 214
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	mr	r0
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	32
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r1

						//drivesounds.c, line 214
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	28
						//sizemod based on type 0xa
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	20
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//drivesounds.c, line 214
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// (obj to tmp) flags 22 type 3
						// matchobj comparing flags 22 with 42
						// matchobj comparing flags 22 with 42
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 42
						// matchobj comparing flags a2 with 42
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
	.liconst	16
	ldidx	r6
						//sizemod based on type 0x3
	ldt
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x22
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 22
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 22
	.liconst	16
	ldidx	r6
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness

						//drivesounds.c, line 215
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 21 type 501
						// const/deref
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// const to tmp
	.liconst	268435379
						//sizemod based on type 0x501
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 21
						// matchobj comparing flags 1 with 21
	.liconst	56
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 215
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	2
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	60
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 215
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

						//drivesounds.c, line 215
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l135
		add	r7
						// allocreg r1

						//drivesounds.c, line 217
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 340
		// Real offset of type is 340, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with a
						// matchobj comparing flags 42 with a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 217
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with a
	.liconst	1
	sub	r3
						// (save result) // isreg

						//drivesounds.c, line 217
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with a
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//drivesounds.c, line 217
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l135
		add	r7
						// freereg r2
l126: # 
						// allocreg r2

						//drivesounds.c, line 219
						//FIXME convert
						//Converting to wider type...
						// (obj to r2) flags 6a type 2
						// deref 
	hlf
	ld	r4
	mr	r2
						// matchobj comparing flags 1 with 6a
	.liconst	-32768
	add	r2
	xor	r2
						// (save result) // isreg

						//drivesounds.c, line 219
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	add	r4
						// (save result) // isreg
						// allocreg r1

						//drivesounds.c, line 220
						//FIXME convert
						//Converting to wider type...
						// (obj to r1) flags 2a type 2
						// matchobj comparing flags 2a with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags aa with 1
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x2
	hlf
	ldt
	mr	r1
						// matchobj comparing flags 1 with 2a
	.liconst	-32768
	add	r1
	xor	r1
						// (save result) // isreg

						//drivesounds.c, line 220
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 62 type a
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	2
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//drivesounds.c, line 220
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 62
						// reg r1 - only match against tmp
	mt	r1
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 221
						//FIXME convert
						//Converting to wider type...
						// (obj to r1) flags 2a type 2
						// matchobj comparing flags 2a with 4a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags aa with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 4a
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x2
	hlf
	ldt
	mr	r1
						// matchobj comparing flags 1 with 2a
	.liconst	-32768
	add	r1
	xor	r1
						// (save result) // isreg

						//drivesounds.c, line 221
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	2
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//drivesounds.c, line 221
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 222
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	255
	and	r1
						// (save result) // isreg

						//drivesounds.c, line 222
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	shl	r1
						// (save result) // isreg

						//drivesounds.c, line 222
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sgn
	shr	r2
						// (save result) // isreg

						//drivesounds.c, line 222
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r2
						// (save result) // isreg

						//drivesounds.c, line 222
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2

						//drivesounds.c, line 223
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	65537
	mul	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x6a
	mt	r0
	st	r5
						// freereg r1

						//drivesounds.c, line 224
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	4
	add	r5
						// (save result) // isreg
						// allocreg r1

						//drivesounds.c, line 217
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 344
		// Real offset of type is 344, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 6a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 217
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 6a
	.liconst	1
	sub	r3
						// (save result) // isreg

						//drivesounds.c, line 217
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//drivesounds.c, line 217
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l126
		add	r7
l135: # 
						// allocreg r2
						// allocreg r1

						//drivesounds.c, line 227
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// var, auto|reg
	.liconst	20
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 227
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 22 type 3
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 1
	ldidx	r6
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 22
						// deref 
	ld	r1
	sgn
	cmp	r0
						// freereg r1

						//drivesounds.c, line 227
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l79
		add	r7
						// allocreg r1

						//drivesounds.c, line 228
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 368
		// Real offset of type is 368, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 228
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_finishsound // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l79: # 
						// allocreg r1

						//drivesounds.c, line 229
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// var, auto|reg
	.liconst	24
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 229
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 22 type 3
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 1
	.liconst	12
	ldidx	r6
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 22
						// deref 
	ld	r1
	sgn
	cmp	r0
						// freereg r1

						//drivesounds.c, line 229
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l81
		add	r7
						// allocreg r1

						//drivesounds.c, line 230
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 400
		// Real offset of type is 400, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	44
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 230
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_finishsound // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l81: # 
						// allocreg r1

						//drivesounds.c, line 231
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// var, auto|reg
	.liconst	28
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 231
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 22 type 3
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 1
	.liconst	16
	ldidx	r6
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 22
						// deref 
	ld	r1
	sgn
	cmp	r0
						// freereg r1

						//drivesounds.c, line 231
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l138
		add	r7
						// allocreg r1

						//drivesounds.c, line 232
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 432
		// Real offset of type is 432, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	48
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 232
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_finishsound // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//drivesounds.c, line 234
						//pcreltotemp
	.lipcrel	l138
	add	r7
l72: # 
						// allocreg r1

						//drivesounds.c, line 234
						// (test)
						// (obj to tmp) flags 62 type a
						// deref 
	ld	r6

						//drivesounds.c, line 234
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l86
		add	r7
						// freereg r1

						//drivesounds.c, line 236
		// Offsets 0, 20
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 20, 0
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 62
						// extern (offset 20)
	.liabs	_drivesounds, 20
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
						// allocreg r1

						//drivesounds.c, line 237
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 237
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 164 with 20
						//Fuzzy match found, offset: 144 (varadr: 0)
	.liconst	144
	add	r0

						// required value found in r0
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r1

						//drivesounds.c, line 237
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	20
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//drivesounds.c, line 237
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// (obj to tmp) flags 22 type 3
						// matchobj comparing flags 22 with 42
						// matchobj comparing flags 22 with 42
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 42
						// matchobj comparing flags a2 with 42
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x3
	ldt
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x22
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 22
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 22
	.liconst	4
	ldidx	r6
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness
						// allocreg r1

						//drivesounds.c, line 238
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	44
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 238
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	mr	r0
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r1

						//drivesounds.c, line 238
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	16
						//sizemod based on type 0xa
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	20
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//drivesounds.c, line 238
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// (obj to tmp) flags 22 type 3
						// matchobj comparing flags 22 with 42
						// matchobj comparing flags 22 with 42
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 42
						// matchobj comparing flags a2 with 42
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
	.liconst	8
	ldidx	r6
						//sizemod based on type 0x3
	ldt
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x22
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 22
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 22
	.liconst	8
	ldidx	r6
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness

						//drivesounds.c, line 239
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 21 type 501
						// const/deref
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// const to tmp
	.liconst	268435379
						//sizemod based on type 0x501
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 21
						// matchobj comparing flags 1 with 21
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 239
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	2
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	28
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 239
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

						//drivesounds.c, line 239
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l136
		add	r7
						// allocreg r1

						//drivesounds.c, line 241
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 324
		// Real offset of type is 324, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with a
						// matchobj comparing flags 42 with a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 241
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with a
	.liconst	1
	sub	r3
						// (save result) // isreg

						//drivesounds.c, line 241
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with a
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//drivesounds.c, line 241
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l136
		add	r7
						// freereg r2
l127: # 
						// allocreg r2

						//drivesounds.c, line 243
						//FIXME convert
						//Converting to wider type...
						// (obj to r2) flags 6a type 2
						// deref 
	hlf
	ld	r4
	mr	r2
						// matchobj comparing flags 1 with 6a
	.liconst	-32768
	add	r2
	xor	r2
						// (save result) // isreg

						//drivesounds.c, line 243
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	add	r4
						// (save result) // isreg
						// allocreg r1

						//drivesounds.c, line 244
						//FIXME convert
						//Converting to wider type...
						// (obj to r1) flags 2a type 2
						// matchobj comparing flags 2a with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags aa with 1
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x2
	hlf
	ldt
	mr	r1
						// matchobj comparing flags 1 with 2a
	.liconst	-32768
	add	r1
	xor	r1
						// (save result) // isreg

						//drivesounds.c, line 244
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 62 type a
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	2
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//drivesounds.c, line 244
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 62
						// reg r1 - only match against tmp
	mt	r1
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 245
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	255
	and	r1
						// (save result) // isreg

						//drivesounds.c, line 245
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	shl	r1
						// (save result) // isreg

						//drivesounds.c, line 245
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sgn
	shr	r2
						// (save result) // isreg

						//drivesounds.c, line 245
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r2
						// (save result) // isreg

						//drivesounds.c, line 245
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2

						//drivesounds.c, line 246
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	65537
	mul	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x6a
	mt	r0
	st	r5
						// freereg r1

						//drivesounds.c, line 247
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	4
	add	r5
						// (save result) // isreg
						// allocreg r1

						//drivesounds.c, line 241
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 328
		// Real offset of type is 328, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 6a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 241
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 6a
	.liconst	1
	sub	r3
						// (save result) // isreg

						//drivesounds.c, line 241
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//drivesounds.c, line 241
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l127
		add	r7
l136: # 
						// allocreg r2
						// allocreg r1

						//drivesounds.c, line 250
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 250
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 22 type 3
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 1
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 22
						// deref 
	ld	r1
	sgn
	cmp	r0
						// freereg r1

						//drivesounds.c, line 250
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l93
		add	r7
						// allocreg r1

						//drivesounds.c, line 251
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 352
		// Real offset of type is 352, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 251
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_finishsound // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l93: # 
						// allocreg r1

						//drivesounds.c, line 252
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// var, auto|reg
	.liconst	16
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 252
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 22 type 3
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 1
	ldidx	r6
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 22
						// deref 
	ld	r1
	sgn
	cmp	r0
						// freereg r1

						//drivesounds.c, line 252
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l138
		add	r7
						// allocreg r1

						//drivesounds.c, line 253
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 384
		// Real offset of type is 384, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	44
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 253
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_finishsound // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//drivesounds.c, line 255
						//pcreltotemp
	.lipcrel	l138
	add	r7
l86: # 
						// allocreg r1

						//drivesounds.c, line 255
						// (test)
						// (obj to tmp) flags 42 type a
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//drivesounds.c, line 255
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l98
		add	r7
						// freereg r1

						//drivesounds.c, line 257
		// Offsets 0, 20
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 20, 0
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 42
						// extern (offset 20)
	.liabs	_drivesounds, 20
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
						// allocreg r1

						//drivesounds.c, line 258
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 258
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 164 with 20
						//Fuzzy match found, offset: 144 (varadr: 0)
	.liconst	144
	add	r0

						// required value found in r0
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r1

						//drivesounds.c, line 258
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	20
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//drivesounds.c, line 258
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 42 with 62
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// (obj to tmp) flags 22 type 3
						// matchobj comparing flags 22 with 42
						// matchobj comparing flags 22 with 42
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 42
						// matchobj comparing flags a2 with 42
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x3
	ldt
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x22
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 22
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness

						//drivesounds.c, line 259
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 21 type 501
						// const/deref
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// const to tmp
	.liconst	268435379
						//sizemod based on type 0x501
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 21
						// matchobj comparing flags 1 with 21
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 259
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	2
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 259
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

						//drivesounds.c, line 259
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l137
		add	r7
						// allocreg r1

						//drivesounds.c, line 261
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 308
		// Real offset of type is 308, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with a
						// matchobj comparing flags 42 with a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 261
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with a
	.liconst	1
	sub	r3
						// (save result) // isreg

						//drivesounds.c, line 261
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with a
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//drivesounds.c, line 261
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l137
		add	r7
						// freereg r2
l128: # 
						// allocreg r2

						//drivesounds.c, line 263
						//FIXME convert
						//Converting to wider type...
						// (obj to r2) flags 6a type 2
						// deref 
	hlf
	ld	r4
	mr	r2
						// matchobj comparing flags 1 with 6a
	.liconst	-32768
	add	r2
	xor	r2
						// (save result) // isreg

						//drivesounds.c, line 263
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	add	r4
						// (save result) // isreg
						// allocreg r1

						//drivesounds.c, line 264
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	255
	and	r1
						// (save result) // isreg

						//drivesounds.c, line 264
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	shl	r1
						// (save result) // isreg

						//drivesounds.c, line 264
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sgn
	shr	r2
						// (save result) // isreg

						//drivesounds.c, line 264
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r2
						// (save result) // isreg

						//drivesounds.c, line 264
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2

						//drivesounds.c, line 265
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	65537
	mul	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x6a
	mt	r0
	st	r5
						// freereg r1

						//drivesounds.c, line 266
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	4
	add	r5
						// (save result) // isreg
						// allocreg r1

						//drivesounds.c, line 261
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 312
		// Real offset of type is 312, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 6a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 261
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 6a
	.liconst	1
	sub	r3
						// (save result) // isreg

						//drivesounds.c, line 261
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//drivesounds.c, line 261
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l128
		add	r7
l137: # 
						// allocreg r2
						// allocreg r1

						//drivesounds.c, line 269
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 269
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 22 type 3
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 22
						// deref 
	ld	r1
	sgn
	cmp	r0
						// freereg r1

						//drivesounds.c, line 269
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l138
		add	r7
						// allocreg r1

						//drivesounds.c, line 270
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 336
		// Real offset of type is 336, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 270
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_finishsound // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//drivesounds.c, line 272
						//pcreltotemp
	.lipcrel	l138
	add	r7
l98: # 
						// allocreg r1

						//drivesounds.c, line 272
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
				// flags 42
	and	r3

						//drivesounds.c, line 272
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l138
		add	r7

						//drivesounds.c, line 274
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r3 - only match against tmp
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// matchobj comparing flags 2 with 42
						// extern
	.liabs	_drivesounds, 20
						//extern deref
						//sizemod based on type 0x3
	ldt
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 20)
	.liabs	_drivesounds, 24
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 275
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 21 type 501
						// matchobj comparing flags 21 with 82
						// matchobj comparing flags 21 with 2
						// const/deref
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a1 with 82
						// matchobj comparing flags a1 with 2
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	268435379
						//sizemod based on type 0x501
	byt
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done

						//drivesounds.c, line 275
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 21
						// matchobj comparing flags 6a with 2
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	2
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

						//drivesounds.c, line 275
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

						//drivesounds.c, line 275
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l138
		add	r7
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 277
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 296
		// Real offset of type is 296, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with a
						// matchobj comparing flags 42 with a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 277
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with a
	.liconst	1
	sub	r3
						// (save result) // isreg

						//drivesounds.c, line 277
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with a
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//drivesounds.c, line 277
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l138
		add	r7
l129: # 

						//drivesounds.c, line 278
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)store type 3
	stinc	r5
						//save_temp done
						// allocreg r1

						//drivesounds.c, line 277
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 304
		// Real offset of type is 304, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 277
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r3
						// (save result) // isreg

						//drivesounds.c, line 277
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//drivesounds.c, line 277
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l129
		add	r7
l138: # 
						// allocreg r1

						//drivesounds.c, line 147
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	36
						//sizemod based on type 0x3
	ldidx	r6

						//drivesounds.c, line 147
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l121
		add	r7
l130: # 

						//drivesounds.c, line 283
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// extern
	.liabs	_drivesounds, 20
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	32768
	sgn
	cmp	r0

						//drivesounds.c, line 283
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l115
		add	r7

						//drivesounds.c, line 284
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_stop // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//drivesounds.c, line 285
						//pcreltotemp
	.lipcrel	l118
	add	r7
l115: # 

						//drivesounds.c, line 285
						// (test)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_drivesounds, 24
						//extern deref
						//sizemod based on type 0x3
	ldt

						//drivesounds.c, line 285
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l118
		add	r7

						//drivesounds.c, line 285
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_drivesounds, 28
						//extern deref
						//sizemod based on type 0x3
	ldt

						//drivesounds.c, line 285
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l118
		add	r7
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 285
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_drivesounds, 16
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16384
	and	r1
						// (save result) // isreg
						// freereg r1

						//drivesounds.c, line 285
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l118
		add	r7
						// allocreg r1

						//drivesounds.c, line 286
						//call
						//pcreltotemp
	.lipcrel	_audio_start // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
l118: # 

						//drivesounds.c, line 288
		// Offsets 0, 12
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 12, 0
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 12)
	.liabs	_drivesounds, 12
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	32
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	-60
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
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.8
	.global	_countstep
_countstep:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4
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
 						// reg r4 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r3
						// allocreg r2

						//drivesounds.c, line 294
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
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done

						//drivesounds.c, line 296
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r2
						//save_temp done
l147: # 
						// allocreg r1

						//drivesounds.c, line 298
						// (bitwise/arithmetic) 	//ops: 5, 3, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 298
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 298
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 298
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	12
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 298
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r1
						// freereg r1

						//drivesounds.c, line 298
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l146
		add	r7

						//drivesounds.c, line 300
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r3
						// (save result) // isreg
l146: # 

						//drivesounds.c, line 297
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r2
						// (save result) // isreg

						//drivesounds.c, line 297
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
	sgn
	cmp	r2

						//drivesounds.c, line 297
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l147
		add	r7

						//drivesounds.c, line 303
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
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
	.section	.text.9
	.global	_pickstep
_pickstep:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-12
	add	r6
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r1
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 102 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//drivesounds.c, line 315
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 102
						// var, auto|reg
						// matchobj comparing flags 1 with 102
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	sgn
	cmp	r3

						//drivesounds.c, line 315
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l170
		add	r7
l167: # 

						//drivesounds.c, line 317
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//drivesounds.c, line 318
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 3
	st	r6
						//save_temp done

						//drivesounds.c, line 319
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

						// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done

						//drivesounds.c, line 320
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r2
						//save_temp done
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r3
l168: # 
						// allocreg r1

						//drivesounds.c, line 322
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	28
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 322
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 322
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 4
						// (obj to r3) flags 82 type a
						// (prepobj r3)
 						// (prepobj r3)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	mr	r3
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r3
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 322
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	12
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 322
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
						// freereg r1

						//drivesounds.c, line 322
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l161
		add	r7

						//drivesounds.c, line 324
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//drivesounds.c, line 325
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	20
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 160
		// Real offset of type is 160, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1

						//drivesounds.c, line 325
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 6a
						// deref 
	ld	r6
	sgn
	cmp	r5

						//drivesounds.c, line 325
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l161
		add	r7

						//drivesounds.c, line 327
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 62
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r4
						//save_temp done

						//drivesounds.c, line 328
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 3
	st	r6
						//save_temp done
l161: # 

						//drivesounds.c, line 321
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r2
						// (save result) // isreg

						//drivesounds.c, line 321
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
	sgn
	cmp	r2

						//drivesounds.c, line 321
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l168
		add	r7
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 102 type 3
						// matchobj comparing flags 102 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done

						//drivesounds.c, line 332
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 102
						// var, auto|reg
						// matchobj comparing flags 1 with 102
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	sgn
	cmp	r3

						//drivesounds.c, line 332
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l163
		add	r7
						// freereg r2
						// allocreg r1

						//drivesounds.c, line 334
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	28
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 334
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 334
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	add	r1
						// (save result) // isreg
						// allocreg r2

						//drivesounds.c, line 334
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	12
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//drivesounds.c, line 334
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

						//drivesounds.c, line 335
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	20
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 335
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 48, isauto 0
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
l163: # 
						// allocreg r2

						//drivesounds.c, line 315
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	sgn
	cmp	r3

						//drivesounds.c, line 315
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l167
		add	r7
l170: # 

						//drivesounds.c, line 338
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 21 type 502
						// const/deref
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// const to tmp
	.liconst	268435410
						//sizemod based on type 0x502
	hlf
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done

						//drivesounds.c, line 338
						// (bitwise/arithmetic) 	//ops: 7, 0, 3
						// (obj to r2) flags 6a type 403
						// matchobj comparing flags 6a with 21
						// deref 
	//nop
	mr	r2
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	3
	and	r2
						// (save result) // isreg
						// allocreg r1

						//drivesounds.c, line 339
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	28
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 339
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 339
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 339
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	12
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 339
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r1
						// freereg r1

						//drivesounds.c, line 339
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l172
		add	r7
l169: # 
						// allocreg r1

						//drivesounds.c, line 340
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r2
						// (save result) // isreg

						//drivesounds.c, line 340
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	3
	and	r2
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 339
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	28
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 339
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 339
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 339
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	12
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 339
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r1
						// freereg r1

						//drivesounds.c, line 339
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l169
		add	r7
l172: # 

						//drivesounds.c, line 341
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// reg r2 - only match against tmp
	mt	r2
	mr	r0
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
	.liconst	-12
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
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.a
	.global	_drivesounds_fill
_drivesounds_fill:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-4
	add	r6
						// allocreg r5
		// Offsets 164, 0
		// Have am? no, no
		// flags 82, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r4
						// allocreg r3
						// allocreg r1

						//drivesounds.c, line 348
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_drivesounds, 32
						//extern deref
						//sizemod based on type 0x3
	ldt

						//drivesounds.c, line 348
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l176
		add	r7

						//drivesounds.c, line 348
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_drivesounds, 24
						//extern deref
						//sizemod based on type 0x3
	ldt

						//drivesounds.c, line 348
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l176
		add	r7

						//drivesounds.c, line 350
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_nextevent // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//drivesounds.c, line 350
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r3

						//drivesounds.c, line 350
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r3 - only match against tmp
				// flags 42
	and	r3

						//drivesounds.c, line 350
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l204
		add	r7
l203: # 

						//drivesounds.c, line 353
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// deref 
	ld	r3
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	2
	cmp	r0

						//drivesounds.c, line 353
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l182
		add	r7

						//drivesounds.c, line 353
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_drivesounds, 272
						//extern deref
						//sizemod based on type 0x3
	ldt

						//drivesounds.c, line 353
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l182
		add	r7

						//drivesounds.c, line 355
		// Offsets 3, 252
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 252, 0
		// Real offset of type is 252, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// extern (offset 252)
	.liabs	_drivesounds, 252
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	3
						// (save temp)store type 3
	st	r0
						//save_temp done

						//drivesounds.c, line 356
		// Offsets 0, 272
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 272, 0
		// Real offset of type is 272, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 272 with 252
						//Fuzzy match found, offset: 20 (varadr: 1)
	.liconst	20
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//drivesounds.c, line 357
		// Offsets 1, 248
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 248, 0
		// Real offset of type is 248, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 248 with 272
						//Fuzzy match found, offset: -24 (varadr: 1)
	.liconst	-24
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l182: # 
						// allocreg r2

						//drivesounds.c, line 360
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	4
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//drivesounds.c, line 360
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r2
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//drivesounds.c, line 360
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_render // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 361
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 62 type 3
						// deref 
	ld	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 361
						// (bitwise/arithmetic) 	//ops: 6, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 240 type a
						// reg r5 - only match against tmp
	mt	r5
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 361
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	20
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 361
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
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

						//drivesounds.c, line 363
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 62
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r3
						// (save temp)store type 3
	st	r6
						//save_temp done
						// (bitwise/arithmetic) 	//ops: 7, 0, 5
						// (obj to r4) flags 62 type 3
						// matchobj comparing flags 62 with 62
						// deref 
	//nop
	mr	r4
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	2
	sub	r4
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l185
		add	r7
						// allocreg r1
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r4
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l190
		add	r7
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	sub	r4
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l193
		add	r7
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
	sub	r4
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l196
		add	r7
						//pcreltotemp
	.lipcrel	l200
	add	r7
						// freereg r1
l185: # 
						// allocreg r1

						//drivesounds.c, line 366
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// extern
	.liabs	_drivesounds, 32
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//drivesounds.c, line 366
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l202
		add	r7
						// allocreg r1

						//drivesounds.c, line 367
		// Offsets 3, 252
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 252, 0
		// Real offset of type is 252, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// extern (offset 252)
	.liabs	_drivesounds, 252
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	3
						// (save temp)store type 3
	st	r0
						//save_temp done

						//drivesounds.c, line 368
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_drivesounds, 248
						//extern deref
						//sizemod based on type 0x3
	ldt

						//drivesounds.c, line 368
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l202
		add	r7

						//drivesounds.c, line 370
		// Offsets 3, 228
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 228, 0
		// Real offset of type is 228, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//extern: comparing 228 with 252
						//Fuzzy match found, offset: -24 (varadr: 1)
	.liconst	-24
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	3
						// (save temp)store type 3
	st	r0
						//save_temp done

						//drivesounds.c, line 371
		// Offsets 1, 224
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 224, 0
		// Real offset of type is 224, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 224 with 228
						//Fuzzy match found, offset: -4 (varadr: 1)
	.liconst	-4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//drivesounds.c, line 374
						//pcreltotemp
	.lipcrel	l202
	add	r7
						// freereg r1
l190: # 
						// allocreg r1

						//drivesounds.c, line 377
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// extern
	.liabs	_drivesounds, 32
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//drivesounds.c, line 377
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l202
		add	r7
						// allocreg r1

						//drivesounds.c, line 378
		// Offsets 4, 252
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 252, 0
		// Real offset of type is 252, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// extern (offset 252)
	.liabs	_drivesounds, 252
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done

						//drivesounds.c, line 380
						//pcreltotemp
	.lipcrel	l202
	add	r7
						// freereg r1
l193: # 
						// allocreg r1

						//drivesounds.c, line 383
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// extern
	.liabs	_drivesounds, 32
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//drivesounds.c, line 383
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l202
		add	r7

						//drivesounds.c, line 384
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	5
	stdec	r6
						// allocreg r1

						//drivesounds.c, line 384
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 52
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 384
						//call
						//pcreltotemp
	.lipcrel	_pickstep // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 384
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//drivesounds.c, line 384
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	5
	add	r1
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r3
						//save_temp done

						//drivesounds.c, line 385
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 385
						// (bitwise/arithmetic) 	//ops: 6, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 240 type a
						// reg r5 - only match against tmp
	mt	r5
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 385
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	12
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 385
						// Z disposable
		// Offsets 1, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 386
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 386
						// (bitwise/arithmetic) 	//ops: 6, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 240 type a
						// reg r5 - only match against tmp
	mt	r5
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 386
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	16
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 386
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 84
		// Real offset of type is 84, isauto 0
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

						//drivesounds.c, line 388
						//pcreltotemp
	.lipcrel	l202
	add	r7
l196: # 
						// allocreg r1

						//drivesounds.c, line 390
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// extern
	.liabs	_drivesounds, 32
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	and	r1
						// (save result) // isreg
						// freereg r1

						//drivesounds.c, line 390
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l202
		add	r7
						// allocreg r1

						//drivesounds.c, line 390
		// Offsets 9, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	9
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 390
						//call
						//pcreltotemp
	.lipcrel	_countstep // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 390
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	3
	sgn
	cmp	r0
						// freereg r1

						//drivesounds.c, line 390
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l202
		add	r7

						//drivesounds.c, line 392
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	9
	stdec	r6
						// allocreg r1

						//drivesounds.c, line 392
		// Offsets 2, 0
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
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 392
						//call
						//pcreltotemp
	.lipcrel	_pickstep // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 392
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//drivesounds.c, line 392
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	9
	add	r1
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r3
						//save_temp done

						//drivesounds.c, line 393
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 393
						// (bitwise/arithmetic) 	//ops: 6, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 240 type a
						// reg r5 - only match against tmp
	mt	r5
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 393
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	12
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 393
						// Z disposable
		// Offsets 1, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 88, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 394
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 394
						// (bitwise/arithmetic) 	//ops: 6, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 240 type a
						// reg r5 - only match against tmp
	mt	r5
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 394
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	16
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 394
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 100, isauto 0
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

						//drivesounds.c, line 396
						//pcreltotemp
	.lipcrel	l202
	add	r7
l200: # 
						// allocreg r1

						//drivesounds.c, line 399
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// extern
	.liabs	_drivesounds, 32
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//drivesounds.c, line 399
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l202
		add	r7
						// allocreg r1

						//drivesounds.c, line 400
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 400
						// (bitwise/arithmetic) 	//ops: 6, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 240 type a
						// reg r5 - only match against tmp
	mt	r5
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 400
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	12
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 400
						// Z disposable
		// Offsets 1, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 76
		// Real offset of type is 76, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 401
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 401
						// (bitwise/arithmetic) 	//ops: 6, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 240 type a
						// reg r5 - only match against tmp
	mt	r5
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 401
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	16
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 401
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 88, isauto 0
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
l202: # 
						// allocreg r1

						//drivesounds.c, line 350
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_nextevent // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//drivesounds.c, line 350
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r3

						//drivesounds.c, line 350
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r3 - only match against tmp
				// flags 42
	and	r3

						//drivesounds.c, line 350
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l203
		add	r7
l204: # 
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 407
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 21 type 502
						// const/deref
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// const to tmp
	.liconst	268435410
						//sizemod based on type 0x502
	hlf
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 407
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_render // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l176: # 
						// allocreg r1

						//drivesounds.c, line 409
						//setreturn
						// (obj to r0) flags 2 type 3
						// extern
	.liabs	_drivesounds, 24
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// freereg r1
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	-4
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
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.b
	.global	_drivesounds_init
_drivesounds_init:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-836
	add	r6
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
						//sizemod based on type 0xa
	stmpdec	r1
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//drivesounds.c, line 415
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)store type 3
	st	r6
						//save_temp done

						//drivesounds.c, line 417
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	458752
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	__bss_end__
						// extern pe is varadr
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//drivesounds.c, line 419
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_drivesounds
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//drivesounds.c, line 420
		// Offsets 0, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 0
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//drivesounds.c, line 421
		// Offsets 0, 8
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 8, 0
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 3
	st	r0
						//save_temp done

						//drivesounds.c, line 422
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0xa
	ldidx	r6
	stdec	r6

						//drivesounds.c, line 422
						// (address)
						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	16
	addt	r6
	mr	r0

						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	840
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// allocreg r1

						//drivesounds.c, line 422
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 848
		// Real offset of type is 852, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	836
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 422
						//call
						//pcreltotemp
	.lipcrel	_RAOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//drivesounds.c, line 422
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//drivesounds.c, line 422
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l225
		add	r7
						// allocreg r1

						//drivesounds.c, line 424
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	312
						//sizemod based on type 0x104
	ldidx	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//drivesounds.c, line 425
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	sgn
	cmp	r1
						// freereg r1

						//drivesounds.c, line 425
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l210
		add	r7
						// freereg r2
						// freereg r3

						//drivesounds.c, line 427
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	312
						//sizemod based on type 0x104
	ldidx	r6
	stdec	r6

						//drivesounds.c, line 427
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l211,0
						// static pe is varadr
	stdec	r6

						//drivesounds.c, line 427
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 8 bytes (8 in total)

						//drivesounds.c, line 428
						// (bitwise/arithmetic) 	//ops: 0, 0, 5
						// (obj to r4) flags 1 type a
						// const
	.liconst	458752
	mr	r4
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	320
						//sizemod based on type 0xa
	ldidx	r6
	sub	r4
						// (save result) // isreg

						//drivesounds.c, line 429
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	stdec	r6

						//drivesounds.c, line 429
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
	stdec	r6
						// allocreg r1

						//drivesounds.c, line 429
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 880
		// Real offset of type is 896, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	848
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//drivesounds.c, line 429
						//call
						//pcreltotemp
	.lipcrel	_RARead // extern
	add	r7
						// Flow control - popping 8 + 8 bytes
	.liconst	16
	add	r6
						// freereg r1
						// allocreg r2

						//drivesounds.c, line 430
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 900
		// Real offset of type is 900, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//drivesounds.c, line 430
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 904
		// Real offset of type is 904, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l214,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//drivesounds.c, line 430
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 908
		// Real offset of type is 908, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done

						//drivesounds.c, line 430
						//call
						//pcreltotemp
	.lipcrel	___strncmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//drivesounds.c, line 430
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//drivesounds.c, line 430
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l213
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//drivesounds.c, line 433
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
	add	r4
						// (save result) // isreg

						//drivesounds.c, line 434
						//FIXME convert
						// (convert - reducing type 4 to 3
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 62 type 4
						// matchobj comparing flags 62 with 82
						// matchobj comparing flags 62 with 82
						// deref 
	ldinc	r4
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//drivesounds.c, line 436
						//FIXME convert
						// (convert - reducing type 4 to 3
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 62 type 4
						// matchobj comparing flags 62 with 62
						// matchobj comparing flags 62 with 82
						// deref 
	ldinc	r4
						//Saving to reg r5
						// (save temp)isreg
	mr	r5
						//save_temp done
						//No need to mask - same size

						//drivesounds.c, line 438
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 62
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	//mt
				// flags 42
	and	r5

						//drivesounds.c, line 438
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l228
		add	r7
l227: # 

						//drivesounds.c, line 440
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//drivesounds.c, line 440
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l219
		add	r7

						//drivesounds.c, line 440
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	13
	sgn
	cmp	r0

						//drivesounds.c, line 440
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l219
		add	r7
						// freereg r1
						// freereg r2

						//drivesounds.c, line 442
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6

						//drivesounds.c, line 442
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
	mt	r4
	stdec	r6

						//drivesounds.c, line 442
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//drivesounds.c, line 442
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l221,0
						// static pe is varadr
	stdec	r6

						//drivesounds.c, line 442
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 16 + 0 bytes
	.liconst	16
	add	r6
						// allocreg r1

						//drivesounds.c, line 443
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	24
	mul	r1
						// (save result) // isreg

						//drivesounds.c, line 443
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 164)
	.liabs	_drivesounds, 164
						// extern pe is varadr
	add	r1
						// (save result) // isreg
						// allocreg r2

						//drivesounds.c, line 443
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

						//drivesounds.c, line 443
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 42, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 952
		// Real offset of type is 952, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type a
	st	r2
						//save_temp done
						// freereg r2
						// allocreg r2

						//drivesounds.c, line 444
						//Call division routine
	mt	r1
	stdec	r6
						// (obj to tmp) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	2
	mr	r2
	.lipcrel	_div_s32bys32
	add	r7
	mt	r0
	mr	r2
	ldinc	r6
	mr	r1
						// (save result) // isreg

						//drivesounds.c, line 444
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// const
	.liconst	8
	add	r1
						// (save result) // isreg

						//drivesounds.c, line 444
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 4a, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 968
		// Real offset of type is 968, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r2
						// freereg r1

						//drivesounds.c, line 445
						// (bitwise/arithmetic) 	//ops: 5, 6, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
	add	r4
						// (save result) // isreg

						//drivesounds.c, line 446
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
						// (save temp)store type 3
	st	r6
						//save_temp done

						//drivesounds.c, line 447
						//FIXME convert
						// (convert - reducing type 4 to 3
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 62 type 4
						// matchobj comparing flags 62 with 82
						// matchobj comparing flags 62 with 82
						// deref 
	ldinc	r4
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//drivesounds.c, line 449
						//FIXME convert
						// (convert - reducing type 4 to 3
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 62 type 4
						// matchobj comparing flags 62 with 62
						// matchobj comparing flags 62 with 82
						// deref 
	ldinc	r4
						//Saving to reg r5
						// (save temp)isreg
	mr	r5
						//save_temp done
						//No need to mask - same size

						//drivesounds.c, line 453
						//pcreltotemp
	.lipcrel	l222
	add	r7
l219: # 
						// allocreg r2
						// allocreg r1

						//drivesounds.c, line 454
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 856
		// Real offset of type is 856, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done
l222: # 

						//drivesounds.c, line 438
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//drivesounds.c, line 438
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l227
		add	r7
l228: # 

						//drivesounds.c, line 457
		// Offsets 1, 8
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 8, 0
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 8)
	.liabs	_drivesounds, 8
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//drivesounds.c, line 460
						//pcreltotemp
	.lipcrel	l225
	add	r7
l213: # 

						//drivesounds.c, line 460
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l224,0
						// static pe is varadr
	stdec	r6

						//drivesounds.c, line 460
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//drivesounds.c, line 463
						//pcreltotemp
	.lipcrel	l225
	add	r7
l210: # 

						//drivesounds.c, line 463
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l226,0
						// static pe is varadr
	stdec	r6

						//drivesounds.c, line 463
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
l225: # 

						//drivesounds.c, line 465
		// Offsets 0, 16
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 16, 0
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 16)
	.liabs	_drivesounds, 16
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

						//drivesounds.c, line 466
		// Offsets 0, 24
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 0
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 24 with 16
						//Fuzzy match found, offset: 8 (varadr: 1)
	.liconst	8
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//drivesounds.c, line 467
		// Offsets 0, 28
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 28, 0
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//drivesounds.c, line 468
		// Offsets 0, 32
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 32, 0
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 3
	st	r0
						//save_temp done

						//drivesounds.c, line 469
						//setreturn
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
	mr	r0
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	-836
	sub	r6
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.c
l221:
	.byte	83
	.byte	111
	.byte	117
	.byte	110
	.byte	100
	.byte	32
	.byte	37
	.byte	100
	.byte	32
	.byte	97
	.byte	116
	.byte	32
	.byte	37
	.byte	120
	.byte	44
	.byte	32
	.byte	108
	.byte	101
	.byte	110
	.byte	103
	.byte	116
	.byte	104
	.byte	32
	.byte	37
	.byte	100
	.byte	10
	.byte	0
	.section	.rodata.d
l211:
	.byte	65
	.byte	117
	.byte	100
	.byte	105
	.byte	111
	.byte	32
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	45
	.byte	32
	.byte	108
	.byte	101
	.byte	110
	.byte	103
	.byte	116
	.byte	104
	.byte	32
	.byte	37
	.byte	100
	.byte	10
	.byte	0
	.section	.rodata.e
l214:
	.byte	68
	.byte	82
	.byte	73
	.byte	86
	.byte	69
	.byte	83
	.byte	78
	.byte	68
	.byte	0
	.section	.rodata.f
l224:
	.byte	66
	.byte	97
	.byte	100
	.byte	32
	.byte	115
	.byte	105
	.byte	103
	.byte	110
	.byte	97
	.byte	116
	.byte	117
	.byte	114
	.byte	101
	.byte	32
	.byte	105
	.byte	110
	.byte	32
	.byte	68
	.byte	114
	.byte	105
	.byte	118
	.byte	101
	.byte	83
	.byte	111
	.byte	117
	.byte	110
	.byte	100
	.byte	115
	.byte	32
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	10
	.byte	0
	.section	.rodata.10
l226:
	.byte	68
	.byte	114
	.byte	105
	.byte	118
	.byte	101
	.byte	32
	.byte	115
	.byte	111
	.byte	117
	.byte	110
	.byte	100
	.byte	115
	.byte	32
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	116
	.byte	111
	.byte	111
	.byte	32
	.byte	108
	.byte	97
	.byte	114
	.byte	103
	.byte	101
	.byte	10
	.byte	0
	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.11
	.global	_drivesounds_loaded
_drivesounds_loaded:
	stdec	r6

						//drivesounds.c, line 475
						//setreturn
						// (obj to r0) flags 2 type 3
						// extern
	.liabs	_drivesounds, 8
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
	ldinc	r6
	mr	r7

	.section	.bss.12
	.align	4
	.global	_drivesounds
	.comm	_drivesounds,476
