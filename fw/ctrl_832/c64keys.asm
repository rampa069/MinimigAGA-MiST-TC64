	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_c64keyboard_write
_c64keyboard_write:
	stdec	r6
	mt	r3
	stdec	r6
	.liconst	-8
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
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r2

						//c64keys.c, line 133
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	48
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//c64keys.c, line 133
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	44
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//c64keys.c, line 133
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	4
	mul	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0x6a
	mt	r0
	st	r6

						//c64keys.c, line 133
						// (bitwise/arithmetic) 	//ops: 3, 7, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 6a with 6a
						// deref 
	//nop
	add	r2
						// (save result) // isreg

						//c64keys.c, line 133
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 6a
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	16
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r2
						//save_temp done
						// freereg r2

						//c64keys.c, line 134
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 2
						// matchobj comparing flags 6a with 6a
						// deref 
	ld	r1
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r0
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

						//c64keys.c, line 134
						// Z disposable
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
						// Store_reg to type 0x403, flags 0x6a
	mt	r0
	st	r1
						// freereg r1
						// freereg r3
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	-8
	sub	r6
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
	.global	_c64keys_inthandler
_c64keys_inthandler:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-40
	add	r6
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//c64keys.c, line 142
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
	addt	r6
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

						//c64keys.c, line 144
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_c64keys, 4
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	4
	add	r1
						// (save result) // isreg

						//c64keys.c, line 144
						// Q1 disposable
						//Call division routine
	mt	r1
	stdec	r6
	mt	r2
	stdec	r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	12
	mr	r2
	.lipcrel	_div_s32bys32
	add	r7
	mt	r1
	mr	r0
	ldinc	r6
	mr	r2
	ldinc	r6
	mr	r1
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	4
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1
						// allocreg r1

						//c64keys.c, line 145
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_c64keys, 4
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	add	r1
						// (save result) // isreg

						//c64keys.c, line 145
						// Q1 disposable
						//Call division routine
	mt	r1
	stdec	r6
	mt	r2
	stdec	r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	12
	mr	r2
	.lipcrel	_div_s32bys32
	add	r7
	mt	r1
	mr	r0
	ldinc	r6
	mr	r2
	ldinc	r6
	mr	r1
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//c64keys.c, line 151
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
		// Offsets 268435346, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	268435346
						// (save temp)isreg
	mr	r3
						//save_temp done
l5: # 
						// allocreg r1

						//c64keys.c, line 153
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	4
	mul	r1
						// (save result) // isreg

						//c64keys.c, line 153
						// (bitwise/arithmetic) 	//ops: 2, 4, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// reg r3 - only match against tmp
	mt	r3
	add	r1
						// (save result) // isreg

						//c64keys.c, line 153
						//FIXME convert
						// (convert - reducing type 3 to a
						//No need to mask - same size

						//c64keys.c, line 153
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 502
						// matchobj comparing flags 6a with 240
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//c64keys.c, line 154
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 6a
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// extern
	.liabs	_c64keys, 4
						//extern deref
						//sizemod based on type 0x3
	ldt
	add	r1
						// (save result) // isreg

						//c64keys.c, line 154
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	mul	r1
						// (save result) // isreg

						//c64keys.c, line 154
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 16)
	.liabs	_c64keys, 16
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//c64keys.c, line 154
						// Z disposable
						//FIXME convert
						// (convert - reducing type 103 to 102
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 82
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r1

						//c64keys.c, line 155
						// (test)
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 42
						// reg r2 - only match against tmp
				// flags 42
	and	r2

						//c64keys.c, line 155
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l68
		add	r7
l64: # 
						// allocreg r1

						//c64keys.c, line 157
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 103
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r1
						// (save result) // isreg

						//c64keys.c, line 157
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	and	r2
						// (save result) // isreg
						// freereg r1

						//c64keys.c, line 158
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
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

						//c64keys.c, line 155
						// (test)
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 82
						// matchobj comparing flags 42 with 2
						// reg r2 - only match against tmp
	mt	r2
				// flags 42
	and	r2

						//c64keys.c, line 155
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l64
		add	r7
