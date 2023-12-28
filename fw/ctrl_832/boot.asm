	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_BootHome
_BootHome:
	stdec	r6

						//boot.c, line 20
		// Offsets 6300416, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 1
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l1,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	6300416
						// (save temp)store type a
	st	r0
						//save_temp done
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
	.section	.text.1
	.global	_BootClearScreen
_BootClearScreen:
	stdec	r6
	mt	r3
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
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r3
						// allocreg r1

						//boot.c, line 128
						//FIXME convert
						// (convert - reducing type a to 3
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 40
						// reg r2 - only match against tmp
	//mt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//boot.c, line 128
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	8388607
	and	r1
						// (save result) // isreg

						//boot.c, line 128
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	6815744
	xor	r1
						// (save result) // isreg

						//boot.c, line 128
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to a
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size
						// freereg r1

						//boot.c, line 129
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
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done

						//boot.c, line 129
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
	sgn
	cmp	r0

						//boot.c, line 129
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l12
		add	r7
l11: # 

						//boot.c, line 130
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 102
						// const
	.liconst	0
						// (save temp)store type 2
	hlf
	st	r2
						//save_temp done

						//boot.c, line 130
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	add	r2
						// (save result) // isreg

						//boot.c, line 129
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r3
						// (save result) // isreg

						//boot.c, line 129
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	ldidx	r6
	sgn
	cmp	r3

						//boot.c, line 129
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l11
		add	r7
l12: # 
						// freereg r2
						// freereg r3
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
	.global	_BootUploadLogo
_BootUploadLogo:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-828
	add	r6
						// allocreg r5
						// allocreg r4
						// allocreg r3

						//boot.c, line 140
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 828
		// Real offset of type is 828, isauto 0
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

						//boot.c, line 143
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l17,0
						// static pe is varadr
	stdec	r6

						//boot.c, line 143
						// (address)
						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	4
	addt	r6
	mr	r0

						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	828
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// allocreg r1

						//boot.c, line 143
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 844
		// Real offset of type is 848, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	824
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 143
						//call
						//pcreltotemp
	.lipcrel	_RAOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//boot.c, line 143
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//boot.c, line 143
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l44
		add	r7

						//boot.c, line 144
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	512
	stdec	r6

						//boot.c, line 144
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//boot.c, line 144
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 860
		// Real offset of type is 868, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	828
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 144
						//call
						//pcreltotemp
	.lipcrel	_RARead // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//boot.c, line 145
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 824
		// Real offset of type is 824, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r5
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
	.liconst	828
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r5
l38: # 
						// allocreg r1

						//boot.c, line 146
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	824
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	80
	mul	r1
						// (save result) // isreg

						//boot.c, line 146
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	529432
	add	r1
						// (save result) // isreg

						//boot.c, line 146
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	6815744
	xor	r1
						// (save result) // isreg

						//boot.c, line 146
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to a
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						//Saving to reg r3
						// (save temp)isreg
	mr	r3
						//save_temp done
						//No need to mask - same size
						// freereg r1

						//boot.c, line 147
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 820
		// Real offset of type is 820, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done
l39: # 
						// allocreg r1

						//boot.c, line 148
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	512
	cmp	r4

						//boot.c, line 148
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l27
		add	r7
						// freereg r1

						//boot.c, line 149
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6

						//boot.c, line 149
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//boot.c, line 149
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 892
		// Real offset of type is 900, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	828
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 149
						//call
						//pcreltotemp
	.lipcrel	_RARead // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//boot.c, line 150
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 828
		// Real offset of type is 828, isauto 0
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
l27: # 
						// allocreg r1

						//boot.c, line 152
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 82 type a
						// (prepobj r1)
 						// (prepobj r1)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	mr	r1
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r4 - only match against tmp
	mt	r4
	add	r1
						// (save result) // isreg

						//boot.c, line 152
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r4
						// (save result) // isreg

						//boot.c, line 152
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 832
		// Real offset of type is 832, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//boot.c, line 153
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 82 type a
						// matchobj comparing flags 82 with 6a
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 6a
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	mr	r1
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r4 - only match against tmp
	mt	r4
	add	r1
						// (save result) // isreg

						//boot.c, line 153
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r4
						// (save result) // isreg

						//boot.c, line 153
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 832
		// Real offset of type is 832, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r3
						//save_temp done
						// freereg r1

						//boot.c, line 147
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r5
						// (save result) // isreg

						//boot.c, line 147
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	13
	sgn
	cmp	r5

						//boot.c, line 147
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l39
		add	r7
						// allocreg r1

						//boot.c, line 145
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	824
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
	.liconst	828
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//boot.c, line 145
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	32
	sgn
	cmp	r0

						//boot.c, line 145
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l38
		add	r7
						// freereg r1
						// allocreg r1

						//boot.c, line 156
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 824
		// Real offset of type is 824, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r5
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
	.liconst	828
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r5
						// freereg r1
