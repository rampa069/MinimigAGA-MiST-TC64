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
	.global	_framebuffer_clear
_framebuffer_clear:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4
		// Offsets 256, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	256
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
						// allocreg r2

						//osd.c, line 121
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
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done
l54: # 

						//osd.c, line 123
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
l55: # 
						// allocreg r1

						//osd.c, line 125
						// (bitwise/arithmetic) 	//ops: 4, 5, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 42
						// reg r4 - only match against tmp
	mt	r4
	mul	r1
						// (save result) // isreg

						//osd.c, line 125
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_framebuffer
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//osd.c, line 125
						// (bitwise/arithmetic) 	//ops: 2, 3, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg

						//osd.c, line 125
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//osd.c, line 124
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r2
						// (save result) // isreg

						//osd.c, line 124
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 1
						// reg r4 - only match against tmp
	mt	r4
	sgn
	cmp	r2

						//osd.c, line 124
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l55
		add	r7

						//osd.c, line 122
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 240
						// const
						// matchobj comparing flags 1 with 240
	.liconst	1
	add	r3
						// (save result) // isreg

						//osd.c, line 122
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	sgn
	cmp	r3

						//osd.c, line 122
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l54
		add	r7
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
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.global	_framebuffer_plot
_framebuffer_plot:
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
						// allocreg r1

						//osd.c, line 133
						//Call division routine
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	12
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	mr	r2
	.lipcrel	_div_s32bys32
	add	r7
	mt	r0
	mr	r1
						// (save result) // isreg

						//osd.c, line 133
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	256
	mul	r1
						// (save result) // isreg

						//osd.c, line 133
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_framebuffer
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//osd.c, line 133
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	add	r1
						// (save result) // isreg
						// allocreg r2

						//osd.c, line 133
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	12
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	7
	and	r2
						// (save result) // isreg

						//osd.c, line 133
						// (bitwise/arithmetic) 	//ops: 0, 3, 3
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	shl	r0
						// (save result) // isreg
	mt	r0
	mr	r2
						// allocreg r3

						//osd.c, line 133
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 133
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r3 - only match against tmp
	//mt
	or	r2
						// (save result) // isreg
						// freereg r3

						//osd.c, line 133
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1
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
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
l60:
	stdec	r6
						// allocreg r1
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 64, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l63,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//osd.c, line 140
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						// (obj to r2) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	13
	shl	r2
						// (save result) // isreg

						//osd.c, line 140
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	xor	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//osd.c, line 141
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						// (obj to r2) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	17
	sgn
	shr	r2
						// (save result) // isreg

						//osd.c, line 141
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	xor	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//osd.c, line 142
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						// (obj to r2) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	5
	shl	r2
						// (save result) // isreg

						//osd.c, line 142
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	xor	r1
						// (save result) // isreg
						// freereg r2
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l63,4
						// static pe not varadr
						//sizemod based on type 0x3
	stmpdec	r1

						//osd.c, line 143
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size

						//osd.c, line 143
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 103
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// freereg r1
	ldinc	r6
	mr	r7

	.section	.data.3
	.align	4
l63:
	.int	305419896
	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.4
	.global	_StarsInit
_StarsInit:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r5
						// allocreg r4
						// allocreg r3

						//osd.c, line 150
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
l75: # 
						// allocreg r1

						//osd.c, line 152
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	16
	mul	r1
						// (save result) // isreg

						//osd.c, line 152
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_stars
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//osd.c, line 152
		// Offsets 7296, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 212
		// Real offset of type is 212, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	7296
						// (save temp)store type 3
	st	r1
						//save_temp done
						// allocreg r2

						//osd.c, line 153
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 153
						// Z disposable
		// Offsets 1792, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1792
						// (save temp)store type 3
	st	r2
						//save_temp done
						// freereg r2

						//osd.c, line 154
						// (bitwise/arithmetic) 	//ops: 2, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 154
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 216
		// Real offset of type is 216, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
						// (save temp)store type 3
	st	r3
						//save_temp done

						//osd.c, line 155
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 5
						//Special case - addt
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1

						//osd.c, line 155
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 220
		// Real offset of type is 220, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
						// (save temp)store type 3
	st	r4
						//save_temp done

						//osd.c, line 156
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r3

						//osd.c, line 156
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l78
		add	r7

						//osd.c, line 156
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r4

						//osd.c, line 156
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l78
		add	r7
l76: # 

						//osd.c, line 158
						//call
						//pcreltotemp
	.lipcrel	l60 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//osd.c, line 158
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//osd.c, line 158
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	127
	and	r1
						// (save result) // isreg

						//osd.c, line 158
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	64
	sub	r1
						// (save result) // isreg

						//osd.c, line 158
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r3
						//save_temp done
						// freereg r1

						//osd.c, line 159
						//call
						//pcreltotemp
	.lipcrel	l60 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//osd.c, line 159
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//osd.c, line 159
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	63
	and	r1
						// (save result) // isreg

						//osd.c, line 159
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	31
	sub	r1
						// (save result) // isreg

						//osd.c, line 159
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r4
						//save_temp done
						// freereg r1

						//osd.c, line 156
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r3

						//osd.c, line 156
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l78
		add	r7

						//osd.c, line 156
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r4

						//osd.c, line 156
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l76
		add	r7
l78: # 

						//osd.c, line 151
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r5
						// (save result) // isreg

						//osd.c, line 151
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	64
	sgn
	cmp	r5

						//osd.c, line 151
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l75
		add	r7
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
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.5
	.global	_StarsUpdate
_StarsUpdate:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-12
	add	r6
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//osd.c, line 167
						//call
						//pcreltotemp
	.lipcrel	_framebuffer_clear // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//osd.c, line 169
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
						// freereg r1
l95: # 
						// allocreg r1

						//osd.c, line 171
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	mul	r1
						// (save result) // isreg

						//osd.c, line 171
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 4
						// (obj to r3) flags 82 type a
						// (prepobj r3)
 						// (prepobj r3)
 						// extern (offset 0)
	.liabs	_stars
						// extern pe is varadr
	mr	r3
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r3
						// (save result) // isreg
						// freereg r1

						//osd.c, line 171
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	8
	addt	r3
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//osd.c, line 171
						// (bitwise/arithmetic) 	//ops: 0, 4, 1
						// (obj to r0) flags 22 type 3
						// matchobj comparing flags 22 with 2
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 22
						// matchobj comparing flags 62 with 22
						// deref 
	ld	r3
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x62
	mt	r0
	st	r3

						//osd.c, line 172
						// (bitwise/arithmetic) 	//ops: 4, 0, 6
						//Special case - addt
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	4
	addt	r3
						// (save temp)isreg
	mr	r5
						//save_temp done
						// matchobj comparing flags 42 with 42
						// Obsoleting t1

						//osd.c, line 172
						// (bitwise/arithmetic) 	//ops: 4, 0, 5
						//Special case - addt
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	12
	addt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 172
						// (bitwise/arithmetic) 	//ops: 5, 6, 3
						// (obj to r2) flags 62 type 3
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r4
	mr	r2
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r5
	add	r2
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 424
		// Real offset of type is 424, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 62
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 3
	st	r5
						//save_temp done
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
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r3
						// (save temp)store type 3
	st	r6
						//save_temp done

						//osd.c, line 174
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 62
						// deref 
	//nop
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	0
	sgn
	cmp	r0

						//osd.c, line 174
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l85
		add	r7
						// allocreg r1

						//osd.c, line 174
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	14592
	sgn
	cmp	r0

						//osd.c, line 174
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l85
		add	r7

						//osd.c, line 174
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	sgn
	cmp	r2

						//osd.c, line 174
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l85
		add	r7
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 162
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type a
	st	r6
						//save_temp done

						//osd.c, line 174
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	3584
	sgn
	cmp	r2

						//osd.c, line 174
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l98
		add	r7
l85: # 

						//osd.c, line 176
		// Offsets 7296, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	7296
						// (save temp)store type 3
	st	r3
						//save_temp done

						//osd.c, line 177
		// Offsets 1792, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 424
		// Real offset of type is 424, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1792
						// (save temp)store type 3
	st	r5
						//save_temp done
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 162
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type a
	st	r6
						//save_temp done

						//osd.c, line 178
						// (test)
						// (obj to tmp) flags 22 type 3
						// matchobj comparing flags 22 with 42
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 42
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 42
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x3
	ldt

						//osd.c, line 178
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l98
		add	r7
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 162
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 22
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type a
	st	r6
						//save_temp done

						//osd.c, line 178
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r4

						//osd.c, line 178
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l98
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
 						// reg r3 - no need to prep
						// (obj to tmp) flags 102 type a
						// matchobj comparing flags 102 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
l90: # 

						//osd.c, line 180
						//call
						//pcreltotemp
	.lipcrel	l60 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//osd.c, line 180
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//osd.c, line 180
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	127
	and	r1
						// (save result) // isreg

						//osd.c, line 180
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	64
	sub	r1
						// (save result) // isreg

						//osd.c, line 180
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r3
						//save_temp done
						// freereg r1

						//osd.c, line 181
						//call
						//pcreltotemp
	.lipcrel	l60 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//osd.c, line 181
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//osd.c, line 181
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	63
	and	r1
						// (save result) // isreg

						//osd.c, line 181
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	31
	sub	r1
						// (save result) // isreg

						//osd.c, line 181
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r4
						//save_temp done
						// freereg r1

						//osd.c, line 178
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r3

						//osd.c, line 178
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l98
		add	r7
						// allocreg r1

						//osd.c, line 178
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r4

						//osd.c, line 178
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l90
		add	r7
						// freereg r1
l98: # 
		// Offsets 0, 0
		// Have am? no, no
		// flags 162, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 162 type a
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//osd.c, line 184
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 62 with 162
						// deref 
	ld	r5
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	6
	sgn
	shr	r1
						// (save result) // isreg

						//osd.c, line 184
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//osd.c, line 184
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	6
	sgn
	shr	r1
						// (save result) // isreg

						//osd.c, line 184
						//call
						//pcreltotemp
	.lipcrel	_framebuffer_plot // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//osd.c, line 170
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
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
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 170
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	64
	sgn
	cmp	r0

						//osd.c, line 170
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l95
		add	r7
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 1
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
	.section	.text.6
	.global	_OsdWriteFramebuffer
_OsdWriteFramebuffer:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-4
	add	r6
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
						// (obj to tmp) flags 40 type 101
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r3
						// allocreg r1

						//osd.c, line 195
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 40
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 195
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	256
	mul	r1
						// (save result) // isreg

						//osd.c, line 195
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 6
						// (obj to r5) flags 82 type a
						// (prepobj r5)
 						// (prepobj r5)
 						// extern (offset 0)
	.liabs	_framebuffer
						// extern pe is varadr
	mr	r5
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r5
						// (save result) // isreg
						// freereg r1

						//osd.c, line 198
						// (test)
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	20
	ldidx	r6

						//osd.c, line 198
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l109
		add	r7
						// allocreg r1

						//osd.c, line 200
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 2

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 200
						//call
						//pcreltotemp
	.lipcrel	___strlen // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//osd.c, line 200
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//osd.c, line 200
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
	mul	r1
						// (save result) // isreg

						//osd.c, line 200
						//FIXME convert
						// (convert - reducing type 103 to 102
	.liconst	65535
	and	r1

						//osd.c, line 201
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 102
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//osd.c, line 201
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	240
	sgn
	cmp	r3

						//osd.c, line 201
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l109
		add	r7
						// allocreg r1

						//osd.c, line 203
						// (bitwise/arithmetic) 	//ops: 0, 4, 2
						// (obj to r1) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	mr	r1
				//return 0
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
	sub	r1
						// (save result) // isreg

						//osd.c, line 203
						//Call division routine
	mt	r2
	stdec	r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	2
	mr	r2
	.lipcrel	_div_s32bys32
	add	r7
	mt	r0
	mr	r1
	ldinc	r6
	mr	r2
						// (save result) // isreg

						//osd.c, line 203
						//FIXME convert
						// (convert - reducing type 3 to 102
	.liconst	65535
	and	r1

						//osd.c, line 204
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 6, 2, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	add	r5
						// (save result) // isreg
						// freereg r1

						//osd.c, line 205
		// Offsets 0, 0
		// Have am? no, no
		// flags 2a, 62
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2a type 101
						// matchobj comparing flags 2a with 4a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags aa with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 4a
	.liconst	20
	ldidx	r6
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//osd.c, line 205
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 2a
						// var, auto|reg
						// matchobj comparing flags 1 with 2a
	.liconst	20
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//osd.c, line 205
						// (test)
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 82
						// deref 
	byt
	ld	r6

						//osd.c, line 205
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l109
		add	r7
						// freereg r2
						// freereg r3
l108: # 
						// allocreg r3

						//osd.c, line 207
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 62 type 101
						// deref 
	byt
	ld	r6
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 207
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	8
	mul	r3
						// (save result) // isreg

						//osd.c, line 207
						// (bitwise/arithmetic) 	//ops: 0, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_charfont
						// extern pe is varadr
	add	r3
						// (save result) // isreg
						// allocreg r1

						//osd.c, line 208
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 92
		// Real offset of type is 92, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 208
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r5
						// (save result) // isreg
						// allocreg r4

						//osd.c, line 208
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 96
		// Real offset of type is 96, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 208
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r3
						// (save result) // isreg
						// allocreg r2

						//osd.c, line 208
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 208
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 6a
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 208
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 5, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r4 - only match against tmp
	//mt
	or	r2
						// (save result) // isreg
						// freereg r4

						//osd.c, line 208
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1
						// allocreg r1

						//osd.c, line 209
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 116
		// Real offset of type is 116, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 209
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r5
						// (save result) // isreg
						// allocreg r4

						//osd.c, line 209
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 120
		// Real offset of type is 120, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 209
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r3
						// (save result) // isreg
						// allocreg r2

						//osd.c, line 209
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 209
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 6a
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 209
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 5, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r4 - only match against tmp
	//mt
	or	r2
						// (save result) // isreg
						// freereg r4

						//osd.c, line 209
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1
						// allocreg r1

						//osd.c, line 210
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 140
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 210
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r5
						// (save result) // isreg
						// allocreg r4

						//osd.c, line 210
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 144
		// Real offset of type is 144, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 210
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r3
						// (save result) // isreg
						// allocreg r2

						//osd.c, line 210
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 210
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 6a
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 210
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 5, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r4 - only match against tmp
	//mt
	or	r2
						// (save result) // isreg
						// freereg r4

						//osd.c, line 210
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1
						// allocreg r1

						//osd.c, line 211
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 164
		// Real offset of type is 164, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 211
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r5
						// (save result) // isreg
						// allocreg r4

						//osd.c, line 211
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 168
		// Real offset of type is 168, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 211
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r3
						// (save result) // isreg
						// allocreg r2

						//osd.c, line 211
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 211
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 6a
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 211
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 5, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r4 - only match against tmp
	//mt
	or	r2
						// (save result) // isreg
						// freereg r4

						//osd.c, line 211
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1
						// allocreg r1

						//osd.c, line 212
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 188
		// Real offset of type is 188, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 212
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r5
						// (save result) // isreg
						// allocreg r4

						//osd.c, line 212
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 192
		// Real offset of type is 192, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 212
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r3
						// (save result) // isreg
						// allocreg r2

						//osd.c, line 212
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 212
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 6a
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 212
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 5, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r4 - only match against tmp
	//mt
	or	r2
						// (save result) // isreg
						// freereg r4

						//osd.c, line 212
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1
						// allocreg r1

						//osd.c, line 213
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 212
		// Real offset of type is 212, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 213
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r5
						// (save result) // isreg
						// allocreg r4

						//osd.c, line 213
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 216
		// Real offset of type is 216, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 213
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r3
						// (save result) // isreg
						// allocreg r2

						//osd.c, line 213
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 213
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 6a
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 213
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 5, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r4 - only match against tmp
	//mt
	or	r2
						// (save result) // isreg
						// freereg r4

						//osd.c, line 213
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1
						// allocreg r1

						//osd.c, line 214
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 236
		// Real offset of type is 236, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 214
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r5
						// (save result) // isreg
						// allocreg r4

						//osd.c, line 214
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 240
		// Real offset of type is 240, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 214
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r3
						// (save result) // isreg
						// allocreg r2

						//osd.c, line 214
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 214
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 6a
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 214
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 5, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r4 - only match against tmp
	//mt
	or	r2
						// (save result) // isreg
						// freereg r4

						//osd.c, line 214
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1
						// allocreg r1

						//osd.c, line 215
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 260
		// Real offset of type is 260, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 215
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r5
						// (save result) // isreg
						// allocreg r2

						//osd.c, line 215
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 215
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 6a
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 215
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r3 - only match against tmp
	//mt
	or	r2
						// (save result) // isreg
						// freereg r3

						//osd.c, line 215
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1

						//osd.c, line 205
		// Offsets 0, 0
		// Have am? no, no
		// flags 2a, 62
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2a type 101
						// matchobj comparing flags 2a with 4a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags aa with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 4a
	.liconst	20
	ldidx	r6
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//osd.c, line 205
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 2a
						// var, auto|reg
						// matchobj comparing flags 1 with 2a
	.liconst	20
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//osd.c, line 205
						// (test)
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 82
						// deref 
	byt
	ld	r6

						//osd.c, line 205
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l108
		add	r7
l109: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r5
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
	.section	.text.7
	.global	_FireworksInit