l68: # 
						// allocreg r1

						//c64keys.c, line 152
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r4
						// (save result) // isreg

						//c64keys.c, line 152
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
	sgn
	cmp	r4

						//c64keys.c, line 152
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l5
		add	r7
						// freereg r1
						// allocreg r1

						//c64keys.c, line 164
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	60
	sgn
	cmp	r0

						//c64keys.c, line 164
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l13
		add	r7

						//c64keys.c, line 166
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// freereg r2
						// freereg r3
l65: # 
						// allocreg r2

						//c64keys.c, line 192
						// (bitwise/arithmetic) 	//ops: 5, 7, 3
						// (obj to r2) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r2
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r6
	add	r2
						// (save result) // isreg

						//c64keys.c, line 192
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	2
	mul	r2
						// (save result) // isreg

						//c64keys.c, line 192
						// (bitwise/arithmetic) 	//ops: 0, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 16)
	.liabs	_c64keys, 16
						// extern pe is varadr
	add	r2
						// (save result) // isreg
						// allocreg r1

						//c64keys.c, line 192
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	add	r1
						// (save result) // isreg

						//c64keys.c, line 192
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	mul	r1
						// (save result) // isreg

						//c64keys.c, line 192
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 16)
	.liabs	_c64keys, 16
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//c64keys.c, line 192
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 82
						// deref 
	hlf
	ld	r2
						// (save temp)isreg
	mr	r2
						//save_temp done

						//c64keys.c, line 192
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 6a
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//c64keys.c, line 192
						// (bitwise/arithmetic) 	//ops: 2, 3, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r2 - only match against tmp
	mt	r2
	xor	r1
						// (save result) // isreg
						// allocreg r3

						//c64keys.c, line 192
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						// (obj to r3) flags 42 type 3
						// matchobj comparing flags 42 with 4a
						// reg r4 - only match against tmp
	mt	r4
	mr	r3
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// extern
	.liabs	_c64keys, 4
						//extern deref
						//sizemod based on type 0x3
	ldt
	add	r3
						// (save result) // isreg

						//c64keys.c, line 192
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	mul	r3
						// (save result) // isreg

						//c64keys.c, line 192
						// (bitwise/arithmetic) 	//ops: 0, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 16)
	.liabs	_c64keys, 16
						// extern pe is varadr
	add	r3
						// (save result) // isreg

						//c64keys.c, line 192
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 82
						// deref 
	hlf
	ld	r3
						// (save temp)isreg
	mr	r3
						//save_temp done

						//c64keys.c, line 192
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r3 - only match against tmp
	//mt
	xor	r2
						// (save result) // isreg
						// freereg r3

						//c64keys.c, line 192
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
	and	r1
						// (save result) // isreg
						// freereg r2

						//c64keys.c, line 192
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	16
	addt	r6
						//sizemod based on type 0x103
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//c64keys.c, line 193
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// extern
	.liabs	_c64keys, 4
						//extern deref
						//sizemod based on type 0x3
	ldt
	add	r1
						// (save result) // isreg

						//c64keys.c, line 193
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	mul	r1
						// (save result) // isreg

						//c64keys.c, line 193
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 16)
	.liabs	_c64keys, 16
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//c64keys.c, line 193
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 102
						// matchobj comparing flags 6a with 82
						// deref 
	hlf
	ld	r1
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//c64keys.c, line 194
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 20, 0 with 16, 0
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
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	8
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r4
		// Offsets 32768, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	32768
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
						// allocreg r2