l40: # 
						// allocreg r1

						//boot.c, line 157
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	824
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	80
	mul	r1
						// (save result) // isreg

						//boot.c, line 157
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	549912
	add	r1
						// (save result) // isreg

						//boot.c, line 157
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	6815744
	xor	r1
						// (save result) // isreg

						//boot.c, line 157
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to a
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						//Saving to reg r3
						// (save temp)isreg
	mr	r3
						//save_temp done
						//No need to mask - same size
						// freereg r1

						//boot.c, line 158
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 820
		// Real offset of type is 820, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done
l41: # 
						// allocreg r1

						//boot.c, line 159
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	512
	cmp	r4

						//boot.c, line 159
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l37
		add	r7
						// freereg r1

						//boot.c, line 160
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6

						//boot.c, line 160
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//boot.c, line 160
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 892
		// Real offset of type is 900, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	828
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 160
						//call
						//pcreltotemp
	.lipcrel	_RARead // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//boot.c, line 161
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 828
		// Real offset of type is 828, isauto 0
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
l37: # 
						// allocreg r1

						//boot.c, line 163
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 82 type a
						// (prepobj r1)
 						// (prepobj r1)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	mr	r1
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r4 - only match against tmp
	mt	r4
	add	r1
						// (save result) // isreg

						//boot.c, line 163
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r4
						// (save result) // isreg

						//boot.c, line 163
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 832
		// Real offset of type is 832, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//boot.c, line 164
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 82 type a
						// matchobj comparing flags 82 with 6a
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 6a
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	mr	r1
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r4 - only match against tmp
	mt	r4
	add	r1
						// (save result) // isreg

						//boot.c, line 164
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r4
						// (save result) // isreg

						//boot.c, line 164
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 832
		// Real offset of type is 832, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r3
						//save_temp done
						// freereg r1

						//boot.c, line 158
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r5
						// (save result) // isreg

						//boot.c, line 158
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	13
	sgn
	cmp	r5

						//boot.c, line 158
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l41
		add	r7
						// allocreg r1

						//boot.c, line 156
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	824
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
	.liconst	828
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//boot.c, line 156
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	32
	sgn
	cmp	r0

						//boot.c, line 156
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l40
		add	r7
						// freereg r1
l44: # 
						// allocreg r1

						//boot.c, line 168
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 912
		// Real offset of type is 912, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 168
						//call
						//pcreltotemp
	.lipcrel	_ClearError // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-828
	sub	r6
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.3
l17:
	.byte	77
	.byte	73
	.byte	78
	.byte	73
	.byte	77
	.byte	73
	.byte	71
	.byte	32
	.byte	65
	.byte	82
	.byte	84
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
	.section	.text.4
	.global	_BootUploadBall
_BootUploadBall:
	stdec	r6
	mt	r3
	stdec	r6
	.liconst	-820
	add	r6
						// allocreg r3

						//boot.c, line 180
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l50,0
						// static pe is varadr
	stdec	r6

						//boot.c, line 180
						// (address)
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	4
	addt	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//boot.c, line 180
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 840
		// Real offset of type is 844, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 180
						//call
						//pcreltotemp
	.lipcrel	_RAOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//boot.c, line 180
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//boot.c, line 180
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l49
		add	r7

						//boot.c, line 182
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	16384
	stdec	r6

						//boot.c, line 182
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	6332416
	stdec	r6
						// allocreg r1

						//boot.c, line 182
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 856
		// Real offset of type is 864, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 182
						//call
						//pcreltotemp
	.lipcrel	_RARead // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
l49: # 
						// allocreg r1

						//boot.c, line 184
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 868
		// Real offset of type is 868, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 184
						//call
						//pcreltotemp
	.lipcrel	_ClearError // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r3
	.liconst	-820
	sub	r6
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.5
l50:
	.byte	77
	.byte	73
	.byte	78
	.byte	73
	.byte	77
	.byte	73
	.byte	71
	.byte	32
	.byte	66
	.byte	65
	.byte	76
	.byte	0
	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.6
	.global	_BootUploadCopper
