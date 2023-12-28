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
	.global	_SendSector
_SendSector:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-8
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

						//fdd.c, line 66
		// Offsets 170, 0
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
	.liconst	170
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//fdd.c, line 67
		// Offsets 170, 0
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

						//fdd.c, line 68
		// Offsets 170, 0
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

						//fdd.c, line 69
		// Offsets 170, 0
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

						//fdd.c, line 72
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 501
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
	ldidx	r6
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//fdd.c, line 73
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 501
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	36
	ldidx	r6
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//fdd.c, line 74
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 501
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	32
	ldidx	r6
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//fdd.c, line 75
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 501
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	36
	ldidx	r6
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//fdd.c, line 79
		// Offsets 85, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 1
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l1,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	85
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 80
		// Offsets 85, 0
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

						//fdd.c, line 81
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	28
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	1
	shr	r1
						// (save result) // isreg

						//fdd.c, line 81
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	85
	and	r1
						// (save result) // isreg

						//fdd.c, line 81
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size

						//fdd.c, line 82
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,5
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1

						//fdd.c, line 83
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 501
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r1
						// allocreg r1

						//fdd.c, line 84
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
	.liconst	24
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	1
	shr	r1
						// (save result) // isreg

						//fdd.c, line 84
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	85
	and	r1
						// (save result) // isreg

						//fdd.c, line 84
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size

						//fdd.c, line 85
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,6
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1

						//fdd.c, line 86
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 501
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r1
						// allocreg r2

						//fdd.c, line 87
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
	.liconst	24
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//fdd.c, line 87
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	11
	mr	r1
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
	sub	r1
						// (save result) // isreg
						// allocreg r3

						//fdd.c, line 87
						// (bitwise/arithmetic) 	//ops: 2, 0, 4
						// (obj to r3) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	mr	r3
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
	.liconst	1
	sgn
	shr	r3
						// (save result) // isreg

						//fdd.c, line 87
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	85
	and	r3
						// (save result) // isreg

						//fdd.c, line 87
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size

						//fdd.c, line 88
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,7
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r3

						//fdd.c, line 89
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 501
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r3

						//fdd.c, line 93
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 1
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l1,0
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

						//fdd.c, line 94
		// Offsets 85, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	85
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// allocreg r3

						//fdd.c, line 95
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	28
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done

						//fdd.c, line 95
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	85
	and	r3
						// (save result) // isreg

						//fdd.c, line 95
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size
						// allocreg r4

						//fdd.c, line 96
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,1
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r4
						//save_temp done

						//fdd.c, line 96
						// (bitwise/arithmetic) 	//ops: 5, 4, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 82
						// reg r3 - only match against tmp
	mt	r3
	xor	r4
						// (save result) // isreg

						//fdd.c, line 96
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,5
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r4
						// freereg r4

						//fdd.c, line 97
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 501
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r3

						//fdd.c, line 98
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
	.liconst	85
	and	r2
						// (save result) // isreg

						//fdd.c, line 98
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size
						// allocreg r3

						//fdd.c, line 99
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done

						//fdd.c, line 99
						// (bitwise/arithmetic) 	//ops: 4, 3, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
	xor	r3
						// (save result) // isreg

						//fdd.c, line 99
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,6
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r3
						// freereg r3

						//fdd.c, line 100
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 501
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r2

						//fdd.c, line 101
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
	.liconst	85
	and	r1
						// (save result) // isreg

						//fdd.c, line 101
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size
						// allocreg r2

						//fdd.c, line 102
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,3
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 102
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	xor	r2
						// (save result) // isreg

						//fdd.c, line 102
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,7
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r2
						// freereg r2

						//fdd.c, line 103
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 501
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r1

						//fdd.c, line 107
		// Offsets 31, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// matchobj comparing flags 82 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	31
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r4
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 102 type 103
						// matchobj comparing flags 102 with 1
						// matchobj comparing flags 102 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
l4: # 

						//fdd.c, line 108
		// Offsets 170, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	170
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// allocreg r1

						//fdd.c, line 107
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 154
		// Real offset of type is 154, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 107
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r4
						// (save result) // isreg

						//fdd.c, line 107
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//fdd.c, line 107
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l4
		add	r7

						//fdd.c, line 111
		// Offsets 170, 0
		// Have am? no, no
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
	.liconst	170
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//fdd.c, line 112
		// Offsets 170, 0
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

						//fdd.c, line 113
		// Offsets 170, 0
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

						//fdd.c, line 114
		// Offsets 170, 0
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

						//fdd.c, line 115
		// Offsets 170, 0
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

						//fdd.c, line 116
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,1
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 116
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	170
	or	r1
						// (save result) // isreg

						//fdd.c, line 116
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r1
						// allocreg r1

						//fdd.c, line 117
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 117
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	170
	or	r1
						// (save result) // isreg

						//fdd.c, line 117
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r1
						// allocreg r1

						//fdd.c, line 118
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,3
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 118
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	170
	or	r1
						// (save result) // isreg

						//fdd.c, line 118
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r1

						//fdd.c, line 121
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 1
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l1,0
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

						//fdd.c, line 122
		// Offsets 0, 1
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 1, 1
		// Real offset of type is 1, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 123
		// Offsets 0, 2
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 2, 1
		// Real offset of type is 2, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 124
		// Offsets 0, 3
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 3, 1
		// Real offset of type is 3, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 126
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r3
						//save_temp done

						//fdd.c, line 128
		// Offsets 127, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
	.liconst	127
						// (save temp)isreg
	mr	r4
						//save_temp done
l17: # 
						// allocreg r1

						//fdd.c, line 130
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// deref 
	ldbinc	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//fdd.c, line 131
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						// (obj to r2) flags 4a type 103
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	mr	r2
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	shr	r2
						// (save result) // isreg

						//fdd.c, line 131
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	xor	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//fdd.c, line 131
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 131
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	//mt
	xor	r1
						// (save result) // isreg
						// freereg r2

						//fdd.c, line 131
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,4
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//fdd.c, line 132
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//fdd.c, line 133
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						// (obj to r2) flags 4a type 103
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	mr	r2
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	shr	r2
						// (save result) // isreg

						//fdd.c, line 133
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	xor	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//fdd.c, line 133
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,1
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 133
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	//mt
	xor	r1
						// (save result) // isreg
						// freereg r2

						//fdd.c, line 133
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,5
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//fdd.c, line 134
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//fdd.c, line 135
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						// (obj to r2) flags 4a type 103
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	mr	r2
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	shr	r2
						// (save result) // isreg

						//fdd.c, line 135
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	xor	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//fdd.c, line 135
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 135
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	//mt
	xor	r1
						// (save result) // isreg
						// freereg r2

						//fdd.c, line 135
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,6
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//fdd.c, line 136
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//fdd.c, line 137
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						// (obj to r2) flags 4a type 103
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	mr	r2
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	shr	r2
						// (save result) // isreg

						//fdd.c, line 137
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	xor	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//fdd.c, line 137
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,3
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 137
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	//mt
	xor	r1
						// (save result) // isreg
						// freereg r2

						//fdd.c, line 137
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,7
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//fdd.c, line 128
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 309
		// Real offset of type is 309, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 128
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r4
						// (save result) // isreg

						//fdd.c, line 128
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//fdd.c, line 128
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l17
		add	r7

						//fdd.c, line 141
		// Offsets 170, 0
		// Have am? no, no
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
	.liconst	170
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//fdd.c, line 142
		// Offsets 170, 0
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

						//fdd.c, line 143
		// Offsets 170, 0
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

						//fdd.c, line 144
		// Offsets 170, 0
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

						//fdd.c, line 145
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 145
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	170
	or	r1
						// (save result) // isreg

						//fdd.c, line 145
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r1
						// allocreg r1

						//fdd.c, line 146
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,1
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 146
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	170
	or	r1
						// (save result) // isreg

						//fdd.c, line 146
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r1
						// allocreg r1

						//fdd.c, line 147
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 147
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	170
	or	r1
						// (save result) // isreg

						//fdd.c, line 147
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r1
						// allocreg r1

						//fdd.c, line 148
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,3
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 148
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	170
	or	r1
						// (save result) // isreg

						//fdd.c, line 148
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r1

						//fdd.c, line 152
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r3
						//save_temp done

						//fdd.c, line 153
		// Offsets 511, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	511
						// (save temp)isreg
	mr	r4
						//save_temp done
l18: # 
						// allocreg r1

						//fdd.c, line 154
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// deref 
	ldbinc	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 154
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	sgn
	shr	r1
						// (save result) // isreg

						//fdd.c, line 154
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	170
	or	r1
						// (save result) // isreg

						//fdd.c, line 154
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r1
						// allocreg r1

						//fdd.c, line 153
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 370
		// Real offset of type is 370, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 4a
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 153
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r4
						// (save result) // isreg

						//fdd.c, line 153
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//fdd.c, line 153
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l18
		add	r7

						//fdd.c, line 158
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r3
						//save_temp done

						//fdd.c, line 159
		// Offsets 511, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	511
						// (save temp)isreg
	mr	r4
						//save_temp done
l19: # 
						// allocreg r1

						//fdd.c, line 160
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// deref 
	ldbinc	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 160
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	170
	or	r1
						// (save result) // isreg

						//fdd.c, line 160
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r1
						// allocreg r1

						//fdd.c, line 159
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 391
		// Real offset of type is 391, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 4a
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 159
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r4
						// (save result) // isreg

						//fdd.c, line 159
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//fdd.c, line 159
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l19
		add	r7
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 4a
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
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.global	_SendGap
_SendGap:
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

						//fdd.c, line 166
		// Offsets 699, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	699
						// (save temp)isreg
	mr	r2
						//save_temp done
l29: # 

						//fdd.c, line 167
		// Offsets 170, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	170
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//fdd.c, line 166
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 166
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r2
						// (save result) // isreg

						//fdd.c, line 166
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//fdd.c, line 166
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l29
		add	r7
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
	.section	.text.2
	.global	_ReadTrack