l18: # 
						// allocreg r1

						//c64keys.c, line 197
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 2 type 103
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 240 type 103
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	and	r1
						// (save result) // isreg
						// freereg r1

						//c64keys.c, line 197
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l60
		add	r7
						// freereg r2
						// allocreg r2

						//c64keys.c, line 199
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 3
						// matchobj comparing flags 2 with 240
						// var, auto|reg
						// matchobj comparing flags 1 with 240
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	mul	r2
						// (save result) // isreg

						//c64keys.c, line 199
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	add	r2
						// (save result) // isreg

						//c64keys.c, line 199
						// (bitwise/arithmetic) 	//ops: 0, 3, 3
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	63
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	sub	r0
						// (save result) // isreg
	mt	r0
	mr	r2

						//c64keys.c, line 201
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	24
	addt	r6
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

						//c64keys.c, line 202
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 28, 0 with 24, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
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

						//c64keys.c, line 203
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_c64keys
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
						// allocreg r1

						//c64keys.c, line 204
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
	.liconst	3
	shl	r1
						// (save result) // isreg

						//c64keys.c, line 204
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sgn
	shr	r2
						// (save result) // isreg

						//c64keys.c, line 204
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2

						//c64keys.c, line 204
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
	.liconst	63
	and	r1
						// (save result) // isreg

						//c64keys.c, line 205
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	4
	mul	r1
						// (save result) // isreg

						//c64keys.c, line 205
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 6
						// (obj to r5) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// (prepobj r5)
 						// (prepobj r5)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_keytable
						// extern pe is varadr
	mr	r5
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r5
						// (save result) // isreg
						// freereg r1

						//c64keys.c, line 205
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 4a
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r5
						//Saving to reg r3
						// (save temp)isreg
	mr	r3
						//save_temp done
						//No need to mask - same size
						// allocreg r1

						//c64keys.c, line 208
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 62
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
	.liconst	16384
	and	r1
						// (save result) // isreg
						// freereg r1

						//c64keys.c, line 208
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l25
		add	r7
						// allocreg r2
						// allocreg r1

						//c64keys.c, line 210
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 240 type 103
						// matchobj comparing flags 240 with 2
						// matchobj comparing flags 240 with 82
						// reg r4 - only match against tmp
	mt	r4
	and	r1
						// (save result) // isreg
						// freereg r1

						//c64keys.c, line 210
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l27
		add	r7
						// allocreg r1

						//c64keys.c, line 211
		// Offsets 0, 8
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 8, 0
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 240
						// matchobj comparing flags 82 with 82
						//extern: comparing 8 with 0
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
	st	r0
						//save_temp done

						//c64keys.c, line 213
						//pcreltotemp
	.lipcrel	l60
	add	r7
l27: # 

						//c64keys.c, line 213
		// Offsets 1, 8
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 8, 0
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 8)
	.liabs	_c64keys, 8
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

						//c64keys.c, line 216
						//pcreltotemp
	.lipcrel	l60
	add	r7
l25: # 

						//c64keys.c, line 218
						// (bitwise/arithmetic) 	//ops: 0, 5, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 240 type 103
						// matchobj comparing flags 240 with 2
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 240
	.liconst	36
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//c64keys.c, line 218
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
				// flags 2
	//mr
	and	r0

						//c64keys.c, line 218
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l31
		add	r7
						// freereg r1
						// allocreg r1

						//c64keys.c, line 220
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// matchobj comparing flags 42 with 2
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 2
	.liconst	8192
	and	r1
						// (save result) // isreg
						// freereg r1

						//c64keys.c, line 220
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l33
		add	r7
						// allocreg r1

						//c64keys.c, line 221
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	16
	sgn
	shr	r3
						// (save result) // isreg
l33: # 

						//c64keys.c, line 222
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						// (obj to r0) flags 62 type 103
						// deref 
	ld	r5
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	-8193
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x62
	mt	r0
	st	r5

						//c64keys.c, line 225
						//pcreltotemp
	.lipcrel	l39
	add	r7
l31: # 

						//c64keys.c, line 225
						// (test)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_c64keys, 8
						//extern deref
						//sizemod based on type 0x3
	ldt

						//c64keys.c, line 225
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l39
		add	r7

						//c64keys.c, line 225
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
	.liconst	16
	sgn
	shr	r0
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

						//c64keys.c, line 225
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

						//c64keys.c, line 225
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l39
		add	r7
						// freereg r1
						// allocreg r1

						//c64keys.c, line 228
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_c64keys, 12
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	2048
	and	r1
						// (save result) // isreg
						// freereg r1

						//c64keys.c, line 228
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l38
		add	r7
						// allocreg r1

						//c64keys.c, line 228
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
	mr	r1
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	2048
	and	r1
						// (save result) // isreg
						// freereg r1

						//c64keys.c, line 228
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l39
		add	r7
