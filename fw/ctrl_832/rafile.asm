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
	.global	_RARead
_RARead:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-12
	add	r6
						// allocreg r5
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
 						// reg r5 - no need to prep
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
						// allocreg r4
						// allocreg r3
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 102 type a
						// matchobj comparing flags 102 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	28
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2
						// allocreg r1

						//rafile.c, line 6
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 102
						// var, auto|reg
						// matchobj comparing flags 1 with 102
	.liconst	4
	addt	r6
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

						//rafile.c, line 9
						// (bitwise/arithmetic) 	//ops: 6, 0, 5
						//Special case - addt
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	304
	addt	r5
						// (save temp)isreg
	mr	r4
						//save_temp done
						// matchobj comparing flags 42 with 42
						// Obsoleting t1

						//rafile.c, line 9
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						// (obj to r0) flags 62 type 104
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r4
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	511
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//rafile.c, line 12
						// (test)
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r6

						//rafile.c, line 12
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l4
		add	r7
						// freereg r1
						// allocreg r1

						//rafile.c, line 15
						// (bitwise/arithmetic) 	//ops: 0, 7, 2
						// (obj to r1) flags 2 type 104
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	32
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r6
	add	r1
						// (save result) // isreg

						//rafile.c, line 15
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	12
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r1
						// freereg r1

						//rafile.c, line 16
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	512
	sgn
	cmp	r0

						//rafile.c, line 16
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l6
		add	r7
						// allocreg r1

						//rafile.c, line 17
		// Offsets 512, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	512
						// (save temp)store type 3
	st	r0
						//save_temp done
l6: # 

						//rafile.c, line 18
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type 104
						// deref 
	ld	r6
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size

						//rafile.c, line 19
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	sgn
	cmp	r2

						//rafile.c, line 19
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l23
		add	r7
						// freereg r1
l20: # 
						// allocreg r1

						//rafile.c, line 20
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	308
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 20
						// (bitwise/arithmetic) 	//ops: 2, 3, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg

						//rafile.c, line 20
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 42
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r3
						//save_temp done
						// freereg r1

						//rafile.c, line 19
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r2
						// (save result) // isreg

						//rafile.c, line 19
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	sgn
	cmp	r2

						//rafile.c, line 19
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l20
		add	r7
l23: # 
						// allocreg r1

						//rafile.c, line 22
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//rafile.c, line 22
						// (bitwise/arithmetic) 	//ops: 2, 7, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r6
	sub	r1
						// (save result) // isreg

						//rafile.c, line 22
						// (bitwise/arithmetic) 	//ops: 2, 5, 1
						// (obj to r0) flags 4a type 104
						// matchobj comparing flags 4a with 62
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 4a
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r4
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x62
	mt	r0
	st	r4
	// Volatile, or not int - not caching

						//rafile.c, line 23
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	32
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	36
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r1
l4: # 
						// allocreg r1

						//rafile.c, line 28
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// var, auto|reg
	.liconst	32
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	511
	cmp	r0

						//rafile.c, line 28
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l24
		add	r7
						// freereg r1
l21: # 

						//rafile.c, line 30
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// reg r3 - only match against tmp
	mt	r3
	stdec	r6
						// allocreg r1

						//rafile.c, line 30
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 30
						//call
						//pcreltotemp
	.lipcrel	_FileRead // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//rafile.c, line 30
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//rafile.c, line 30
						//FIXME convert
						// (convert - reducing type 103 to 3
						//No need to mask - same size

						//rafile.c, line 30
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1
						// allocreg r1

						//rafile.c, line 31
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// matchobj comparing flags 42 with 2
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 31
						//call
						//pcreltotemp
	.lipcrel	_FileNextSector // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//rafile.c, line 32
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 104
						// var, auto|reg
	.liconst	32
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	512
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	36
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//rafile.c, line 33
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						// (obj to r0) flags 62 type 104
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r4
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	512
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x62
	mt	r0
	st	r4
	// Volatile, or not int - not caching

						//rafile.c, line 34
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	512
	add	r3
						// (save result) // isreg

						//rafile.c, line 28
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	511
	cmp	r0

						//rafile.c, line 28
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l21
		add	r7