_BootUploadCopper:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
	.liconst	-820
	add	r6
						// allocreg r4
						// allocreg r3
		// Offsets 6350464, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	6350464
						// (save temp)isreg
	mr	r3
						//save_temp done

						//boot.c, line 196
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l55,0
						// static pe is varadr
	stdec	r6

						//boot.c, line 196
						// (address)
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	4
	addt	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//boot.c, line 196
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 840
		// Real offset of type is 844, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 196
						//call
						//pcreltotemp
	.lipcrel	_RAOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//boot.c, line 196
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//boot.c, line 196
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l54
		add	r7

						//boot.c, line 198
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	860
	stdec	r6

						//boot.c, line 198
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 240 type a
						// matchobj comparing flags 240 with 1
						// reg r3 - only match against tmp
	mt	r3
	stdec	r6
						// allocreg r1

						//boot.c, line 198
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 856
		// Real offset of type is 864, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 240
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 198
						//call
						//pcreltotemp
	.lipcrel	_RARead // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//boot.c, line 199
						//pcreltotemp
	.lipcrel	l56
	add	r7
l54: # 
						// allocreg r2

						//boot.c, line 201
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 852
		// Real offset of type is 852, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 240 type a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//boot.c, line 201
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 240
						// const
						// matchobj comparing flags 1 with 240
	.liconst	2
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 201
						// Z disposable
		// Offsets 224, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 852
		// Real offset of type is 852, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	224
						// (save temp)store type 2
	hlf
	st	r2
						//save_temp done
						// freereg r2

						//boot.c, line 201
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 848
		// Real offset of type is 848, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done

						//boot.c, line 201
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	add	r1
						// (save result) // isreg

						//boot.c, line 202
		// Offsets 226, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 848
		// Real offset of type is 848, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	226
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done

						//boot.c, line 202
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	add	r1
						// (save result) // isreg

						//boot.c, line 202
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 848
		// Real offset of type is 848, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done

						//boot.c, line 202
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	add	r1
						// (save result) // isreg

						//boot.c, line 203
		// Offsets 228, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 848
		// Real offset of type is 848, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	228
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done

						//boot.c, line 203
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	add	r1
						// (save result) // isreg

						//boot.c, line 203
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 848
		// Real offset of type is 848, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done

						//boot.c, line 203
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	add	r1
						// (save result) // isreg

						//boot.c, line 204
		// Offsets 230, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 848
		// Real offset of type is 848, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	230
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done

						//boot.c, line 204
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	add	r1
						// (save result) // isreg

						//boot.c, line 204
		// Offsets 20480, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 848
		// Real offset of type is 848, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	20480
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done

						//boot.c, line 204
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	add	r1
						// (save result) // isreg

						//boot.c, line 205
		// Offsets 256, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 848
		// Real offset of type is 848, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	256
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done

						//boot.c, line 205
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	add	r1
						// (save result) // isreg

						//boot.c, line 205
		// Offsets 41472, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 848
		// Real offset of type is 848, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	41472
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done

						//boot.c, line 205
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	add	r1
						// (save result) // isreg

						//boot.c, line 206
		// Offsets 65535, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 848
		// Real offset of type is 848, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	65535
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done

						//boot.c, line 206
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	add	r1
						// (save result) // isreg

						//boot.c, line 206
						// Z disposable
		// Offsets 65534, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 848
		// Real offset of type is 848, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	65534
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r1
l56: # 
						// allocreg r1

						//boot.c, line 208
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 904
		// Real offset of type is 904, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 208
						//call
						//pcreltotemp
	.lipcrel	_ClearError // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r3
						// freereg r4
	.liconst	-820
	sub	r6
	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.7
l55:
	.byte	77
	.byte	73
	.byte	78
	.byte	73
	.byte	77
	.byte	73
	.byte	71
	.byte	32
	.byte	67
	.byte	79
	.byte	80
	.byte	0
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
	.global	_BootCustomInit