l38: # 
						// allocreg r1

						//c64keys.c, line 230
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						// (obj to r0) flags 62 type 103
						// deref 
	ld	r5
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	8192
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x62
	mt	r0
	st	r5

						//c64keys.c, line 231
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 172
		// Real offset of type is 172, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 62
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	36
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
l39: # 
						// allocreg r1

						//c64keys.c, line 235
						// (bitwise/arithmetic) 	//ops: 4, 5, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 42
						// reg r4 - only match against tmp
	mt	r4
	and	r1
						// (save result) // isreg
						// freereg r1

						//c64keys.c, line 235
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l43
		add	r7
						// allocreg r1

						//c64keys.c, line 240
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 3
						// matchobj comparing flags 2 with 240
						// extern
	.liabs	_c64keys, 12
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	768
	and	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l44
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	256
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l45
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l49
		add	r7
						//pcreltotemp
	.lipcrel	l53
	add	r7
						// freereg r1
l44: # 
						// allocreg r1

						//c64keys.c, line 242
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	255
	and	r1
						// (save result) // isreg

						//c64keys.c, line 242
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	mul	r1
						// (save result) // isreg

						//c64keys.c, line 242
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_specialtable
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//c64keys.c, line 242
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//c64keys.c, line 243
						//pcreltotemp
	.lipcrel	l43
	add	r7
l45: # 
						// allocreg r1

						//c64keys.c, line 245
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	255
	and	r1
						// (save result) // isreg

						//c64keys.c, line 245
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	mul	r1
						// (save result) // isreg

						//c64keys.c, line 245
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_specialtable
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//c64keys.c, line 245
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	1
	add	r1
						// (save result) // isreg

						//c64keys.c, line 245
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//c64keys.c, line 246
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	32
						//sizemod based on type 0x103
	ldidx	r6

						//c64keys.c, line 246
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l47
		add	r7
						// allocreg r1

						//c64keys.c, line 247
		// Offsets 96, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	28
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	96
						// (save temp)store type 3
	st	r0
						//save_temp done

						//c64keys.c, line 249
						//pcreltotemp
	.lipcrel	l43
	add	r7
l47: # 

						//c64keys.c, line 249
		// Offsets 224, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	24
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	224
						// (save temp)store type 3
	st	r0
						//save_temp done

						//c64keys.c, line 250
						//pcreltotemp
	.lipcrel	l43
	add	r7
						// freereg r1
l49: # 
						// allocreg r1

						//c64keys.c, line 252
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	255
	and	r1
						// (save result) // isreg

						//c64keys.c, line 252
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	mul	r1
						// (save result) // isreg

						//c64keys.c, line 252
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_specialtable
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//c64keys.c, line 252
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	1
	add	r1
						// (save result) // isreg

						//c64keys.c, line 252
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//c64keys.c, line 253
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	32
						//sizemod based on type 0x103
	ldidx	r6

						//c64keys.c, line 253
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l51
		add	r7
						// allocreg r1

						//c64keys.c, line 254
		// Offsets 97, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	28
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	97
						// (save temp)store type 3
	st	r0
						//save_temp done

						//c64keys.c, line 256
						//pcreltotemp
	.lipcrel	l43
	add	r7
l51: # 

						//c64keys.c, line 256
		// Offsets 225, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	24
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	225
						// (save temp)store type 3
	st	r0
						//save_temp done

						//c64keys.c, line 257
						//pcreltotemp
	.lipcrel	l43
	add	r7
						// freereg r1
l53: # 
						// allocreg r1

						//c64keys.c, line 259
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	255
	and	r1
						// (save result) // isreg

						//c64keys.c, line 259
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	mul	r1
						// (save result) // isreg

						//c64keys.c, line 259
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_specialtable
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//c64keys.c, line 259
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	1
	add	r1
						// (save result) // isreg

						//c64keys.c, line 259
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
l43: # 
						// allocreg r1

						//c64keys.c, line 263
						// (test)
						// (obj to tmp) flags 2 type 103
						// var, auto|reg
	.liconst	32
						//sizemod based on type 0x103
	ldidx	r6

						//c64keys.c, line 263
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l55
		add	r7
						// freereg r1

						//c64keys.c, line 265
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	128
	or	r3
						// (save result) // isreg
						// allocreg r1

						//c64keys.c, line 266
						//comp
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// matchobj comparing flags 1 with 42
	.liconst	-1
	xor	r1
						// (save result) // isreg

						//c64keys.c, line 266
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	32512
	and	r1
						// (save result) // isreg

						//c64keys.c, line 266
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_c64keys, 12
						//extern deref
						//sizemod based on type 0x3
	ldt
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 12)
	.liabs	_c64keys, 16
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//c64keys.c, line 269
						//pcreltotemp
	.lipcrel	l56
	add	r7