_ReadTrack:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-56
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
	.liconst	20
	addt	r6
						//sizemod based on type 0xa
	stmpdec	r1
						// freereg r1
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
						// const
	.liconst	268435427
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//fdd.c, line 181
						// (bitwise/arithmetic) 	//ops: 0, 0, 5
						// (obj to r4) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
						//sizemod based on type 0xa
	ldidx	r6
	mr	r4
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	673
	add	r4
						// (save result) // isreg

						//fdd.c, line 181
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 62 type 101
						// matchobj comparing flags 62 with 1
						// deref 
	byt
	ld	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 181
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
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
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching
						// allocreg r1

						//fdd.c, line 181
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 101
						// matchobj comparing flags 22 with 62
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 62
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 181
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 22
						// var, auto|reg
						// matchobj comparing flags 1 with 22
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	sgn
	cmp	r1
						// freereg r1

						//fdd.c, line 181
	cond	SGT
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l34
		add	r7

						//fdd.c, line 183
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	stdec	r6

						//fdd.c, line 183
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l35,0
						// static pe is varadr
	stdec	r6

						//fdd.c, line 183
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6

						//fdd.c, line 184
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_ErrorMask
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_ErrorMask, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 184
		// Offsets 0, 36
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 36, 0
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 36 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 36)
	.liabs	_Errors, 36
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l36,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//fdd.c, line 184
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 62 type 101
						// matchobj comparing flags 62 with 82
						// matchobj comparing flags 62 with 82
						// deref 
	byt
	ld	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 40)
	.liabs	_Errors, 44
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 184
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 22 type 101
						// matchobj comparing flags 22 with 82
						// matchobj comparing flags 22 with 2
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 82
						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 44)
	.liabs	_Errors, 48
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 184
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 44
						// matchobj comparing flags 82 with 2
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
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//fdd.c, line 185
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 101
						// matchobj comparing flags 22 with 1
						// matchobj comparing flags 22 with 82
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// matchobj comparing flags a2 with 82
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 185
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 22
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 22
						// matchobj comparing flags 1 with 82
	.liconst	1
	sub	r1
						// (save result) // isreg

						//fdd.c, line 185
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r1
l34: # 
						// allocreg r1

						//fdd.c, line 189
						// (test)
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_DEBUG
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//fdd.c, line 189
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l38
		add	r7
						// freereg r1
						// allocreg r1

						//fdd.c, line 190
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 2
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 190
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 62
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//fdd.c, line 190
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l39,0
						// static pe is varadr
	stdec	r6

						//fdd.c, line 190
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r2
l38: # 
						// allocreg r2

						//fdd.c, line 192
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type 101
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 192
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
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
	.liconst	674
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
						// allocreg r1

						//fdd.c, line 192
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 101
						// matchobj comparing flags 22 with 82
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 82
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 82
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 192
						// Q1 disposable
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 22
						// reg r1 - only match against tmp
	//mt
	sgn
	cmp	r2
						// freereg r2
						// freereg r1

						//fdd.c, line 192
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l41
		add	r7

						//fdd.c, line 194
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 22
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 4a
	.liconst	4
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 62 type 101
						// deref 
	byt
	ld	r4
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 195
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	20
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r2

						//fdd.c, line 196
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type a
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	16
						//sizemod based on type 0xa
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	4
	add	r2
						// (save result) // isreg
						// allocreg r1

						//fdd.c, line 196
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 82
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 196
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
	.liconst	4
	mul	r1
						// (save result) // isreg

						//fdd.c, line 196
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1
						// freereg r2

						//fdd.c, line 196
						// Q1 disposable
		// Offsets 0, 28
		// Have am? yes, no
		// flags 6a, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 28, 0
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 28)
	.liabs	_file, 28
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 6a type 104
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 82
						// deref 
	ld	r1
						// (save temp)store type 4
	st	r0
						//save_temp done
						// freereg r1
						// allocreg r1

						//fdd.c, line 197
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 6a
						// matchobj comparing flags 62 with 82
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 197
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
	.liconst	11
	mul	r1
						// (save result) // isreg

						//fdd.c, line 197
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 20)
	.liabs	_file, 24
						// extern pe not varadr
						//sizemod based on type 0x104
	stmpdec	r1
						// freereg r1

						//fdd.c, line 198
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
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
	.liconst	672
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

						//fdd.c, line 198
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 22
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 82
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 82
	.liconst	8
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 199
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
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
	.liconst	668
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

						//fdd.c, line 199
		// Offsets 28, 0
		// Have am? no, no
		// flags 2, 22
						// (a/p assign)
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 82
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 82
	.liconst	12
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 104
						// extern
	.liabs	_file, 28
						//extern deref
						//sizemod based on type 0x104
	ldt
						// (save temp)store type 4
	st	r0
						//save_temp done

						//fdd.c, line 202
						//pcreltotemp
	.lipcrel	l42
	add	r7
l41: # 
						// allocreg r2

						//fdd.c, line 203
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// var, auto|reg
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
	.liconst	672
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

						//fdd.c, line 203
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 22 type 101
						// matchobj comparing flags 22 with 82
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 82
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 82
	.liconst	8
	ldidx	r6
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 22
						// matchobj comparing flags 1 with 22
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 204
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
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
	.liconst	668
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

						//fdd.c, line 204
		// Offsets 0, 28
		// Have am? no, no
		// flags 22, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 28, 0
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// extern (offset 28)
	.liabs	_file, 28
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 22 type 104
						// matchobj comparing flags 22 with 82
						// matchobj comparing flags 22 with 82
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 82
						// matchobj comparing flags a2 with 82
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	12
	ldidx	r6
						//sizemod based on type 0x104
	ldt
						// (save temp)store type 4
	st	r0
						//save_temp done
						// allocreg r1

						//fdd.c, line 205
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 22
						// matchobj comparing flags 62 with 82
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 205
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
	.liconst	11
	mul	r1
						// (save result) // isreg

						//fdd.c, line 205
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size

						//fdd.c, line 205
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	20
						//sizemod based on type 0x103
	ldidx	r6
	add	r1
						// (save result) // isreg

						//fdd.c, line 205
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 104
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 20)
	.liabs	_file, 24
						// extern pe not varadr
						//sizemod based on type 0x104
	stmpdec	r1
						// freereg r1
l42: # 

						//fdd.c, line 208
		// Offsets 16, 268435431
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
	.liconst	16
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 209
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

						//fdd.c, line 209
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 210
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 210
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	28
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 211
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 211
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	32
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 211
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
	.liconst	8
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	36
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 211
						//FIXME convert
						// (convert - reducing type 403 to 103
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
						//Saving to reg r5
						// (save temp)isreg
	mr	r5
						//save_temp done
						//No need to mask - same size

						//fdd.c, line 212
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 212
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with a
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x503, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	40
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 212
						// (bitwise/arithmetic) 	//ops: 0, 6, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags a type 503
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
	or	r5
						// (save result) // isreg

						//fdd.c, line 213
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 213
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with a
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	44
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 213
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
	.liconst	8
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 213
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
	.liconst	16128
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	52
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//fdd.c, line 213
						//FIXME convert
						// (convert - reducing type 403 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//fdd.c, line 214
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 214
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with a
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x503, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	56
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 214
						// Z disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags a type 503
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
	or	r1
						// (save result) // isreg
						// freereg r1

						//fdd.c, line 215
		// Offsets 17, 268435431
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435431, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with a
						// matchobj comparing flags a1 with a
						// deref
						// const to r0
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	268435431
	mr	r0
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

						//fdd.c, line 220
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_DEBUG
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//fdd.c, line 220
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l79
		add	r7

						//fdd.c, line 221
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 2
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6
						// allocreg r1

						//fdd.c, line 221
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 42
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	6
	shr	r1
						// (save result) // isreg

						//fdd.c, line 221
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//fdd.c, line 221
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// matchobj comparing flags 82 with 1
						// static
	.liabs	l47,0
						// static pe is varadr
	stdec	r6

						//fdd.c, line 221
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
						// matchobj comparing flags 1 with 1
	.liconst	12
	add	r6
l79: # 

						//fdd.c, line 225
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//fdd.c, line 225
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
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 225
						//call
						//pcreltotemp
	.lipcrel	_FileRead // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//fdd.c, line 227
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
	.liconst	268435431
	mr	r0
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

						//fdd.c, line 230
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

						//fdd.c, line 230
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 231
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 231
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	28
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 232
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 232
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	32
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 232
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
	.liconst	8
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	36
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 232
						//FIXME convert
						// (convert - reducing type 403 to 103
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
						//Saving to reg r5
						// (save temp)isreg
	mr	r5
						//save_temp done
						//No need to mask - same size

						//fdd.c, line 233
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 233
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with a
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x503, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	40
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 233
						// (bitwise/arithmetic) 	//ops: 0, 6, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags a type 503
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
	or	r5
						// (save result) // isreg

						//fdd.c, line 234
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 234
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with a
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	44
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 234
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
	.liconst	8
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 234
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
	.liconst	16128
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	52
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 234
						//FIXME convert
						// (convert - reducing type 403 to 103
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size

						//fdd.c, line 235
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 235
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with a
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x503, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	56
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 235
						// (bitwise/arithmetic) 	//ops: 0, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags a type 503
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
	or	r2
						// (save result) // isreg
						// allocreg r1

						//fdd.c, line 237
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 101
						// matchobj comparing flags 22 with a
						// matchobj comparing flags 22 with a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with a
						// matchobj comparing flags a2 with a
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 237
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 22
						// matchobj comparing flags 2 with a
						// var, auto|reg
						// matchobj comparing flags 1 with 22
						// matchobj comparing flags 1 with a
	.liconst	24
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r1
						// freereg r1

						//fdd.c, line 237
	cond	SGT
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l52
		add	r7
						// allocreg r1

						//fdd.c, line 238
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 101
						// matchobj comparing flags 22 with 2
						// matchobj comparing flags 22 with a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 2
						// matchobj comparing flags a2 with a
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 238
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 22
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 22
						// matchobj comparing flags 1 with a
	.liconst	1
	sub	r1
						// (save result) // isreg

						//fdd.c, line 238
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with a
	.liconst	28
	addt	r6
						//sizemod based on type 0x103
	stmpdec	r1
						// freereg r1
l52: # 
						// allocreg r1

						//fdd.c, line 241
						// (test)
						// (obj to tmp) flags 42 type 103
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//fdd.c, line 241
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l53
		add	r7

						//fdd.c, line 241
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	35092
	cmp	r5

						//fdd.c, line 241
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l53
		add	r7

						//fdd.c, line 241
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	41284
	cmp	r5

						//fdd.c, line 241
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l54
		add	r7
l53: # 

						//fdd.c, line 242
		// Offsets 17545, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	17545
						// (save temp)isreg
	mr	r5
						//save_temp done