_BootCustomInit:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//boot.c, line 216
		// Offsets 1048576, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	1048576
						// (save temp)isreg
	mr	r2
						//save_temp done

						//boot.c, line 217
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_bootcustominit_bin
						// extern pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done

						//boot.c, line 218
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_bootcustominit_bin_len
						//extern deref
						//sizemod based on type 0x103
	ldt
						//Saving to reg r4
						// (save temp)isreg
	mr	r4
						//save_temp done
						//No need to mask - same size
						// allocreg r1

						//boot.c, line 219
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 219
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r4
						// (save result) // isreg

						//boot.c, line 219
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//boot.c, line 219
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l63
		add	r7
l62: # 

						//boot.c, line 220
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// deref 
	ldbinc	r3
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//boot.c, line 220
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r2
						// (save result) // isreg
						// allocreg r1

						//boot.c, line 219
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 219
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r4
						// (save result) // isreg

						//boot.c, line 219
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//boot.c, line 219
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l62
		add	r7
l63: # 
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
		//r2: no
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.9
	.global	_BootInit
_BootInit:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// const
	.liconst	268435427
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
		// Offsets 268435431, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 1
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done

						//boot.c, line 229
		// Offsets 32, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//boot.c, line 230
		// Offsets 36, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	36
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//boot.c, line 231
		// Offsets 5, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	5
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//boot.c, line 232
		// Offsets 33, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//boot.c, line 235
		// Offsets 32, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//boot.c, line 236
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	8
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//boot.c, line 237
		// Offsets 6, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	6
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//boot.c, line 238
		// Offsets 33, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//boot.c, line 240
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	40960
	stdec	r6
						// allocreg r1

						//boot.c, line 240
		// Offsets 524288, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	524288
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 240
						//call
						//pcreltotemp
	.lipcrel	_BootClearScreen // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//boot.c, line 241
						//call
						//pcreltotemp
	.lipcrel	_BootUploadLogo // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)

						//boot.c, line 242
						//call
						//pcreltotemp
	.lipcrel	_BootUploadBall // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)

						//boot.c, line 243
						//call
						//pcreltotemp
	.lipcrel	_BootUploadCopper // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)

						//boot.c, line 244
						//call
						//pcreltotemp
	.lipcrel	_BootCustomInit // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)

						//boot.c, line 246
		// Offsets 32, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	32
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//boot.c, line 247
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//boot.c, line 248
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	stbinc	r4
						//Disposable, postinc doesn't matter.
						//save_temp done

						//boot.c, line 249
						// Z disposable
		// Offsets 33, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r3
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r3
						// freereg r4
						// matchobj comparing flags 1 with 1
	.liconst	-4
	sub	r6
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
	.global	_BootPrintEx
_BootPrintEx:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-16
	add	r6
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type a
	st	r6
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//boot.c, line 260
						// (test)
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 40
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0xa
	ldt

						//boot.c, line 260
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7

						//boot.c, line 261
						//call
						//pcreltotemp
	.lipcrel	_BootHome // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l69: # 

						//boot.c, line 263
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 62 type a
						// deref 
	ld	r6
	stdec	r6

						//boot.c, line 263
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)

						//boot.c, line 264
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l70,0
						// static pe is varadr
	stdec	r6

						//boot.c, line 264
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 4 bytes
	.liconst	8
	add	r6
						// allocreg r1

						//boot.c, line 266
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 25
		// Real offset of type is 25, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 266
						//call
						//pcreltotemp
	.lipcrel	___strlen // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//boot.c, line 266
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//boot.c, line 266
						//FIXME convert
						// (convert - reducing type 103 to 101
						// matchobj comparing flags 1 with 4a
	.liconst	255
	and	r1

						//boot.c, line 267
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 4a type 101
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//boot.c, line 267
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	80
	sgn
	cmp	r0

						//boot.c, line 267
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l72
		add	r7
						// allocreg r1

						//boot.c, line 267
		// Offsets 80, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	80
						// (save temp)store type 3
	st	r0
						//save_temp done

						//boot.c, line 267
						//pcreltotemp
	.lipcrel	l73
	add	r7
l72: # 

						//boot.c, line 267
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, a
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 8a
						// matchobj comparing flags 2 with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
l73: # 

						//boot.c, line 267
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//boot.c, line 269
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
l85: # 

						//boot.c, line 270
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 9
		// Real offset of type is 9, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//boot.c, line 271
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 6
		// Real offset of type is 6, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done

						//boot.c, line 271
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x101
	byt
	ldidx	r6
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	12
	addt	r6
						//sizemod based on type 0x101
	byt
	stmpdec	r4

						//boot.c, line 271
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r0

						//boot.c, line 271
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l88
		add	r7
						// freereg r1
