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
	.global	_HandleRTC
_HandleRTC:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r5
		// Offsets 268435435, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// const
	.liconst	268435435
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
	.liconst	-8
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//rtc.c, line 10
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 98
		// Real offset of type is 98, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rtc.c, line 10
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 1
						// static
	.liabs	l3,0
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

						//rtc.c, line 10
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8191
	and	r1
						// (save result) // isreg
						// freereg r1

						//rtc.c, line 10
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l5
		add	r7

						//rtc.c, line 14
		// Offsets 63, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	63
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//rtc.c, line 15
		// Offsets 128, 268435431
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
	.liconst	268435431
	mr	r0
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	128
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//rtc.c, line 16
		// Offsets 146, 0
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
	.liconst	146
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//rtc.c, line 18
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
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r1

						//rtc.c, line 18
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rtc.c, line 19
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r2

						//rtc.c, line 19
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r2
						//save_temp done

						//rtc.c, line 20
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
	.liconst	8
	shl	r2
						// (save result) // isreg

						//rtc.c, line 20
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

						//rtc.c, line 20
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 502
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 4a
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	268435326
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 2
	hlf
	st	r0
						//save_temp done
						// freereg r1

						//rtc.c, line 22
		// Offsets 255, 0
		// Have am? no, no
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
	.liconst	255
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r1

						//rtc.c, line 22
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rtc.c, line 23
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r2

						//rtc.c, line 23
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r2
						//save_temp done

						//rtc.c, line 24
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
	.liconst	8
	shl	r2
						// (save result) // isreg

						//rtc.c, line 24
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

						//rtc.c, line 24
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 502
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 4a
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
						//Fuzzy match found, offset: -4 (varadr: 0)
	.liconst	-4
	add	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 2
	hlf
	st	r0
						//save_temp done
						// freereg r1

						//rtc.c, line 26
		// Offsets 255, 0
		// Have am? no, no
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
	.liconst	255
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r1

						//rtc.c, line 26
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//rtc.c, line 28
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r2

						//rtc.c, line 28
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r2
						//save_temp done

						//rtc.c, line 29
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r3

						//rtc.c, line 29
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	ldbinc	r4
//Disposable, postinc doesn't matter.
						// (save temp)isreg
	mr	r3
						//save_temp done

						//rtc.c, line 30
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
	.liconst	8
	shl	r3
						// (save result) // isreg

						//rtc.c, line 30
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
	or	r2
						// (save result) // isreg
						// freereg r3

						//rtc.c, line 30
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 502
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 4a
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
						//Fuzzy match found, offset: -4 (varadr: 0)
	.liconst	-4
	add	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 2
	hlf
	st	r0
						//save_temp done
						// freereg r2

						//rtc.c, line 32
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	16384
	or	r1
						// (save result) // isreg

						//rtc.c, line 32
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 502
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						//Fuzzy match found, offset: -4 (varadr: 0)
	.liconst	-4
	add	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 2
	hlf
	st	r0
						//save_temp done
						// freereg r1

						//rtc.c, line 33
		// Offsets 129, 268435431
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435431, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 4a
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	268435431
	mr	r0
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	129
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//rtc.c, line 34
						// Z disposable
		// Offsets 1, 0
		// Have am? no, yes
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
	.liconst	1
						// (save temp)store type 1
	stbinc	r5
						//Disposable, postinc doesn't matter.
						//save_temp done
l5: # 
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

	.section	.data.1
	.align	4
l3:
	.int	0