_FireworksInit:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-4
	add	r6
						// allocreg r5
						// allocreg r4

						//osd.c, line 226
						//call
						//pcreltotemp
	.lipcrel	l60 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//osd.c, line 226
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//osd.c, line 226
						//Call division routine
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	114
	mr	r2
	.lipcrel	_div_u32byu32
	add	r7
						// (save result) // isreg

						//osd.c, line 226
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	57
	add	r1
						// (save result) // isreg

						//osd.c, line 226
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r6
						//save_temp done
						// freereg r1

						//osd.c, line 227
						//call
						//pcreltotemp
	.lipcrel	l60 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//osd.c, line 227
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//osd.c, line 227
						//Call division routine
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	35
	mr	r2
	.lipcrel	_div_u32byu32
	add	r7
						// (save result) // isreg

						//osd.c, line 227
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	5
	add	r1
						// (save result) // isreg

						//osd.c, line 227
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						//Saving to reg r5
						// (save temp)isreg
	mr	r5
						//save_temp done
						//No need to mask - same size
						// freereg r1

						//osd.c, line 228
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
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
l119: # 
						// allocreg r1

						//osd.c, line 230
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type 3
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	7
	shl	r1
						// (save result) // isreg
						// allocreg r3

						//osd.c, line 230
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						// (obj to r3) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
	mr	r3
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	16
	mul	r3
						// (save result) // isreg

						//osd.c, line 230
						// (bitwise/arithmetic) 	//ops: 0, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_stars
						// extern pe is varadr
	add	r3
						// (save result) // isreg

						//osd.c, line 230
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 4a, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 188
		// Real offset of type is 188, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r3
						//save_temp done
						// freereg r1
						// allocreg r2

						//osd.c, line 231
						// (bitwise/arithmetic) 	//ops: 6, 0, 3
						// (obj to r2) flags 42 type 3
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	7
	shl	r2
						// (save result) // isreg
						// allocreg r1

						//osd.c, line 231
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 231
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 4a, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 68, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r2
						// freereg r1

						//osd.c, line 232
						//call
						//pcreltotemp
	.lipcrel	l60 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r2

						//osd.c, line 232
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r2

						//osd.c, line 232
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	511
	and	r2
						// (save result) // isreg

						//osd.c, line 232
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	256
	sub	r2
						// (save result) // isreg
						// allocreg r1

						//osd.c, line 232
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 232
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r2
						// freereg r1

						//osd.c, line 233
						//call
						//pcreltotemp
	.lipcrel	l60 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r2

						//osd.c, line 233
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r2

						//osd.c, line 233
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	255
	and	r2
						// (save result) // isreg

						//osd.c, line 233
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	128
	sub	r2
						// (save result) // isreg
						// allocreg r1

						//osd.c, line 233
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r3

						//osd.c, line 233
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r2
						// freereg r1

						//osd.c, line 229
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r4
						// (save result) // isreg

						//osd.c, line 229
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	64
	sgn
	cmp	r4

						//osd.c, line 229
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l119
		add	r7
						// allocreg r1

						//osd.c, line 235
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 180
		// Real offset of type is 180, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l112,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 235
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l112,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
	addt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//osd.c, line 235
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	mul	r1
						// (save result) // isreg

						//osd.c, line 235
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_supporters
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//osd.c, line 235
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_supporter
						// extern pe not varadr
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

						//osd.c, line 236
						// (test)
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 6a
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_supporter
						//extern deref
						//sizemod based on type 0xa
	ldt

						//osd.c, line 236
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l118
		add	r7

						//osd.c, line 238
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 112
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l112,0
						// static pe not varadr
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

						//osd.c, line 239
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 184
		// Real offset of type is 184, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l112,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 239
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	1
	addt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//osd.c, line 239
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	mul	r1
						// (save result) // isreg

						//osd.c, line 239
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_supporters
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//osd.c, line 239
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_supporter
						// extern pe not varadr
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
l118: # 
						// freereg r4
						// freereg r5
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

	.section	.data.8
	.align	4
l112:
	.int	0
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
	.global	_FireworksUpdate
_FireworksUpdate:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-12
	add	r6
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r1

						//osd.c, line 246
						//call
						//pcreltotemp
	.lipcrel	_framebuffer_clear // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//osd.c, line 248
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
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

						//osd.c, line 249
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 8, 0 with 4, 0
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
						// freereg r1
l140: # 
						// allocreg r1

						//osd.c, line 251
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	mul	r1
						// (save result) // isreg

						//osd.c, line 251
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_stars
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//osd.c, line 251
						// (bitwise/arithmetic) 	//ops: 2, 0, 6
						//Special case - addt
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
	addt	r1
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 251
						// (bitwise/arithmetic) 	//ops: 6, 2, 1
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r5
	mr	r0
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 62
						// matchobj comparing flags 6a with 62
						// deref 
	ld	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x6a
	mt	r0
	st	r1
						// allocreg r2

						//osd.c, line 252
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	4
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1

						//osd.c, line 252
						// (bitwise/arithmetic) 	//ops: 2, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	12
	addt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 252
						// (bitwise/arithmetic) 	//ops: 4, 3, 5
						// (obj to r4) flags 62 type 3
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r3
	mr	r4
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 62
						// deref 
	ld	r2
	add	r4
						// (save result) // isreg
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 42, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 376
		// Real offset of type is 376, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 6a
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type 3
	st	r2
						//save_temp done
						// freereg r2
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
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 42
						// deref 
	ld	r1
						// (save temp)store type 3
	st	r6
						//save_temp done
						// freereg r1

						//osd.c, line 254
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 6a
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	0
	sgn
	cmp	r0

						//osd.c, line 254
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l127
		add	r7
						// allocreg r1

						//osd.c, line 254
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	29184
	sgn
	cmp	r0

						//osd.c, line 254
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l127
		add	r7

						//osd.c, line 254
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	sgn
	cmp	r4

						//osd.c, line 254
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l127
		add	r7

						//osd.c, line 254
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	7168
	sgn
	cmp	r4

						//osd.c, line 254
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l128
		add	r7
l127: # 

						//osd.c, line 256
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	7168
	sgn
	cmp	r4

						//osd.c, line 256
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l133
		add	r7

						//osd.c, line 258
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 352
		// Real offset of type is 352, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 3
	st	r5
						//save_temp done

						//osd.c, line 259
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 384
		// Real offset of type is 384, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 3
	st	r3
						//save_temp done

						//osd.c, line 262
						//pcreltotemp
	.lipcrel	l135
	add	r7
l133: # 

						//osd.c, line 262
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						// (obj to r0) flags 62 type 3
						// deref 
	ld	r3
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x62
	mt	r0
	st	r3

						//osd.c, line 265
						//pcreltotemp
	.lipcrel	l135
	add	r7
						// freereg r1
l128: # 

						//osd.c, line 266
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// var, auto|reg
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

						//osd.c, line 267
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 82
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 2
	.liconst	7
	sgn
	shr	r1
						// (save result) // isreg

						//osd.c, line 267
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//osd.c, line 267
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	7
	sgn
	shr	r1
						// (save result) // isreg

						//osd.c, line 267
						//call
						//pcreltotemp
	.lipcrel	_framebuffer_plot // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with 2
	.liconst	4
	add	r6
						// freereg r1

						//osd.c, line 268
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r3
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x62
	mt	r0
	st	r3
l135: # 
						// allocreg r1

						//osd.c, line 250
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	8
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
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 250
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	64
	sgn
	cmp	r0

						//osd.c, line 250
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l140
		add	r7
						// freereg r1
						// allocreg r1

						//osd.c, line 271
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	sgn
	cmp	r0

						//osd.c, line 271
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l137
		add	r7

						//osd.c, line 272
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
	.liabs	_supporter
						// extern pe not varadr
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
l137: # 

						//osd.c, line 273
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6

						//osd.c, line 273
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l139
		add	r7

						//osd.c, line 274
						//call
						//pcreltotemp
	.lipcrel	_FireworksInit // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l139: # 

						//osd.c, line 275
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// extern
	.liabs	_supporter
						//extern deref
						//sizemod based on type 0xa
	ldt
	stdec	r6
						// allocreg r1

						//osd.c, line 275
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 156
		// Real offset of type is 160, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 275
						//call
						//pcreltotemp
	.lipcrel	_OsdWriteFramebuffer // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1
						// freereg r3
						// freereg r4
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
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.a
l146:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
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
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//osd.c, line 295
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
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
l157: # 

						//osd.c, line 297
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 298
		// Offsets 0, 0
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

						// required value found in tmp
						// (save temp)isreg
	mr	r4
						//save_temp done
l158: # 

						//osd.c, line 300
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	shl	r2
						// (save result) // isreg
						// allocreg r1

						//osd.c, line 301
						// (bitwise/arithmetic) 	//ops: 6, 5, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 301
						// (bitwise/arithmetic) 	//ops: 2, 4, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r1) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
	mr	r1
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 6a
						// reg r3 - only match against tmp
	mt	r3
	shr	r1
						// (save result) // isreg

						//osd.c, line 301
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	and	r1
						// (save result) // isreg

						//osd.c, line 301
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	or	r2
						// (save result) // isreg
						// freereg r1

						//osd.c, line 299
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r4
						// (save result) // isreg

						//osd.c, line 299
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	sgn
	cmp	r4

						//osd.c, line 299
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l158
		add	r7
						// allocreg r1

						//osd.c, line 303
						// (bitwise/arithmetic) 	//ops: 0, 4, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 2
						// reg r3 - only match against tmp
	mt	r3
	add	r1
						// (save result) // isreg

						//osd.c, line 303
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//osd.c, line 296
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r3
						// (save result) // isreg

						//osd.c, line 296
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	sgn
	cmp	r3

						//osd.c, line 296
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l157
		add	r7
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
	.global	_OsdSetTitle
_OsdSetTitle:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-24
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
	.liconst	8
	addt	r6
						//sizemod based on type 0xa
	stmpdec	r1
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//osd.c, line 311
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 144
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l144,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	40
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//osd.c, line 312
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	8
	addt	r6
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

						//osd.c, line 313
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 315
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 10
		// Real offset of type is 10, isauto 0
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
						// matchobj comparing flags 1 with 82
	.liconst	16
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r3
						// freereg r1
l203: # 
						// allocreg r1

						//osd.c, line 318
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags a type a
						// matchobj comparing flags a with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
	add	r1
						// (save result) // isreg

						//osd.c, line 318
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with a
						// var, auto|reg
						// matchobj comparing flags 1 with a
	.liconst	12
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
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 318
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 2
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1

						//osd.c, line 319
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 6a
						// matchobj comparing flags 42 with 2
						// reg r5 - only match against tmp
	//mt
				// flags 42
	and	r5

						//osd.c, line 319
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l209
		add	r7
						// allocreg r1

						//osd.c, line 319
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 2
	.liconst	64
	sgn
	cmp	r2

						//osd.c, line 319
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l209
		add	r7
						// freereg r1
						// allocreg r1

						//osd.c, line 321
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 2
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 2
	.liconst	8
	mul	r1
						// (save result) // isreg

						//osd.c, line 321
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 5
						// (obj to r4) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj r4)
 						// (prepobj r4)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_charfont
						// extern pe is varadr
	mr	r4
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	add	r4
						// (save result) // isreg
						// freereg r1

						//osd.c, line 322
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 9
		// Real offset of type is 9, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done
l169: # 
						// allocreg r1

						//osd.c, line 324
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 62
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 6a type 101
						// deref 
	ldbinc	r4
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//osd.c, line 325
						// (test)
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 6a
						// deref 
	byt
	ld	r6

						//osd.c, line 325
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l174
		add	r7
						// freereg r1

						//osd.c, line 327
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	8
	addt	r6
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

						//osd.c, line 328
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l145,0
						// static pe is varadr
	mr	r1
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg

						//osd.c, line 328
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
	.liconst	1
	add	r2
						// (save result) // isreg

						//osd.c, line 328
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 62, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 82
						// deref 
	byt
	ld	r6
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//osd.c, line 330
						//pcreltotemp
	.lipcrel	l177
	add	r7
l174: # 
						// allocreg r1

						//osd.c, line 330
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)store type 3
	st	r6
						//save_temp done

						//osd.c, line 330
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r6

						//osd.c, line 330
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l176
		add	r7

						//osd.c, line 330
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	5
	sgn
	cmp	r0

						//osd.c, line 330
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l177
		add	r7

						//osd.c, line 330
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	32
	cmp	r5

						//osd.c, line 330
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l177
		add	r7
						// freereg r1
l176: # 
						// allocreg r1

						//osd.c, line 332
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 82 type a
						// (prepobj r1)
 						// (prepobj r1)
 						// static
	.liabs	l145,0
						// static pe is varadr
	mr	r1
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg

						//osd.c, line 332
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r2
						// (save result) // isreg

						//osd.c, line 332
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 68, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//osd.c, line 333
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x101
	byt
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!
l177: # 
						// allocreg r1

						//osd.c, line 335
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	63
	sgn
	cmp	r2

						//osd.c, line 335
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l203
		add	r7
						// freereg r1

						//osd.c, line 323
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r3
						// (save result) // isreg
						// storing UNSIGNED CHAR to register - must mask
	.liconst	0xff
	and	r3
						// allocreg r1

						//osd.c, line 323
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

						//osd.c, line 323
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

						//osd.c, line 323
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l169
		add	r7
						// allocreg r1

						//osd.c, line 340
						//pcreltotemp
	.lipcrel	l203
	add	r7
						// freereg r1
l209: # 
						// allocreg r1

						//osd.c, line 342
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 343
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	64
	sgn
	cmp	r2

						//osd.c, line 343
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l210
		add	r7
						// freereg r1
l204: # 
						// allocreg r1

						//osd.c, line 344
						// (bitwise/arithmetic) 	//ops: 0, 4, 2
						// (obj to r1) flags 82 type a
						// (prepobj r1)
 						// (prepobj r1)
 						// static
	.liabs	l145,0
						// static pe is varadr
	mr	r1
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
	add	r1
						// (save result) // isreg

						//osd.c, line 344
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//osd.c, line 343
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r3
						// (save result) // isreg

						//osd.c, line 343
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	64
	sgn
	cmp	r3

						//osd.c, line 343
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l204
		add	r7
l210: # 
						// allocreg r1

						//osd.c, line 348
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 1 type 3
						// const
	.liconst	63
	mr	r1
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
	sub	r1
						// (save result) // isreg

						//osd.c, line 348
						// Q1 disposable
						//Call division routine
	mt	r1
	stdec	r6
	mt	r2
	stdec	r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	2
	mr	r2
	.lipcrel	_div_s32bys32
	add	r7
	mt	r0
	mr	r4
	ldinc	r6
	mr	r2
	ldinc	r6
	mr	r1
						// (save result) // isreg
						// freereg r1

						//osd.c, line 349
						// (bitwise/arithmetic) 	//ops: 0, 5, 4
						// (obj to r3) flags 1 type 3
						// const
	.liconst	63
	mr	r3
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
	sub	r3
						// (save result) // isreg

						//osd.c, line 350
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
	sgn
	cmp	r3

						//osd.c, line 350
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l211
		add	r7
						// freereg r2
l205: # 
						// allocreg r2

						//osd.c, line 351
						// (bitwise/arithmetic) 	//ops: 0, 4, 3
						// (obj to r2) flags 82 type a
						// (prepobj r2)
 						// (prepobj r2)
 						// static
	.liabs	l145,0
						// static pe is varadr
	mr	r2
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
	add	r2
						// (save result) // isreg
						// allocreg r1

						//osd.c, line 351
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l145,0
						// static pe is varadr
	mr	r1
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	add	r1
						// (save result) // isreg

						//osd.c, line 351
						// (bitwise/arithmetic) 	//ops: 2, 4, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r3 - only match against tmp
	mt	r3
	add	r1
						// (save result) // isreg

						//osd.c, line 351
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 96
		// Real offset of type is 96, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 42
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1

						//osd.c, line 350
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	sub	r3
						// (save result) // isreg

						//osd.c, line 350
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	sgn
	cmp	r3

						//osd.c, line 350
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l205
		add	r7
l211: # 
						// allocreg r2
						// allocreg r1

						//osd.c, line 353
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 354
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sgn
	cmp	r4

						//osd.c, line 354
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l212
		add	r7
						// freereg r1
l206: # 
						// allocreg r1

						//osd.c, line 354
						// (bitwise/arithmetic) 	//ops: 0, 4, 2
						// (obj to r1) flags 82 type a
						// (prepobj r1)
 						// (prepobj r1)
 						// static
	.liabs	l145,0
						// static pe is varadr
	mr	r1
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
	add	r1
						// (save result) // isreg

						//osd.c, line 354
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
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//osd.c, line 354
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r3
						// (save result) // isreg

						//osd.c, line 354
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
	sgn
	cmp	r3

						//osd.c, line 354
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l206
		add	r7
l212: # 
						// allocreg r1

						//osd.c, line 357
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
l207: # 

						//osd.c, line 360
						// (address)
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	16
	addt	r6
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 360
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	//mt
	stdec	r6
						// allocreg r1

						//osd.c, line 360
						// (bitwise/arithmetic) 	//ops: 0, 4, 2
						// (obj to r1) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l145,0
						// static pe is varadr
	mr	r1
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
	add	r1
						// (save result) // isreg

						//osd.c, line 360
						//call
						//pcreltotemp
	.lipcrel	l146 // Static 
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//osd.c, line 361
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 72, isauto 0
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
						// freereg r2
l208: # 
						// allocreg r2

						//osd.c, line 363
						// (bitwise/arithmetic) 	//ops: 6, 5, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r5 - only match against tmp
	mt	r5
	addt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//osd.c, line 363
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l145,0
						// static pe is varadr
	mr	r1
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	add	r1
						// (save result) // isreg

						//osd.c, line 363
						// (bitwise/arithmetic) 	//ops: 2, 4, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r3 - only match against tmp
	mt	r3
	add	r1
						// (save result) // isreg

						//osd.c, line 363
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 140
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 42
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1

						//osd.c, line 362
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r4
						// (save result) // isreg

						//osd.c, line 362
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	sgn
	cmp	r4

						//osd.c, line 362
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l208
		add	r7
						// allocreg r2
						// allocreg r1

						//osd.c, line 358
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	add	r3
						// (save result) // isreg

						//osd.c, line 358
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	64
	sgn
	cmp	r3

						//osd.c, line 358
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l207
		add	r7
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 1
	.liconst	-24
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
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.c
	.global	_OsdWrite