l86: # 
						// allocreg r1

						//boot.c, line 272
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 272
						// (bitwise/arithmetic) 	//ops: 7, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r6
	add	r1
						// (save result) // isreg

						//boot.c, line 272
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 62
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 272
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	8
	mul	r1
						// (save result) // isreg

						//boot.c, line 272
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l4,-256
						// static pe is varadr
	add	r1
						// (save result) // isreg

						//boot.c, line 272
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done

						//boot.c, line 272
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	//mt
	add	r1
						// (save result) // isreg

						//boot.c, line 272
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 9
		// Real offset of type is 9, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 42
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r2
						//save_temp done
						// freereg r1

						//boot.c, line 273
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 6a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r1

						//boot.c, line 273
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r1
						// (save result) // isreg

						//boot.c, line 273
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	cmp	r5
						// freereg r1

						//boot.c, line 273
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l83
		add	r7
						// allocreg r1

						//boot.c, line 274
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l4,0
						// static pe is varadr
	mr	r1
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	add	r1
						// (save result) // isreg

						//boot.c, line 274
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 9
		// Real offset of type is 9, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 42
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done
						// freereg r1

						//boot.c, line 276
						//pcreltotemp
	.lipcrel	l84
	add	r7
l83: # 
						// allocreg r1

						//boot.c, line 276
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
	add	r1
						// (save result) // isreg

						//boot.c, line 276
						// (bitwise/arithmetic) 	//ops: 2, 6, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
	add	r1
						// (save result) // isreg

						//boot.c, line 276
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 42
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 276
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	8
	mul	r1
						// (save result) // isreg

						//boot.c, line 276
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l4,-256
						// static pe is varadr
	add	r1
						// (save result) // isreg

						//boot.c, line 276
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	add	r1
						// (save result) // isreg

						//boot.c, line 276
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 9
		// Real offset of type is 9, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 42
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done
						// freereg r1
l84: # 

						//boot.c, line 276
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// const
	.liconst	1
	add	r2
						// (save result) // isreg
						// allocreg r1

						//boot.c, line 271
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 271
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
						//Saving to reg r3
						// (save temp)isreg
	mr	r3
						//save_temp done
						// matchobj comparing flags 1 with 4a
	.liconst	255
	and	r3
						// freereg r1
						// allocreg r1

						//boot.c, line 271
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 271
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
	sgn
	cmp	r1
						// freereg r1

						//boot.c, line 271
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l86
		add	r7
l88: # 
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 102 type 101
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done

						//boot.c, line 278
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 102
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0xa
	ldt
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	80
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//boot.c, line 269
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	1
	add	r4
						// (save result) // isreg
						// storing UNSIGNED CHAR to register - must mask
	.liconst	0xff
	and	r4
						// allocreg r1

						//boot.c, line 269
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//boot.c, line 269
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	8
	sgn
	cmp	r1
						// freereg r1

						//boot.c, line 269
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l85
		add	r7
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 1
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

	.section	.rodata.b
l70:
	.byte	10
	.byte	0
	.section	.data.c
	.global	_bootcustominit_bin