l54: # 

						//fdd.c, line 249
						// (test)
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_DEBUG
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//fdd.c, line 249
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l58
		add	r7

						//fdd.c, line 250
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 2
						// reg r2 - only match against tmp
	mt	r2
	stdec	r6

						//fdd.c, line 250
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	24
						//sizemod based on type 0x103
	ldidx	r6
	stdec	r6

						//fdd.c, line 250
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l59,0
						// static pe is varadr
	stdec	r6

						//fdd.c, line 250
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
	.liconst	12
	add	r6
						// freereg r1
l58: # 
						// allocreg r1

						//fdd.c, line 256
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 256
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	24
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r1
						// freereg r1

						//fdd.c, line 256
	cond	NEQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l65
		add	r7
						// allocreg r1

						//fdd.c, line 259
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//fdd.c, line 259
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l65
		add	r7
						// allocreg r1

						//fdd.c, line 263
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// matchobj comparing flags 1 with 42
	.liconst	255
	and	r1

						//fdd.c, line 263
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

						//fdd.c, line 263
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	8
	shr	r1
						// (save result) // isreg

						//fdd.c, line 263
						//FIXME convert
						// (convert - reducing type 103 to 101
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r1

						//fdd.c, line 263
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//fdd.c, line 263
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	32
						//sizemod based on type 0x103
	ldidx	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//fdd.c, line 263
						// Q1 disposable
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//fdd.c, line 263
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	32
						//sizemod based on type 0x103
	ldidx	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//fdd.c, line 263
						// Q1 disposable
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//fdd.c, line 263
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 376
		// Real offset of type is 392, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 263
						//call
						//pcreltotemp
	.lipcrel	_SendSector // extern
	add	r7
						// Flow control - popping 16 + 0 bytes
	.liconst	16
	add	r6
						// freereg r1

						//fdd.c, line 265
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	10
	cmp	r0

						//fdd.c, line 265
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l65
		add	r7
						// allocreg r1

						//fdd.c, line 266
						//call
						//pcreltotemp
	.lipcrel	_SendGap // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l65: # 

						//fdd.c, line 271
		// Offsets 17, 268435431
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
	.liconst	17
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r1

						//fdd.c, line 274
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 274
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 62
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 1
	.liconst	24
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r1
						// freereg r1

						//fdd.c, line 274
	cond	NEQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l80
		add	r7
						// allocreg r1

						//fdd.c, line 278
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//fdd.c, line 278
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l80
		add	r7
						// allocreg r1

						//fdd.c, line 281
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	20
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
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 282
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	11
	cmp	r0

						//fdd.c, line 282
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l71
		add	r7
						// freereg r1
						// allocreg r1

						//fdd.c, line 284
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 356
		// Real offset of type is 356, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 284
						//call
						//pcreltotemp
	.lipcrel	_FileNextSector // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//fdd.c, line 287
						//pcreltotemp
	.lipcrel	l72
	add	r7
						// freereg r2
l71: # 

						//fdd.c, line 288
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	20
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r2

						//fdd.c, line 289
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type a
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	16
						//sizemod based on type 0xa
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	4
	add	r2
						// (save result) // isreg
						// allocreg r1

						//fdd.c, line 289
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 82
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 289
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
	.liconst	4
	mul	r1
						// (save result) // isreg

						//fdd.c, line 289
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1
						// freereg r2

						//fdd.c, line 289
						// Q1 disposable
		// Offsets 0, 28
		// Have am? yes, no
		// flags 6a, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 28, 0
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 28)
	.liabs	_file, 28
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 6a type 104
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 82
						// deref 
	ld	r1
						// (save temp)store type 4
	st	r0
						//save_temp done
						// freereg r1
						// allocreg r1

						//fdd.c, line 290
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 6a
						// matchobj comparing flags 62 with 82
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 290
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
	.liconst	11
	mul	r1
						// (save result) // isreg

						//fdd.c, line 290
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 20)
	.liabs	_file, 24
						// extern pe not varadr
						//sizemod based on type 0x104
	stmpdec	r1
						// freereg r1
l72: # 
						// allocreg r2
						// allocreg r1

						//fdd.c, line 294
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// var FIXME - deref?
						// reg - auto
	.liconst	8
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 103
						// var, auto|reg
	.liconst	20
						//sizemod based on type 0x103
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 295
		// Offsets 28, 0
		// Have am? no, no
		// flags 2, 22
						// (a/p assign)
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
	.liconst	12
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 104
						// extern
	.liabs	_file, 28
						//extern deref
						//sizemod based on type 0x104
	ldt
						// (save temp)store type 4
	st	r0
						//save_temp done

						//fdd.c, line 297
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_DEBUG
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//fdd.c, line 297
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l79
		add	r7

						//fdd.c, line 298
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l75,0
						// static pe is varadr
	stdec	r6

						//fdd.c, line 298
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//fdd.c, line 223
						//pcreltotemp
	.lipcrel	l79
	add	r7
						// freereg r1
l80: # 
						// allocreg r1

						//fdd.c, line 300
						// (test)
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_DEBUG
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//fdd.c, line 300
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l77
		add	r7

						//fdd.c, line 301
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l78,0
						// static pe is varadr
	stdec	r6

						//fdd.c, line 301
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
l77: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-56
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
l36:
	.byte	73
	.byte	108
	.byte	108
	.byte	101
	.byte	103
	.byte	97
	.byte	108
	.byte	32
	.byte	116
	.byte	114
	.byte	97
	.byte	99
	.byte	107
	.byte	32
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	33
	.byte	0
	.section	.rodata.4
l35:
	.byte	73
	.byte	108
	.byte	108
	.byte	101
	.byte	103
	.byte	97
	.byte	108
	.byte	32
	.byte	116
	.byte	114
	.byte	97
	.byte	99
	.byte	107
	.byte	32
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	58
	.byte	32
	.byte	37
	.byte	100
	.byte	13
	.byte	0
	.section	.rodata.5
l59:
	.byte	37
	.byte	88
	.byte	58
	.byte	37
	.byte	48
	.byte	52
	.byte	88
	.byte	0
	.section	.rodata.6
l75:
	.byte	45
	.byte	62
	.byte	0
	.section	.rodata.7
l39:
	.byte	42
	.byte	37
	.byte	117
	.byte	58
	.byte	0
	.section	.rodata.8
l47:
	.byte	40
	.byte	37
	.byte	117
	.byte	41
	.byte	91
	.byte	37
	.byte	48
	.byte	52
	.byte	88
	.byte	93
	.byte	58
	.byte	0
	.section	.rodata.9
l78:
	.byte	58
	.byte	79
	.byte	75
	.byte	13
	.byte	0
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
	.global	_FindSync
_FindSync:
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
		// Offsets 268435431, 0
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
	.liconst	268435431
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
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	-4
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2
l83: # 

						//fdd.c, line 312
		// Offsets 16, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	16
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//fdd.c, line 313
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
						// allocreg r1

						//fdd.c, line 313
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 314
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 314
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 315
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	2
	and	r1
						// (save result) // isreg
						// freereg r1

						//fdd.c, line 315
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l104
		add	r7
						// allocreg r1

						//fdd.c, line 317
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 2
	.liconst	673
	add	r1
						// (save result) // isreg

						//fdd.c, line 317
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// matchobj comparing flags 6a with 2
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 317
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 6a
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
	cmp	r1
						// freereg r1

						//fdd.c, line 317
	cond	NEQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l104
		add	r7

						//fdd.c, line 319
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 320
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

						//fdd.c, line 321
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

						//fdd.c, line 321
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 321
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
	.liconst	191
	and	r0
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

						//fdd.c, line 321
						//FIXME convert
						// (convert - reducing type 403 to 103
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with a
						// var, auto|reg
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 322
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 322
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 82
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r5
						//save_temp done

						//fdd.c, line 324
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 260
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 82
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6

						//fdd.c, line 324
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l91
		add	r7

						//fdd.c, line 324
						// (test)
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 2
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//fdd.c, line 324
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l104
		add	r7
l91: # 
						// allocreg r1

						//fdd.c, line 327
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	63
	and	r1
						// (save result) // isreg

						//fdd.c, line 327
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						// (obj to r2) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r2
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
	shl	r2
						// (save result) // isreg

						//fdd.c, line 327
						// (bitwise/arithmetic) 	//ops: 3, 6, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
	add	r2
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//fdd.c, line 329
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 42
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 329
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r2
						// (save result) // isreg

						//fdd.c, line 329
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//fdd.c, line 329
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l105
		add	r7
l103: # 

						//fdd.c, line 331
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
						// allocreg r1

						//fdd.c, line 331
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 332
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 332
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r5
						//save_temp done

						//fdd.c, line 333
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	68
	cmp	r1
						// freereg r1

						//fdd.c, line 333
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l97
		add	r7

						//fdd.c, line 333
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	137
	cmp	r5

						//fdd.c, line 333
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l97
		add	r7

						//fdd.c, line 335
		// Offsets 17, 0
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
	.liconst	17
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//fdd.c, line 336
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_DEBUG
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//fdd.c, line 336
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l100
		add	r7

						//fdd.c, line 337
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l101,0
						// static pe is varadr
	stdec	r6

						//fdd.c, line 337
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
l100: # 

						//fdd.c, line 339
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	1
	mr	r0

						//fdd.c, line 340
						//pcreltotemp
	.lipcrel	l81
	add	r7
l97: # 
						// allocreg r1

						//fdd.c, line 329
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 76
		// Real offset of type is 76, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 329
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r2
						// (save result) // isreg

						//fdd.c, line 329
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//fdd.c, line 329
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l103
		add	r7
l105: # 

						//fdd.c, line 342
		// Offsets 17, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	17
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//fdd.c, line 310
						//pcreltotemp
	.lipcrel	l83
	add	r7
l104: # 

						//fdd.c, line 344
						// Z disposable
		// Offsets 17, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	17
						// (save temp)store type 1
	stbinc	r4
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 345
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0
l81: # 
						// freereg r2
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

	.section	.rodata.b
l101:
	.byte	35
	.byte	83
	.byte	89
	.byte	78
	.byte	67
	.byte	58
	.byte	0
	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.c
	.global	_GetHeader
_GetHeader:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-104
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
		// Offsets 85, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	85
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
						// allocreg r1

						//fdd.c, line 354
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l154: # 

						//fdd.c, line 358
		// Offsets 16, 268435431
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
	.liconst	16
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 359
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
						// allocreg r1

						//fdd.c, line 359
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
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 360
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 360
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r5
						//save_temp done

						//fdd.c, line 361
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
	.liconst	2
	and	r1
						// (save result) // isreg
						// freereg r1

						//fdd.c, line 361
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l156
		add	r7

						//fdd.c, line 363
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

						//fdd.c, line 364
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

						//fdd.c, line 365
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

						//fdd.c, line 365
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 366
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 366
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//fdd.c, line 368
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	63
	and	r1
						// (save result) // isreg
						// freereg r1

						//fdd.c, line 368
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l113
		add	r7
						// allocreg r1

						//fdd.c, line 368
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	24
	cmp	r0

						//fdd.c, line 368
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l114
		add	r7
						// freereg r1