_OsdWrite:
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
						// (obj to tmp) flags 40 type 101
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1

						//osd.c, line 371
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	0
	stdec	r6
						// allocreg r1

						//osd.c, line 371
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 371
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//osd.c, line 371
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	16
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 371
						// Q1 disposable
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//osd.c, line 371
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	16
	ldidx	r6
	stdec	r6
						// allocreg r1

						//osd.c, line 371
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 371
						//call
						//pcreltotemp
	.lipcrel	_OsdWriteOffset // extern
	add	r7
						// Deferred popping of 16 bytes (16 in total)
						// freereg r1
						// freereg r2
	.liconst	-16
	sub	r6
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
	.section	.text.d
	.global	_OsdWriteOffset
_OsdWriteOffset:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-96
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
	.liconst	16
	addt	r6
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r5
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	255
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r4
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 112, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 102 type a
						// matchobj comparing flags 102 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	112
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 102
						// const
						// matchobj comparing flags 1 with 102
	.liconst	268435427
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//osd.c, line 381
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//osd.c, line 382
		// Offsets 256, 0
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
	.liconst	256
						// (save temp)store type 3
	st	r0
						//save_temp done

						//osd.c, line 383
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 1094
		// Real offset of type is 1094, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l144,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 383
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	12
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r2
						// allocreg r1

						//osd.c, line 384
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	12
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 384
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	7
	cmp	r1
						// freereg r1

						//osd.c, line 384
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l220
		add	r7
						// allocreg r1

						//osd.c, line 384
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 82
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
	.liconst	2
	and	r1
						// (save result) // isreg
						// freereg r1

						//osd.c, line 384
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l220
		add	r7

						//osd.c, line 385
		// Offsets 234, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	234
						// (save temp)store type 3
	st	r0
						//save_temp done
l220: # 

						//osd.c, line 387
						// (test)
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	120
	ldidx	r6

						//osd.c, line 387
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l223
		add	r7

						//osd.c, line 389
		// Offsets 85, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	85
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//osd.c, line 390
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, -12
		// Real offset of type is 120, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	120
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	255
						// (save temp)store type 3
	st	r0
						//save_temp done

						//osd.c, line 393
						//pcreltotemp
	.lipcrel	l224
	add	r7
l223: # 

						//osd.c, line 393
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, -12
		// Real offset of type is 120, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	120
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
l224: # 

						//osd.c, line 396
		// Offsets 32, 268435431
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435431, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	268435431
	mr	r0
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 403
		// Offsets 12, 0
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
	.liconst	12
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 404
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 404
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 404
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 404
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 501
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	12
						//sizemod based on type 0x501
	byt
	ldidx	r6
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 406
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	116
	ldidx	r6

						//osd.c, line 406
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l226
		add	r7

						//osd.c, line 407
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, -8
		// Real offset of type is 116, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	116
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	255
						// (save temp)store type 3
	st	r0
						//save_temp done
l226: # 

						//osd.c, line 409
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 14
		// Real offset of type is 14, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	14
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 2
	hlf
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
	.liconst	116
	addt	r6
	stmpdec	r4
l227: # 
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	255
						// (save temp)isreg
	mr	r5
						//save_temp done
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 112, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 102 type a
						// matchobj comparing flags 102 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	112
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 102
						// const
						// matchobj comparing flags 1 with 102
	.liconst	268435427
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 413
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 102
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	14
						//sizemod based on type 0x102
	hlf
	ldidx	r6
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 413
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

						//osd.c, line 413
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l231
		add	r7
						// freereg r2
						// allocreg r1

						//osd.c, line 415
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	12
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 415
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	7
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	sub	r0
						// (save result) // isreg
	mt	r0
	mr	r1

						//osd.c, line 415
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
	mul	r1
						// (save result) // isreg

						//osd.c, line 415
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l145,0
						// static pe is varadr
	add	r1
						// (save result) // isreg

						//osd.c, line 416
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 417
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r2

						//osd.c, line 418
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 418
						// (bitwise/arithmetic) 	//ops: 3, 6, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r2
						// (save result) // isreg

						//osd.c, line 418
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 418
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 418
						// (bitwise/arithmetic) 	//ops: 3, 6, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r2
						// (save result) // isreg

						//osd.c, line 418
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 419
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 419
						// (bitwise/arithmetic) 	//ops: 3, 6, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r2
						// (save result) // isreg

						//osd.c, line 419
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 419
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 419
						// (bitwise/arithmetic) 	//ops: 3, 6, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r2
						// (save result) // isreg

						//osd.c, line 419
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 420
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 420
						// (bitwise/arithmetic) 	//ops: 3, 6, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r2
						// (save result) // isreg

						//osd.c, line 420
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 420
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 420
						// (bitwise/arithmetic) 	//ops: 3, 6, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r2
						// (save result) // isreg

						//osd.c, line 420
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 421
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 421
						// (bitwise/arithmetic) 	//ops: 3, 6, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r2
						// (save result) // isreg

						//osd.c, line 421
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 421
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 421
						// (bitwise/arithmetic) 	//ops: 3, 6, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r2
						// (save result) // isreg

						//osd.c, line 421
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 422
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 422
						// (bitwise/arithmetic) 	//ops: 3, 6, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r2
						// (save result) // isreg

						//osd.c, line 422
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 422
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 422
						// (bitwise/arithmetic) 	//ops: 3, 6, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r2
						// (save result) // isreg

						//osd.c, line 422
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 423
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 423
						// (bitwise/arithmetic) 	//ops: 3, 6, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r2
						// (save result) // isreg

						//osd.c, line 423
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 423
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 423
						// (bitwise/arithmetic) 	//ops: 3, 6, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r2
						// (save result) // isreg

						//osd.c, line 423
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 424
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 424
						// (bitwise/arithmetic) 	//ops: 3, 6, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r2
						// (save result) // isreg

						//osd.c, line 424
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 424
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 424
						// (bitwise/arithmetic) 	//ops: 3, 6, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r2
						// (save result) // isreg

						//osd.c, line 424
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 425
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 425
						// (bitwise/arithmetic) 	//ops: 3, 6, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r2
						// (save result) // isreg

						//osd.c, line 425
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2

						//osd.c, line 425
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 425
						// (bitwise/arithmetic) 	//ops: 2, 6, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r1
						// (save result) // isreg

						//osd.c, line 425
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r1

						//osd.c, line 426
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 427
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 428
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 429
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//osd.c, line 430
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	22
	add	r1
						// (save result) // isreg

						//osd.c, line 430
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 102
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	18
	addt	r6
						//sizemod based on type 0x102
	hlf
	stmpdec	r1
						// freereg r1
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	116
	addt	r6
	stmpdec	r4

						//osd.c, line 432
						//pcreltotemp
	.lipcrel	l227
	add	r7
l231: # 
						// allocreg r2

						//osd.c, line 432
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// var, auto|reg
	.liconst	12
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
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 432
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	7
	cmp	r0

						//osd.c, line 432
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l234
		add	r7
						// allocreg r1

						//osd.c, line 432
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//osd.c, line 432
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l234
		add	r7
						// freereg r2

						//osd.c, line 434
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 435
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 436
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r2

						//osd.c, line 438
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_charfont, 128
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//osd.c, line 438
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	124
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 438
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	shl	r2
						// (save result) // isreg

						//osd.c, line 438
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 438
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 129
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 438
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 438
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 438
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 130
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 438
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 438
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 438
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 131
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 438
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 438
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 439
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 132
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 439
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 439
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 439
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 133
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 439
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 439
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 439
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 134
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 439
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 439
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 439
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 135
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 439
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 439
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 441
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 160
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 441
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 441
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 441
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 161
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 441
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 441
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 441
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 162
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 441
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 441
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 441
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 163
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 441
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 441
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 442
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 164
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 442
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 442
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 442
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 165
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 442
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 442
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 442
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 166
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 442
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 442
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 442
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 167
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 442
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	shl	r0
						// (save result) // isreg
	mt	r0
	mr	r1
						// freereg r2

						//osd.c, line 442
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r1

						//osd.c, line 443
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 444
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 445
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 446
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 501
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	116
	ldidx	r6
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 447
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 501
						// matchobj comparing flags 2 with 2

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//osd.c, line 448
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	16
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	24
	add	r1
						// (save result) // isreg

						//osd.c, line 448
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 102
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	18
	addt	r6
						//sizemod based on type 0x102
	hlf
	stmpdec	r1
						// freereg r1

						//osd.c, line 449
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
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
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	-2
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//osd.c, line 450
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 2
						// deref 
	ldbinc	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 450
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
				// flags 4a
	and	r1
						// freereg r1

						//osd.c, line 450
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l263
		add	r7
						// allocreg r2
						// allocreg r1

						//osd.c, line 451
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	ldbinc	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 451
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
				// flags 4a
	and	r1
						// freereg r1

						//osd.c, line 451
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l263
		add	r7
						// allocreg r1

						//osd.c, line 452
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	ldbinc	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 452
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
				// flags 4a
	and	r1
						// freereg r1

						//osd.c, line 452
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l263
		add	r7
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 2
	.liconst	116
	addt	r6
	stmpdec	r4

						//osd.c, line 455
						//pcreltotemp
	.lipcrel	l227
	add	r7
l234: # 
						// allocreg r1

						//osd.c, line 456
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 4a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 3
		// Real offset of type is 3, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// deref 
	ldbinc	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 458
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 4a type 101
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	28
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//osd.c, line 458
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

						//osd.c, line 458
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l263
		add	r7

						//osd.c, line 461
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	13
	cmp	r0

						//osd.c, line 461
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l246
		add	r7

						//osd.c, line 461
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	10
	cmp	r0

						//osd.c, line 461
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l247
		add	r7
l246: # 

						//osd.c, line 464
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 101
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0x101
	byt
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!
						// allocreg r1

						//osd.c, line 464
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 464
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

						//osd.c, line 464
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l250
		add	r7

						//osd.c, line 465
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
	addt	r6
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
l250: # 

						//osd.c, line 467
		// Offsets 33, 268435431
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435431, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	268435431
	mr	r0
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 468
		// Offsets 32, 268435431
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435431, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
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
	.liconst	32
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 470
		// Offsets 12, 0
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
	.liconst	12
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 471
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 471
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 471
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 471
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 501
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	12
						//sizemod based on type 0x501
	byt
	ldidx	r6
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	116
	addt	r6
	stmpdec	r4

						//osd.c, line 474
						//pcreltotemp
	.lipcrel	l227
	add	r7
l247: # 
						// allocreg r1

						//osd.c, line 474
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	sub	r1
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	116
	addt	r6
	stmpdec	r4

						//osd.c, line 474
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	16
						//sizemod based on type 0x3
	ldidx	r6
	sgn
	cmp	r1
						// freereg r1

						//osd.c, line 474
	cond	LE
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l227
		add	r7
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// allocreg r2

						//osd.c, line 476
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	mul	r2
						// (save result) // isreg

						//osd.c, line 476
						// (bitwise/arithmetic) 	//ops: 0, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_charfont
						// extern pe is varadr
	add	r2
						// (save result) // isreg
						// allocreg r1

						//osd.c, line 477
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r2
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r4

						//osd.c, line 477
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	124
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 477
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r4 - only match against tmp
	//mt
	shl	r1
						// (save result) // isreg
						// allocreg r5

						//osd.c, line 477
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 4a
						// deref 
	byt
	ld	r6
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 477
						// (bitwise/arithmetic) 	//ops: 6, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 62
						// reg r5 - only match against tmp
	//mt
	and	r1
						// (save result) // isreg
						// allocreg r3

						//osd.c, line 477
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	116
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 477
						// (bitwise/arithmetic) 	//ops: 4, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r3 - only match against tmp
	//mt
	xor	r1
						// (save result) // isreg

						//osd.c, line 477
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 4a
						// deref
						// const to r0
						// matchobj comparing flags 1 with 4a
	.liconst	268435427
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//osd.c, line 477
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	120
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 477
						// (bitwise/arithmetic) 	//ops: 2, 6, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	//mt
	xor	r5
						// (save result) // isreg

						//osd.c, line 477
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
						// freereg r5
						// allocreg r5

						//osd.c, line 478
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r2
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 478
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 6, 5, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// matchobj comparing flags 4a with 1
						// reg r5 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 4a
						// reg r4 - only match against tmp
	mt	r4
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r5
						// allocreg r5

						//osd.c, line 478
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 8a
						// matchobj comparing flags 62 with a
						// deref 
	byt
	ld	r6
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 478
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 62
						// matchobj comparing flags 4a with a
						// reg r5 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 4a
						// matchobj comparing flags a with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with a
	.liconst	32
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 478
						// (bitwise/arithmetic) 	//ops: 0, 4, 1
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 8a
						// matchobj comparing flags 4a with a
						// reg r3 - only match against tmp
	mt	r3
	xor	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	36
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 478
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 8a
						// matchobj comparing flags a1 with a
						// deref
						// const to r0
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	268435427
	mr	r0
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 1
						// matchobj comparing flags a with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 478
						// (bitwise/arithmetic) 	//ops: 6, 2, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with a
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	xor	r5
						// (save result) // isreg

						//osd.c, line 478
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
						// freereg r5
						// allocreg r5

						//osd.c, line 479
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r2
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 479
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 6, 5, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// matchobj comparing flags 4a with 1
						// reg r5 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 4a
						// reg r4 - only match against tmp
	mt	r4
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	40
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r5
						// allocreg r5

						//osd.c, line 479
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 8a
						// matchobj comparing flags 62 with a
						// deref 
	byt
	ld	r6
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 479
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 62
						// matchobj comparing flags 4a with a
						// reg r5 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 4a
						// matchobj comparing flags a with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	36
						//sizemod based on type 0x3
	ldidx	r6
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with a
	.liconst	44
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 479
						// (bitwise/arithmetic) 	//ops: 0, 4, 1
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 8a
						// matchobj comparing flags 4a with a
						// reg r3 - only match against tmp
	mt	r3
	xor	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 479
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 8a
						// matchobj comparing flags a1 with a
						// deref
						// const to r0
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	268435427
	mr	r0
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 1
						// matchobj comparing flags a with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	44
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 479
						// (bitwise/arithmetic) 	//ops: 6, 2, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with a
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	xor	r5
						// (save result) // isreg

						//osd.c, line 479
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
						// freereg r5
						// allocreg r5

						//osd.c, line 480
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r2
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 480
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 6, 5, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// matchobj comparing flags 4a with 1
						// reg r5 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 4a
						// reg r4 - only match against tmp
	mt	r4
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	52
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r5
						// allocreg r5

						//osd.c, line 480
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 8a
						// matchobj comparing flags 62 with a
						// deref 
	byt
	ld	r6
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 480
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 62
						// matchobj comparing flags 4a with a
						// reg r5 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 4a
						// matchobj comparing flags a with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	48
						//sizemod based on type 0x3
	ldidx	r6
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with a
	.liconst	56
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 480
						// (bitwise/arithmetic) 	//ops: 0, 4, 1
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 8a
						// matchobj comparing flags 4a with a
						// reg r3 - only match against tmp
	mt	r3
	xor	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	60
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 480
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 8a
						// matchobj comparing flags a1 with a
						// deref
						// const to r0
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	268435427
	mr	r0
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 1
						// matchobj comparing flags a with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	56
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 480
						// (bitwise/arithmetic) 	//ops: 6, 2, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with a
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	xor	r5
						// (save result) // isreg

						//osd.c, line 480
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
						// freereg r5
						// allocreg r5

						//osd.c, line 481
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r2
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 481
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 6, 5, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// matchobj comparing flags 4a with 1
						// reg r5 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 4a
						// reg r4 - only match against tmp
	mt	r4
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	64
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r5
						// allocreg r5

						//osd.c, line 481
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 8a
						// matchobj comparing flags 62 with a
						// deref 
	byt
	ld	r6
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 481
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 62
						// matchobj comparing flags 4a with a
						// reg r5 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 4a
						// matchobj comparing flags a with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	60
						//sizemod based on type 0x3
	ldidx	r6
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with a
	.liconst	68
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 481
						// (bitwise/arithmetic) 	//ops: 0, 4, 1
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 8a
						// matchobj comparing flags 4a with a
						// reg r3 - only match against tmp
	mt	r3
	xor	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	72
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 481
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 8a
						// matchobj comparing flags a1 with a
						// deref
						// const to r0
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	268435427
	mr	r0
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 1
						// matchobj comparing flags a with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	68
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 481
						// (bitwise/arithmetic) 	//ops: 6, 2, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with a
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	xor	r5
						// (save result) // isreg

						//osd.c, line 481
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
						// freereg r5
						// allocreg r5

						//osd.c, line 482
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r2
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 482
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 6, 5, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// matchobj comparing flags 4a with 1
						// reg r5 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 4a
						// reg r4 - only match against tmp
	mt	r4
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	76
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r5
						// allocreg r5

						//osd.c, line 482
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 8a
						// matchobj comparing flags 62 with a
						// deref 
	byt
	ld	r6
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 482
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 62
						// matchobj comparing flags 4a with a
						// reg r5 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 4a
						// matchobj comparing flags a with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	72
						//sizemod based on type 0x3
	ldidx	r6
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with a
	.liconst	80
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 482
						// (bitwise/arithmetic) 	//ops: 0, 4, 1
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 8a
						// matchobj comparing flags 4a with a
						// reg r3 - only match against tmp
	mt	r3
	xor	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	84
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 482
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 8a
						// matchobj comparing flags a1 with a
						// deref
						// const to r0
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	268435427
	mr	r0
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 1
						// matchobj comparing flags a with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	80
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 482
						// (bitwise/arithmetic) 	//ops: 6, 2, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with a
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	xor	r5
						// (save result) // isreg

						//osd.c, line 482
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
						// freereg r5
						// allocreg r5

						//osd.c, line 483
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r2
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 483
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 6, 5, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// matchobj comparing flags 4a with 1
						// reg r5 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 4a
						// reg r4 - only match against tmp
	mt	r4
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	88
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r5
						// allocreg r5

						//osd.c, line 483
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 8a
						// matchobj comparing flags 62 with a
						// deref 
	byt
	ld	r6
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 483
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 62
						// matchobj comparing flags 4a with a
						// reg r5 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 4a
						// matchobj comparing flags a with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	84
						//sizemod based on type 0x3
	ldidx	r6
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with a
	.liconst	92
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 483
						// (bitwise/arithmetic) 	//ops: 0, 4, 1
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 8a
						// matchobj comparing flags 4a with a
						// reg r3 - only match against tmp
	mt	r3
	xor	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	96
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 483
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 8a
						// matchobj comparing flags a1 with a
						// deref
						// const to r0
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	268435427
	mr	r0
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 1
						// matchobj comparing flags a with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	92
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 483
						// (bitwise/arithmetic) 	//ops: 6, 2, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with a
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	xor	r5
						// (save result) // isreg

						//osd.c, line 483
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
						// freereg r5

						//osd.c, line 484
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r2
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 484
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 5, 5
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 4a
						// reg r4 - only match against tmp
	mt	r4
	shl	r0
						// (save result) // isreg
	mt	r0
	mr	r4
						// freereg r2
						// allocreg r2

						//osd.c, line 484
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 4a
						// deref 
	byt
	ld	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 484
						// (bitwise/arithmetic) 	//ops: 3, 5, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 62
						// reg r2 - only match against tmp
	//mt
	and	r4
						// (save result) // isreg

						//osd.c, line 484
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 5, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r4 - only match against tmp
	mt	r4
	xor	r3
						// (save result) // isreg
						// freereg r4

						//osd.c, line 484
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 4a
						// deref
						// const to r0
						// matchobj comparing flags 1 with 4a
	.liconst	268435427
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r3

						//osd.c, line 484
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	xor	r1
						// (save result) // isreg
						// freereg r2

						//osd.c, line 484
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
						// freereg r1
						// allocreg r1

						//osd.c, line 485
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	16
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	8
	add	r1
						// (save result) // isreg

						//osd.c, line 485
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 102
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	18
	addt	r6
						//sizemod based on type 0x102
	hlf
	stmpdec	r1
						// freereg r1

						//osd.c, line 411
						//pcreltotemp
	.lipcrel	l227
	add	r7