_bootcustominit_bin:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	51
	.byte	252
	.byte	0
	.byte	0
	.byte	0
	.byte	223
	.byte	241
	.byte	252
	.byte	51
	.byte	252
	.byte	0
	.byte	2
	.byte	0
	.byte	223
	.byte	240
	.byte	46
	.byte	35
	.byte	252
	.byte	0
	.byte	8
	.byte	230
	.byte	128
	.byte	0
	.byte	223
	.byte	240
	.byte	128
	.byte	35
	.byte	252
	.byte	0
	.byte	8
	.byte	230
	.byte	156
	.byte	0
	.byte	223
	.byte	240
	.byte	132
	.byte	51
	.byte	252
	.byte	44
	.byte	129
	.byte	0
	.byte	223
	.byte	240
	.byte	142
	.byte	51
	.byte	252
	.byte	244
	.byte	193
	.byte	0
	.byte	223
	.byte	240
	.byte	144
	.byte	51
	.byte	252
	.byte	0
	.byte	60
	.byte	0
	.byte	223
	.byte	240
	.byte	146
	.byte	51
	.byte	252
	.byte	0
	.byte	212
	.byte	0
	.byte	223
	.byte	240
	.byte	148
	.byte	51
	.byte	252
	.byte	135
	.byte	192
	.byte	0
	.byte	223
	.byte	240
	.byte	150
	.byte	51
	.byte	252
	.byte	0
	.byte	0
	.byte	0
	.byte	223
	.byte	240
	.byte	152
	.byte	51
	.byte	252
	.byte	127
	.byte	255
	.byte	0
	.byte	223
	.byte	240
	.byte	154
	.byte	51
	.byte	252
	.byte	127
	.byte	255
	.byte	0
	.byte	223
	.byte	240
	.byte	156
	.byte	51
	.byte	252
	.byte	0
	.byte	0
	.byte	0
	.byte	223
	.byte	240
	.byte	158
	.byte	51
	.byte	252
	.byte	0
	.byte	8
	.byte	0
	.byte	223
	.byte	240
	.byte	224
	.byte	51
	.byte	252
	.byte	0
	.byte	0
	.byte	0
	.byte	223
	.byte	240
	.byte	226
	.byte	51
	.byte	252
	.byte	0
	.byte	8
	.byte	0
	.byte	223
	.byte	240
	.byte	228
	.byte	51
	.byte	252
	.byte	80
	.byte	0
	.byte	0
	.byte	223
	.byte	240
	.byte	230
	.byte	51
	.byte	252
	.byte	162
	.byte	0
	.byte	0
	.byte	223
	.byte	241
	.byte	0
	.byte	51
	.byte	252
	.byte	0
	.byte	0
	.byte	0
	.byte	223
	.byte	241
	.byte	2
	.byte	51
	.byte	252
	.byte	0
	.byte	0
	.byte	0
	.byte	223
	.byte	241
	.byte	4
	.byte	51
	.byte	252
	.byte	0
	.byte	0
	.byte	0
	.byte	223
	.byte	241
	.byte	6
	.byte	51
	.byte	252
	.byte	0
	.byte	0
	.byte	0
	.byte	223
	.byte	241
	.byte	8
	.byte	51
	.byte	252
	.byte	0
	.byte	0
	.byte	0
	.byte	223
	.byte	241
	.byte	10
	.byte	51
	.byte	252
	.byte	9
	.byte	240
	.byte	0
	.byte	223
	.byte	240
	.byte	64
	.byte	51
	.byte	252
	.byte	0
	.byte	0
	.byte	0
	.byte	223
	.byte	240
	.byte	66
	.byte	51
	.byte	252
	.byte	255
	.byte	255
	.byte	0
	.byte	223
	.byte	240
	.byte	68
	.byte	51
	.byte	252
	.byte	255
	.byte	255
	.byte	0
	.byte	223
	.byte	240
	.byte	70
	.byte	51
	.byte	252
	.byte	0
	.byte	0
	.byte	0
	.byte	223
	.byte	240
	.byte	100
	.byte	51
	.byte	252
	.byte	0
	.byte	64
	.byte	0
	.byte	223
	.byte	240
	.byte	102
	.byte	51
	.byte	252
	.byte	0
	.byte	0
	.byte	0
	.byte	223
	.byte	241
	.byte	128
	.byte	51
	.byte	252
	.byte	10
	.byte	170
	.byte	0
	.byte	223
	.byte	241
	.byte	130
	.byte	51
	.byte	252
	.byte	10
	.byte	0
	.byte	0
	.byte	223
	.byte	241
	.byte	132
	.byte	51
	.byte	252
	.byte	0
	.byte	10
	.byte	0
	.byte	223
	.byte	241
	.byte	134
	.byte	51
	.byte	252
	.byte	0
	.byte	0
	.byte	0
	.byte	223
	.byte	240
	.byte	136
	.byte	96
	.byte	254
	.section	.data.d
	.align	4
	.global	_bootcustominit_bin_len
_bootcustominit_bin_len:
	.int	286
	.section	.rodata.e