l113: # 

						//fdd.c, line 370
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
						// allocreg r1

						//fdd.c, line 370
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 371
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 371
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r5
						//save_temp done

						//fdd.c, line 372
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	68
	cmp	r1
						// freereg r1

						//fdd.c, line 372
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l116
		add	r7
						// allocreg r1

						//fdd.c, line 372
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	137
	cmp	r5

						//fdd.c, line 372
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l117
		add	r7
l116: # 

						//fdd.c, line 374
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// extern
	.liabs	_ErrorMask
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_ErrorMask, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 374
		// Offsets 0, 36
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 36, 0
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 36 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 36)
	.liabs	_Errors, 36
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l119,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//fdd.c, line 374
		// Offsets 21, 40
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 40, 0
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	21
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//fdd.c, line 374
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

						//fdd.c, line 374
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
						//extern: comparing 0 with 44
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
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 375
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l120,0
						// static pe is varadr
	stdec	r6

						//fdd.c, line 375
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with 82
	.liconst	4
	add	r6

						//fdd.c, line 376
						//pcreltotemp
	.lipcrel	l156
	add	r7
						// freereg r1
l117: # 

						//fdd.c, line 381
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
						// allocreg r1

						//fdd.c, line 381
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 382
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,4
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1

						//fdd.c, line 383
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 103
						// matchobj comparing flags 240 with 82
						// reg r4 - only match against tmp
	mt	r4
	and	r1
						// (save result) // isreg

						//fdd.c, line 383
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 103
						// matchobj comparing flags 4a with 240
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
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
						// freereg r1

						//fdd.c, line 385
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//fdd.c, line 385
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 386
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,5
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1

						//fdd.c, line 387
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 5, 6
						// (obj to r5) flags 4a type 103
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	mr	r5
						// (obj to tmp) flags 240 type 103
						// matchobj comparing flags 240 with 4a
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	and	r5
						// (save result) // isreg

						//fdd.c, line 387
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 240
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 240
						// matchobj comparing flags 1 with 2
	.liconst	1
	shl	r5
						// (save result) // isreg
						// freereg r1

						//fdd.c, line 391
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
						// allocreg r1

						//fdd.c, line 391
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 392
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,6
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1

						//fdd.c, line 393
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 103
						// matchobj comparing flags 240 with 82
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	and	r1
						// (save result) // isreg

						//fdd.c, line 393
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 103
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	1
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//fdd.c, line 395
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//fdd.c, line 395
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 396
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,7
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1

						//fdd.c, line 397
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 103
						// matchobj comparing flags 240 with 82
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	and	r1
						// (save result) // isreg

						//fdd.c, line 397
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 103
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
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
						// freereg r1

						//fdd.c, line 401
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//fdd.c, line 401
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//fdd.c, line 402
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 260
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 402
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	xor	r2
						// (save result) // isreg

						//fdd.c, line 402
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,4
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r2
						// freereg r2

						//fdd.c, line 403
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 103
						// matchobj comparing flags 240 with 82
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	and	r1
						// (save result) // isreg

						//fdd.c, line 403
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 103
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//fdd.c, line 405
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//fdd.c, line 405
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//fdd.c, line 406
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 260
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,1
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 406
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	xor	r2
						// (save result) // isreg

						//fdd.c, line 406
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,5
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r2
						// freereg r2

						//fdd.c, line 407
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 103
						// matchobj comparing flags 240 with 82
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	and	r1
						// (save result) // isreg

						//fdd.c, line 407
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 6, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	or	r5
						// (save result) // isreg
						// freereg r1

						//fdd.c, line 411
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
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//fdd.c, line 411
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//fdd.c, line 412
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 260
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 412
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	xor	r2
						// (save result) // isreg

						//fdd.c, line 412
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,6
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r2
						// freereg r2

						//fdd.c, line 413
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 103
						// matchobj comparing flags 240 with 82
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	and	r1
						// (save result) // isreg

						//fdd.c, line 413
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 103
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//fdd.c, line 415
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//fdd.c, line 415
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//fdd.c, line 416
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 260
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,3
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 416
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	xor	r2
						// (save result) // isreg

						//fdd.c, line 416
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,7
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r2
						// freereg r2

						//fdd.c, line 417
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 103
						// matchobj comparing flags 240 with 82
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	and	r1
						// (save result) // isreg

						//fdd.c, line 417
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 103
						// matchobj comparing flags 4a with 240
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//fdd.c, line 419
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	255
	cmp	r0

						//fdd.c, line 419
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l122
		add	r7
						// allocreg r1

						//fdd.c, line 420
		// Offsets 22, 0
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
	.liconst	22
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 421
						//pcreltotemp
	.lipcrel	l131
	add	r7
l122: # 

						//fdd.c, line 421
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	159
	cmp	r5

						//fdd.c, line 421
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l125
		add	r7

						//fdd.c, line 422
		// Offsets 23, 0
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
	.liconst	23
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 423
						//pcreltotemp
	.lipcrel	l131
	add	r7
l125: # 

						//fdd.c, line 423
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	10
	cmp	r0

						//fdd.c, line 423
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l128
		add	r7

						//fdd.c, line 424
		// Offsets 24, 0
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
	.liconst	24
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 425
						//pcreltotemp
	.lipcrel	l131
	add	r7
l128: # 

						//fdd.c, line 425
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	11
	cmp	r0

						//fdd.c, line 425
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l130
		add	r7

						//fdd.c, line 425
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6

						//fdd.c, line 425
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l131
		add	r7
l130: # 

						//fdd.c, line 426
		// Offsets 25, 0
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
	.liconst	25
						// (save temp)store type 3
	st	r0
						//save_temp done
l131: # 

						//fdd.c, line 428
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6

						//fdd.c, line 428
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l134
		add	r7

						//fdd.c, line 430
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_ErrorMask
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_ErrorMask, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 430
		// Offsets 0, 36
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 36, 0
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 36 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 36)
	.liabs	_Errors, 36
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l135,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//fdd.c, line 430
		// Offsets 0, 40
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 40, 0
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//fdd.c, line 430
		// Offsets 0, 44
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 44, 0
		// Real offset of type is 44, isauto 0
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
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 430
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
						//extern: comparing 0 with 44
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
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 431
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	stdec	r6

						//fdd.c, line 431
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	stdec	r6

						//fdd.c, line 431
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 2
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6

						//fdd.c, line 431
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 42
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
	.liconst	24
						//sizemod based on type 0x103
	ldidx	r6
	stdec	r6

						//fdd.c, line 431
						// (a/p push)
						// a: pushed 16, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l136,0
						// static pe is varadr
	stdec	r6

						//fdd.c, line 431
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 20 + 0 bytes
						// matchobj comparing flags 1 with 82
	.liconst	20
	add	r6

						//fdd.c, line 432
						//pcreltotemp
	.lipcrel	l156
	add	r7
l134: # 

						//fdd.c, line 435
						// (test)
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_DEBUG
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//fdd.c, line 435
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l138
		add	r7

						//fdd.c, line 436
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	stdec	r6

						//fdd.c, line 436
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 2
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6

						//fdd.c, line 436
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l139,0
						// static pe is varadr
	stdec	r6

						//fdd.c, line 436
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
	.liconst	12
	add	r6