l263: # 
						// allocreg r5
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	255
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r4
						// allocreg r3
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	268435427
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2
						// allocreg r1

						//osd.c, line 490
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 102
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	14
						//sizemod based on type 0x102
	hlf
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 490
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

						//osd.c, line 490
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l264
		add	r7
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 14
		// Real offset of type is 14, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 102 type 102
						// matchobj comparing flags 102 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	14
						//sizemod based on type 0x102
	hlf
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
l254: # 

						//osd.c, line 490
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 501
						// var, auto|reg
	.liconst	116
	ldidx	r6
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 490
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r2
						// (save result) // isreg
						// storing UNSIGNED SHORT to register - must mask
	.liconst	0xffff
	and	r2
						// allocreg r1

						//osd.c, line 490
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 102
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 490
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	sgn
	cmp	r1
						// freereg r1

						//osd.c, line 490
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l254
		add	r7
l264: # 

						//osd.c, line 491
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	7
	cmp	r0

						//osd.c, line 491
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l259
		add	r7
						// allocreg r1

						//osd.c, line 491
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	and	r1
						// (save result) // isreg
						// freereg r1

						//osd.c, line 491
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l259
		add	r7
						// freereg r2

						//osd.c, line 493
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 494
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 495
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r2

						//osd.c, line 497
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_charfont, 168
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//osd.c, line 497
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	124
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 497
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	shl	r2
						// (save result) // isreg

						//osd.c, line 497
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 497
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 169
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 497
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 497
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 497
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 170
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 497
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 497
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 497
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 171
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 497
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 497
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 498
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 172
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 498
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 498
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 498
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 173
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 498
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 498
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 498
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 174
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 498
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 498
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 498
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 175
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 498
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 498
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 500
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 136
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 500
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 500
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 500
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 137
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 500
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 500
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 500
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 138
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 500
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 500
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 500
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 139
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 500
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 500
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 501
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 140
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 501
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 501
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 501
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 141
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 501
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 501
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 501
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 142
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 501
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	shl	r2
						// (save result) // isreg

						//osd.c, line 501
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 501
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 301
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_charfont, 143
						//extern deref
						//sizemod based on type 0x301
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 501
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	shl	r0
						// (save result) // isreg
	mt	r0
	mr	r1
						// freereg r2

						//osd.c, line 501
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r1

						//osd.c, line 502
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 503
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 504
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r3
						//Disposable, postinc doesn't matter.
						//save_temp done
l259: # 
						// allocreg r2

						//osd.c, line 509
		// Offsets 33, 268435431
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435431, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	268435431
	mr	r0
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	-96
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
	.section	.text.e
	.global	_OsdDrawLogo
_OsdDrawLogo:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-20
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
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r5
						// allocreg r4
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	255
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	268435427
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 520
		// Offsets 32, 268435431
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
	.liconst	32
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 524
		// Offsets 12, 0
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
	.liconst	12
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 525
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 525
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 525
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 525
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 501
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x501
	byt
	ldidx	r6
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//osd.c, line 527
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	36
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 527
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	227
	mul	r1
						// (save result) // isreg

						//osd.c, line 527
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_logodata
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
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r1

						//osd.c, line 528
		// Offsets 227, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 12, 0 with 4, 0
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	8
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	227
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//osd.c, line 529
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	36
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 529
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	5
	cmp	r1
						// freereg r1

						//osd.c, line 529
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l268
		add	r7

						//osd.c, line 530
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 4, 0 with 12, 0
						//Fuzzy match found, offset: -8 (varadr: 1)
	.liconst	-8
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type a
	st	r0
						//save_temp done
l268: # 

						//osd.c, line 531
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 1
		// Real offset of type is 1, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 102
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 534
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	40
	ldidx	r6

						//osd.c, line 534
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l302
		add	r7

						//osd.c, line 536
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	8
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
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//osd.c, line 536
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 82
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
	.liconst	256
	mul	r1
						// (save result) // isreg

						//osd.c, line 536
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_framebuffer
						// extern pe is varadr
	mr	r0
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching
						// freereg r1
l300: # 

						//osd.c, line 539
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 42 type 102
						// reg r5 - only match against tmp
	mt	r5
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 539
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

						//osd.c, line 539
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l275
		add	r7
						// allocreg r1

						//osd.c, line 541
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	7
	mr	r1
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	16
						//sizemod based on type 0x3
	ldidx	r6
	sub	r1
						// (save result) // isreg

						//osd.c, line 541
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	mul	r1
						// (save result) // isreg

						//osd.c, line 541
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l145,0
						// static pe is varadr
	add	r1
						// (save result) // isreg

						//osd.c, line 542
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 543
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r2

						//osd.c, line 544
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 1
						// matchobj comparing flags 6a with 2
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 544
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 544
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 544
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 544
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 544
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 545
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 545
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 545
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 545
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 545
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 545
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 546
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 546
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 546
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 546
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 546
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 546
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 547
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 547
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 547
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 547
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 547
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 547
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 548
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 548
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 548
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 548
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 548
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 548
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 549
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 549
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 549
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 549
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 549
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 549
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 550
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 550
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 550
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 550
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 550
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 550
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 551
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 551
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 551
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2

						//osd.c, line 551
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 2
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 551
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	xor	r1
						// (save result) // isreg

						//osd.c, line 551
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r1

						//osd.c, line 552
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 2
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 553
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 554
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 555
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//osd.c, line 556
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
	.liconst	22
	add	r1
						// (save result) // isreg

						//osd.c, line 556
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 102
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
						//Saving to reg r5
						// (save temp)isreg
	mr	r5
						//save_temp done
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 2
	.liconst	65535
	and	r5
						// freereg r1
l275: # 
						// allocreg r1

						//osd.c, line 558
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 102
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 558
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	256
	sgn
	cmp	r1
						// freereg r1

						//osd.c, line 558
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l304
		add	r7

						//osd.c, line 560
						// (test)
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6

						//osd.c, line 560
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l279
		add	r7
						// allocreg r1

						//osd.c, line 561
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 68, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 2

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 561
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
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
						// allocreg r2

						//osd.c, line 561
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 561
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 62 type a
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//osd.c, line 561
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 62
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 561
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 6a
						// deref 
	byt
	ld	r2
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 561
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r2 - only match against tmp
	//mt
	or	r1
						// (save result) // isreg
						// freereg r2

						//osd.c, line 561
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r1

						//osd.c, line 563
						//pcreltotemp
	.lipcrel	l280
	add	r7
l279: # 

						//osd.c, line 563
		// Offsets 0, 0
		// Have am? no, no
		// flags 2a, 260
						// (a/p assign)
						// Dereferencing object...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2a type 501
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x501
	byt
	ldt
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 563
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 62 type a
						// matchobj comparing flags 62 with 2a
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching
l280: # 

						//osd.c, line 564
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	12
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
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 565
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r5
						// (save result) // isreg
						// storing UNSIGNED SHORT to register - must mask
	.liconst	0xffff
	and	r5

						//osd.c, line 537
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
				// flags 2
	//mr
	and	r0

						//osd.c, line 537
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l300
		add	r7
l304: # 
						// allocreg r1

						//osd.c, line 568
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 102
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 568
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	256
	sgn
	cmp	r1
						// freereg r1

						//osd.c, line 568
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l307
		add	r7
						// allocreg r2
		// Offsets 0, 0
		// Have am? no, no
		// flags 162, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 162 type a
						// matchobj comparing flags 162 with 1
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
l281: # 

						//osd.c, line 568
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 260
						// (a/p assign)
						// Have an addressing mode...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 501
						// deref 
	ldbinc	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 568
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r5
						// (save result) // isreg
						// storing UNSIGNED SHORT to register - must mask
	.liconst	0xffff
	and	r5
						// allocreg r1

						//osd.c, line 568
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 102
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 568
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	256
	sgn
	cmp	r1
						// freereg r1

						//osd.c, line 568
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l281
		add	r7
						// freereg r2

						//osd.c, line 571
						//pcreltotemp
	.lipcrel	l307
	add	r7
l302: # 

						//osd.c, line 574
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 42 type 102
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 3
	st	r6
						//save_temp done

						//osd.c, line 574
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r6

						//osd.c, line 574
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l290
		add	r7
						// allocreg r1

						//osd.c, line 576
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	8
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 576
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	7
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	sub	r0
						// (save result) // isreg
	mt	r0
	mr	r1

						//osd.c, line 576
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
	mul	r1
						// (save result) // isreg

						//osd.c, line 576
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l145,0
						// static pe is varadr
	add	r1
						// (save result) // isreg

						//osd.c, line 577
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 578
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r2

						//osd.c, line 579
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 579
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 579
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 579
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 579
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 579
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 580
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 580
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 580
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 580
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 580
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 580
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 581
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 581
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 581
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 581
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 581
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 581
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 582
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 582
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 582
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 582
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 582
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 582
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 583
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 583
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 583
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 583
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 583
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 583
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 584
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 584
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 584
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 584
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 584
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 584
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 585
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 585
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 585
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 585
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 585
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 585
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 586
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 586
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 586
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2

						//osd.c, line 586
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 586
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r1
						// (save result) // isreg

						//osd.c, line 586
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r1

						//osd.c, line 587
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 588
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 589
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 590
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//osd.c, line 591
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
	.liconst	22
	add	r1
						// (save result) // isreg

						//osd.c, line 591
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 102
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						//Saving to reg r5
						// (save temp)isreg
	mr	r5
						//save_temp done
						// matchobj comparing flags 1 with 4a
	.liconst	65535
	and	r5
						// freereg r1
l290: # 
						// allocreg r1

						//osd.c, line 593
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 102
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 593
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	256
	sgn
	cmp	r1
						// freereg r1

						//osd.c, line 593
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l306
		add	r7

						//osd.c, line 595
						// (test)
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6

						//osd.c, line 595
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l294
		add	r7

						//osd.c, line 596
		// Offsets 0, 0
		// Have am? no, no
		// flags 2a, 260
						// (a/p assign)
						// Dereferencing object...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2a type 501
						// matchobj comparing flags 2a with 2
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags aa with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x501
	byt
	ldt
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 596
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 2a
						// var, auto|reg
						// matchobj comparing flags 1 with 2a
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
	.liconst	1
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

						//osd.c, line 598
						//pcreltotemp
	.lipcrel	l295
	add	r7
l294: # 

						//osd.c, line 598
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
l295: # 

						//osd.c, line 599
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	12
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
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 600
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r5
						// (save result) // isreg
						// storing UNSIGNED SHORT to register - must mask
	.liconst	0xffff
	and	r5

						//osd.c, line 572
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
				// flags 2
	//mr
	and	r0

						//osd.c, line 572
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l302
		add	r7
l306: # 
						// allocreg r1

						//osd.c, line 603
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 102
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 603
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	256
	sgn
	cmp	r1
						// freereg r1

						//osd.c, line 603
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l307
		add	r7
l303: # 

						//osd.c, line 603
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 603
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r5
						// (save result) // isreg
						// storing UNSIGNED SHORT to register - must mask
	.liconst	0xffff
	and	r5
						// allocreg r1

						//osd.c, line 603
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 102
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 603
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	256
	sgn
	cmp	r1
						// freereg r1

						//osd.c, line 603
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l303
		add	r7
l307: # 

						//osd.c, line 606
		// Offsets 33, 268435431
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435431, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	268435431
	mr	r0
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	-20
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
	.section	.text.f
	.global	_OsdWriteDoubleSize
_OsdWriteDoubleSize:
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
		// flags 40, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 40 type 101
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	255
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	268435427
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//osd.c, line 618
		// Offsets 32, 268435431
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
	.liconst	32
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 622
		// Offsets 12, 0
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
	.liconst	12
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 623
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 623
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 623
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 623
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 260
						// (a/p assign)
						// Dereferencing object...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 62 type 501
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 1
						// deref 
	byt
	ld	r6
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 625
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 62
						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 1
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 2
	hlf
	st	r0
						//save_temp done
l336: # 

						//osd.c, line 629
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 102
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x102
	hlf
	ldidx	r6
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//osd.c, line 629
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

						//osd.c, line 629
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l314
		add	r7
						// freereg r2
						// allocreg r1

						//osd.c, line 631
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 2
						// matchobj comparing flags 62 with 2
						// deref 
	byt
	ld	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 631
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 2
	.liconst	7
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	sub	r0
						// (save result) // isreg
	mt	r0
	mr	r1

						//osd.c, line 631
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
	mul	r1
						// (save result) // isreg

						//osd.c, line 631
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l145,0
						// static pe is varadr
	add	r1
						// (save result) // isreg

						//osd.c, line 632
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 633
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r2

						//osd.c, line 634
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 634
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 634
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 634
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 634
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 634
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 635
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 635
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 635
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 635
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 635
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 635
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 636
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 636
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 636
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 636
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 636
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 636
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 637
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 637
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 637
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 637
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 637
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 637
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 638
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 638
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 638
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 638
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 638
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 638
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 639
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 639
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 639
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 639
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 639
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 639
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 640
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 640
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 640
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 640
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 640
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 640
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 641
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 641
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r2
						// (save result) // isreg

						//osd.c, line 641
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r2

						//osd.c, line 641
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 641
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	xor	r1
						// (save result) // isreg

						//osd.c, line 641
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r1

						//osd.c, line 642
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 643
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 644
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 645
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//osd.c, line 646
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	22
	add	r1
						// (save result) // isreg

						//osd.c, line 646
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 102
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
						//sizemod based on type 0x102
	hlf
	stmpdec	r1
						// freereg r1

						//osd.c, line 649
						//pcreltotemp
	.lipcrel	l336
	add	r7
l314: # 
						// allocreg r2
						// allocreg r1

						//osd.c, line 650
		// Offsets 0, 0
		// Have am? no, no
		// flags 2a, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 3
		// Real offset of type is 3, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2a type 101
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// var FIXME - deref?
						// reg - auto
	.liconst	28
	ldidx	r6
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 650
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 2a
						// var, auto|reg
						// matchobj comparing flags 1 with 2a
	.liconst	28
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//osd.c, line 652
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1

						//osd.c, line 652
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 4a
						// reg r2 - only match against tmp
	//mt
				// flags 42
	and	r2

						//osd.c, line 652
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l340
		add	r7

						//osd.c, line 655
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	240
	sgn
	cmp	r0

						//osd.c, line 655
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l336
		add	r7
						// allocreg r1

						//osd.c, line 658
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	8
	mul	r1
						// (save result) // isreg

						//osd.c, line 658
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 6
						// (obj to r5) flags 82 type a
						// (prepobj r5)
 						// (prepobj r5)
 						// extern (offset 0)
	.liabs	_charfont
						// extern pe is varadr
	mr	r5
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r5
						// (save result) // isreg
						// freereg r1

						//osd.c, line 659
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	32
	ldidx	r6

						//osd.c, line 659
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l322
		add	r7

						//osd.c, line 662
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
						// freereg r2
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
						// matchobj comparing flags 102 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