l24: # 
						// allocreg r1

						//rafile.c, line 37
						// (test)
						// (obj to tmp) flags 2 type 104
						// var, auto|reg
	.liconst	32
	ldidx	r6

						//rafile.c, line 37
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l15
		add	r7
						// freereg r1

						//rafile.c, line 40
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	308
	addt	r5
						// (save temp)store type a
	st	r6
						//save_temp done

						//rafile.c, line 40
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 62
						// deref 
	//nop
	stdec	r6
						// allocreg r1

						//rafile.c, line 40
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 62
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 40
						//call
						//pcreltotemp
	.lipcrel	_FileRead // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//rafile.c, line 40
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//rafile.c, line 40
						//FIXME convert
						// (convert - reducing type 103 to 3
						//No need to mask - same size

						//rafile.c, line 40
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1
						// allocreg r1

						//rafile.c, line 41
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 52
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// matchobj comparing flags 42 with 2
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 41
						//call
						//pcreltotemp
	.lipcrel	_FileNextSector // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//rafile.c, line 42
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	8
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

						//rafile.c, line 43
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	32
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
	cmp	r0

						//rafile.c, line 43
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l25
		add	r7
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 102 type 3
						// matchobj comparing flags 102 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
l16: # 
						// allocreg r1

						//rafile.c, line 44
						// (bitwise/arithmetic) 	//ops: 7, 3, 2
						// (obj to r1) flags 62 type a
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 62
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg

						//rafile.c, line 44
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 42
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r3
						//save_temp done
						// freereg r1

						//rafile.c, line 43
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r2
						// (save result) // isreg
						// allocreg r1

						//rafile.c, line 43
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//rafile.c, line 43
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	32
	ldidx	r6
	cmp	r1
						// freereg r1

						//rafile.c, line 43
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l16
		add	r7
l25: # 
						// allocreg r1

						//rafile.c, line 46
						// Z disposable
						// (bitwise/arithmetic) 	//ops: 0, 5, 1
						// (obj to r0) flags 2 type 104
						// var, auto|reg
	.liconst	32
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 2
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r4
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x62
	mt	r0
	st	r4
	// Volatile, or not int - not caching
l15: # 

						//rafile.c, line 48
						//setreturn
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
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
	.section	.text.1
	.global	_RAReadLine
_RAReadLine:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-8
	add	r6
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
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//rafile.c, line 57
						// (test)
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	28
	ldidx	r6

						//rafile.c, line 57
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l43
		add	r7
						// freereg r1
l41: # 

						//rafile.c, line 59
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	304
	addt	r4
						// (save temp)isreg
	mr	r3
						//save_temp done

						//rafile.c, line 59
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						// (obj to r0) flags 62 type 104
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r3
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	511
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching
						// allocreg r1

						//rafile.c, line 62
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type 104
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	28
	ldidx	r6
	add	r1
						// (save result) // isreg

						//rafile.c, line 62
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
						//Saving to reg r5
						// (save temp)isreg
	mr	r5
						//save_temp done
						//No need to mask - same size
						// freereg r1

						//rafile.c, line 63
						// (test)
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r6

						//rafile.c, line 63
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l32
		add	r7
						// allocreg r1

						//rafile.c, line 65
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	308
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 65
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	stdec	r6
						// freereg r1
						// allocreg r1

						//rafile.c, line 65
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 65
						//call
						//pcreltotemp
	.lipcrel	_FileRead // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//rafile.c, line 66
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 64, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 66
						//call
						//pcreltotemp
	.lipcrel	_FileNextSector // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l32: # 
						// allocreg r1

						//rafile.c, line 68
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	512
	sgn
	cmp	r5

						//rafile.c, line 68
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l34
		add	r7

						//rafile.c, line 69
		// Offsets 512, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r5
						//save_temp done
l34: # 

						//rafile.c, line 70
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type 104
						// deref 
	ld	r6
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	8
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r5

						//rafile.c, line 71
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
	sgn
	cmp	r2

						//rafile.c, line 71
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l37
		add	r7
						// freereg r1
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 102 type a
						// matchobj comparing flags 102 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	24
	ldidx	r6
						// (save temp)isreg
	mr	r5
						//save_temp done
l35: # 
						// allocreg r1

						//rafile.c, line 72
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	308
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 72
						// (bitwise/arithmetic) 	//ops: 2, 3, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg

						//rafile.c, line 72
		// Offsets 0, 0
		// Have am? no, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 42
						// deref 
	byt
	ld	r1
						// (save temp)store type 1
	stbinc	r5
						//save_temp done

						//rafile.c, line 73
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						// (obj to r0) flags 62 type 104
						// matchobj comparing flags 62 with 6a
						// deref 
	ld	r3
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x62
	mt	r0
	st	r3
	// Volatile, or not int - not caching

						//rafile.c, line 74
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	28
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//rafile.c, line 75
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 75
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	10
	cmp	r1
						// freereg r1

						//rafile.c, line 75
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l40
		add	r7
						// allocreg r1

						//rafile.c, line 77
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//rafile.c, line 78
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0

						//rafile.c, line 79
						//pcreltotemp
	.lipcrel	l26
	add	r7
l40: # 

						//rafile.c, line 71
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r2
						// (save result) // isreg

						//rafile.c, line 71
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	sgn
	cmp	r2

						//rafile.c, line 71
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l35
		add	r7
						// freereg r1
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	28
	addt	r6
	stmpdec	r5