l138: # 

						//fdd.c, line 438
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 22
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
	exg	r5
						//sizemod based on type 0x103
	st	r5
	exg	r5

						//fdd.c, line 439
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 22
						// (a/p assign)
						// Destination is a variable with offset 0, -4
		// Real offset of type is 120, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// var FIXME - deref?
						// reg - auto
	.liconst	120
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 103
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 441
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done
l155: # 

						//fdd.c, line 444
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

						//fdd.c, line 444
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done

						//fdd.c, line 444
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 444
						// (bitwise/arithmetic) 	//ops: 0, 7, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 6a type 403
						// matchobj comparing flags 6a with 8a
						// matchobj comparing flags 6a with a
						// deref 
	ld	r6
	xor	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 444
						//FIXME convert
						// (convert - reducing type 403 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with a
						// static
	.liabs	l1,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 445
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 445
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,1
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 445
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 8a
						// matchobj comparing flags 260 with a
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 445
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a
						// var, auto|reg
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	12
						//sizemod based on type 0x403
	ldidx	r6
	xor	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with a
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 445
						//FIXME convert
						// (convert - reducing type 403 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with a
						// static
	.liabs	l1,1
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	20
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 447
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 447
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	28
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 447
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 8a
						// matchobj comparing flags 260 with a
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	32
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 447
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a
						// var, auto|reg
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	24
						//sizemod based on type 0x403
	ldidx	r6
	xor	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with a
	.liconst	36
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 447
						//FIXME convert
						// (convert - reducing type 403 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with a
						// static
	.liabs	l1,2
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	32
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 448
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 448
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,3
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	40
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 448
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 8a
						// matchobj comparing flags 260 with a
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	44
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 448
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a
						// var, auto|reg
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	36
						//sizemod based on type 0x403
	ldidx	r6
	xor	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with a
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 448
						//FIXME convert
						// (convert - reducing type 403 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with a
						// static
	.liabs	l1,3
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	44
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 442
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
	.liconst	1
	add	r1
						// (save result) // isreg

						//fdd.c, line 442
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	8
	cmp	r1

						//fdd.c, line 442
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l155
		add	r7
						// freereg r1
						// allocreg r1

						//fdd.c, line 451
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 451
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 2
						// matchobj comparing flags 240 with 82
						// reg r4 - only match against tmp
	mt	r4
	and	r1
						// (save result) // isreg

						//fdd.c, line 451
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,4
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//fdd.c, line 452
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,1
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 452
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 2
						// matchobj comparing flags 240 with 82
						// reg r4 - only match against tmp
	mt	r4
	and	r1
						// (save result) // isreg

						//fdd.c, line 452
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,5
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//fdd.c, line 453
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 453
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 2
						// matchobj comparing flags 240 with 82
						// reg r4 - only match against tmp
	mt	r4
	and	r1
						// (save result) // isreg

						//fdd.c, line 453
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,6
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//fdd.c, line 454
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,3
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 454
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 2
						// matchobj comparing flags 240 with 82
						// reg r4 - only match against tmp
	mt	r4
	and	r1
						// (save result) // isreg

						//fdd.c, line 454
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,7
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1

						//fdd.c, line 458
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 458
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 82
						// deref 
	byt
	ld	r3
						// (save temp)store type 3
	st	r6
						//save_temp done

						//fdd.c, line 458
						// (bitwise/arithmetic) 	//ops: 7, 5, 1
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 260
						// matchobj comparing flags 6a with 82
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 6a
						// matchobj comparing flags 240 with 6a
						// reg r4 - only match against tmp
	mt	r4
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 240
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 458
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
	.liconst	1
	shl	r0
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
						// allocreg r2

						//fdd.c, line 458
						//FIXME convert
						// (convert - reducing type 403 to 103
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size

						//fdd.c, line 459
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 459
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with a
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 459
						// (bitwise/arithmetic) 	//ops: 0, 5, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 8a
						// matchobj comparing flags 240 with a
						// reg r4 - only match against tmp
	mt	r4
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 240
	.liconst	28
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 459
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
	.liconst	1
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 459
						//FIXME convert
						// (convert - reducing type 403 to 103
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
						//Saving to reg r5
						// (save temp)isreg
	mr	r5
						//save_temp done
						//No need to mask - same size

						//fdd.c, line 461
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 461
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with a
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	36
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 461
						// (bitwise/arithmetic) 	//ops: 0, 5, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 8a
						// matchobj comparing flags 240 with a
						// reg r4 - only match against tmp
	mt	r4
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 240
	.liconst	40
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 461
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
	.liconst	1
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	44
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 461
						//FIXME convert
						// (convert - reducing type 403 to 103
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with a
						// var, auto|reg
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	40
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 462
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 462
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 82
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 462
						// (bitwise/arithmetic) 	//ops: 0, 5, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 8a
						// matchobj comparing flags 240 with a
						// reg r4 - only match against tmp
	mt	r4
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 240
	.liconst	52
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 462
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
	.liconst	1
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	56
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 462
						//FIXME convert
						// (convert - reducing type 403 to 103
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with a
						// var, auto|reg
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	16
	addt	r6
	mr	r0

						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	52
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 466
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 466
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 82
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	60
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 466
						// (bitwise/arithmetic) 	//ops: 0, 5, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 8a
						// matchobj comparing flags 240 with a
						// reg r4 - only match against tmp
	mt	r4
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 240
	.liconst	64
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 466
						//FIXME convert
						// (convert - reducing type 403 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 8a
						//auto: flags: 8a, comparing 64, 0 with 60, 0
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 1
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 8a
	.liconst	60
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 466
						// (bitwise/arithmetic) 	//ops: 0, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags a type 503
						// matchobj comparing flags a with a
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 8a
	.liconst	64
						//sizemod based on type 0x503
	ldidx	r6
	or	r2
						// (save result) // isreg

						//fdd.c, line 467
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 8a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 467
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 8a
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	72
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 467
						// (bitwise/arithmetic) 	//ops: 0, 5, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 8a
						// matchobj comparing flags 240 with a
						// reg r4 - only match against tmp
	mt	r4
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 240
	.liconst	76
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 467
						//FIXME convert
						// (convert - reducing type 403 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 8a
						//auto: flags: 8a, comparing 76, 0 with 72, 0
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 1
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 8a
	.liconst	72
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 467
						// (bitwise/arithmetic) 	//ops: 0, 6, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags a type 503
						// matchobj comparing flags a with a
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 8a
	.liconst	76
						//sizemod based on type 0x503
	ldidx	r6
	or	r5
						// (save result) // isreg

						//fdd.c, line 469
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 8a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 469
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 8a
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	84
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 469
						// (bitwise/arithmetic) 	//ops: 0, 5, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 8a
						// matchobj comparing flags 240 with a
						// reg r4 - only match against tmp
	mt	r4
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 240
	.liconst	88
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 469
						//FIXME convert
						// (convert - reducing type 403 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 8a
						//auto: flags: 8a, comparing 88, 0 with 84, 0
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 1
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 8a
	.liconst	84
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 469
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 503
						// matchobj comparing flags a with a
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 8a
	.liconst	88
						//sizemod based on type 0x503
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 503
						// matchobj comparing flags 2 with a
						// matchobj comparing flags 2 with a
						// var, auto|reg
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	4
						//sizemod based on type 0x503
	ldidx	r6
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x503, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 470
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fdd.c, line 470
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	96
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 470
						// (bitwise/arithmetic) 	//ops: 0, 5, 1
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 8a
						// matchobj comparing flags 240 with a
						// reg r4 - only match against tmp
	mt	r4
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 240
	.liconst	100
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 470
						//FIXME convert
						// (convert - reducing type 403 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 8a
						//auto: flags: 8a, comparing 100, 0 with 96, 0
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 1
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 8a
	.liconst	96
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 470
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 503
						// matchobj comparing flags a with a
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 8a
	.liconst	100
						//sizemod based on type 0x503
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 503
						// matchobj comparing flags 2 with a
						// matchobj comparing flags 2 with a
						// var, auto|reg
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	16
						//sizemod based on type 0x503
	ldidx	r6
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x503, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//fdd.c, line 472
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 472
						// Q1 disposable
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	cmp	r2
						// freereg r2
						// freereg r1

						//fdd.c, line 472
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l144
		add	r7
						// allocreg r1

						//fdd.c, line 472
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,1
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 472
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	cmp	r5
						// freereg r1

						//fdd.c, line 472
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l144
		add	r7
						// allocreg r1

						//fdd.c, line 472
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 472
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r1
						// freereg r1

						//fdd.c, line 472
	cond	NEQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l144
		add	r7
						// allocreg r1

						//fdd.c, line 472
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,3
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 472
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
	cmp	r1
						// freereg r1

						//fdd.c, line 472
	cond	EQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l145
		add	r7
l144: # 
						// allocreg r1

						//fdd.c, line 474
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// extern
	.liabs	_ErrorMask
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_ErrorMask, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 474
		// Offsets 0, 36
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 36, 0
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 36 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 36)
	.liabs	_Errors, 36
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l149,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//fdd.c, line 474
		// Offsets 26, 40
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 40, 0
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	26
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//fdd.c, line 474
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

						//fdd.c, line 474
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
						//extern: comparing 0 with 44
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
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 475
						//pcreltotemp
	.lipcrel	l156
	add	r7
l145: # 

						//fdd.c, line 478
		// Offsets 17, 268435431
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
	.liconst	17
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 479
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0

						//fdd.c, line 480
						//pcreltotemp
	.lipcrel	l106
	add	r7
						// freereg r1
l114: # 
						// allocreg r1

						//fdd.c, line 481
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	128
	and	r1
						// (save result) // isreg
						// freereg r1

						//fdd.c, line 481
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l152
		add	r7
						// allocreg r1

						//fdd.c, line 483
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_ErrorMask
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_ErrorMask, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 483
		// Offsets 0, 36
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 36, 0
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 36 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 36)
	.liabs	_Errors, 36
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l153,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//fdd.c, line 483
		// Offsets 20, 40
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 40, 0
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	20
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//fdd.c, line 483
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

						//fdd.c, line 483
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
						//extern: comparing 0 with 44
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
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 484
						//pcreltotemp
	.lipcrel	l156
	add	r7
l152: # 

						//fdd.c, line 487
		// Offsets 17, 268435431
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
	.liconst	17
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 356
						//pcreltotemp
	.lipcrel	l154
	add	r7
						// freereg r1
l156: # 
						// allocreg r1

						//fdd.c, line 490
		// Offsets 17, 268435431
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
	.liconst	17
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 491
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0
l106: # 
						// freereg r1
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-104
	sub	r6
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.d
l119:
	.byte	83
	.byte	101
	.byte	99
	.byte	111
	.byte	110
	.byte	100
	.byte	32
	.byte	115
	.byte	121
	.byte	110
	.byte	99
	.byte	32
	.byte	119
	.byte	111
	.byte	114
	.byte	100
	.byte	32
	.byte	109
	.byte	105
	.byte	115
	.byte	115
	.byte	105
	.byte	110
	.byte	103
	.byte	46
	.byte	46
	.byte	46
	.byte	0
	.section	.rodata.e
l120:
	.byte	13
	.byte	83
	.byte	101
	.byte	99
	.byte	111
	.byte	110
	.byte	100
	.byte	32
	.byte	115
	.byte	121
	.byte	110
	.byte	99
	.byte	32
	.byte	119
	.byte	111
	.byte	114
	.byte	100
	.byte	32
	.byte	109
	.byte	105
	.byte	115
	.byte	115
	.byte	105
	.byte	110
	.byte	103
	.byte	46
	.byte	46
	.byte	46
	.byte	13
	.byte	0
	.section	.rodata.f
l135:
	.byte	66
	.byte	97
	.byte	100
	.byte	32
	.byte	104
	.byte	101
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	0
	.section	.rodata.10
l136:
	.byte	13
	.byte	87
	.byte	114
	.byte	111
	.byte	110
	.byte	103
	.byte	32
	.byte	104
	.byte	101
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	58
	.byte	32
	.byte	37
	.byte	117
	.byte	46
	.byte	37
	.byte	117
	.byte	46
	.byte	37
	.byte	117
	.byte	46
	.byte	37
	.byte	117
	.byte	13
	.byte	0
	.section	.rodata.11
l149:
	.byte	66
	.byte	97
	.byte	100
	.byte	32
	.byte	99
	.byte	104
	.byte	101
	.byte	99
	.byte	107
	.byte	115
	.byte	117
	.byte	109
	.byte	0
	.section	.rodata.12
l139:
	.byte	84
	.byte	37
	.byte	117
	.byte	83
	.byte	37
	.byte	117
	.byte	13
	.byte	0
	.section	.rodata.13
l153:
	.byte	78
	.byte	111
	.byte	116
	.byte	32
	.byte	101
	.byte	110
	.byte	111
	.byte	117
	.byte	103
	.byte	104
	.byte	32
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	32
	.byte	47
	.byte	32
	.byte	110
	.byte	111
	.byte	32
	.byte	68
	.byte	77
	.byte	65
	.byte	0
	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.14
	.global	_GetData
_GetData:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-116
	add	r6
						// allocreg r5
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
						// const
						// matchobj comparing flags 1 with 1
	.liconst	268435427
						// (save temp)isreg
	mr	r4
						//save_temp done