l323: # 
						// allocreg r2

						//osd.c, line 664
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// deref 
	ldbinc	r5
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 665
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	240
	and	r2
						// (save result) // isreg

						//osd.c, line 665
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
	sgn
	shr	r2
						// (save result) // isreg
						// allocreg r1

						//osd.c, line 666
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
	.liconst	8
	and	r1
						// (save result) // isreg

						//osd.c, line 666
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	shl	r1
						// (save result) // isreg

						//osd.c, line 666
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	or	r2
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//osd.c, line 667
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	28
	and	r1
						// (save result) // isreg

						//osd.c, line 667
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	shl	r1
						// (save result) // isreg

						//osd.c, line 667
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	7
	and	r2
						// (save result) // isreg

						//osd.c, line 667
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
						// allocreg r2

						//osd.c, line 668
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						// (obj to r2) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	62
	and	r2
						// (save result) // isreg

						//osd.c, line 668
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	shl	r2
						// (save result) // isreg

						//osd.c, line 668
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	3
	and	r1
						// (save result) // isreg

						//osd.c, line 668
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	or	r2
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//osd.c, line 669
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	shl	r1
						// (save result) // isreg

						//osd.c, line 669
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	and	r2
						// (save result) // isreg

						//osd.c, line 669
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

						//osd.c, line 670
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 670
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r1

						//osd.c, line 663
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r4
						// (save result) // isreg

						//osd.c, line 663
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	sgn
	cmp	r4

						//osd.c, line 663
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l323
		add	r7
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r2

						//osd.c, line 674
						//pcreltotemp
	.lipcrel	l342
	add	r7
l322: # 

						//osd.c, line 676
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
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
						// freereg r2
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
						// matchobj comparing flags 102 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
l328: # 
						// allocreg r2

						//osd.c, line 678
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// deref 
	ldbinc	r5
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 679
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	15
	and	r2
						// (save result) // isreg
						// allocreg r1

						//osd.c, line 680
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
	.liconst	8
	and	r1
						// (save result) // isreg

						//osd.c, line 680
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	shl	r1
						// (save result) // isreg

						//osd.c, line 680
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	or	r2
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//osd.c, line 681
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	28
	and	r1
						// (save result) // isreg

						//osd.c, line 681
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	shl	r1
						// (save result) // isreg

						//osd.c, line 681
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	7
	and	r2
						// (save result) // isreg

						//osd.c, line 681
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
						// allocreg r2

						//osd.c, line 682
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						// (obj to r2) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	62
	and	r2
						// (save result) // isreg

						//osd.c, line 682
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	shl	r2
						// (save result) // isreg

						//osd.c, line 682
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	3
	and	r1
						// (save result) // isreg

						//osd.c, line 682
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	or	r2
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//osd.c, line 683
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	shl	r1
						// (save result) // isreg

						//osd.c, line 683
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	and	r2
						// (save result) // isreg

						//osd.c, line 683
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

						//osd.c, line 684
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 684
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r1

						//osd.c, line 677
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r4
						// (save result) // isreg

						//osd.c, line 677
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	sgn
	cmp	r4

						//osd.c, line 677
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l328
		add	r7
l342: # 
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	255
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r2
						// allocreg r1

						//osd.c, line 687
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	add	r1
						// (save result) // isreg

						//osd.c, line 687
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 102
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
						//sizemod based on type 0x102
	hlf
	stmpdec	r1
						// freereg r1

						//osd.c, line 627
						//pcreltotemp
	.lipcrel	l336
	add	r7
l340: # 

						//osd.c, line 692
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	256
	sgn
	cmp	r0

						//osd.c, line 692
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l343
		add	r7
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 102 type 102
						// matchobj comparing flags 102 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x102
	hlf
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
l332: # 

						//osd.c, line 692
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 692
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r2
						// (save result) // isreg
						// storing UNSIGNED SHORT to register - must mask
	.liconst	0xffff
	and	r2
						// allocreg r1

						//osd.c, line 692
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 102
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 692
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	256
	sgn
	cmp	r1
						// freereg r1

						//osd.c, line 692
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l332
		add	r7
l343: # 

						//osd.c, line 695
		// Offsets 33, 268435431
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435431, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	268435431
	mr	r0
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
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
	.section	.text.10
	.global	_OSD_PrintText
_OSD_PrintText:
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
		// flags 40, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 40 type 101
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
						// freereg r1
						// allocreg r5
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -12
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 102 type 104
						// matchobj comparing flags 102 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	36
	ldidx	r6
						// (save temp)isreg
	mr	r5
						//save_temp done
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
						// matchobj comparing flags 1 with 102
						// const
						// matchobj comparing flags 1 with 102
	.liconst	268435427
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
						// allocreg r2
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -8
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 102 type 104
						// matchobj comparing flags 102 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//osd.c, line 713
		// Offsets 32, 268435431
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435431, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 102
						// deref
						// const to r0
						// matchobj comparing flags 1 with 102
	.liconst	268435431
	mr	r0
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 720
		// Offsets 12, 0
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
	.liconst	12
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//osd.c, line 721
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//osd.c, line 721
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//osd.c, line 721
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//osd.c, line 721
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 260
						// (a/p assign)
						// Dereferencing object...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 62 type 501
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 1
						// deref 
	byt
	ld	r6
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//osd.c, line 723
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 62
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 1
	.liconst	44
	ldidx	r6

						//osd.c, line 723
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l347
		add	r7

						//osd.c, line 724
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, -20
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	44
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	255
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l347: # 
						// allocreg r1

						//osd.c, line 726
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// deref 
	byt
	ld	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 726
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	7
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	sub	r0
						// (save result) // isreg
	mt	r0
	mr	r1

						//osd.c, line 726
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
	mul	r1
						// (save result) // isreg

						//osd.c, line 726
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 4
						// (obj to r3) flags 82 type a
						// (prepobj r3)
 						// (prepobj r3)
 						// static
	.liabs	l145,0
						// static pe is varadr
	mr	r3
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r3
						// (save result) // isreg
						// freereg r1

						//osd.c, line 727
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	2
	cmp	r2

						//osd.c, line 727
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l349
		add	r7
						// allocreg r1

						//osd.c, line 729
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//osd.c, line 729
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//osd.c, line 729
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	sub	r2
						// (save result) // isreg
l349: # 

						//osd.c, line 732
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	16
	cmp	r2

						//osd.c, line 732
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l351
		add	r7

						//osd.c, line 732
		// Offsets 16, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 732
						//pcreltotemp
	.lipcrel	l352
	add	r7
l351: # 

						//osd.c, line 732
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 104
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done
l352: # 

						//osd.c, line 732
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 4a type 104
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r6
						//save_temp done

						//osd.c, line 733
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
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

						//osd.c, line 734
						//Call division routine
	mt	r1
	stdec	r6
	mt	r2
	stdec	r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	2
	mr	r2
	.lipcrel	_div_s32bys32
	add	r7
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
	.liconst	36
	addt	r6
	stmpdec	r2

						//osd.c, line 734
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r0

						//osd.c, line 734
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l383
		add	r7
						// freereg r1
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)isreg
	mr	r2
						//save_temp done
l353: # 
						// allocreg r1

						//osd.c, line 735
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 301
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 735
						// (bitwise/arithmetic) 	//ops: 2, 3, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 62
						// reg r2 - only match against tmp
	mt	r2
	xor	r1
						// (save result) // isreg

						//osd.c, line 735
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r1
						// allocreg r1

						//osd.c, line 735
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 735
						// (bitwise/arithmetic) 	//ops: 2, 3, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 6a
						// reg r2 - only match against tmp
	mt	r2
	xor	r1
						// (save result) // isreg

						//osd.c, line 735
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 240
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r1

						//osd.c, line 734
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

						//osd.c, line 734
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	sgn
	cmp	r0

						//osd.c, line 734
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l353
		add	r7
l383: # 
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -8
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 102 type 104
						// var, auto|reg
	.liconst	32
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//osd.c, line 737
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 62 with 102
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//osd.c, line 737
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l358
		add	r7
						// allocreg r1

						//osd.c, line 738
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 301
						// matchobj comparing flags 62 with 1
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 738
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	255
	xor	r1
						// (save result) // isreg

						//osd.c, line 738
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r1
l358: # 
						// allocreg r1

						//osd.c, line 739
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 3
						// deref 
	ld	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//osd.c, line 739
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 62
						// reg r1 - only match against tmp
	//mt
	sub	r2
						// (save result) // isreg
						// freereg r1

						//osd.c, line 741
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	2
	cmp	r2

						//osd.c, line 741
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l360
		add	r7
						// allocreg r1

						//osd.c, line 742
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//osd.c, line 742
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//osd.c, line 742
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	sub	r2
						// (save result) // isreg
						// freereg r1
l360: # 
						// allocreg r1

						//osd.c, line 744
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 102
		// Real offset of type is 102, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 104
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 744
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r2
						// (save result) // isreg

						//osd.c, line 744
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//osd.c, line 744
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l384
		add	r7
l379: # 

						//osd.c, line 745
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r1

						//osd.c, line 744
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 106
		// Real offset of type is 106, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 744
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r2
						// (save result) // isreg

						//osd.c, line 744
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//osd.c, line 744
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l379
		add	r7
l384: # 
						// allocreg r1

						//osd.c, line 747
						// (test)
						// (obj to tmp) flags 2 type 104
						// var, auto|reg
	.liconst	40
	ldidx	r6

						//osd.c, line 747
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l385
		add	r7
						// freereg r1
						// allocreg r1

						//osd.c, line 749
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	mr	r1
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	40
	ldidx	r6
	sub	r1
						// (save result) // isreg

						//osd.c, line 749
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 6, 2, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	sub	r5
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//osd.c, line 750
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2a type 101
						// matchobj comparing flags 2a with 4a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags aa with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 4a
	.liconst	28
	ldidx	r6
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 750
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 2a
						// var, auto|reg
						// matchobj comparing flags 1 with 2a
	.liconst	28
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//osd.c, line 750
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
	mul	r1
						// (save result) // isreg

						//osd.c, line 750
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 4
						// (obj to r3) flags 82 type a
						// (prepobj r3)
 						// (prepobj r3)
 						// extern (offset 0)
	.liabs	_charfont
						// extern pe is varadr
	mr	r3
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r3
						// (save result) // isreg

						//osd.c, line 750
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	40
	ldidx	r6
	add	r3
						// (save result) // isreg
						// freereg r1

						//osd.c, line 752
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	cmp	r0

						//osd.c, line 752
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l385
		add	r7
						// freereg r2
l380: # 
						// allocreg r1

						//osd.c, line 752
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 301
						// deref 
	ldbinc	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//osd.c, line 752
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	44
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 752
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	//mt
	xor	r1
						// (save result) // isreg
						// freereg r2

						//osd.c, line 752
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r1

						//osd.c, line 752
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	40
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	44
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//osd.c, line 752
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	40
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	cmp	r0

						//osd.c, line 752
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l380
		add	r7
l385: # 
						// allocreg r2
						// allocreg r1

						//osd.c, line 755
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	8
	cmp	r5

						//osd.c, line 755
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l386
		add	r7
						// freereg r1
						// freereg r2
						// freereg r3
l381: # 
						// allocreg r2

						//osd.c, line 757
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2a type 101
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// var FIXME - deref?
						// reg - auto
	.liconst	28
	ldidx	r6
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 757
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 2a
						// var, auto|reg
						// matchobj comparing flags 1 with 2a
	.liconst	28
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//osd.c, line 757
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
	mul	r2
						// (save result) // isreg

						//osd.c, line 757
						// (bitwise/arithmetic) 	//ops: 0, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_charfont
						// extern pe is varadr
	add	r2
						// (save result) // isreg
						// allocreg r3

						//osd.c, line 758
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r2
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//osd.c, line 758
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	44
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 758
						// (bitwise/arithmetic) 	//ops: 2, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	xor	r3
						// (save result) // isreg

						//osd.c, line 758
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r3
						// allocreg r3

						//osd.c, line 759
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 759
						// (bitwise/arithmetic) 	//ops: 4, 2, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	mt	r1
	xor	r3
						// (save result) // isreg

						//osd.c, line 759
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r3
						// allocreg r3

						//osd.c, line 760
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 760
						// (bitwise/arithmetic) 	//ops: 4, 2, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	mt	r1
	xor	r3
						// (save result) // isreg

						//osd.c, line 760
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r3
						// allocreg r3

						//osd.c, line 761
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 761
						// (bitwise/arithmetic) 	//ops: 4, 2, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	mt	r1
	xor	r3
						// (save result) // isreg

						//osd.c, line 761
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r3
						// allocreg r3

						//osd.c, line 762
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 762
						// (bitwise/arithmetic) 	//ops: 4, 2, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	mt	r1
	xor	r3
						// (save result) // isreg

						//osd.c, line 762
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r3
						// allocreg r3

						//osd.c, line 763
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 763
						// (bitwise/arithmetic) 	//ops: 4, 2, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	mt	r1
	xor	r3
						// (save result) // isreg

						//osd.c, line 763
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r3
						// allocreg r3

						//osd.c, line 764
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 764
						// (bitwise/arithmetic) 	//ops: 4, 2, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	mt	r1
	xor	r3
						// (save result) // isreg

						//osd.c, line 764
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r3

						//osd.c, line 765
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r2
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 765
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r2 - only match against tmp
	//mt
	xor	r1
						// (save result) // isreg
						// freereg r2

						//osd.c, line 765
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r1

						//osd.c, line 766
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
	sub	r5
						// (save result) // isreg

						//osd.c, line 755
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	cmp	r5

						//osd.c, line 755
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l381
		add	r7
l386: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//osd.c, line 769
						// (test)
						// (obj to tmp) flags 42 type 104
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//osd.c, line 769
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l387
		add	r7
						// freereg r1
						// allocreg r1

						//osd.c, line 771
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2a type 101
						// matchobj comparing flags 2a with 42
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags aa with 42
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 42
	.liconst	28
	ldidx	r6
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 771
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2a
						// const
						// matchobj comparing flags 1 with 2a
	.liconst	8
	mul	r1
						// (save result) // isreg

						//osd.c, line 771
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 4
						// (obj to r3) flags 82 type a
						// (prepobj r3)
 						// (prepobj r3)
 						// extern (offset 0)
	.liabs	_charfont
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

						//osd.c, line 772
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 128
		// Real offset of type is 128, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 772
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r5
						// (save result) // isreg

						//osd.c, line 772
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//osd.c, line 772
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l387
		add	r7
						// freereg r2
l382: # 
						// allocreg r1

						//osd.c, line 773
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 301
						// deref 
	ldbinc	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//osd.c, line 773
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	44
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 773
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	//mt
	xor	r1
						// (save result) // isreg
						// freereg r2

						//osd.c, line 773
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r1
						// allocreg r1

						//osd.c, line 772
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 152
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 772
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r5
						// (save result) // isreg

						//osd.c, line 772
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//osd.c, line 772
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l382
		add	r7
l387: # 
						// allocreg r2
						// allocreg r1

						//osd.c, line 776
		// Offsets 33, 268435431
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435431, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	268435431
	mr	r0
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
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
	.section	.text.11
	.global	_OsdClear
_OsdClear:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r5
		// Offsets 2048, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	2048
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r4
		// Offsets 268435431, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	268435431
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
						// allocreg r2
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 1
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	-4
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 786
		// Offsets 32, 0
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
	.liconst	32
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//osd.c, line 790
		// Offsets 12, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	12
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 791
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 791
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 791
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 791
		// Offsets 24, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	24
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 794
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done
l394: # 

						//osd.c, line 795
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	0
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 795
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r3
						// (save result) // isreg
						// storing UNSIGNED SHORT to register - must mask
	.liconst	0xffff
	and	r3
						// allocreg r1

						//osd.c, line 795
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 102
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 795
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 42
						// reg r5 - only match against tmp
	mt	r5
	sgn
	cmp	r1
						// freereg r1

						//osd.c, line 795
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l394
		add	r7

						//osd.c, line 798
						// Z disposable
		// Offsets 33, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 240
						// const
						// matchobj comparing flags 1 with 240
	.liconst	33
						// (save temp)store type 1
	stbinc	r4
						//Disposable, postinc doesn't matter.
						//save_temp done
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

	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.12
	.global	_OsdWaitVBL
_OsdWaitVBL:
	stdec	r6
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
	.section	.text.13
	.global	_OsdShow
_OsdShow:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
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
						// (obj to tmp) flags 40 type 101
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
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
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
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

						//osd.c, line 810
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

						//osd.c, line 812
		// Offsets 40, 0
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
	.liconst	40
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r1

						//osd.c, line 813
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 813
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	2
	and	r1
						// (save result) // isreg

						//osd.c, line 813
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
	or	r1
						// (save result) // isreg

						//osd.c, line 813
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	stbinc	r4
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//osd.c, line 814
						// Z disposable
		// Offsets 33, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r3
						//Disposable, postinc doesn't matter.
						//save_temp done
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
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.14
	.global	_OsdHide
_OsdHide:
	stdec	r6
						// allocreg r2
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// const
	.liconst	268435427
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1
		// Offsets 268435431, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 1
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 821
		// Offsets 32, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//osd.c, line 823
		// Offsets 40, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	40
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 824
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	stbinc	r2
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 825
						// Z disposable
		// Offsets 33, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// freereg r2
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
	.section	.text.15
	.global	_OsdReset