l55: # 
						// allocreg r1

						//c64keys.c, line 269
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	32512
	and	r1
						// (save result) // isreg

						//c64keys.c, line 269
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_c64keys, 12
						//extern deref
						//sizemod based on type 0x3
	ldt
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 12)
	.liabs	_c64keys, 16
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1
l56: # 
						// allocreg r1

						//c64keys.c, line 270
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6

						//c64keys.c, line 270
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l58
		add	r7
						// freereg r1

						//c64keys.c, line 271
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	stdec	r6
						// allocreg r1

						//c64keys.c, line 271
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 244
		// Real offset of type is 248, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_c64keys
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//c64keys.c, line 271
						//call
						//pcreltotemp
	.lipcrel	_c64keyboard_write // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l58: # 

						//c64keys.c, line 272
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	stdec	r6
						// allocreg r1

						//c64keys.c, line 272
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 252
		// Real offset of type is 256, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// extern (offset 0)
	.liabs	_c64keys
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//c64keys.c, line 272
						//call
						//pcreltotemp
	.lipcrel	_c64keyboard_write // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//c64keys.c, line 273
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	28
						//sizemod based on type 0x3
	ldidx	r6

						//c64keys.c, line 273
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l60
		add	r7

						//c64keys.c, line 274
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	stdec	r6
						// allocreg r1

						//c64keys.c, line 274
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 260
		// Real offset of type is 264, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_c64keys
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//c64keys.c, line 274
						//call
						//pcreltotemp
	.lipcrel	_c64keyboard_write // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l60: # 
						// allocreg r1

						//c64keys.c, line 277
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//c64keys.c, line 278
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//c64keys.c, line 195
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	20
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
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//c64keys.c, line 195
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	16
	sgn
	cmp	r0

						//c64keys.c, line 195
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l18
		add	r7
						// freereg r1
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 102 type 3
						// matchobj comparing flags 102 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//c64keys.c, line 167
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 102
						// const
						// matchobj comparing flags 1 with 102
	.liconst	1
	add	r4
						// (save result) // isreg

						//c64keys.c, line 167
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
	sgn
	cmp	r4

						//c64keys.c, line 167
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l65
		add	r7
						// freereg r1
						// freereg r2
						// freereg r3
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//c64keys.c, line 281
		// Offsets 0, 4
		// Have am? no, no
		// flags 62, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 4, 0
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// extern (offset 4)
	.liabs	_c64keys, 4
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 82
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
l13: # 

						//c64keys.c, line 284
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 403
						// extern
	.liabs	_c64keys, 40
						//extern deref
						//sizemod based on type 0x403
	ldt
	mr	r0
						// (obj to tmp) flags 2 type 403
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_c64keys, 44
						//extern deref
						//sizemod based on type 0x403
	ldt
	cmp	r0

						//c64keys.c, line 284
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l62
		add	r7
						// freereg r1

						//c64keys.c, line 286
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 403
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_c64keys, 40
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
	.liconst	4
	mul	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0x6a
	mt	r0
	st	r6
						// allocreg r1

						//c64keys.c, line 286
						// (bitwise/arithmetic) 	//ops: 0, 7, 2
						// (obj to r1) flags 82 type a
						// matchobj comparing flags 82 with 6a
						// matchobj comparing flags 82 with 6a
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 6a
						// matchobj comparing flags 82 with 6a
						// extern (offset 48)
	.liabs	_c64keys, 48
						// extern pe is varadr
	mr	r1
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 6a
						// deref 
	ld	r6
	add	r1
						// (save result) // isreg

						//c64keys.c, line 286
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 502
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 6a
						// matchobj comparing flags a1 with 6a
						// deref
						// const to r0
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	268435346
	mr	r0
						// (obj to tmp) flags 6a type 103
						// matchobj comparing flags 6a with 1
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r1
						//Saving to reg r0
						// (save temp)store type 2
	hlf
	st	r0
						//save_temp done
						// freereg r1

						//c64keys.c, line 287
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 403
						// matchobj comparing flags 2 with 6a
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_c64keys, 40
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
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//c64keys.c, line 287
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
 						// extern (offset 40)
	.liabs	_c64keys, 44
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
l62: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-40
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
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
	.global	_c64keyboard_checkreset