l160: # 

						//fdd.c, line 504
		// Offsets 16, 268435431
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
	.liconst	16
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 505
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
						// allocreg r1

						//fdd.c, line 505
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

						//fdd.c, line 506
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//fdd.c, line 506
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 507
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	2
	and	r1
						// (save result) // isreg
						// freereg r1

						//fdd.c, line 507
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l186
		add	r7

						//fdd.c, line 509
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
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//fdd.c, line 510
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

						//fdd.c, line 511
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

						//fdd.c, line 511
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 512
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r1

						//fdd.c, line 512
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//fdd.c, line 514
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 103
						// matchobj comparing flags 2 with 260
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
	mr	r2
				//return 0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	63
	and	r2
						// (save result) // isreg

						//fdd.c, line 514
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r2
						// (save result) // isreg

						//fdd.c, line 514
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1
						// freereg r2

						//fdd.c, line 516
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	516
	cmp	r1
						// freereg r1

						//fdd.c, line 516
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l166
		add	r7

						//fdd.c, line 520
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
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//fdd.c, line 520
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 520
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
	.liconst	85
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 520
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
	.liconst	1
	shl	r0
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

						//fdd.c, line 520
						//FIXME convert
						// (convert - reducing type 403 to 103
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
						//Saving to reg r0
						// (save temp)store type 3
	st	r6
						//save_temp done

						//fdd.c, line 521
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//fdd.c, line 521
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with a
						// deref 
	byt
	ld	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	32
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 521
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
	.liconst	85
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	36
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 521
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
	.liconst	1
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	40
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 521
						//FIXME convert
						// (convert - reducing type 403 to 103
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with a
						// var, auto|reg
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	36
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 523
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//fdd.c, line 523
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 82
						// deref 
	byt
	ld	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	44
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 523
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
	.liconst	85
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 523
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
	.liconst	1
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	52
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 523
						//FIXME convert
						// (convert - reducing type 403 to 103
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with a
						// var, auto|reg
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	48
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 524
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//fdd.c, line 524
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 82
						// deref 
	byt
	ld	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	56
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 524
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
	.liconst	85
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

						//fdd.c, line 524
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
	.liconst	1
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	64
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 524
						//FIXME convert
						// (convert - reducing type 403 to 103
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with a
						// var, auto|reg
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	60
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 528
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//fdd.c, line 528
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 82
						// deref 
	byt
	ld	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	68
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 528
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
	.liconst	85
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	72
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 528
						//FIXME convert
						// (convert - reducing type 403 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 8a
						//auto: flags: 8a, comparing 72, 0 with 68, 0
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 1
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 8a
	.liconst	68
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 528
						// (bitwise/arithmetic) 	//ops: 0, 7, 1
						// (obj to r0) flags a type 503
						// matchobj comparing flags a with a
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 8a
	.liconst	72
						//sizemod based on type 0x503
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 62 type 503
						// matchobj comparing flags 62 with a
						// matchobj comparing flags 62 with a
						// deref 
	ld	r6
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x503, flags 0x62
	mt	r0
	st	r6

						//fdd.c, line 529
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//fdd.c, line 529
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 62
						// deref 
	byt
	ld	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	80
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 529
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
	.liconst	85
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	84
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 529
						//FIXME convert
						// (convert - reducing type 403 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 8a
						//auto: flags: 8a, comparing 84, 0 with 80, 0
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 1
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 8a
	.liconst	80
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 529
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 503
						// matchobj comparing flags a with a
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 8a
	.liconst	84
						//sizemod based on type 0x503
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 503
						// matchobj comparing flags 2 with a
						// matchobj comparing flags 2 with a
						// var, auto|reg
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	4
						//sizemod based on type 0x503
	ldidx	r6
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x503, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 531
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//fdd.c, line 531
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	92
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 531
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
	.liconst	85
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	96
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 531
						//FIXME convert
						// (convert - reducing type 403 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 8a
						//auto: flags: 8a, comparing 96, 0 with 92, 0
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 1
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 8a
	.liconst	92
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 531
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 503
						// matchobj comparing flags a with a
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 8a
	.liconst	96
						//sizemod based on type 0x503
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 503
						// matchobj comparing flags 2 with a
						// matchobj comparing flags 2 with a
						// var, auto|reg
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	8
						//sizemod based on type 0x503
	ldidx	r6
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x503, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 532
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//fdd.c, line 532
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 2
						// deref 
	byt
	ld	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	104
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 532
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
	.liconst	85
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x403, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	108
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 532
						//FIXME convert
						// (convert - reducing type 403 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 8a
						//auto: flags: 8a, comparing 108, 0 with 104, 0
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 1
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 8a
	.liconst	104
						//sizemod based on type 0x403
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 532
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 503
						// matchobj comparing flags a with a
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 8a
	.liconst	108
						//sizemod based on type 0x503
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 503
						// matchobj comparing flags 2 with a
						// matchobj comparing flags 2 with a
						// var, auto|reg
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	12
						//sizemod based on type 0x503
	ldidx	r6
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x503, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 534
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 1
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 2
						// static
	.liabs	l1,0
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

						//fdd.c, line 535
		// Offsets 0, 1
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 1, 1
		// Real offset of type is 1, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 536
		// Offsets 0, 2
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 2, 1
		// Real offset of type is 2, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 537
		// Offsets 0, 3
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 3, 1
		// Real offset of type is 3, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 540
		// Offsets 128, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 112
		// Real offset of type is 112, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	112
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	128
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 541
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r3
		// Offsets 85, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	85
						// (save temp)isreg
	mr	r3
						//save_temp done
l167: # 

						//fdd.c, line 546
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

						//fdd.c, line 546
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//fdd.c, line 547
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 260
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 547
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	xor	r2
						// (save result) // isreg

						//fdd.c, line 547
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,4
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r2
						// freereg r2

						//fdd.c, line 548
						// (bitwise/arithmetic) 	//ops: 2, 4, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 103
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
	and	r1
						// (save result) // isreg

						//fdd.c, line 548
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 240
						// const
						// matchobj comparing flags 1 with 240
	.liconst	1
	shl	r1
						// (save result) // isreg

						//fdd.c, line 548
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	stbinc	r5
						//save_temp done
						// freereg r1

						//fdd.c, line 551
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r1

						//fdd.c, line 551
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//fdd.c, line 552
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 260
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,1
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 552
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	xor	r2
						// (save result) // isreg

						//fdd.c, line 552
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,5
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r2
						// freereg r2

						//fdd.c, line 553
						// (bitwise/arithmetic) 	//ops: 2, 4, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 103
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
	and	r1
						// (save result) // isreg

						//fdd.c, line 553
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 240
						// const
						// matchobj comparing flags 1 with 240
	.liconst	1
	shl	r1
						// (save result) // isreg

						//fdd.c, line 553
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	stbinc	r5
						//save_temp done
						// freereg r1

						//fdd.c, line 556
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r1

						//fdd.c, line 556
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//fdd.c, line 557
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 260
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 557
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	xor	r2
						// (save result) // isreg

						//fdd.c, line 557
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,6
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r2
						// freereg r2

						//fdd.c, line 558
						// (bitwise/arithmetic) 	//ops: 2, 4, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 103
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
	and	r1
						// (save result) // isreg

						//fdd.c, line 558
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 240
						// const
						// matchobj comparing flags 1 with 240
	.liconst	1
	shl	r1
						// (save result) // isreg

						//fdd.c, line 558
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	stbinc	r5
						//save_temp done
						// freereg r1

						//fdd.c, line 561
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r1

						//fdd.c, line 561
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//fdd.c, line 562
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 260
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,3
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 562
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	xor	r2
						// (save result) // isreg

						//fdd.c, line 562
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,7
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r2
						// freereg r2

						//fdd.c, line 563
						// (bitwise/arithmetic) 	//ops: 2, 4, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 103
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
	and	r1
						// (save result) // isreg

						//fdd.c, line 563
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 240
						// const
						// matchobj comparing flags 1 with 240
	.liconst	1
	shl	r1
						// (save result) // isreg

						//fdd.c, line 563
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	stbinc	r5
						//save_temp done
						// freereg r1

						//fdd.c, line 565
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	112
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
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	116
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 565
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

						//fdd.c, line 565
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l167
		add	r7
						// freereg r3

						//fdd.c, line 568
		// Offsets 128, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 112
		// Real offset of type is 112, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	112
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	128
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 569
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r5
						//save_temp done