_OsdReset:
	stdec	r6
						// allocreg r2
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// const
	.liconst	268435427
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1
		// Offsets 268435431, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 1
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 831
		// Offsets 32, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//osd.c, line 833
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	8
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 835
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 836
		// Offsets 33, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//osd.c, line 837
		// Offsets 32, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//osd.c, line 838
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	8
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 839
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	stbinc	r2
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 840
						// Z disposable
		// Offsets 33, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// freereg r2
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
	.section	.text.16
	.global	_OsdReconfig
_OsdReconfig:
	stdec	r6
						// allocreg r2
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// const
	.liconst	268435427
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1
		// Offsets 268435431, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 1
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 846
		// Offsets 32, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//osd.c, line 848
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	8
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 849
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	2
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 850
		// Offsets 33, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//osd.c, line 851
		// Offsets 32, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//osd.c, line 852
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	8
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 853
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	stbinc	r2
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 854
						// Z disposable
		// Offsets 33, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// freereg r2
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
	.section	.text.17
	.global	_ConfigVideo
_ConfigVideo:
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
						// (obj to tmp) flags 40 type 101
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r5
		// Offsets 268435431, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	268435431
						// (save temp)isreg
	mr	r5
						//save_temp done
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
						// matchobj comparing flags 1 with 1
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	-4
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 860
		// Offsets 32, 0
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
	.liconst	32
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//osd.c, line 862
		// Offsets 52, 0
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
	.liconst	52
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r1

						//osd.c, line 863
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 863
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	3
	and	r1
						// (save result) // isreg

						//osd.c, line 863
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	4
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//osd.c, line 863
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	16
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 863
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	3
	and	r2
						// (save result) // isreg

						//osd.c, line 863
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	2
	shl	r2
						// (save result) // isreg

						//osd.c, line 863
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//osd.c, line 863
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	20
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 863
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	3
	and	r2
						// (save result) // isreg

						//osd.c, line 863
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2

						//osd.c, line 863
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	stbinc	r4
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//osd.c, line 864
						// Z disposable
		// Offsets 33, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r5
						//Disposable, postinc doesn't matter.
						//save_temp done
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
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.18
	.global	_ConfigMemory
_ConfigMemory:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// const
	.liconst	268435427
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2
		// Offsets 268435431, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 1
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//osd.c, line 869
		// Offsets 32, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 870
		// Offsets 36, 0
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
	.liconst	36
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 871
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 42, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 42 type 501
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	stbinc	r3
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 872
						// Z disposable
		// Offsets 33, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r2
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// freereg r2
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
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.19
	.global	_ConfigCPU
_ConfigCPU:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
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
						// (obj to tmp) flags 40 type 101
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
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
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
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

						//osd.c, line 877
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

						//osd.c, line 879
		// Offsets 20, 0
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
	.liconst	20
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r1

						//osd.c, line 880
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 880
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	15
	and	r1
						// (save result) // isreg

						//osd.c, line 880
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	stbinc	r4
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//osd.c, line 881
						// Z disposable
		// Offsets 33, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r3
						//Disposable, postinc doesn't matter.
						//save_temp done
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
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1a
	.global	_ConfigChipset
_ConfigChipset:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
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
						// (obj to tmp) flags 40 type 101
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
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
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
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

						//osd.c, line 886
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

						//osd.c, line 888
		// Offsets 4, 0
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
	.liconst	4
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r1

						//osd.c, line 889
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 889
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	31
	and	r1
						// (save result) // isreg

						//osd.c, line 889
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	stbinc	r4
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//osd.c, line 890
						// Z disposable
		// Offsets 33, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r3
						//Disposable, postinc doesn't matter.
						//save_temp done
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
	.section	.text.1b
	.global	_ConfigFloppy
_ConfigFloppy:
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
						// (obj to tmp) flags 40 type 101
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
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
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	268435427
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r4
		// Offsets 268435431, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 1
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r4
						//save_temp done

						//osd.c, line 895
		// Offsets 32, 0
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
	.liconst	32
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//osd.c, line 897
		// Offsets 68, 0
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
	.liconst	68
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// allocreg r1

						//osd.c, line 898
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 898
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	3
	and	r1
						// (save result) // isreg

						//osd.c, line 898
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	2
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//osd.c, line 898
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	16
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 898
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	3
	and	r2
						// (save result) // isreg

						//osd.c, line 898
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2

						//osd.c, line 898
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	stbinc	r5
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//osd.c, line 899
						// Z disposable
		// Offsets 33, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r4
						//Disposable, postinc doesn't matter.
						//save_temp done
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
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1c
	.global	_ConfigScanlines
_ConfigScanlines:
	stdec	r6
						// allocreg r1
		// Offsets 268435431, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// const
	.liconst	268435431
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 904
		// Offsets 32, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//osd.c, line 906
						// Z disposable
		// Offsets 33, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
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
	.section	.text.1d
	.global	_ConfigIDE
_ConfigIDE:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-8
	add	r6
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
						// (obj to tmp) flags 40 type 101
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r5
		// Offsets 268435431, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	268435431
						// (save temp)isreg
	mr	r5
						//save_temp done
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
						// matchobj comparing flags 1 with 1
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	-4
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3

						//osd.c, line 912
		// Offsets 32, 0
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
	.liconst	32
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//osd.c, line 913
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 3
	st	r6
						//save_temp done
						// allocreg r1

						//osd.c, line 913
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 62 with 42
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 1
	.liconst	1
	sgn
	shr	r1
						// (save result) // isreg

						//osd.c, line 913
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	2
	shl	r1
						// (save result) // isreg

						//osd.c, line 913
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	84
	add	r1
						// (save result) // isreg

						//osd.c, line 913
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r1

						//osd.c, line 914
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	28
	ldidx	r6

						//osd.c, line 914
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l421
		add	r7

						//osd.c, line 914
		// Offsets 4, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 18
		// Real offset of type is 18, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	4
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 914
						//pcreltotemp
	.lipcrel	l422
	add	r7
l421: # 

						//osd.c, line 914
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 18
		// Real offset of type is 18, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done
l422: # 

						//osd.c, line 914
						// (test)
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	24
	ldidx	r6

						//osd.c, line 914
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l424
		add	r7

						//osd.c, line 914
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	2
						// (save temp)store type 3
	st	r0
						//save_temp done

						//osd.c, line 914
						//pcreltotemp
	.lipcrel	l425
	add	r7
l424: # 

						//osd.c, line 914
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r2
l425: # 
						// allocreg r1

						//osd.c, line 914
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 4, 2
						// (obj to r1) flags a type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with a
						// reg r3 - only match against tmp
	mt	r3
	or	r1
						// (save result) // isreg
						// allocreg r2

						//osd.c, line 914
						// (bitwise/arithmetic) 	//ops: 7, 0, 3
						// (obj to r2) flags 62 type 3
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r6
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
	and	r2
						// (save result) // isreg

						//osd.c, line 914
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

						//osd.c, line 914
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	stbinc	r4
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//osd.c, line 915
						// Z disposable
		// Offsets 33, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	33
						// (save temp)store type 1
	stbinc	r5
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 1
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
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1e
	.global	_ConfigAutofire
_ConfigAutofire:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
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
						// (obj to tmp) flags 40 type 101
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
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
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
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

						//osd.c, line 921
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

						//osd.c, line 923
		// Offsets 100, 0
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
	.liconst	100
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r1

						//osd.c, line 924
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 924
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	3
	and	r1
						// (save result) // isreg

						//osd.c, line 924
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	stbinc	r4
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//osd.c, line 925
						// Z disposable
		// Offsets 33, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r3
						//Disposable, postinc doesn't matter.
						//save_temp done
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
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1f
	.global	_OsdGetCtrl
_OsdGetCtrl:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-4
	add	r6
						// allocreg r5
						// allocreg r4
						// allocreg r3
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	268435427
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 939
		// Offsets 32, 268435431
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
	.liconst	32
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 940
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 941
		// Offsets 255, 0
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
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//osd.c, line 941
		// Offsets 0, 0
		// Have am? no, no
		// flags 260, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r5
						//save_temp done

						//osd.c, line 942
		// Offsets 33, 268435431
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
	.liconst	33
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 945
						//call
						//pcreltotemp
	.lipcrel	_CheckButton // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//osd.c, line 945
						// (test)
						// (obj to tmp) flags 4a type 104
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//osd.c, line 945
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l435
		add	r7
						// allocreg r1

						//osd.c, line 946
		// Offsets 20, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 10
		// Real offset of type is 10, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	20
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 946
						//call
						//pcreltotemp
	.lipcrel	_GetTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//osd.c, line 946
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l431,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//osd.c, line 947
						//pcreltotemp
	.lipcrel	l438
	add	r7
l435: # 
						// allocreg r1

						//osd.c, line 947
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 22
		// Real offset of type is 22, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l431,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 947
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//osd.c, line 947
						// (test)
						// (obj to tmp) flags 4a type 104
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//osd.c, line 947
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l438
		add	r7

						//osd.c, line 949
		// Offsets 105, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	105
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r1

						//osd.c, line 950
		// Offsets -1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	-1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 950
						//call
						//pcreltotemp
	.lipcrel	_GetTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//osd.c, line 950
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l431,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
l438: # 

						//osd.c, line 954
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	0
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//osd.c, line 955
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//osd.c, line 955
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 42
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l430,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 955
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	cmp	r4
						// freereg r1

						//osd.c, line 955
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l440
		add	r7
						// allocreg r1

						//osd.c, line 956
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
						// freereg r1
l440: # 

						//osd.c, line 958
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l430,4
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r5
						// allocreg r1

						//osd.c, line 961
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	128
	and	r1
						// (save result) // isreg
						// freereg r1

						//osd.c, line 961
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l442
		add	r7
						// allocreg r1

						//osd.c, line 963
		// Offsets 100, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 64, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	100
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 963
						//call
						//pcreltotemp
	.lipcrel	_GetTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//osd.c, line 963
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l432,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//osd.c, line 965
						//pcreltotemp
	.lipcrel	l452
	add	r7
l442: # 
						// allocreg r1

						//osd.c, line 965
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 76
		// Real offset of type is 76, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l432,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 965
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//osd.c, line 965
						// (test)
						// (obj to tmp) flags 4a type 104
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//osd.c, line 965
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l452
		add	r7
						// allocreg r1

						//osd.c, line 967
		// Offsets 25, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 88, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	25
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 967
						//call
						//pcreltotemp
	.lipcrel	_GetTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//osd.c, line 967
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l432,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//osd.c, line 968
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	76
	cmp	r4

						//osd.c, line 968
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l446
		add	r7
						// allocreg r1

						//osd.c, line 968
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	77
	cmp	r4

						//osd.c, line 968
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l447
		add	r7
l446: # 

						//osd.c, line 969
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 42 type 101
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
						// freereg r1
l447: # 

						//osd.c, line 970
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l433,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l433,0
						// static pe not varadr
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!
						// allocreg r1

						//osd.c, line 971
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l433,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 971
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	cmp	r1
						// freereg r1

						//osd.c, line 971
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l452
		add	r7

						//osd.c, line 973
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 433
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l433,0
						// static pe not varadr
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
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
	.liconst	108
	sub	r1
						// (save result) // isreg
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
	cmp	r1
						// freereg r1
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l451
		add	r7
						// allocreg r1

						//osd.c, line 974
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 124
		// Real offset of type is 124, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 974
						//call
						//pcreltotemp
	.lipcrel	_GetASCIIKey // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//osd.c, line 974
						// (test)
						// (obj to tmp) flags 4a type 101
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//osd.c, line 974
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l452
		add	r7
l451: # 
						// allocreg r1

						//osd.c, line 975
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 42, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 42 type 101
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
l452: # 

						//osd.c, line 979
						//setreturn
						// (obj to r0) flags 62 type 101
						// deref 
	byt
	ld	r6
	mr	r0
						// freereg r1
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
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

	.section	.data.20
	.align	4
l431:
	.int	0
	.section	.data.21
	.align	4
l432:
	.int	0
	.section	.data.22
l433:
	.byte	0
	.section	.bss.23
	.lcomm	l430,1
	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.24
	.global	_GetASCIIKey
_GetASCIIKey:
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
						// (obj to tmp) flags 40 type 101
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r3

						//osd.c, line 985
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 40
						// reg r2 - only match against tmp
	//mt
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//osd.c, line 985
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r3 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	128
	and	r1
						// (save result) // isreg
						// freereg r1

						//osd.c, line 985
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l458
		add	r7

						//osd.c, line 986
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0

						//osd.c, line 988
						//pcreltotemp
	.lipcrel	l455
	add	r7
l458: # 
						// allocreg r1

						//osd.c, line 988
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	127
	and	r1
						// (save result) // isreg

						//osd.c, line 988
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_keycode_table
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//osd.c, line 988
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
	mr	r0
						// freereg r1
l455: # 
						// freereg r2
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
	.section	.text.25
	.global	_ScrollText
_ScrollText:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-4
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
						// (obj to tmp) flags 40 type 101
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
						// allocreg r4
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -8
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 102 type 3
						// matchobj comparing flags 102 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	24
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//osd.c, line 999
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 102
						// var, auto|reg
						// matchobj comparing flags 1 with 102
	.liconst	28
	ldidx	r6

						//osd.c, line 999
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l462
		add	r7

						//osd.c, line 1000
		// Offsets 30, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, -12
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
	.liconst	30
						// (save temp)store type 3
	st	r0
						//save_temp done
l462: # 

						//osd.c, line 1002
						// (test)
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	20
	ldidx	r6

						//osd.c, line 1002
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l470
		add	r7

						//osd.c, line 1002
						// (test)
						// (obj to tmp) flags 22 type 301
						// matchobj comparing flags 22 with 2
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
	.liconst	20
	ldidx	r6
						//sizemod based on type 0x301
	byt
	ldt

						//osd.c, line 1002
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l470
		add	r7
						// freereg r1
						// allocreg r1

						//osd.c, line 1002
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 9
		// Real offset of type is 9, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 22
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l143,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 1002
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//osd.c, line 1002
						// (test)
						// (obj to tmp) flags 4a type 104
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//osd.c, line 1002
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l470
		add	r7
						// freereg r2
						// freereg r3
						// allocreg r1

						//osd.c, line 1004
		// Offsets 3, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 1004
						//call
						//pcreltotemp
	.lipcrel	_GetTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//osd.c, line 1004
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l143,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//osd.c, line 1006
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l142,0
						//static deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l142,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// allocreg r3

						//osd.c, line 1007
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//osd.c, line 1007
		// Offsets 32, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	32
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//osd.c, line 1007
		// Offsets 32, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 52
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 1007
						//call
						//pcreltotemp
	.lipcrel	___memset // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//osd.c, line 1009
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//osd.c, line 1009
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l468
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//osd.c, line 1010
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 64, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	20
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 1010
						//call
						//pcreltotemp
	.lipcrel	___strlen // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//osd.c, line 1010
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//osd.c, line 1010
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
						//Saving to reg r4
						// (save temp)isreg
	mr	r4
						//save_temp done
						//No need to mask - same size
						// freereg r1
l468: # 
						// allocreg r1

						//osd.c, line 1012
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	28
	ldidx	r6
	sgn
	cmp	r4

						//osd.c, line 1012
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l470
		add	r7
						// freereg r1
						// allocreg r1

						//osd.c, line 1014
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//osd.c, line 1014
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	10
	add	r1
						// (save result) // isreg

						//osd.c, line 1014
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	3
	shl	r1
						// (save result) // isreg

						//osd.c, line 1014
						//FIXME convert
						// (convert - reducing type 103 to 104
						//No need to mask - same size

						//osd.c, line 1014
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l142,0
						//static deref
						//sizemod based on type 0x104
	ldt
	cmp	r1
						// freereg r1

						//osd.c, line 1014
	cond	SGT
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l472
		add	r7
						// allocreg r1

						//osd.c, line 1015
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 142
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l142,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 4
	st	r0
						//save_temp done
						// freereg r1
l472: # 
						// allocreg r1

						//osd.c, line 1017
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l142,0
						//static deref
						//sizemod based on type 0x104
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	3
	shr	r1
						// (save result) // isreg

						//osd.c, line 1017
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 4
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 4
	st	r6
						//save_temp done
						// freereg r1
						// allocreg r1

						//osd.c, line 1019
						//FIXME convert
						// (convert - reducing type 3 to 4
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 4a
						// reg r4 - only match against tmp
	mt	r4
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//osd.c, line 1019
						// (bitwise/arithmetic) 	//ops: 2, 7, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 62 type 4
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r6
	sub	r1
						// (save result) // isreg

						//osd.c, line 1019
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 4 to 3
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 4
						// matchobj comparing flags 4a with 62
						// reg r1 - only match against tmp
	mt	r1
						//Saving to reg r4
						// (save temp)isreg
	mr	r4
						//save_temp done
						//No need to mask - same size
						// freereg r1

						//osd.c, line 1021
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	28
	ldidx	r6
	sgn
	cmp	r4

						//osd.c, line 1021
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l474
		add	r7
						// allocreg r1

						//osd.c, line 1022
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -8
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
						// (save temp)isreg
	mr	r4
						//save_temp done