_c64keyboard_checkreset:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3

						//c64keys.c, line 293
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done

						//c64keys.c, line 294
						//call
						//pcreltotemp
	.lipcrel	_DisableInterrupts // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//c64keys.c, line 295
						// (test)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_c64keys
						//extern deref
						//sizemod based on type 0x3
	ldt

						//c64keys.c, line 295
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l74
		add	r7
						// allocreg r1

						//c64keys.c, line 297
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_c64keys, 12
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	32512
	and	r1
						// (save result) // isreg

						//c64keys.c, line 297
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1792
	cmp	r1
						// freereg r1

						//c64keys.c, line 297
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l76
		add	r7

						//c64keys.c, line 298
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
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
l76: # 

						//c64keys.c, line 299
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_c64keys
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
l74: # 

						//c64keys.c, line 301
						//call
						//pcreltotemp
	.lipcrel	_EnableInterrupts // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//c64keys.c, line 302
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// freereg r3
	ldinc	r6
	mr	r3

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
	.ctor .ctor.101.c64keys
	.ref	_c64keysconstructor
	.section	.text.3
	.global	_c64keysconstructor
_c64keysconstructor:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
		// Offsets 65535, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 102
						// const
	.liconst	65535
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//c64keys.c, line 308
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
l83: # 
						// allocreg r1

						//c64keys.c, line 309
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	2
	mul	r1
						// (save result) // isreg

						//c64keys.c, line 309
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 16)
	.liabs	_c64keys, 16
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//c64keys.c, line 309
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 240, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 240 type 102
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r1

						//c64keys.c, line 309
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 240
						// const
						// matchobj comparing flags 1 with 240
	.liconst	1
	add	r2
						// (save result) // isreg

						//c64keys.c, line 309
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	sgn
	cmp	r2

						//c64keys.c, line 309
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l83
		add	r7

						//c64keys.c, line 310
		// Offsets 0, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 0
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// extern (offset 4)
	.liabs	_c64keys, 4
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

						//c64keys.c, line 311
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
	stinc	r0
						//save_temp done

						//c64keys.c, line 312
		// Offsets 0, 12
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 12, 0
		// Real offset of type is 12, isauto 0
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

						//c64keys.c, line 313
		// Offsets 0, 40
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 40, 0
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 40 with 12
						//Fuzzy match found, offset: 28 (varadr: 1)
	.liconst	28
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//c64keys.c, line 314
		// Offsets 0, 44
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 44, 0
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r2
						// freereg r3
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.data.4
	.global	_specialtable
_specialtable:
	.byte	78
	.byte	79
	.byte	77
	.byte	76
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.section	.data.5
	.align	4
	.global	_keytable
_keytable:
	.int	65
	.int	4390980
	.int	141000704
	.int	6258693
	.int	5799938
	.int	5865475
	.int	32772
	.int	140869633
	.int	3
	.int	17
	.int	32
	.int	4
	.int	49
	.int	33
	.int	18
	.int	140771680
	.int	5
	.int	19
	.int	34
	.int	6
	.int	51
	.int	35
	.int	20
	.int	50
	.int	3997703
	.int	21
	.int	36
	.int	4063240
	.int	53
	.int	37
	.int	2949142
	.int	52
	.int	4128777
	.int	3014679
	.int	1900582
	.int	6029322
	.int	983095
	.int	1966119
	.int	3080216
	.int	54
	.int	12
	.int	6094873
	.int	2031656
	.int	11
	.int	3932217
	.int	4849705
	.int	5898266
	.int	56
	.int	13
	.int	5963803
	.int	42
	.int	70
	.int	609
	.int	2818048
	.int	48
	.int	6160442
	.int	1
	.int	6881349
	.int	4326499
	.int	2
	.int	64
	.int	2150
	.int	16
	.int	16384
	.section	.bss.6
	.align	4
	.global	_c64keys
	.comm	_c64keys,112