l4:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	24
	.byte	0
	.byte	108
	.byte	108
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	108
	.byte	108
	.byte	254
	.byte	108
	.byte	254
	.byte	108
	.byte	108
	.byte	0
	.byte	24
	.byte	62
	.byte	96
	.byte	60
	.byte	6
	.byte	124
	.byte	24
	.byte	0
	.byte	0
	.byte	102
	.byte	172
	.byte	216
	.byte	54
	.byte	106
	.byte	204
	.byte	0
	.byte	56
	.byte	108
	.byte	104
	.byte	118
	.byte	220
	.byte	206
	.byte	123
	.byte	0
	.byte	24
	.byte	24
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	24
	.byte	48
	.byte	48
	.byte	48
	.byte	24
	.byte	12
	.byte	0
	.byte	48
	.byte	24
	.byte	12
	.byte	12
	.byte	12
	.byte	24
	.byte	48
	.byte	0
	.byte	0
	.byte	102
	.byte	60
	.byte	255
	.byte	60
	.byte	102
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	126
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	0
	.byte	3
	.byte	6
	.byte	12
	.byte	24
	.byte	48
	.byte	96
	.byte	192
	.byte	0
	.byte	60
	.byte	102
	.byte	110
	.byte	126
	.byte	118
	.byte	102
	.byte	60
	.byte	0
	.byte	24
	.byte	56
	.byte	120
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	60
	.byte	102
	.byte	6
	.byte	12
	.byte	24
	.byte	48
	.byte	126
	.byte	0
	.byte	60
	.byte	102
	.byte	6
	.byte	28
	.byte	6
	.byte	102
	.byte	60
	.byte	0
	.byte	28
	.byte	60
	.byte	108
	.byte	204
	.byte	254
	.byte	12
	.byte	12
	.byte	0
	.byte	126
	.byte	96
	.byte	124
	.byte	6
	.byte	6
	.byte	102
	.byte	60
	.byte	0
	.byte	28
	.byte	48
	.byte	96
	.byte	124
	.byte	102
	.byte	102
	.byte	60
	.byte	0
	.byte	126
	.byte	6
	.byte	6
	.byte	12
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	60
	.byte	102
	.byte	102
	.byte	60
	.byte	102
	.byte	102
	.byte	60
	.byte	0
	.byte	60
	.byte	102
	.byte	102
	.byte	62
	.byte	6
	.byte	12
	.byte	56
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	48
	.byte	0
	.byte	6
	.byte	24
	.byte	96
	.byte	24
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	126
	.byte	0
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	24
	.byte	6
	.byte	24
	.byte	96
	.byte	0
	.byte	0
	.byte	60
	.byte	102
	.byte	6
	.byte	12
	.byte	24
	.byte	0
	.byte	24
	.byte	0
	.byte	124
	.byte	198
	.byte	222
	.byte	214
	.byte	222
	.byte	192
	.byte	120
	.byte	0
	.byte	60
	.byte	102
	.byte	102
	.byte	126
	.byte	102
	.byte	102
	.byte	102
	.byte	0
	.byte	124
	.byte	102
	.byte	102
	.byte	124
	.byte	102
	.byte	102
	.byte	124
	.byte	0
	.byte	30
	.byte	48
	.byte	96
	.byte	96
	.byte	96
	.byte	48
	.byte	30
	.byte	0
	.byte	120
	.byte	108
	.byte	102
	.byte	102
	.byte	102
	.byte	108
	.byte	120
	.byte	0
	.byte	126
	.byte	96
	.byte	96
	.byte	120
	.byte	96
	.byte	96
	.byte	126
	.byte	0
	.byte	126
	.byte	96
	.byte	96
	.byte	120
	.byte	96
	.byte	96
	.byte	96
	.byte	0
	.byte	60
	.byte	102
	.byte	96
	.byte	110
	.byte	102
	.byte	102
	.byte	62
	.byte	0
	.byte	102
	.byte	102
	.byte	102
	.byte	126
	.byte	102
	.byte	102
	.byte	102
	.byte	0
	.byte	60
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	60
	.byte	0
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	102
	.byte	60
	.byte	0
	.byte	198
	.byte	204
	.byte	216
	.byte	240
	.byte	216
	.byte	204
	.byte	198
	.byte	0
	.byte	96
	.byte	96
	.byte	96
	.byte	96
	.byte	96
	.byte	96
	.byte	126
	.byte	0
	.byte	198
	.byte	238
	.byte	254
	.byte	214
	.byte	198
	.byte	198
	.byte	198
	.byte	0
	.byte	198
	.byte	230
	.byte	246
	.byte	222
	.byte	206
	.byte	198
	.byte	198
	.byte	0
	.byte	60
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	60
	.byte	0
	.byte	124
	.byte	102
	.byte	102
	.byte	124
	.byte	96
	.byte	96
	.byte	96
	.byte	0
	.byte	120
	.byte	204
	.byte	204
	.byte	204
	.byte	204
	.byte	220
	.byte	126
	.byte	0
	.byte	124
	.byte	102
	.byte	102
	.byte	124
	.byte	108
	.byte	102
	.byte	102
	.byte	0
	.byte	60
	.byte	102
	.byte	112
	.byte	60
	.byte	14
	.byte	102
	.byte	60
	.byte	0
	.byte	126
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	60
	.byte	0
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	60
	.byte	60
	.byte	24
	.byte	0
	.byte	198
	.byte	198
	.byte	198
	.byte	214
	.byte	254
	.byte	238
	.byte	198
	.byte	0
	.byte	195
	.byte	102
	.byte	60
	.byte	24
	.byte	60
	.byte	102
	.byte	195
	.byte	0
	.byte	195
	.byte	102
	.byte	60
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	254
	.byte	12
	.byte	24
	.byte	48
	.byte	96
	.byte	192
	.byte	254
	.byte	0
	.byte	60
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	60
	.byte	0
	.byte	192
	.byte	96
	.byte	48
	.byte	24
	.byte	12
	.byte	6
	.byte	3
	.byte	0
	.byte	60
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	60
	.byte	0
	.byte	16
	.byte	56
	.byte	108
	.byte	198
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	254
	.byte	24
	.byte	24
	.byte	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	6
	.byte	62
	.byte	102
	.byte	62
	.byte	0
	.byte	96
	.byte	96
	.byte	124
	.byte	102
	.byte	102
	.byte	102
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	96
	.byte	96
	.byte	96
	.byte	60
	.byte	0
	.byte	6
	.byte	6
	.byte	62
	.byte	102
	.byte	102
	.byte	102
	.byte	62
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	102
	.byte	126
	.byte	96
	.byte	60
	.byte	0
	.byte	28
	.byte	48
	.byte	124
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	62
	.byte	102
	.byte	102
	.byte	62
	.byte	6
	.byte	60
	.byte	96
	.byte	96
	.byte	124
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	0
	.byte	24
	.byte	0
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	12
	.byte	0
	.byte	12
	.byte	0
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	120
	.byte	96
	.byte	96
	.byte	102
	.byte	108
	.byte	120
	.byte	108
	.byte	102
	.byte	0
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	12
	.byte	0
	.byte	0
	.byte	0
	.byte	236
	.byte	254
	.byte	214
	.byte	198
	.byte	198
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	102
	.byte	102
	.byte	102
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	102
	.byte	102
	.byte	124
	.byte	96
	.byte	96
	.byte	0
	.byte	0
	.byte	62
	.byte	102
	.byte	102
	.byte	62
	.byte	6
	.byte	6
	.byte	0
	.byte	0
	.byte	124
	.byte	102
	.byte	96
	.byte	96
	.byte	96
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	96
	.byte	60
	.byte	6
	.byte	124
	.byte	0
	.byte	48
	.byte	48
	.byte	124
	.byte	48
	.byte	48
	.byte	48
	.byte	28
	.byte	0
	.byte	0
	.byte	0
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	62
	.byte	0
	.byte	0
	.byte	0
	.byte	102
	.byte	102
	.byte	102
	.byte	60
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	198
	.byte	198
	.byte	214
	.byte	254
	.byte	108
	.byte	0
	.byte	0
	.byte	0
	.byte	198
	.byte	108
	.byte	56
	.byte	108
	.byte	198
	.byte	0
	.byte	0
	.byte	0
	.byte	102
	.byte	102
	.byte	102
	.byte	60
	.byte	24
	.byte	48
	.byte	0
	.byte	0
	.byte	126
	.byte	12
	.byte	24
	.byte	48
	.byte	126
	.byte	0
	.byte	14
	.byte	24
	.byte	24
	.byte	112
	.byte	24
	.byte	24
	.byte	14
	.byte	0
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	112
	.byte	24
	.byte	24
	.byte	14
	.byte	24
	.byte	24
	.byte	112
	.byte	0
	.byte	114
	.byte	156
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	254
	.byte	254
	.byte	254
	.byte	254
	.byte	254
	.byte	254
	.byte	254
	.byte	0
	.section	.bss.f
	.align	4
	.lcomm	l1,4