l185: # 

						//fdd.c, line 573
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
						// allocreg r2

						//fdd.c, line 573
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//fdd.c, line 574
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 260
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 574
						// (bitwise/arithmetic) 	//ops: 2, 3, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
	xor	r1
						// (save result) // isreg

						//fdd.c, line 574
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,4
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//fdd.c, line 575
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 208
		// Real offset of type is 208, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 575
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r5
						// (save result) // isreg

						//fdd.c, line 575
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	85
	and	r2
						// (save result) // isreg
						// allocreg r3

						//fdd.c, line 575
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r3
						//save_temp done

						//fdd.c, line 575
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 6a
						// reg r3 - only match against tmp
	//mt
	or	r2
						// (save result) // isreg
						// freereg r3

						//fdd.c, line 575
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1

						//fdd.c, line 576
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r2

						//fdd.c, line 576
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//fdd.c, line 577
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 260
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,1
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 577
						// (bitwise/arithmetic) 	//ops: 2, 3, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
	xor	r1
						// (save result) // isreg

						//fdd.c, line 577
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,5
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//fdd.c, line 578
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 244
		// Real offset of type is 244, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 578
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r5
						// (save result) // isreg

						//fdd.c, line 578
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	85
	and	r2
						// (save result) // isreg
						// allocreg r3

						//fdd.c, line 578
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r3
						//save_temp done

						//fdd.c, line 578
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 6a
						// reg r3 - only match against tmp
	//mt
	or	r2
						// (save result) // isreg
						// freereg r3

						//fdd.c, line 578
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1

						//fdd.c, line 580
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r2

						//fdd.c, line 580
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//fdd.c, line 581
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 260
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 581
						// (bitwise/arithmetic) 	//ops: 2, 3, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
	xor	r1
						// (save result) // isreg

						//fdd.c, line 581
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,6
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//fdd.c, line 582
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 280
		// Real offset of type is 280, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 582
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r5
						// (save result) // isreg

						//fdd.c, line 582
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	85
	and	r2
						// (save result) // isreg
						// allocreg r3

						//fdd.c, line 582
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r3
						//save_temp done

						//fdd.c, line 582
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 6a
						// reg r3 - only match against tmp
	//mt
	or	r2
						// (save result) // isreg
						// freereg r3

						//fdd.c, line 582
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1

						//fdd.c, line 583
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r2

						//fdd.c, line 583
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//fdd.c, line 584
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 260
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,3
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 584
						// (bitwise/arithmetic) 	//ops: 2, 3, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
	xor	r1
						// (save result) // isreg

						//fdd.c, line 584
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,7
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//fdd.c, line 585
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 316
		// Real offset of type is 316, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 585
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r5
						// (save result) // isreg

						//fdd.c, line 585
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	85
	and	r2
						// (save result) // isreg
						// allocreg r3

						//fdd.c, line 585
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r3
						//save_temp done

						//fdd.c, line 585
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 6a
						// reg r3 - only match against tmp
	//mt
	or	r2
						// (save result) // isreg
						// freereg r3

						//fdd.c, line 585
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1

						//fdd.c, line 587
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	112
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
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	116
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 587
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

						//fdd.c, line 587
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l185
		add	r7
						// allocreg r1

						//fdd.c, line 589
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 589
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	85
	and	r1
						// (save result) // isreg

						//fdd.c, line 589
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,4
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//fdd.c, line 590
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,1
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 590
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	85
	and	r1
						// (save result) // isreg

						//fdd.c, line 590
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,5
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//fdd.c, line 591
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 591
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	85
	and	r1
						// (save result) // isreg

						//fdd.c, line 591
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,6
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//fdd.c, line 592
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,3
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 592
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	85
	and	r1
						// (save result) // isreg

						//fdd.c, line 592
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,7
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//fdd.c, line 594
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 594
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 2
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r6
	cmp	r1
						// freereg r1

						//fdd.c, line 594
	cond	NEQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l173
		add	r7
						// allocreg r1

						//fdd.c, line 594
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 62
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,1
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 594
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r1
						// freereg r1

						//fdd.c, line 594
	cond	NEQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l173
		add	r7
						// allocreg r1

						//fdd.c, line 594
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 594
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r1
						// freereg r1

						//fdd.c, line 594
	cond	NEQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l173
		add	r7
						// allocreg r1

						//fdd.c, line 594
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,3
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 594
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r1
						// freereg r1

						//fdd.c, line 594
	cond	EQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l174
		add	r7
l173: # 

						//fdd.c, line 596
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// extern
	.liabs	_ErrorMask
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_ErrorMask, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 596
		// Offsets 0, 36
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 36, 0
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 36 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 36)
	.liabs	_Errors, 36
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l178,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//fdd.c, line 596
		// Offsets 29, 40
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 40, 0
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	29
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//fdd.c, line 596
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

						//fdd.c, line 596
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
						//extern: comparing 0 with 44
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
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 597
						//pcreltotemp
	.lipcrel	l186
	add	r7
l174: # 

						//fdd.c, line 600
		// Offsets 17, 268435431
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
	.liconst	17
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 601
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0

						//fdd.c, line 602
						//pcreltotemp
	.lipcrel	l158
	add	r7
l166: # 
						// allocreg r1

						//fdd.c, line 603
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	128
	and	r1
						// (save result) // isreg
						// freereg r1

						//fdd.c, line 603
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l181
		add	r7

						//fdd.c, line 605
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_ErrorMask
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_ErrorMask, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 605
		// Offsets 0, 36
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 36, 0
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 36 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 36)
	.liabs	_Errors, 36
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l182,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//fdd.c, line 605
		// Offsets 20, 40
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 40, 0
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	20
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//fdd.c, line 605
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

						//fdd.c, line 605
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
						//extern: comparing 0 with 44
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
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 606
						//pcreltotemp
	.lipcrel	l186
	add	r7
l181: # 

						//fdd.c, line 609
		// Offsets 17, 268435431
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
	.liconst	17
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 502
						//pcreltotemp
	.lipcrel	l160
	add	r7
l186: # 

						//fdd.c, line 611
		// Offsets 17, 268435431
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
	.liconst	17
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fdd.c, line 612
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0
l158: # 
						// freereg r4
						// freereg r5
	.liconst	-116
	sub	r6
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.15
l178:
	.byte	66
	.byte	97
	.byte	100
	.byte	32
	.byte	99
	.byte	104
	.byte	101
	.byte	99
	.byte	107
	.byte	115
	.byte	117
	.byte	109
	.byte	0
	.section	.rodata.16
l182:
	.byte	78
	.byte	111
	.byte	116
	.byte	32
	.byte	101
	.byte	110
	.byte	111
	.byte	117
	.byte	103
	.byte	104
	.byte	32
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	32
	.byte	47
	.byte	32
	.byte	110
	.byte	111
	.byte	32
	.byte	68
	.byte	77
	.byte	65
	.byte	0
	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.17
	.global	_WriteTrack
_WriteTrack:
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

						//fdd.c, line 622
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	4
	addt	r5
						// (save temp)store type a
	st	r6
						//save_temp done

						//fdd.c, line 622
						// (bitwise/arithmetic) 	//ops: 6, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	673
	addt	r5
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//fdd.c, line 622
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 42
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 622
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	4
	mul	r1
						// (save result) // isreg

						//fdd.c, line 622
						// (bitwise/arithmetic) 	//ops: 7, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 62 type a
						// deref 
	ld	r6
	add	r1
						// (save result) // isreg

						//fdd.c, line 622
						// Q1 disposable
		// Offsets 0, 28
		// Have am? yes, no
		// flags 6a, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 28, 0
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 62
						// extern (offset 28)
	.liabs	_file, 28
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 6a type 104
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 82
						// deref 
	ld	r1
						// (save temp)store type 4
	st	r0
						//save_temp done
						// freereg r1
						// allocreg r1

						//fdd.c, line 623
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 6a
						// matchobj comparing flags 62 with 82
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 623
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
	.liconst	11
	mul	r1
						// (save result) // isreg

						//fdd.c, line 623
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 20)
	.liabs	_file, 24
						// extern pe not varadr
						//sizemod based on type 0x104
	stmpdec	r1
						// freereg r1

						//fdd.c, line 624
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//fdd.c, line 630
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	674
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1

						//fdd.c, line 630
						// Z disposable
		// Offsets -1, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 52
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	255
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//fdd.c, line 632
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_DEBUG
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//fdd.c, line 632
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l192
		add	r7
						// allocreg r1

						//fdd.c, line 633
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 2
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 633
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 62
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//fdd.c, line 633
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l193,0
						// static pe is varadr
	stdec	r6

						//fdd.c, line 633
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
l192: # 
						// allocreg r1

						//fdd.c, line 635
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 635
						//call
						//pcreltotemp
	.lipcrel	_FindSync // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//fdd.c, line 635
						// (test)
						// (obj to tmp) flags 4a type 101
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//fdd.c, line 635
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l217
		add	r7
l215: # 
						// allocreg r1

						//fdd.c, line 637
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	4
	addt	r6
	stdec	r6
						// freereg r1
						// allocreg r1

						//fdd.c, line 637
						// (address)
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 8, 0 with 4, 0
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
	mt	r0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 637
						//call
						//pcreltotemp
	.lipcrel	_GetHeader // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with 82
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//fdd.c, line 637
						// (test)
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//fdd.c, line 637
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l213
		add	r7
						// allocreg r1

						//fdd.c, line 639
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 4a
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 639
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r1
						// freereg r1

						//fdd.c, line 639
	cond	NEQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l200
		add	r7
						// allocreg r1

						//fdd.c, line 641
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r4

						//fdd.c, line 641
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l218
		add	r7
l216: # 

						//fdd.c, line 643
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r4

						//fdd.c, line 643
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l205
		add	r7
						// freereg r1
						// allocreg r1

						//fdd.c, line 645
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 112
		// Real offset of type is 112, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 645
						//call
						//pcreltotemp
	.lipcrel	_FileNextSector // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//fdd.c, line 646
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	1
	add	r4
						// (save result) // isreg

						//fdd.c, line 649
						//pcreltotemp
	.lipcrel	l206
	add	r7
l205: # 
						// allocreg r1

						//fdd.c, line 650
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 650
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	4
	mul	r1
						// (save result) // isreg

						//fdd.c, line 650
						// (bitwise/arithmetic) 	//ops: 7, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 62 type a
						// deref 
	ld	r6
	add	r1
						// (save result) // isreg

						//fdd.c, line 650
						// Q1 disposable
		// Offsets 0, 28
		// Have am? yes, no
		// flags 6a, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 28, 0
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 62
						// extern (offset 28)
	.liabs	_file, 28
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 6a type 104
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 82
						// deref 
	ld	r1
						// (save temp)store type 4
	st	r0
						//save_temp done
						// freereg r1
						// allocreg r1

						//fdd.c, line 651
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 6a
						// matchobj comparing flags 62 with 82
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 651
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
	.liconst	11
	mul	r1
						// (save result) // isreg

						//fdd.c, line 651
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 20)
	.liabs	_file, 24
						// extern pe not varadr
						//sizemod based on type 0x104
	stmpdec	r1
						// freereg r1

						//fdd.c, line 652
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
l206: # 
						// allocreg r1

						//fdd.c, line 641
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r4

						//fdd.c, line 641
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l216
		add	r7
l218: # 
						// freereg r1

						//fdd.c, line 656
						//call
						//pcreltotemp
	.lipcrel	_GetData // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//fdd.c, line 656
						// (test)
						// (obj to tmp) flags 4a type 101
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//fdd.c, line 656
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l213
		add	r7
						// allocreg r1

						//fdd.c, line 658
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 4a
						// deref 
	byt
	ld	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 658
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	16
	and	r1
						// (save result) // isreg
						// freereg r1

						//fdd.c, line 658
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l210
		add	r7

						//fdd.c, line 659
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
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

						//fdd.c, line 659
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 124
		// Real offset of type is 128, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 659
						//call
						//pcreltotemp
	.lipcrel	_FileWrite // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//fdd.c, line 661
						//pcreltotemp
	.lipcrel	l213
	add	r7
l210: # 
						// allocreg r1

						//fdd.c, line 661
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// extern
	.liabs	_ErrorMask
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_ErrorMask, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 661
		// Offsets 0, 36
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 36, 0
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 36 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 36)
	.liabs	_Errors, 36
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l212,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//fdd.c, line 661
		// Offsets 0, 40
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 40, 0
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82

						// required value found in r0
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

						//fdd.c, line 661
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
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 3
	st	r0
						//save_temp done

						//fdd.c, line 665
						//pcreltotemp
	.lipcrel	l213
	add	r7