l37: # 
						// allocreg r1

						//rafile.c, line 57
						// (test)
						// (obj to tmp) flags 2 type 104
						// var, auto|reg
	.liconst	28
	ldidx	r6

						//rafile.c, line 57
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l41
		add	r7
						// freereg r1
l43: # 
						// allocreg r1

						//rafile.c, line 82
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0
l26: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-8
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
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
	.global	_RASeek
_RASeek:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
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
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r1

						//rafile.c, line 91
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	20
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	cmp	r0

						//rafile.c, line 91
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l48
		add	r7
						// freereg r1
						// allocreg r1

						//rafile.c, line 92
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	304
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 92
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	16
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 6a type 104
						// matchobj comparing flags 6a with 2
						// matchobj comparing flags 6a with 2
						// deref 
	ld	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r1
l48: # 

						//rafile.c, line 93
						// (bitwise/arithmetic) 	//ops: 0, 0, 6
						// (obj to r5) flags 2 type 104
						// var, auto|reg
	.liconst	16
	ldidx	r6
	mr	r5
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	511
	and	r5
						// (save result) // isreg
						// allocreg r1

						//rafile.c, line 94
						// (bitwise/arithmetic) 	//ops: 0, 6, 2
						// (obj to r1) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 2
						// reg r5 - only match against tmp
	mt	r5
	sub	r1
						// (save result) // isreg

						//rafile.c, line 94
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	9
	shr	r1
						// (save result) // isreg

						//rafile.c, line 95
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	stdec	r6

						//rafile.c, line 95
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//rafile.c, line 95
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 95
						//call
						//pcreltotemp
	.lipcrel	_FileSeek // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//rafile.c, line 95
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//rafile.c, line 95
						//FIXME convert
						// (convert - reducing type 103 to 3
						//No need to mask - same size

						//rafile.c, line 95
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 5
						// (obj to r4) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
	mr	r4
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	and	r4
						// (save result) // isreg
						// freereg r1

						//rafile.c, line 96
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//rafile.c, line 96
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l50
		add	r7
						// allocreg r1

						//rafile.c, line 96
						// (test)
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 42
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//rafile.c, line 96
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l50
		add	r7
						// freereg r1
						// allocreg r1

						//rafile.c, line 98
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	308
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 98
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	stdec	r6
						// freereg r1
						// allocreg r1

						//rafile.c, line 98
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 68, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 98
						//call
						//pcreltotemp
	.lipcrel	_FileRead // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//rafile.c, line 98
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//rafile.c, line 98
						//FIXME convert
						// (convert - reducing type 103 to 3
						//No need to mask - same size

						//rafile.c, line 98
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 5, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
	and	r4
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//rafile.c, line 99
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 84
		// Real offset of type is 84, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 99
						//call
						//pcreltotemp
	.lipcrel	_FileNextSector // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l50: # 
						// allocreg r1

						//rafile.c, line 101
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	304
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 101
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 2, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 92
		// Real offset of type is 92, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	16
	ldidx	r6
						// (save temp)store type 4
	st	r1
						//save_temp done
						// freereg r1

						//rafile.c, line 102
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
	mr	r0
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

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.3
	.global	_RAOpen
_RAOpen:
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
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r1

						//rafile.c, line 109
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 40
						// reg r4 - only match against tmp
	//mt
				// flags 42
	and	r4

						//rafile.c, line 109
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l55
		add	r7

						//rafile.c, line 110
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
	mr	r0

						//rafile.c, line 111
						//pcreltotemp
	.lipcrel	l52
	add	r7
						// freereg r1
l55: # 

						//rafile.c, line 111
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	12
	ldidx	r6
	stdec	r6
						// allocreg r1

						//rafile.c, line 111
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rafile.c, line 111
						//call
						//pcreltotemp
	.lipcrel	_FileOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//rafile.c, line 111
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//rafile.c, line 111
						//FIXME convert
						// (convert - reducing type 103 to 3
						//No need to mask - same size
						// allocreg r3

						//rafile.c, line 112
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	24
	addt	r4
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//rafile.c, line 112
						// (bitwise/arithmetic) 	//ops: 5, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	300
	addt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done

						//rafile.c, line 112
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 104
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r3
						// (save temp)store type 4
	st	r2
						//save_temp done
						// freereg r3
						// freereg r2
						// allocreg r2

						//rafile.c, line 113
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 5, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	304
	addt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done

						//rafile.c, line 113
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
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 4
	st	r2
						//save_temp done
						// freereg r2

						//rafile.c, line 114
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// freereg r1
l52: # 
						// allocreg r1
						// freereg r1
						// freereg r4
	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