l474: # 

						//osd.c, line 1024
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r4

						//osd.c, line 1024
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l476
		add	r7
						// freereg r1
						// freereg r2
						// freereg r3
						// allocreg r1

						//osd.c, line 1025
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size
						// allocreg r2

						//osd.c, line 1025
						// (bitwise/arithmetic) 	//ops: 0, 7, 3
						// (obj to r2) flags 2 type a
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	20
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r6
	add	r2
						// (save result) // isreg
						// allocreg r3

						//osd.c, line 1025
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 132
		// Real offset of type is 132, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 62
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 62
						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done

						//osd.c, line 1025
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 136
		// Real offset of type is 136, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	//mr
						//save_temp done

						//osd.c, line 1025
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 140
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//osd.c, line 1025
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1
l476: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//osd.c, line 1027
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	28
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	10
	sub	r1
						// (save result) // isreg

						//osd.c, line 1027
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	sgn
	cmp	r4
						// freereg r1

						//osd.c, line 1027
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l478
		add	r7
						// freereg r2
						// freereg r3
						// allocreg r1

						//osd.c, line 1028
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	28
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
	sub	r1
						// (save result) // isreg

						//osd.c, line 1028
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	10
	sub	r1
						// (save result) // isreg

						//osd.c, line 1028
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size
						// allocreg r2

						//osd.c, line 1028
						// (bitwise/arithmetic) 	//ops: 0, 5, 3
						// (obj to r2) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj r2)
 						// (prepobj r2)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
	mr	r2
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	add	r2
						// (save result) // isreg
						// allocreg r3

						//osd.c, line 1028
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	10
	addt	r2
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//osd.c, line 1028
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 188
		// Real offset of type is 188, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	20
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//osd.c, line 1028
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 192
		// Real offset of type is 192, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//osd.c, line 1028
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1
l478: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//osd.c, line 1030
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	32
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 1030
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//osd.c, line 1030
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l142,0
						//static deref
						//sizemod based on type 0x104
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	7
	and	r1
						// (save result) // isreg

						//osd.c, line 1030
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

						//osd.c, line 1030
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	36
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r1
						// (save result) // isreg

						//osd.c, line 1030
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	3
	shl	r1
						// (save result) // isreg

						//osd.c, line 1030
						//FIXME convert
						// (convert - reducing type 3 to 104
						//No need to mask - same size

						//osd.c, line 1030
						// Q1 disposable
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//osd.c, line 1030
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	22
	stdec	r6

						//osd.c, line 1030
						// (a/p push)
						// a: pushed 16, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//osd.c, line 1030
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 1030
						//call
						//pcreltotemp
	.lipcrel	_OSD_PrintText // extern
	add	r7
						// Flow control - popping 20 + 0 bytes
	.liconst	20
	add	r6
						// freereg r1
l470: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
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
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.26
	.global	_ScrollReset
_ScrollReset:
	stdec	r6
						// allocreg r1

						//osd.c, line 1038
		// Offsets 300, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	300
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 1038
						//call
						//pcreltotemp
	.lipcrel	_GetTimer // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//osd.c, line 1038
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l143,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//osd.c, line 1039
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 142
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// static
	.liabs	l142,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 4
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
	.section	.text.27
	.global	_OsdColor
_OsdColor:
	stdec	r6
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
	.section	.text.28
	.global	_OsdDoReset
_OsdDoReset:
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
						// allocreg r2
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	268435427
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1
		// Offsets 268435431, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 1
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//osd.c, line 1049
		// Offsets 32, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//osd.c, line 1050
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	8
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 1051
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 1052
		// Offsets 33, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//osd.c, line 1053
		// Offsets 32, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//osd.c, line 1054
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	8
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//osd.c, line 1055
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r2
						//Disposable, postinc doesn't matter.
						//save_temp done

						//osd.c, line 1056
						// Z disposable
		// Offsets 33, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// freereg r2
						// freereg r3
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.29
	.global	_logodata
_logodata:
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
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	128
	.byte	192
	.byte	192
	.byte	224
	.byte	224
	.byte	224
	.byte	224
	.byte	224
	.byte	224
	.byte	192
	.byte	192
	.byte	128
	.byte	128
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
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	0
	.byte	0
	.byte	128
	.byte	131
	.byte	135
	.byte	135
	.byte	143
	.byte	143
	.byte	159
	.byte	159
	.byte	159
	.byte	159
	.byte	159
	.byte	159
	.byte	15
	.byte	15
	.byte	7
	.byte	7
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	131
	.byte	3
	.byte	3
	.byte	3
	.byte	131
	.byte	131
	.byte	3
	.byte	3
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
	.byte	0
	.byte	0
	.byte	128
	.byte	192
	.byte	240
	.byte	124
	.byte	30
	.byte	7
	.byte	3
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	252
	.byte	192
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	128
	.byte	192
	.byte	96
	.byte	32
	.byte	48
	.byte	24
	.byte	140
	.byte	196
	.byte	246
	.byte	251
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	127
	.byte	31
	.byte	7
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	224
	.byte	240
	.byte	252
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	63
	.byte	31
	.byte	7
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	224
	.byte	240
	.byte	60
	.byte	14
	.byte	7
	.byte	3
	.byte	7
	.byte	7
	.byte	15
	.byte	31
	.byte	63
	.byte	127
	.byte	254
	.byte	252
	.byte	248
	.byte	240
	.byte	224
	.byte	192
	.byte	128
	.byte	0
	.byte	0
	.byte	0
	.byte	192
	.byte	240
	.byte	56
	.byte	30
	.byte	7
	.byte	3
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	224
	.byte	240
	.byte	252
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	63
	.byte	31
	.byte	7
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	192
	.byte	240
	.byte	124
	.byte	30
	.byte	7
	.byte	3
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	252
	.byte	192
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	128
	.byte	192
	.byte	96
	.byte	32
	.byte	48
	.byte	24
	.byte	140
	.byte	196
	.byte	246
	.byte	251
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	127
	.byte	31
	.byte	7
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	192
	.byte	240
	.byte	248
	.byte	254
	.byte	255
	.byte	255
	.byte	255
	.byte	127
	.byte	31
	.byte	7
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	224
	.byte	240
	.byte	248
	.byte	252
	.byte	252
	.byte	254
	.byte	254
	.byte	254
	.byte	62
	.byte	31
	.byte	15
	.byte	7
	.byte	7
	.byte	3
	.byte	3
	.byte	1
	.byte	1
	.byte	65
	.byte	65
	.byte	64
	.byte	64
	.byte	192
	.byte	192
	.byte	192
	.byte	192
	.byte	193
	.byte	193
	.byte	193
	.byte	195
	.byte	71
	.byte	71
	.byte	67
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	48
	.byte	48
	.byte	56
	.byte	62
	.byte	47
	.byte	35
	.byte	32
	.byte	32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.byte	63
	.byte	63
	.byte	31
	.byte	31
	.byte	15
	.byte	7
	.byte	6
	.byte	3
	.byte	33
	.byte	33
	.byte	32
	.byte	32
	.byte	32
	.byte	48
	.byte	56
	.byte	62
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	39
	.byte	33
	.byte	32
	.byte	0
	.byte	0
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	48
	.byte	56
	.byte	60
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	39
	.byte	33
	.byte	32
	.byte	32
	.byte	0
	.byte	0
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	48
	.byte	56
	.byte	60
	.byte	63
	.byte	39
	.byte	33
	.byte	32
	.byte	32
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
	.byte	1
	.byte	3
	.byte	7
	.byte	15
	.byte	31
	.byte	63
	.byte	63
	.byte	30
	.byte	7
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	48
	.byte	56
	.byte	60
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	39
	.byte	33
	.byte	32
	.byte	32
	.byte	0
	.byte	0
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	48
	.byte	48
	.byte	56
	.byte	62
	.byte	47
	.byte	35
	.byte	32
	.byte	32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.byte	63
	.byte	63
	.byte	31
	.byte	31
	.byte	15
	.byte	7
	.byte	6
	.byte	3
	.byte	33
	.byte	33
	.byte	32
	.byte	32
	.byte	32
	.byte	48
	.byte	56
	.byte	62
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	39
	.byte	33
	.byte	32
	.byte	0
	.byte	0
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	48
	.byte	56
	.byte	62
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	39
	.byte	33
	.byte	32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	7
	.byte	15
	.byte	15
	.byte	31
	.byte	31
	.byte	31
	.byte	63
	.byte	56
	.byte	56
	.byte	48
	.byte	48
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	48
	.byte	56
	.byte	60
	.byte	63
	.byte	63
	.byte	63
	.byte	31
	.byte	31
	.byte	15
	.byte	7
	.byte	1
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
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.section	.rodata.2a
	.global	_keycode_table
_keycode_table:
	.byte	0
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	81
	.byte	87
	.byte	69
	.byte	82
	.byte	84
	.byte	89
	.byte	85
	.byte	73
	.byte	79
	.byte	80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	65
	.byte	83
	.byte	68
	.byte	70
	.byte	71
	.byte	72
	.byte	74
	.byte	75
	.byte	76
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	90
	.byte	88
	.byte	67
	.byte	86
	.byte	66
	.byte	78
	.byte	77
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
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.data.2b
	.global	_charfont
_charfont:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	126
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	66
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
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
	.byte	8
	.byte	8
	.byte	28
	.byte	28
	.byte	62
	.byte	62
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	62
	.byte	62
	.byte	28
	.byte	28
	.byte	8
	.byte	8
	.byte	0
	.byte	16
	.byte	24
	.byte	124
	.byte	124
	.byte	24
	.byte	16
	.byte	0
	.byte	0
	.byte	16
	.byte	48
	.byte	124
	.byte	124
	.byte	48
	.byte	16
	.byte	0
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	0
	.byte	124
	.byte	124
	.byte	56
	.byte	56
	.byte	16
	.byte	16
	.byte	0
	.byte	112
	.byte	124
	.byte	114
	.byte	114
	.byte	114
	.byte	124
	.byte	112
	.byte	0
	.byte	112
	.byte	112
	.byte	112
	.byte	112
	.byte	124
	.byte	114
	.byte	2
	.byte	12
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
	.byte	0
	.byte	95
	.byte	95
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	3
	.byte	0
	.byte	3
	.byte	3
	.byte	0
	.byte	0
	.byte	20
	.byte	127
	.byte	127
	.byte	20
	.byte	127
	.byte	127
	.byte	20
	.byte	0
	.byte	0
	.byte	36
	.byte	46
	.byte	107
	.byte	107
	.byte	58
	.byte	18
	.byte	0
	.byte	76
	.byte	106
	.byte	54
	.byte	24
	.byte	108
	.byte	86
	.byte	50
	.byte	0
	.byte	48
	.byte	126
	.byte	79
	.byte	89
	.byte	119
	.byte	58
	.byte	104
	.byte	64
	.byte	0
	.byte	0
	.byte	4
	.byte	7
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	28
	.byte	62
	.byte	99
	.byte	65
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	65
	.byte	99
	.byte	62
	.byte	28
	.byte	0
	.byte	0
	.byte	8
	.byte	42
	.byte	62
	.byte	28
	.byte	28
	.byte	62
	.byte	42
	.byte	8
	.byte	0
	.byte	8
	.byte	8
	.byte	62
	.byte	62
	.byte	8
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	224
	.byte	96
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	96
	.byte	0
	.byte	0
	.byte	0
	.byte	64
	.byte	96
	.byte	48
	.byte	24
	.byte	12
	.byte	6
	.byte	3
	.byte	1
	.byte	0
	.byte	62
	.byte	127
	.byte	89
	.byte	77
	.byte	127
	.byte	62
	.byte	0
	.byte	0
	.byte	4
	.byte	6
	.byte	127
	.byte	127
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	66
	.byte	99
	.byte	113
	.byte	89
	.byte	79
	.byte	70
	.byte	0
	.byte	0
	.byte	34
	.byte	99
	.byte	73
	.byte	73
	.byte	127
	.byte	54
	.byte	0
	.byte	24
	.byte	28
	.byte	22
	.byte	19
	.byte	127
	.byte	127
	.byte	16
	.byte	0
	.byte	0
	.byte	39
	.byte	103
	.byte	69
	.byte	69
	.byte	125
	.byte	57
	.byte	0
	.byte	0
	.byte	60
	.byte	126
	.byte	75
	.byte	73
	.byte	121
	.byte	48
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	113
	.byte	121
	.byte	15
	.byte	7
	.byte	0
	.byte	0
	.byte	54
	.byte	127
	.byte	73
	.byte	73
	.byte	127
	.byte	54
	.byte	0
	.byte	0
	.byte	6
	.byte	79
	.byte	73
	.byte	105
	.byte	63
	.byte	30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	102
	.byte	102
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	230
	.byte	102
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	8
	.byte	20
	.byte	20
	.byte	34
	.byte	34
	.byte	0
	.byte	0
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	0
	.byte	0
	.byte	34
	.byte	34
	.byte	20
	.byte	20
	.byte	8
	.byte	8
	.byte	0
	.byte	0
	.byte	2
	.byte	3
	.byte	81
	.byte	89
	.byte	15
	.byte	6
	.byte	0
	.byte	62
	.byte	127
	.byte	65
	.byte	93
	.byte	85
	.byte	31
	.byte	30
	.byte	0
	.byte	0
	.byte	126
	.byte	127
	.byte	9
	.byte	9
	.byte	127
	.byte	126
	.byte	0
	.byte	0
	.byte	127
	.byte	127
	.byte	73
	.byte	73
	.byte	127
	.byte	54
	.byte	0
	.byte	0
	.byte	28
	.byte	62
	.byte	99
	.byte	65
	.byte	65
	.byte	65
	.byte	0
	.byte	0
	.byte	127
	.byte	127
	.byte	65
	.byte	99
	.byte	62
	.byte	28
	.byte	0
	.byte	0
	.byte	127
	.byte	127
	.byte	73
	.byte	73
	.byte	65
	.byte	65
	.byte	0
	.byte	0
	.byte	127
	.byte	127
	.byte	9
	.byte	9
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	62
	.byte	127
	.byte	65
	.byte	73
	.byte	123
	.byte	122
	.byte	0
	.byte	0
	.byte	127
	.byte	127
	.byte	8
	.byte	8
	.byte	127
	.byte	127
	.byte	0
	.byte	0
	.byte	0
	.byte	65
	.byte	127
	.byte	127
	.byte	65
	.byte	0
	.byte	0
	.byte	0
	.byte	32
	.byte	96
	.byte	64
	.byte	64
	.byte	127
	.byte	63
	.byte	0
	.byte	127
	.byte	127
	.byte	8
	.byte	28
	.byte	54
	.byte	99
	.byte	65
	.byte	0
	.byte	0
	.byte	127
	.byte	127
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	0
	.byte	127
	.byte	127
	.byte	6
	.byte	12
	.byte	6
	.byte	127
	.byte	127
	.byte	0
	.byte	127
	.byte	127
	.byte	6
	.byte	12
	.byte	24
	.byte	127
	.byte	127
	.byte	0
	.byte	0
	.byte	62
	.byte	127
	.byte	65
	.byte	65
	.byte	127
	.byte	62
	.byte	0
	.byte	0
	.byte	127
	.byte	127
	.byte	9
	.byte	9
	.byte	15
	.byte	6
	.byte	0
	.byte	62
	.byte	127
	.byte	65
	.byte	97
	.byte	127
	.byte	126
	.byte	64
	.byte	0
	.byte	0
	.byte	127
	.byte	127
	.byte	9
	.byte	25
	.byte	127
	.byte	102
	.byte	0
	.byte	0
	.byte	38
	.byte	111
	.byte	77
	.byte	89
	.byte	123
	.byte	50
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	127
	.byte	127
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	63
	.byte	127
	.byte	64
	.byte	64
	.byte	127
	.byte	63
	.byte	0
	.byte	0
	.byte	15
	.byte	63
	.byte	112
	.byte	112
	.byte	63
	.byte	15
	.byte	0
	.byte	127
	.byte	127
	.byte	48
	.byte	24
	.byte	48
	.byte	127
	.byte	127
	.byte	0
	.byte	65
	.byte	99
	.byte	54
	.byte	28
	.byte	28
	.byte	54
	.byte	99
	.byte	65
	.byte	1
	.byte	3
	.byte	6
	.byte	124
	.byte	124
	.byte	6
	.byte	3
	.byte	1
	.byte	97
	.byte	113
	.byte	89
	.byte	77
	.byte	71
	.byte	67
	.byte	65
	.byte	0
	.byte	0
	.byte	0
	.byte	127
	.byte	127
	.byte	65
	.byte	65
	.byte	0
	.byte	0
	.byte	1
	.byte	3
	.byte	6
	.byte	12
	.byte	24
	.byte	48
	.byte	96
	.byte	64
	.byte	0
	.byte	0
	.byte	65
	.byte	65
	.byte	127
	.byte	127
	.byte	0
	.byte	0
	.byte	8
	.byte	12
	.byte	6
	.byte	3
	.byte	6
	.byte	12
	.byte	8
	.byte	0
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	7
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	32
	.byte	116
	.byte	84
	.byte	84
	.byte	124
	.byte	120
	.byte	0
	.byte	0
	.byte	127
	.byte	127
	.byte	68
	.byte	68
	.byte	124
	.byte	56
	.byte	0
	.byte	0
	.byte	56
	.byte	124
	.byte	68
	.byte	68
	.byte	68
	.byte	0
	.byte	0
	.byte	0
	.byte	56
	.byte	124
	.byte	68
	.byte	68
	.byte	127
	.byte	127
	.byte	0
	.byte	0
	.byte	56
	.byte	124
	.byte	84
	.byte	84
	.byte	92
	.byte	24
	.byte	0
	.byte	0
	.byte	4
	.byte	126
	.byte	127
	.byte	5
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	188
	.byte	164
	.byte	164
	.byte	252
	.byte	124
	.byte	0
	.byte	0
	.byte	127
	.byte	127
	.byte	4
	.byte	4
	.byte	124
	.byte	120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	61
	.byte	125
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	128
	.byte	128
	.byte	253
	.byte	125
	.byte	0
	.byte	0
	.byte	0
	.byte	127
	.byte	127
	.byte	16
	.byte	56
	.byte	108
	.byte	68
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	127
	.byte	64
	.byte	0
	.byte	0
	.byte	124
	.byte	124
	.byte	12
	.byte	24
	.byte	12
	.byte	124
	.byte	120
	.byte	0
	.byte	0
	.byte	124
	.byte	124
	.byte	4
	.byte	4
	.byte	124
	.byte	120
	.byte	0
	.byte	0
	.byte	56
	.byte	124
	.byte	68
	.byte	68
	.byte	124
	.byte	56
	.byte	0
	.byte	0
	.byte	252
	.byte	252
	.byte	36
	.byte	36
	.byte	60
	.byte	24
	.byte	0
	.byte	0
	.byte	24
	.byte	60
	.byte	36
	.byte	36
	.byte	252
	.byte	252
	.byte	0
	.byte	0
	.byte	124
	.byte	124
	.byte	4
	.byte	4
	.byte	12
	.byte	8
	.byte	0
	.byte	0
	.byte	72
	.byte	92
	.byte	84
	.byte	84
	.byte	116
	.byte	32
	.byte	0
	.byte	0
	.byte	4
	.byte	63
	.byte	127
	.byte	68
	.byte	68
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	124
	.byte	64
	.byte	64
	.byte	124
	.byte	124
	.byte	0
	.byte	0
	.byte	28
	.byte	60
	.byte	96
	.byte	96
	.byte	60
	.byte	28
	.byte	0
	.byte	60
	.byte	124
	.byte	96
	.byte	48
	.byte	96
	.byte	124
	.byte	60
	.byte	0
	.byte	68
	.byte	108
	.byte	56
	.byte	16
	.byte	56
	.byte	108
	.byte	68
	.byte	0
	.byte	0
	.byte	28
	.byte	188
	.byte	224
	.byte	96
	.byte	60
	.byte	28
	.byte	0
	.byte	0
	.byte	68
	.byte	100
	.byte	116
	.byte	92
	.byte	76
	.byte	68
	.byte	0
	.byte	0
	.byte	8
	.byte	8
	.byte	62
	.byte	119
	.byte	65
	.byte	65
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	127
	.byte	127
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	65
	.byte	65
	.byte	119
	.byte	62
	.byte	8
	.byte	8
	.byte	0
	.byte	2
	.byte	1
	.byte	1
	.byte	3
	.byte	2
	.byte	2
	.byte	1
	.byte	0
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
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
	.byte	0
	.byte	0
	.section	.data.2c
	.align	4
	.global	_supporters