l200: # 

						//fdd.c, line 665
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// extern
	.liabs	_ErrorMask
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_ErrorMask, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 665
		// Offsets 0, 36
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 36, 0
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 36 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 36)
	.liabs	_Errors, 36
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l214,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//fdd.c, line 665
		// Offsets 27, 40
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 40, 0
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	27
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//fdd.c, line 665
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

						//fdd.c, line 665
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
						//extern: comparing 0 with 44
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
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l213: # 
						// allocreg r1

						//fdd.c, line 635
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 148
		// Real offset of type is 148, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 635
						//call
						//pcreltotemp
	.lipcrel	_FindSync // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//fdd.c, line 635
						// (test)
						// (obj to tmp) flags 4a type 101
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//fdd.c, line 635
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l215
		add	r7
l217: # 
						// allocreg r1
						// freereg r1
						// freereg r3
						// freereg r4
						// freereg r5
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

	.section	.rodata.18
l212:
	.byte	68
	.byte	105
	.byte	115
	.byte	107
	.byte	32
	.byte	119
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	32
	.byte	112
	.byte	114
	.byte	111
	.byte	116
	.byte	101
	.byte	99
	.byte	116
	.byte	101
	.byte	100
	.byte	0
	.section	.rodata.19
l214:
	.byte	87
	.byte	114
	.byte	111
	.byte	110
	.byte	103
	.byte	32
	.byte	116
	.byte	114
	.byte	97
	.byte	99
	.byte	107
	.byte	32
	.byte	110
	.byte	117
	.byte	109
	.byte	98
	.byte	101
	.byte	114
	.byte	0
	.section	.rodata.1a
l193:
	.byte	42
	.byte	37
	.byte	117
	.byte	58
	.byte	13
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
	.section	.text.1b
	.global	_UpdateDriveStatus
_UpdateDriveStatus:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
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
						// const
	.liconst	268435431
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
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	-4
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done

						//fdd.c, line 672
		// Offsets 16, 0
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
	.liconst	16
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//fdd.c, line 673
		// Offsets 16, 0
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

						//fdd.c, line 674
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_df, 700
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 674
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	1
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//fdd.c, line 674
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_df
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 674
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	//mt
	or	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//fdd.c, line 674
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_df, 1400
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 674
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	2
	shl	r2
						// (save result) // isreg

						//fdd.c, line 674
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

						//fdd.c, line 674
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_df, 2100
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 674
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	3
	shl	r2
						// (save result) // isreg

						//fdd.c, line 674
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

						//fdd.c, line 674
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	stbinc	r3
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//fdd.c, line 675
						// Z disposable
		// Offsets 17, 0
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
	.liconst	17
						// (save temp)store type 1
	stbinc	r4
						//Disposable, postinc doesn't matter.
						//save_temp done
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
	.section	.text.1c
	.global	_HandleFDD
_HandleFDD:
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
	.liconst	8
	addt	r6
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//fdd.c, line 681
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 101
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x101
	byt
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	shr	r1
						// (save result) // isreg

						//fdd.c, line 681
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	3
	and	r1
						// (save result) // isreg

						//fdd.c, line 681
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_drives, 4
						// extern pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1

						//fdd.c, line 683
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	4
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)store type 3
	st	r6
						//save_temp done
						// allocreg r1

						//fdd.c, line 683
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 62 with 2
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

						//fdd.c, line 683
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l224
		add	r7
						// freereg r2
						// allocreg r1

						//fdd.c, line 686
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x101
	byt
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	6
	shr	r1
						// (save result) // isreg

						//fdd.c, line 686
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	3
	and	r1
						// (save result) // isreg

						//fdd.c, line 686
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size

						//fdd.c, line 687
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	700
	mul	r1
						// (save result) // isreg

						//fdd.c, line 687
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_df
						// extern pe is varadr
	add	r1
						// (save result) // isreg
						// allocreg r2

						//fdd.c, line 687
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	673
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 687
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 2, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	28
	ldidx	r6
						// (save temp)store type 1
	stbinc	r2
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2

						//fdd.c, line 688
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//fdd.c, line 688
						//call
						//pcreltotemp
	.lipcrel	_ReadTrack // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//fdd.c, line 691
						//pcreltotemp
	.lipcrel	l251
	add	r7
l224: # 
						// allocreg r2
						// allocreg r1

						//fdd.c, line 691
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type 3
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	2
	and	r1
						// (save result) // isreg
						// freereg r1

						//fdd.c, line 691
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l227
		add	r7
						// freereg r2
						// allocreg r1

						//fdd.c, line 694
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x101
	byt
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	6
	shr	r1
						// (save result) // isreg

						//fdd.c, line 694
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	3
	and	r1
						// (save result) // isreg

						//fdd.c, line 694
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size

						//fdd.c, line 695
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	700
	mul	r1
						// (save result) // isreg

						//fdd.c, line 695
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_df
						// extern pe is varadr
	add	r1
						// (save result) // isreg
						// allocreg r2

						//fdd.c, line 695
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	673
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 695
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 2, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 96
		// Real offset of type is 96, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	28
	ldidx	r6
						// (save temp)store type 1
	stbinc	r2
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2

						//fdd.c, line 696
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 112
		// Real offset of type is 112, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//fdd.c, line 696
						//call
						//pcreltotemp
	.lipcrel	_WriteTrack // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//fdd.c, line 699
						//pcreltotemp
	.lipcrel	l251
	add	r7
l227: # 
						// allocreg r2
						// allocreg r1

						//fdd.c, line 699
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type 3
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	12
	and	r1
						// (save result) // isreg
						// freereg r1

						//fdd.c, line 699
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l251
		add	r7
						// allocreg r1

						//fdd.c, line 701
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 1
		// Real offset of type is 1, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
l253: # 
						// allocreg r1

						//fdd.c, line 703
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	36
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 703
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	1
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
						// freereg r1
						// allocreg r1

						//fdd.c, line 703
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 42 with 82
						// matchobj comparing flags 42 with 2
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 2
	.liconst	700
	mul	r1
						// (save result) // isreg

						//fdd.c, line 703
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_df
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

						//fdd.c, line 703
						// (bitwise/arithmetic) 	//ops: 7, 0, 5
						// (obj to r4) flags 62 type a
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r6
	mr	r4
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	675
	add	r4
						// (save result) // isreg
						// allocreg r1

						//fdd.c, line 703
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 703
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	cmp	r1
						// freereg r1

						//fdd.c, line 703
	cond	EQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l249
		add	r7
						// allocreg r1

						//fdd.c, line 705
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 148
		// Real offset of type is 148, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done

						//fdd.c, line 707
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//fdd.c, line 709
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 152
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
l254: # 
						// allocreg r1

						//fdd.c, line 711
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	700
	mul	r1
						// (save result) // isreg

						//fdd.c, line 711
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_df
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//fdd.c, line 711
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	675
	add	r1
						// (save result) // isreg

						//fdd.c, line 711
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// freereg r1

						//fdd.c, line 711
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l242
		add	r7
						// allocreg r1

						//fdd.c, line 712
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r3
						// (save result) // isreg
l242: # 

						//fdd.c, line 710
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r2
						// (save result) // isreg

						//fdd.c, line 710
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
	sgn
	cmp	r2

						//fdd.c, line 710
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l254
		add	r7
						// freereg r1
						// allocreg r1

						//fdd.c, line 714
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6

						//fdd.c, line 714
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l244
		add	r7

						//fdd.c, line 714
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	cmp	r3

						//fdd.c, line 714
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l244
		add	r7
						// freereg r1
						// allocreg r1

						//fdd.c, line 714
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 101
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 714
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//fdd.c, line 714
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l244
		add	r7
						// allocreg r1

						//fdd.c, line 715
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 208
		// Real offset of type is 208, isauto 0
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

						//fdd.c, line 715
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_queueevent // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//fdd.c, line 716
						//pcreltotemp
	.lipcrel	l249
	add	r7
l244: # 
						// allocreg r1

						//fdd.c, line 716
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
				// flags 42
	and	r3

						//fdd.c, line 716
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l249
		add	r7
						// freereg r1
						// allocreg r1

						//fdd.c, line 717
		// Offsets 4, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 216
		// Real offset of type is 216, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 717
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_queueevent // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l249: # 
						// allocreg r1

						//fdd.c, line 720
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 101
						// var, auto|reg
	.liconst	36
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	shr	r0
						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// Promoting storage size of stack parameter to int
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	40
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fdd.c, line 702
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r5
						// (save result) // isreg

						//fdd.c, line 702
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	4
	cmp	r5

						//fdd.c, line 702
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l253
		add	r7
						// freereg r1
						// allocreg r1

						//fdd.c, line 722
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						//sizemod based on type 0x101
	byt
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	6
	shr	r1
						// (save result) // isreg

						//fdd.c, line 722
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	3
	and	r1
						// (save result) // isreg

						//fdd.c, line 722
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size

						//fdd.c, line 723
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	700
	mul	r1
						// (save result) // isreg

						//fdd.c, line 723
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_df
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
						// allocreg r1

						//fdd.c, line 723
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 101
						// matchobj comparing flags 22 with 62
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 62
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 723
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//fdd.c, line 723
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l251
		add	r7
						// freereg r2

						//fdd.c, line 723
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
	.liconst	673
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

						//fdd.c, line 723
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 22 type 101
						// matchobj comparing flags 22 with 82
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 82
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 82
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fdd.c, line 723
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	254
	and	r2
						// (save result) // isreg
						// allocreg r1

						//fdd.c, line 723
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	28
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 723
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	254
	and	r1
						// (save result) // isreg

						//fdd.c, line 723
						// Q1 disposable
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	sgn
	cmp	r2
						// freereg r2
						// freereg r1

						//fdd.c, line 723
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l251
		add	r7
						// allocreg r2

						//fdd.c, line 726
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 22
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 4a
	.liconst	4
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	28
	ldidx	r6
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r1

						//fdd.c, line 727
		// Offsets 5, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 200
		// Real offset of type is 200, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fdd.c, line 727
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_queueevent // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l251: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
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

	.section	.data.1d
	.global	_DEBUG
_DEBUG:
	.byte	0
	.section	.bss.1e
	.align	4
	.global	_df
	.comm	_df,2800
	.section	.bss.1f
	.global	_drives
	.comm	_drives,1
	.section	.bss.20
	.align	4
	.global	_pdfx
	.comm	_pdfx,4
	.section	.bss.21
	.lcomm	l1,4