_supporters:
						// Declaring from tree
						// static
	.ref	l1
						// Declaring from tree
						// static
	.ref	l2
						// Declaring from tree
						// static
	.ref	l3
						// Declaring from tree
						// static
	.ref	l4
						// Declaring from tree
						// static
	.ref	l5
						// Declaring from tree
						// static
	.ref	l6
						// Declaring from tree
						// static
	.ref	l7
						// Declaring from tree
						// static
	.ref	l8
						// Declaring from tree
						// static
	.ref	l9
						// Declaring from tree
						// static
	.ref	l10
						// Declaring from tree
						// static
	.ref	l11
						// Declaring from tree
						// static
	.ref	l12
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
						// Declaring from tree
						// static
	.ref	l18
						// Declaring from tree
						// static
	.ref	l19
						// Declaring from tree
						// static
	.ref	l20
						// Declaring from tree
						// static
	.ref	l21
						// Declaring from tree
						// static
	.ref	l22
						// Declaring from tree
						// static
	.ref	l23
						// Declaring from tree
						// static
	.ref	l24
						// Declaring from tree
						// static
	.ref	l25
						// Declaring from tree
						// static
	.ref	l26
						// Declaring from tree
						// static
	.ref	l27
						// Declaring from tree
						// static
	.ref	l28
						// Declaring from tree
						// static
	.ref	l29
						// Declaring from tree
						// static
	.ref	l30
						// Declaring from tree
						// static
	.ref	l31
						// Declaring from tree
						// static
	.ref	l32
						// Declaring from tree
						// static
	.ref	l33
						// Declaring from tree
						// static
	.ref	l34
						// Declaring from tree
						// static
	.ref	l35
						// Declaring from tree
						// static
	.ref	l36
						// Declaring from tree
						// static
	.ref	l37
						// Declaring from tree
						// static
	.ref	l38
						// Declaring from tree
						// static
	.ref	l39
						// Declaring from tree
						// static
	.ref	l40
						// Declaring from tree
						// static
	.ref	l41
						// Declaring from tree
						// static
	.ref	l42
						// Declaring from tree
						// static
	.ref	l43
	.int	0
	.section	.bss.2d
	.align	4
	.global	_stars
	.comm	_stars,1024
	.section	.bss.2e
	.global	_framebuffer
	.comm	_framebuffer,2048
	.section	.bss.2f
	.align	4
	.global	_supporter
	.comm	_supporter,4
	.section	.rodata.30
l1:
	.byte	74
	.byte	101
	.byte	110
	.byte	115
	.byte	32
	.byte	83
	.byte	99
	.byte	104
	.byte	111
	.byte	101
	.byte	110
	.byte	102
	.byte	101
	.byte	108
	.byte	100
	.byte	0
	.section	.rodata.31
l2:
	.byte	74
	.byte	105
	.byte	109
	.byte	32
	.byte	70
	.byte	97
	.byte	114
	.byte	108
	.byte	101
	.byte	121
	.byte	0
	.section	.rodata.32
l3:
	.byte	83
	.byte	73
	.byte	68
	.byte	75
	.byte	105
	.byte	100
	.byte	100
	.byte	54
	.byte	52
	.byte	0
	.section	.rodata.33
l4:
	.byte	74
	.byte	117
	.byte	97
	.byte	110
	.byte	32
	.byte	74
	.byte	111
	.byte	115
	.byte	101
	.byte	32
	.byte	86
	.byte	101
	.byte	108
	.byte	101
	.byte	122
	.byte	32
	.byte	82
	.byte	97
	.byte	109
	.byte	105
	.byte	114
	.byte	101
	.byte	122
	.byte	0
	.section	.rodata.34
l5:
	.byte	68
	.byte	97
	.byte	103
	.byte	32
	.byte	74
	.byte	97
	.byte	99
	.byte	111
	.byte	98
	.byte	115
	.byte	101
	.byte	110
	.byte	0
	.section	.rodata.35
l6:
	.byte	66
	.byte	97
	.byte	114
	.byte	116
	.byte	111
	.byte	108
	.byte	32
	.byte	70
	.byte	105
	.byte	108
	.byte	105
	.byte	112
	.byte	111
	.byte	118
	.byte	105
	.byte	99
	.byte	0
	.section	.rodata.36
l7:
	.byte	80
	.byte	97
	.byte	115
	.byte	105
	.byte	32
	.byte	89
	.byte	108
	.byte	105
	.byte	110
	.byte	101
	.byte	110
	.byte	0
	.section	.rodata.37
l8:
	.byte	65
	.byte	110
	.byte	100
	.byte	114
	.byte	101
	.byte	97
	.byte	115
	.byte	32
	.byte	66
	.byte	101
	.byte	99
	.byte	107
	.byte	0
	.section	.rodata.38
l9:
	.byte	68
	.byte	105
	.byte	114
	.byte	107
	.byte	32
	.byte	86
	.byte	114
	.byte	111
	.byte	111
	.byte	109
	.byte	101
	.byte	110
	.byte	0
	.section	.rodata.39
l10:
	.byte	78
	.byte	105
	.byte	108
	.byte	115
	.byte	32
	.byte	65
	.byte	110
	.byte	100
	.byte	114
	.byte	101
	.byte	97
	.byte	115
	.byte	0
	.section	.rodata.3a
l11:
	.byte	65
	.byte	108
	.byte	118
	.byte	97
	.byte	114
	.byte	111
	.byte	32
	.byte	70
	.byte	117
	.byte	115
	.byte	115
	.byte	101
	.byte	110
	.byte	0
	.section	.rodata.3b
l12:
	.byte	83
	.byte	101
	.byte	98
	.byte	97
	.byte	115
	.byte	116
	.byte	105
	.byte	97
	.byte	110
	.byte	0
	.section	.rodata.3c
l13:
	.byte	83
	.byte	101
	.byte	98
	.byte	97
	.byte	115
	.byte	116
	.byte	105
	.byte	97
	.byte	110
	.byte	32
	.byte	66
	.byte	101
	.byte	115
	.byte	115
	.byte	108
	.byte	101
	.byte	114
	.byte	0
	.section	.rodata.3d
l14:
	.byte	86
	.byte	97
	.byte	108
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	110
	.byte	32
	.byte	65
	.byte	110
	.byte	103
	.byte	101
	.byte	108
	.byte	111
	.byte	118
	.byte	115
	.byte	107
	.byte	105
	.byte	0
	.section	.rodata.3e
l15:
	.byte	67
	.byte	108
	.byte	97
	.byte	117
	.byte	100
	.byte	105
	.byte	111
	.byte	32
	.byte	82
	.byte	117
	.byte	115
	.byte	115
	.byte	111
	.byte	0
	.section	.rodata.3f
l16:
	.byte	68
	.byte	111
	.byte	109
	.byte	105
	.byte	110
	.byte	105
	.byte	99
	.byte	32
	.byte	83
	.byte	107
	.byte	105
	.byte	108
	.byte	116
	.byte	111
	.byte	110
	.byte	0
	.section	.rodata.40
l17:
	.byte	83
	.byte	101
	.byte	98
	.byte	97
	.byte	115
	.byte	116
	.byte	105
	.byte	97
	.byte	110
	.byte	32
	.byte	72
	.byte	101
	.byte	114
	.byte	109
	.byte	97
	.byte	110
	.byte	110
	.byte	0
	.section	.rodata.41
l18:
	.byte	71
	.byte	114
	.byte	97
	.byte	104
	.byte	97
	.byte	109
	.byte	32
	.byte	67
	.byte	97
	.byte	109
	.byte	112
	.byte	98
	.byte	101
	.byte	108
	.byte	108
	.byte	0
	.section	.rodata.42
l19:
	.byte	103
	.byte	97
	.byte	109
	.byte	109
	.byte	97
	.byte	48
	.byte	53
	.byte	49
	.byte	49
	.byte	0
	.section	.rodata.43
l20:
	.byte	83
	.byte	116
	.byte	101
	.byte	118
	.byte	101
	.byte	32
	.byte	74
	.byte	111
	.byte	110
	.byte	101
	.byte	115
	.byte	0
	.section	.rodata.44
l21:
	.byte	65
	.byte	114
	.byte	107
	.byte	97
	.byte	100
	.byte	105
	.byte	117
	.byte	115
	.byte	122
	.byte	32
	.byte	75
	.byte	119
	.byte	97
	.byte	115
	.byte	110
	.byte	121
	.byte	0
	.section	.rodata.45
l22:
	.byte	72
	.byte	97
	.byte	114
	.byte	114
	.byte	121
	.byte	32
	.byte	70
	.byte	105
	.byte	115
	.byte	99
	.byte	104
	.byte	0
	.section	.rodata.46
l23:
	.byte	83
	.byte	111
	.byte	110
	.byte	107
	.byte	101
	.byte	32
	.byte	83
	.byte	109
	.byte	105
	.byte	108
	.byte	101
	.byte	116
	.byte	122
	.byte	107
	.byte	105
	.byte	0
	.section	.rodata.47
l24:
	.byte	84
	.byte	97
	.byte	100
	.byte	32
	.byte	87
	.byte	97
	.byte	116
	.byte	115
	.byte	111
	.byte	110
	.byte	0
	.section	.rodata.48
l25:
	.byte	69
	.byte	115
	.byte	112
	.byte	101
	.byte	110
	.byte	32
	.byte	83
	.byte	107
	.byte	111
	.byte	103
	.byte	0
	.section	.rodata.49
l26:
	.byte	84
	.byte	97
	.byte	114
	.byte	106
	.byte	101
	.byte	105
	.byte	32
	.byte	83
	.byte	46
	.byte	32
	.byte	84
	.byte	106
	.byte	111
	.byte	110
	.byte	110
	.byte	0
	.section	.rodata.4a
l27:
	.byte	65
	.byte	108
	.byte	121
	.byte	110
	.byte	110
	.byte	97
	.byte	32
	.byte	84
	.byte	114
	.byte	121
	.byte	112
	.byte	110
	.byte	111
	.byte	116
	.byte	107
	.byte	0
	.section	.rodata.4b
l28:
	.byte	80
	.byte	97
	.byte	117
	.byte	108
	.byte	32
	.byte	72
	.byte	111
	.byte	110
	.byte	105
	.byte	103
	.byte	0
	.section	.rodata.4c
l29:
	.byte	68
	.byte	74
	.byte	32
	.byte	72
	.byte	97
	.byte	114
	.byte	100
	.byte	32
	.byte	82
	.byte	105
	.byte	99
	.byte	104
	.byte	0
	.section	.rodata.4d
l30:
	.byte	68
	.byte	101
	.byte	110
	.byte	110
	.byte	105
	.byte	115
	.byte	32
	.byte	100
	.byte	101
	.byte	32
	.byte	87
	.byte	101
	.byte	101
	.byte	114
	.byte	100
	.byte	0
	.section	.rodata.4e
l31:
	.byte	77
	.byte	105
	.byte	107
	.byte	97
	.byte	32
	.byte	83
	.byte	105
	.byte	109
	.byte	111
	.byte	110
	.byte	101
	.byte	110
	.byte	0
	.section	.rodata.4f
l32:
	.byte	83
	.byte	97
	.byte	110
	.byte	100
	.byte	101
	.byte	114
	.byte	32
	.byte	82
	.byte	97
	.byte	97
	.byte	105
	.byte	106
	.byte	109
	.byte	97
	.byte	107
	.byte	101
	.byte	114
	.byte	115
	.byte	0
	.section	.rodata.50
l33:
	.byte	83
	.byte	97
	.byte	110
	.byte	115
	.byte	116
	.byte	97
	.byte	114
	.byte	114
	.byte	0
	.section	.rodata.51
l34:
	.byte	71
	.byte	111
	.byte	114
	.byte	100
	.byte	104
	.byte	111
	.byte	108
	.byte	109
	.byte	0
	.section	.rodata.52
l35:
	.byte	77
	.byte	97
	.byte	114
	.byte	99
	.byte	32
	.byte	72
	.byte	111
	.byte	110
	.byte	101
	.byte	121
	.byte	0
	.section	.rodata.53
l36:
	.byte	65
	.byte	110
	.byte	100
	.byte	114
	.byte	101
	.byte	32
	.byte	87
	.byte	111
	.byte	115
	.byte	116
	.byte	101
	.byte	110
	.byte	0
	.section	.rodata.54
l37:
	.byte	80
	.byte	97
	.byte	117
	.byte	108
	.byte	32
	.byte	65
	.byte	110
	.byte	100
	.byte	114
	.byte	122
	.byte	101
	.byte	106
	.byte	99
	.byte	122
	.byte	97
	.byte	107
	.byte	0
	.section	.rodata.55
l38:
	.byte	43
	.byte	32
	.byte	97
	.byte	108
	.byte	108
	.byte	32
	.byte	111
	.byte	116
	.byte	104
	.byte	101
	.byte	114
	.byte	32
	.byte	99
	.byte	111
	.byte	110
	.byte	116
	.byte	114
	.byte	105
	.byte	98
	.byte	117
	.byte	116
	.byte	111
	.byte	114
	.byte	115
	.byte	46
	.byte	0
	.section	.rodata.56
l39:
	.byte	84
	.byte	104
	.byte	97
	.byte	110
	.byte	107
	.byte	115
	.byte	32
	.byte	97
	.byte	108
	.byte	115
	.byte	111
	.byte	32
	.byte	116
	.byte	111
	.byte	32
	.byte	69
	.byte	115
	.byte	112
	.byte	101
	.byte	110
	.byte	32
	.byte	83
	.byte	107
	.byte	111
	.byte	103
	.byte	44
	.byte	0
	.section	.rodata.57
l40:
	.byte	74
	.byte	101
	.byte	110
	.byte	115
	.byte	32
	.byte	68
	.byte	114
	.byte	111
	.byte	115
	.byte	115
	.byte	108
	.byte	101
	.byte	114
	.byte	32
	.byte	97
	.byte	110
	.byte	100
	.byte	32
	.byte	101
	.byte	118
	.byte	101
	.byte	114
	.byte	121
	.byte	111
	.byte	110
	.byte	101
	.byte	0
	.section	.rodata.58
l41:
	.byte	111
	.byte	110
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	84
	.byte	117
	.byte	114
	.byte	98
	.byte	111
	.byte	32
	.byte	67
	.byte	104
	.byte	97
	.byte	109
	.byte	101
	.byte	108
	.byte	101
	.byte	111
	.byte	110
	.byte	32
	.byte	54
	.byte	52
	.byte	0
	.section	.rodata.59
l42:
	.byte	102
	.byte	97
	.byte	99
	.byte	101
	.byte	98
	.byte	111
	.byte	111
	.byte	107
	.byte	32
	.byte	103
	.byte	114
	.byte	111
	.byte	117
	.byte	112
	.byte	32
	.byte	102
	.byte	111
	.byte	114
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	105
	.byte	114
	.byte	0
	.section	.rodata.5a
l43:
	.byte	101
	.byte	110
	.byte	116
	.byte	104
	.byte	117
	.byte	115
	.byte	105
	.byte	97
	.byte	115
	.byte	109
	.byte	32
	.byte	97
	.byte	110
	.byte	100
	.byte	32
	.byte	115
	.byte	117
	.byte	103
	.byte	103
	.byte	101
	.byte	115
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	115
	.byte	46
	.byte	0
	.section	.data.5b
	.align	4
l142:
	.int	0
	.section	.data.5c
	.align	4
l143:
	.int	0
	.section	.bss.5d
	.align	4
	.lcomm	l144,4
	.section	.bss.5e
	.lcomm	l145,64
