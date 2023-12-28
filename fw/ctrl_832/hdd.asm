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
l3:
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
						// allocreg r1

						//hdd.c, line 60
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	4
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 60
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
						// (obj to tmp) flags 6a type 104
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
						// (save temp)store type 4
	st	r6
						//save_temp done
						// freereg r1

						//hdd.c, line 62
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done

						//hdd.c, line 63
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_DebugMode
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//hdd.c, line 63
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l7
		add	r7
						// allocreg r1

						//hdd.c, line 63
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l8,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 63
						//call
						//pcreltotemp
	.lipcrel	_DebugMessage // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l7: # 
						// allocreg r1

						//hdd.c, line 64
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
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
	addt	r4
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//hdd.c, line 64
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 22
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
	.liconst	4
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	0
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 65
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done

						//hdd.c, line 66
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 62 type 104
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	0
	cmp	r0

						//hdd.c, line 66
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l14
		add	r7
						// freereg r1
l13: # 
						// allocreg r1

						//hdd.c, line 66
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 104
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	4
	mul	r1
						// (save result) // isreg

						//hdd.c, line 66
						// (bitwise/arithmetic) 	//ops: 5, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r4 - only match against tmp
	mt	r4
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//hdd.c, line 66
						//FIXME convert
						// (convert - reducing type 4 to 104
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 4
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size

						//hdd.c, line 66
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r1) flags 6a type 104
						// matchobj comparing flags 6a with 42
						// deref 
	ld	r1
	mr	r1
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 6a
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg
						// freereg r2

						//hdd.c, line 66
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 4
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
						//Saving to reg r5
						// (save temp)isreg
	mr	r5
						//save_temp done
						//No need to mask - same size
						// freereg r1

						//hdd.c, line 66
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r3
						// (save result) // isreg

						//hdd.c, line 66
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	cmp	r3

						//hdd.c, line 66
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l13
		add	r7
l14: # 
						// allocreg r1

						//hdd.c, line 67
						// Q1 disposable
						// (minus)
						// (obj to r1) flags 42 type 4
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// matchobj comparing flags 1 with 42
	.liconst	0
	exg r1
	sub r1
						// (save result) // isreg

						//hdd.c, line 67
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 4 to 104
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 42
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 42
	.liconst	4
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 4a type 4
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 4
	st	r0
						//save_temp done
						// freereg r1
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

	.section	.rodata.1
l8:
	.byte	71
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	105
	.byte	110
	.byte	103
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
	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
l15:
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
						// allocreg r1

						//hdd.c, line 76
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 40
						// extern
	.liabs	_DebugMode
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//hdd.c, line 76
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l19
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 76
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l20,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 76
						//call
						//pcreltotemp
	.lipcrel	_DebugMessage // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l19: # 
						// allocreg r1

						//hdd.c, line 78
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
						// freereg r1
l38: # 
						// allocreg r1

						//hdd.c, line 79
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 82 type a
						// (prepobj r1)
 						// (prepobj r1)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	mr	r1
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg

						//hdd.c, line 79
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

						//hdd.c, line 79
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r2
						// (save result) // isreg

						//hdd.c, line 79
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	512
	sgn
	cmp	r2

						//hdd.c, line 79
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l38
		add	r7
						// allocreg r1
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	ldidx	r6
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l26
		add	r7
						// freereg r1
						// allocreg r1
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r1
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r1
						// (save result) // isreg
						// freereg r1
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l32
		add	r7
						// allocreg r1
						//pcreltotemp
	.lipcrel	l37
	add	r7
l26: # 

						//hdd.c, line 87
						// (test)
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_DebugMode
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//hdd.c, line 87
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l28
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 87
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l29,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 87
						//call
						//pcreltotemp
	.lipcrel	_DebugMessage // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// freereg r2
l28: # 

						//hdd.c, line 88
		// Offsets 1380209483, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1380209483
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 90
		// Offsets 64, 4
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
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	64
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 91
		// Offsets 7, 12
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 12, 0
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 12 with 4
						//Fuzzy match found, offset: 8 (varadr: 1)
	.liconst	8
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	7
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 92
		// Offsets 512, 16
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 16, 0
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	512
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 93
		// Offsets 18, 20
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 20, 0
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	18
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 94
		// Offsets -1, 24
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 0
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	-1
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 95
		// Offsets 1, 28
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
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 96
		// Offsets -1, 32
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
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	-1
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 97
		// Offsets -1, 36
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 36, 0
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 98
		// Offsets -1, 40
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 40, 0
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 99
		// Offsets -1, 44
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
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 100
		// Offsets -1, 48
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 48, 0
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 101
		// Offsets -1, 52
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 52, 0
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 102
		// Offsets -1, 56
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 56, 0
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 103
		// Offsets -1, 60
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 60, 0
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 4
	st	r0
						//save_temp done
						// allocreg r1

						//hdd.c, line 104
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
	.liconst	4420
	mul	r1
						// (save result) // isreg

						//hdd.c, line 104
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 60
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 60
						// extern (offset 0)
	.liabs	_hdf
						// extern pe is varadr
	add	r1
						// (save result) // isreg
						// allocreg r2

						//hdd.c, line 104
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	304
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1

						//hdd.c, line 104
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 102
						// matchobj comparing flags 6a with 4a
						// deref 
	hlf
	ld	r2
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 64)
	.liabs	_sector_buffer, 68
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r2
						// allocreg r2

						//hdd.c, line 105
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	308
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//hdd.c, line 105
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 102
						// matchobj comparing flags 6a with 4a
						// deref 
	hlf
	ld	r2
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 68)
	.liabs	_sector_buffer, 72
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r2

						//hdd.c, line 106
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	306
	add	r1
						// (save result) // isreg

						//hdd.c, line 106
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 102
						// matchobj comparing flags 6a with 1
						// deref 
	hlf
	ld	r1
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 72)
	.liabs	_sector_buffer, 76
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r1

						//hdd.c, line 107
		// Offsets 1, 76
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 76, 0
		// Real offset of type is 76, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 76 with 72
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 108
		// Offsets 64, 80
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 80, 0
		// Real offset of type is 80, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_sector_buffer, 64
						//extern deref
						//sizemod based on type 0x104
	ldt
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 109
		// Offsets 64, 96
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 96, 0
		// Real offset of type is 96, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//extern: comparing 96 with 80
						//Fuzzy match found, offset: 16 (varadr: 1)
	.liconst	16
	add	r0

						// required value found in r0
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_sector_buffer, 64
						//extern deref
						//sizemod based on type 0x104
	ldt
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 110
		// Offsets 64, 100
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 100, 0
		// Real offset of type is 100, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 2

						// required value found in tmp
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 111
		// Offsets 3, 104
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 104, 0
		// Real offset of type is 104, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	3
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 112
		// Offsets 0, 128
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 128, 0
		// Real offset of type is 128, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 128 with 104
						//Fuzzy match found, offset: 24 (varadr: 1)
	.liconst	24
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 113
		// Offsets 1, 132
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 132, 0
		// Real offset of type is 132, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 114
		// Offsets 1, 136
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 136, 0
		// Real offset of type is 136, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 115
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_sector_buffer, 64
						//extern deref
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
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 140)
	.liabs	_sector_buffer, 144
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//hdd.c, line 116
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_sector_buffer, 68
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_sector_buffer, 72
						//extern deref
						//sizemod based on type 0x104
	ldt
	mul	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 144)
	.liabs	_sector_buffer, 148
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//hdd.c, line 117
		// Offsets 0, 148
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 148, 0
		// Real offset of type is 148, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 148 with 144
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 118
		// Offsets 1, 152
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 152, 0
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 119
		// Offsets 0, 160
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l30,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// extern (offset 160)
	.liabs	_sector_buffer, 160
						// extern pe not varadr
	mr	r1
					// Copying 2 words and 0 bytes to sector_buffer
					// Copying 2 words to sector_buffer
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1

						//hdd.c, line 120
		// Offsets 0, 168
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l31,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// extern (offset 168)
	.liabs	_sector_buffer, 168
						// extern pe not varadr
	mr	r1
					// Copying 3 words and 1 bytes to sector_buffer
					// Copying 3 words to sector_buffer
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
					// Copying 1 byte tail to sector_buffer
	ldbinc	r0
	stbinc	r1
						// allocreg r1

						//hdd.c, line 122
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 256
		// Real offset of type is 256, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 122
						//call
						//pcreltotemp
	.lipcrel	l3 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//hdd.c, line 124
						//pcreltotemp
	.lipcrel	l37
	add	r7
l32: # 
						// allocreg r2
						// allocreg r1

						//hdd.c, line 128
						// (test)
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_DebugMode
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//hdd.c, line 128
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l34
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 128
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l35,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 128
						//call
						//pcreltotemp
	.lipcrel	_DebugMessage // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// freereg r2
l34: # 

						//hdd.c, line 129
		// Offsets 1346458196, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1346458196
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 131
		// Offsets 64, 4
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
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	64
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 132
		// Offsets 7, 12
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 12, 0
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 12 with 4
						//Fuzzy match found, offset: 8 (varadr: 1)
	.liconst	8
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	7
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 133
		// Offsets -1, 16
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 16, 0
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	-1
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 134
		// Offsets 1, 20
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 20, 0
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 135
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
						//extern: comparing 32 with 20
						//Fuzzy match found, offset: 12 (varadr: 1)
	.liconst	12
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 136
		// Offsets 0, 36
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l36,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// extern (offset 36)
	.liabs	_sector_buffer, 36
						// extern pe not varadr
	mr	r1
					// Copying 1 words and 1 bytes to sector_buffer
					// Copying 1 words to sector_buffer
	ldinc	r0
	stinc	r1
					// Copying 1 byte tail to sector_buffer
	ldbinc	r0
	stbinc	r1

						//hdd.c, line 137
		// Offsets 3, 36
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 36, 0
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 36)
	.liabs	_sector_buffer, 36
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	3
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//hdd.c, line 139
		// Offsets 16, 128
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 128, 0
		// Real offset of type is 128, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 128 with 37
						//Fuzzy match found, offset: 91 (varadr: 1)
	.liconst	91
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	16
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 140
		// Offsets 128, 132
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 132, 0
		// Real offset of type is 132, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	128
						// (save temp)store type 4
	st	r0
						//save_temp done
						// allocreg r1

						//hdd.c, line 141
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
	.liconst	4420
	mul	r1
						// (save result) // isreg

						//hdd.c, line 141
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 132
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 132
						// extern (offset 0)
	.liabs	_hdf
						// extern pe is varadr
	add	r1
						// (save result) // isreg
						// allocreg r2

						//hdd.c, line 141
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	306
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1

						//hdd.c, line 141
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 102
						// matchobj comparing flags 6a with 4a
						// deref 
	hlf
	ld	r2
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 140)
	.liabs	_sector_buffer, 144
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r2

						//hdd.c, line 142
		// Offsets 1, 144
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 144, 0
		// Real offset of type is 144, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 144 with 140
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 4
	st	r0
						//save_temp done
						// allocreg r2

						//hdd.c, line 143
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	308
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1

						//hdd.c, line 143
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 102
						// matchobj comparing flags 6a with 4a
						// deref 
	hlf
	ld	r2
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 148)
	.liabs	_sector_buffer, 152
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r2

						//hdd.c, line 144
		// Offsets 2, 152
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 152, 0
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 152 with 148
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	2
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 145
		// Offsets 1, 164
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 164, 0
		// Real offset of type is 164, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 164 with 152
						//Fuzzy match found, offset: 12 (varadr: 1)
	.liconst	12
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 146
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	304
	add	r1
						// (save result) // isreg

						//hdd.c, line 146
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 1
						// matchobj comparing flags 6a with 82
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 146
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
	.liconst	1
	sub	r1
						// (save result) // isreg

						//hdd.c, line 146
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 168)
	.liabs	_sector_buffer, 172
						// extern pe not varadr
						//sizemod based on type 0x104
	stmpdec	r1
						// freereg r1

						//hdd.c, line 147
		// Offsets 30, 172
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 172, 0
		// Real offset of type is 172, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 172 with 168
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	30
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 148
		// Offsets 131070, 180
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 180, 0
		// Real offset of type is 180, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 180 with 172
						//Fuzzy match found, offset: 8 (varadr: 1)
	.liconst	8
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	131070
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//hdd.c, line 149
		// Offsets 2147483646, 184
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 184, 0
		// Real offset of type is 184, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	2147483646
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 150
		// Offsets 1146049281, 192
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 192, 0
		// Real offset of type is 192, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 192 with 184
						//Fuzzy match found, offset: 8 (varadr: 1)
	.liconst	8
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1146049281
						// (save temp)store type 4
	st	r0
						//save_temp done
						// allocreg r1

						//hdd.c, line 152
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 208
		// Real offset of type is 208, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 192
						//Fuzzy match found, offset: -192 (varadr: 0)
	.liconst	-192
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 152
						//call
						//pcreltotemp
	.lipcrel	l3 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l37: # 
						// allocreg r2
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.3
l20:
	.byte	67
	.byte	108
	.byte	101
	.byte	97
	.byte	114
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	115
	.byte	101
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	32
	.byte	98
	.byte	117
	.byte	102
	.byte	102
	.byte	101
	.byte	114
	.byte	0
	.section	.rodata.4
l29:
	.byte	67
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	82
	.byte	68
	.byte	66
	.byte	46
	.byte	46
	.byte	46
	.byte	0
	.section	.rodata.5
l30:
	.byte	68
	.byte	111
	.byte	32
	.byte	110
	.byte	111
	.byte	116
	.byte	32
	.byte	0
	.section	.rodata.6
l31:
	.byte	114
	.byte	101
	.byte	112
	.byte	97
	.byte	114
	.byte	116
	.byte	105
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	33
	.byte	0
	.section	.rodata.7
l35:
	.byte	67
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	82
	.byte	68
	.byte	66
	.byte	46
	.byte	46
	.byte	46
	.byte	0
	.section	.rodata.8
l36:
	.byte	32
	.byte	68
	.byte	72
	.byte	48
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
	.section	.text.9
	.global	_IdentifyDevice
_IdentifyDevice:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-36
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
						// allocreg r1

						//hdd.c, line 166
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	52
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4420
	mul	r1
						// (save result) // isreg

						//hdd.c, line 166
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_hdf
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
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r1

						//hdd.c, line 166
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
	.liconst	304
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//hdd.c, line 166
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
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
	.liconst	306
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

						//hdd.c, line 166
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 102
						// matchobj comparing flags 22 with 82
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 82
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//hdd.c, line 166
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 22 type 102
						// matchobj comparing flags 22 with 22
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 22
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 22
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//hdd.c, line 166
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 22
						// reg r2 - only match against tmp
	//mt
	mul	r1
						// (save result) // isreg
						// freereg r2

						//hdd.c, line 166
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// var, auto|reg
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
	.liconst	308
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
						// allocreg r2

						//hdd.c, line 166
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 22 type 102
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
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//hdd.c, line 166
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 22
						// reg r2 - only match against tmp
	//mt
	mul	r1
						// (save result) // isreg
						// freereg r2

						//hdd.c, line 166
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	36
	addt	r6
						//sizemod based on type 0x104
	stmpdec	r1
						// freereg r1

						//hdd.c, line 169
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	52
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	sgn
	cmp	r0

						//hdd.c, line 169
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l43
		add	r7
						// allocreg r2
						// allocreg r1

						//hdd.c, line 170
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	52
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	26
	mul	r1
						// (save result) // isreg

						//hdd.c, line 170
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 46)
	.liabs	_config, 46
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

						//hdd.c, line 171
						//pcreltotemp
	.lipcrel	l47
	add	r7
l43: # 
						// allocreg r1

						//hdd.c, line 171
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	52
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	sgn
	cmp	r0

						//hdd.c, line 171
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l40
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 172
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	52
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	26
	mul	r1
						// (save result) // isreg

						//hdd.c, line 172
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 104)
	.liabs	_config, 104
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
						// freereg r2
						// freereg r3
l47: # 
						// allocreg r3

						//hdd.c, line 176
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 116
		// Real offset of type is 116, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//hdd.c, line 176
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 120
		// Real offset of type is 120, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//hdd.c, line 176
		// Offsets 512, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 124
		// Real offset of type is 124, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	512
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 176
						//call
						//pcreltotemp
	.lipcrel	___memset // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//hdd.c, line 179
		// Offsets 0, 0
		// Have am? no, no
		// flags 22, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 140
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 22 type 3
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// var FIXME - deref?
						// reg - auto
	.liconst	12
	ldidx	r6
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r5
						//save_temp done
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	1
	sub	r5
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l49
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r5
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l71
		add	r7
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r5
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l71
		add	r7
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r5
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l71
		add	r7
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r5
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l71
		add	r7
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r5
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l71
		add	r7
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	123
	sub	r5
						// (save result) // isreg
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l85
		add	r7
l49: # 

						//hdd.c, line 182
						// (test)
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_DebugMode
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//hdd.c, line 182
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l52
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 182
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 148
		// Real offset of type is 148, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l53,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 182
						//call
						//pcreltotemp
	.lipcrel	_DebugMessage // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l52: # 

						//hdd.c, line 183
		// Offsets 64, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 102
						// const
	.liconst	64
						// (save temp)store type 2
	hlf
	st	r4
						//save_temp done
						// allocreg r1

						//hdd.c, line 184
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 184
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 22, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 156
		// Real offset of type is 156, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 102
						// matchobj comparing flags 22 with 4a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//hdd.c, line 185
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	6
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 185
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 22, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 172
		// Real offset of type is 172, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 102
						// matchobj comparing flags 22 with 4a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 4a
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//hdd.c, line 186
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	12
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 186
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 22, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 188
		// Real offset of type is 188, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 102
						// matchobj comparing flags 22 with 4a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 4a
	.liconst	8
	ldidx	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r1

						//hdd.c, line 188
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 22
						// var, auto|reg
						// matchobj comparing flags 1 with 22
	.liconst	16
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	20
	addt	r4
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags a with a
						// Obsoleting t1

						//hdd.c, line 188
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2a
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l54,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags aa with 2
						// matchobj comparing flags aa with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	16
	ldidx	r6
	mr	r1
					// Copying 5 words and 0 bytes to 
					// Copying 5 words to 
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1

						//hdd.c, line 189
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	20
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	46
	addt	r4
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags a with a
						// Obsoleting t1

						//hdd.c, line 189
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2a
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l55,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags aa with 2
						// matchobj comparing flags aa with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	20
	ldidx	r6
	mr	r1
					// Copying 2 words and 0 bytes to 
					// Copying 2 words to 
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1

						//hdd.c, line 190
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	24
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	54
	addt	r4
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1
						// allocreg r1

						//hdd.c, line 192
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 22 type 3
						// matchobj comparing flags 22 with 2
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
	.liconst	12
	ldidx	r6
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	128
	and	r1
						// (save result) // isreg
						// freereg r1

						//hdd.c, line 192
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l57
		add	r7
						// allocreg r1

						//hdd.c, line 194
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 22
						// (a/p assign)
	mt	r1
	stdec	r6
	mt	r2
	stdec	r6
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l58,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags a2 with 2
						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	32
	ldidx	r6
	mr	r1
					// Copying 10 words and 0 bytes to p
					// Copying 10 words to p
						// matchobj comparing flags 1 with 2
	.liconst	40
	addt	r1
	mr	r2
.cpypwordloop5:
	ldinc	r0
	stinc	r1
	mt	r1
	cmp	r2
	cond	NEQ
		.lipcrel	.cpypwordloop5
		add	r7
	ldinc	r6
	mr	r2
	ldinc	r6
	mr	r1

						//hdd.c, line 195
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// var, auto|reg
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
	.liconst	8
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	28
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//hdd.c, line 196
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 22
						// (a/p assign)
	mt	r1
	stdec	r6
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l59,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags a2 with 2
						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	28
	ldidx	r6
	mr	r1
					// Copying 4 words and 0 bytes to p
					// Copying 4 words to p
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
	ldinc	r6
	mr	r1

						//hdd.c, line 199
						//pcreltotemp
	.lipcrel	l85
	add	r7
l57: # 

						//hdd.c, line 200
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 22
						// (a/p assign)
	mt	r1
	stdec	r6
	mt	r2
	stdec	r6
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l61,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags a2 with 2
						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	32
	ldidx	r6
	mr	r1
					// Copying 10 words and 0 bytes to p
					// Copying 10 words to p
						// matchobj comparing flags 1 with 2
	.liconst	40
	addt	r1
	mr	r2
.cpypwordloop7:
	ldinc	r0
	stinc	r1
	mt	r1
	cmp	r2
	cond	NEQ
		.lipcrel	.cpypwordloop7
		add	r7
	ldinc	r6
	mr	r2
	ldinc	r6
	mr	r1

						//hdd.c, line 201
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// var, auto|reg
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
	.liconst	8
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	28
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//hdd.c, line 202
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
	.liconst	10
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

						//hdd.c, line 202
						// (test)
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
	.liconst	12
	ldidx	r6
						//sizemod based on type 0x101
	byt
	ldt

						//hdd.c, line 202
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l63
		add	r7

						//hdd.c, line 204
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 22
						// var, auto|reg
						// matchobj comparing flags 1 with 22
	.liconst	16
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

						//hdd.c, line 205
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 22 type 101
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
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	12
	ldidx	r6
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 22
						// matchobj comparing flags 1 with 22
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//hdd.c, line 205
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

						//hdd.c, line 205
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l85
		add	r7
						// freereg r1
l64: # 
						// allocreg r1

						//hdd.c, line 205
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// var, auto|reg
	.liconst	24
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	16
						//sizemod based on type 0xa
	ldidx	r6
	add	r1
						// (save result) // isreg

						//hdd.c, line 205
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//hdd.c, line 205
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	16
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
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//hdd.c, line 205
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
	add	r1
						// (save result) // isreg

						//hdd.c, line 205
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 101
						// matchobj comparing flags 6a with 2
						// matchobj comparing flags 6a with 2
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//hdd.c, line 205
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

						//hdd.c, line 205
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l85
		add	r7
						// allocreg r1

						//hdd.c, line 205
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	16
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	sgn
	cmp	r0

						//hdd.c, line 205
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l64
		add	r7

						//hdd.c, line 208
						//pcreltotemp
	.lipcrel	l85
	add	r7
l63: # 

						//hdd.c, line 209
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// var, auto|reg
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
	.liconst	2
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//hdd.c, line 209
		// Offsets 0, 0
		// Have am? no, no
		// flags 2a, 22
						// (a/p assign)
	mt	r1
	stdec	r6
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2a type b
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// var FIXME - deref?
						// reg - auto
	.liconst	16
	ldidx	r6
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags a2 with 2a
						// matchobj comparing flags a2 with 2a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2a
						// matchobj comparing flags 1 with 2a
	.liconst	28
	ldidx	r6
	mr	r1
					// Copying 2 words and 0 bytes to p
					// Copying 2 words to p
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
	ldinc	r6
	mr	r1

						//hdd.c, line 213
						//pcreltotemp
	.lipcrel	l85
	add	r7
l71: # 

						//hdd.c, line 219
						// (test)
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_DebugMode
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//hdd.c, line 219
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l77
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 219
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 220
		// Real offset of type is 220, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l78,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 219
						//call
						//pcreltotemp
	.lipcrel	_DebugMessage // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// freereg r2
l77: # 

						//hdd.c, line 220
		// Offsets 64, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 102
						// const
	.liconst	64
						// (save temp)store type 2
	hlf
	st	r4
						//save_temp done
						// allocreg r1

						//hdd.c, line 221
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 221
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 22, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 228
		// Real offset of type is 228, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 102
						// matchobj comparing flags 22 with 4a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//hdd.c, line 222
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	6
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 222
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 22, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 244
		// Real offset of type is 244, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 102
						// matchobj comparing flags 22 with 4a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 4a
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//hdd.c, line 223
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	12
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 223
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 22, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 260
		// Real offset of type is 260, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 102
						// matchobj comparing flags 22 with 4a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 4a
	.liconst	8
	ldidx	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r1

						//hdd.c, line 225
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 22
						// var, auto|reg
						// matchobj comparing flags 1 with 22
	.liconst	16
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	20
	addt	r4
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags a with a
						// Obsoleting t1

						//hdd.c, line 225
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2a
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l79,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags aa with 2
						// matchobj comparing flags aa with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	16
	ldidx	r6
	mr	r1
					// Copying 5 words and 0 bytes to 
					// Copying 5 words to 
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1

						//hdd.c, line 226
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	20
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	46
	addt	r4
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1
						// allocreg r1

						//hdd.c, line 226
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 22 type 3
						// matchobj comparing flags 22 with 2
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
	.liconst	12
	ldidx	r6
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	2
	sub	r1
						// (save result) // isreg
						// allocreg r2

						//hdd.c, line 226
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 22 type 102
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 1
	.liconst	20
	ldidx	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//hdd.c, line 226
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 22
						// reg r2 - only match against tmp
	//mt
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//hdd.c, line 226
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 102
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 4a
	.liconst	20
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 4a type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 2
	hlf
	st	r0
						//save_temp done
						// freereg r1

						//hdd.c, line 227
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 22
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l80,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags a2 with 2
						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	20
	ldidx	r6
	mr	r1
					// Copying 2 words and 0 bytes to 
					// Copying 2 words to 
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1

						//hdd.c, line 228
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	24
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	54
	addt	r4
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//hdd.c, line 230
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 22
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l81,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags a2 with 2
						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	24
	ldidx	r6
	mr	r1
					// Copying 10 words and 0 bytes to p
					// Copying 10 words to p
						// matchobj comparing flags 1 with 2
	.liconst	40
	addt	r1
	mr	r2
.cpypwordloop11:
	ldinc	r0
	stinc	r1
	mt	r1
	cmp	r2
	cond	NEQ
		.lipcrel	.cpypwordloop11
		add	r7

						//hdd.c, line 231
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// var, auto|reg
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
	.liconst	8
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	28
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//hdd.c, line 232
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 22 type 3
						// matchobj comparing flags 22 with 82
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 82
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 82
	.liconst	12
	ldidx	r6
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	2
	cmp	r0

						//hdd.c, line 232
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l83
		add	r7
						// allocreg r2
						// allocreg r1

						//hdd.c, line 233
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 22
						// (a/p assign)
	mt	r1
	stdec	r6
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l84,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags a2 with 2
						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	28
	ldidx	r6
	mr	r1
					// Copying 2 words and 3 bytes to p
					// Copying 2 words to p
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
					// Copying 3 byte tail to p
	ldbinc	r0
	stbinc	r1
	ldbinc	r0
	stbinc	r1
	ldbinc	r0
	stbinc	r1
	ldinc	r6
	mr	r1

						//hdd.c, line 235
						//pcreltotemp
	.lipcrel	l85
	add	r7
						// freereg r1
						// freereg r2
						// freereg r3
l83: # 

						//hdd.c, line 236
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 22
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l86,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags a2 with 2
						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	24
	ldidx	r6
	mr	r1
					// Copying 2 words and 3 bytes to p
					// Copying 2 words to p
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
					// Copying 3 byte tail to p
	ldbinc	r0
	stbinc	r1
	ldbinc	r0
	stbinc	r1
	ldbinc	r0
	stbinc	r1
						// allocreg r1

						//hdd.c, line 237
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
	.liconst	10
	add	r1
						// (save result) // isreg
						// allocreg r3

						//hdd.c, line 237
						// (bitwise/arithmetic) 	//ops: 0, 0, 4
						// (obj to r3) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
	mr	r3
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	312
	add	r3
						// (save result) // isreg
						// allocreg r2

						//hdd.c, line 237
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

						//hdd.c, line 237
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 6a
						// deref 
	hlf
	ld	r3
						// (save temp)isreg
	mr	r3
						//save_temp done

						//hdd.c, line 237
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r3 - only match against tmp
	//mt
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r3

						//hdd.c, line 237
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1
l85: # 
						// allocreg r3
						// allocreg r1

						//hdd.c, line 243
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	94
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 243
						// Z disposable
		// Offsets 32784, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 345
		// Real offset of type is 345, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	32784
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//hdd.c, line 244
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	106
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 244
						// Z disposable
		// Offsets 1, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 349
		// Real offset of type is 349, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//hdd.c, line 245
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	108
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 245
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 22, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 365
		// Real offset of type is 365, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 102
						// matchobj comparing flags 22 with 4a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//hdd.c, line 246
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	110
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 246
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 22, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 381
		// Real offset of type is 381, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 102
						// matchobj comparing flags 22 with 4a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 4a
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//hdd.c, line 247
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	112
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 247
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 22, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 397
		// Real offset of type is 397, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 102
						// matchobj comparing flags 22 with 4a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 4a
	.liconst	8
	ldidx	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r2

						//hdd.c, line 248
						//FIXME convert
						// (convert - reducing type 104 to 102
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 22
						// var, auto|reg
						// matchobj comparing flags 1 with 22
	.liconst	32
						//sizemod based on type 0x104
	ldidx	r6
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// matchobj comparing flags 1 with 2
	.liconst	65535
	and	r2
						// allocreg r1

						//hdd.c, line 248
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	114
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 248
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 4a, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 403
		// Real offset of type is 403, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 102
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r2
						// freereg r1
						// allocreg r2

						//hdd.c, line 249
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 104
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	32
						//sizemod based on type 0x104
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	shr	r2
						// (save result) // isreg

						//hdd.c, line 249
						//FIXME convert
						// (convert - reducing type 104 to 102
						// matchobj comparing flags 1 with 1
	.liconst	65535
	and	r2
						// allocreg r1

						//hdd.c, line 249
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	116
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 249
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 4a, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 413
		// Real offset of type is 413, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 102
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r2
						// freereg r1
l40: # 
						// allocreg r2
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-36
	sub	r6
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.a
l53:
	.byte	73
	.byte	100
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	102
	.byte	121
	.byte	32
	.byte	45
	.byte	32
	.byte	84
	.byte	121
	.byte	112
	.byte	101
	.byte	58
	.byte	32
	.byte	72
	.byte	68
	.byte	70
	.byte	95
	.byte	70
	.byte	73
	.byte	76
	.byte	69
	.byte	0
	.section	.rodata.b
l58:
	.byte	68
	.byte	79
	.byte	78
	.byte	39
	.byte	84
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.section	.rodata.c
l59:
	.byte	82
	.byte	69
	.byte	80
	.byte	65
	.byte	82
	.byte	84
	.byte	73
	.byte	84
	.byte	73
	.byte	79
	.byte	78
	.byte	33
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.section	.rodata.d
l61:
	.byte	89
	.byte	65
	.byte	81
	.byte	85
	.byte	66
	.byte	69
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.section	.rodata.e
l78:
	.byte	73
	.byte	100
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	102
	.byte	121
	.byte	32
	.byte	45
	.byte	32
	.byte	84
	.byte	121
	.byte	112
	.byte	101
	.byte	58
	.byte	32
	.byte	72
	.byte	68
	.byte	70
	.byte	95
	.byte	67
	.byte	65
	.byte	82
	.byte	68
	.byte	0
	.section	.rodata.f
l86:
	.byte	67
	.byte	97
	.byte	114
	.byte	100
	.byte	32
	.byte	80
	.byte	97
	.byte	114
	.byte	116
	.byte	32
	.byte	49
	.byte	0
	.section	.rodata.10
l54:
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
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	0
	.section	.rodata.11
l55:
	.byte	46
	.byte	49
	.byte	48
	.byte	48
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.section	.rodata.12
l79:
	.byte	84
	.byte	67
	.byte	54
	.byte	52
	.byte	77
	.byte	105
	.byte	110
	.byte	105
	.byte	77
	.byte	105
	.byte	103
	.byte	83
	.byte	68
	.byte	48
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.section	.rodata.13
l80:
	.byte	46
	.byte	49
	.byte	48
	.byte	48
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.section	.rodata.14
l81:
	.byte	89
	.byte	65
	.byte	81
	.byte	85
	.byte	66
	.byte	69
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.section	.rodata.15
l84:
	.byte	83
	.byte	68
	.byte	47
	.byte	77
	.byte	77
	.byte	67
	.byte	32
	.byte	67
	.byte	97
	.byte	114
	.byte	100
	.byte	0
	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.16
	.global	_chs2lba
_chs2lba:
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

						//hdd.c, line 254
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 3
						// matchobj comparing flags 2 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	16
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4420
	mul	r2
						// (save result) // isreg

						//hdd.c, line 254
						// (bitwise/arithmetic) 	//ops: 0, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_hdf
						// extern pe is varadr
	add	r2
						// (save result) // isreg
						// allocreg r1

						//hdd.c, line 254
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	306
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 254
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 4a
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 254
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 6a
						// reg r3 - only match against tmp
	mt	r3
	mul	r1
						// (save result) // isreg

						//hdd.c, line 254
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	8
	ldidx	r6
	add	r1
						// (save result) // isreg

						//hdd.c, line 254
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	308
	add	r2
						// (save result) // isreg

						//hdd.c, line 254
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 1
						// deref 
	hlf
	ld	r2
						// (save temp)isreg
	mr	r2
						//save_temp done

						//hdd.c, line 254
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r2 - only match against tmp
	//mt
	mul	r1
						// (save result) // isreg
						// freereg r2

						//hdd.c, line 254
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	12
	ldidx	r6
	add	r1
						// (save result) // isreg

						//hdd.c, line 254
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r1
						// (save result) // isreg

						//hdd.c, line 254
						//FIXME convert
						// (convert - reducing type 3 to 104
						//No need to mask - same size

						//hdd.c, line 254
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// freereg r1
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
	.section	.text.17
	.global	_WriteTaskFile
_WriteTaskFile:
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
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
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
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	268435431
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1
		// Offsets 268435427, 0
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
	.liconst	-4
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 259
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
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	16
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//hdd.c, line 261
		// Offsets 144, 0
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
	.liconst	144
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 262
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 263
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 264
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 265
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 266
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 270
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 272
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 273
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 274
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 275
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 276
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	8
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 277
		// Offsets 0, 0
		// Have am? no, no
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 278
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	12
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 279
		// Offsets 0, 0
		// Have am? no, no
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 280
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	16
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 281
		// Offsets 0, 0
		// Have am? no, no
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 282
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	20
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 283
		// Offsets 0, 0
		// Have am? no, no
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 284
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	24
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done

						//hdd.c, line 286
						// Z disposable
		// Offsets 17, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	17
						// (save temp)store type 1
	stbinc	r3
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
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.18
	.global	_WriteStatus
_WriteStatus:
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
						// (obj to tmp) flags 40 type 103
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
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
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	268435431
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1
		// Offsets 268435427, 0
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
	.liconst	-4
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 291
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
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	16
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//hdd.c, line 293
		// Offsets 240, 0
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
	.liconst	240
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 294
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 501
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 295
		// Offsets 0, 0
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
	.liconst	0
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 296
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 297
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r1
						//save_temp done

						//hdd.c, line 298
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done

						//hdd.c, line 300
						// Z disposable
		// Offsets 17, 0
		// Have am? no, yes
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
	.liconst	17
						// (save temp)store type 1
	stbinc	r3
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
		//r2: no
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.19
l95:
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
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//hdd.c, line 311
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 40
						// extern
	.liabs	_DebugMode
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//hdd.c, line 311
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l99
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 311
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l100,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 311
						//call
						//pcreltotemp
	.lipcrel	_DebugMessage // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l99: # 
						// allocreg r1

						//hdd.c, line 312
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	6
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 312
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 312
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	240
	and	r1
						// (save result) // isreg

						//hdd.c, line 312
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//hdd.c, line 312
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	stdec	r6

						//hdd.c, line 312
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6

						//hdd.c, line 312
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	stdec	r6

						//hdd.c, line 312
						// (a/p push)
						// a: pushed 16, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	stdec	r6
						// allocreg r1

						//hdd.c, line 312
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 312
						//call
						//pcreltotemp
	.lipcrel	_WriteTaskFile // extern
	add	r7
						// Deferred popping of 20 bytes (20 in total)
						// freereg r1
						// allocreg r1

						//hdd.c, line 313
		// Offsets 144, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	144
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 313
						//call
						//pcreltotemp
	.lipcrel	_WriteStatus // extern
	add	r7
						// Deferred popping of 0 bytes (20 in total)
						// freereg r1
						// freereg r3
	.liconst	-20
	sub	r6
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.1a
l100:
	.byte	82
	.byte	101
	.byte	99
	.byte	97
	.byte	108
	.byte	105
	.byte	98
	.byte	114
	.byte	97
	.byte	116
	.byte	101
	.byte	0
	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1b
l101:
	stdec	r6
						// allocreg r1

						//hdd.c, line 321
						// (test)
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_DebugMode
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//hdd.c, line 321
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l105
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 321
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l106,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 321
						//call
						//pcreltotemp
	.lipcrel	_DebugMessage // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l105: # 

						//hdd.c, line 322
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	stdec	r6

						//hdd.c, line 322
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6

						//hdd.c, line 322
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6

						//hdd.c, line 322
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6

						//hdd.c, line 322
						// (a/p push)
						// a: pushed 16, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6
						// allocreg r1

						//hdd.c, line 322
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 36, isauto 0
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

						//hdd.c, line 322
						//call
						//pcreltotemp
	.lipcrel	_WriteTaskFile // extern
	add	r7
						// Deferred popping of 20 bytes (20 in total)
						// freereg r1
						// allocreg r1

						//hdd.c, line 323
		// Offsets 144, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	144
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 323
						//call
						//pcreltotemp
	.lipcrel	_WriteStatus // extern
	add	r7
						// Deferred popping of 0 bytes (20 in total)
						// freereg r1
	.liconst	-20
	sub	r6
	ldinc	r6
	mr	r7

	.section	.rodata.1c
l106:
	.byte	73
	.byte	68
	.byte	69
	.byte	58
	.byte	32
	.byte	68
	.byte	114
	.byte	105
	.byte	118
	.byte	101
	.byte	32
	.byte	68
	.byte	105
	.byte	97
	.byte	103
	.byte	110
	.byte	111
	.byte	115
	.byte	116
	.byte	105
	.byte	99
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
	.section	.text.1d
	.global	_ATA_IdentifyDevice
_ATA_IdentifyDevice:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
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
						// allocreg r1

						//hdd.c, line 332
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_DebugMode
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//hdd.c, line 332
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l110
		add	r7
						// freereg r1

						//hdd.c, line 332
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	16
	ldidx	r6
	stdec	r6

						//hdd.c, line 332
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 1
						// static
	.liabs	l111,0
						// static pe is varadr
	stdec	r6

						//hdd.c, line 332
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_debugmsg2
						// extern pe is varadr
	stdec	r6

						//hdd.c, line 332
						//call
						//pcreltotemp
	.lipcrel	_sprintf // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
						// matchobj comparing flags 1 with 1
	.liconst	12
	add	r6
						// allocreg r1

						//hdd.c, line 332
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_debugmsg2
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 332
						//call
						//pcreltotemp
	.lipcrel	_DebugMessage // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l110: # 

						//hdd.c, line 333
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	16
	ldidx	r6
	stdec	r6
						// allocreg r1

						//hdd.c, line 333
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	24
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 333
						//call
						//pcreltotemp
	.lipcrel	_IdentifyDevice // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1
						// allocreg r1

						//hdd.c, line 334
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	6
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 334
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 334
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 334
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	5
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 334
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 334
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 334
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	4
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 334
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 334
						// Q1 disposable
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 334
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	3
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 334
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 334
						// Q1 disposable
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 334
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	2
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 334
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 334
						// Q1 disposable
						// (a/p push)
						// a: pushed 16, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 334
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 96, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 334
						//call
						//pcreltotemp
	.lipcrel	_WriteTaskFile // extern
	add	r7
						// Flow control - popping 20 + 4 bytes
	.liconst	24
	add	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 335
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 80
		// Real offset of type is 80, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 335
						//call
						//pcreltotemp
	.lipcrel	_WriteStatus // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//hdd.c, line 336
		// Offsets 16, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	16
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//hdd.c, line 337
		// Offsets 160, 0
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
	.liconst	160
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//hdd.c, line 338
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

						//hdd.c, line 339
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

						//hdd.c, line 340
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

						//hdd.c, line 341
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

						//hdd.c, line 342
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

						//hdd.c, line 343
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
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r2
						//save_temp done
l116: # 
						// allocreg r1

						//hdd.c, line 344
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

						//hdd.c, line 344
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	20
	ldidx	r6
	add	r1
						// (save result) // isreg

						//hdd.c, line 344
						//FIXME convert
						// (convert - reducing type 102 to 101
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 2
						// deref 
	hlf
	ld	r1
						//Saving to reg r0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//hdd.c, line 345
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r1) flags 6a type 102
						// matchobj comparing flags 6a with 6a
						// deref 
	hlf
	ld	r1
	mr	r1
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	8
	shr	r1
						// (save result) // isreg

						//hdd.c, line 345
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 102 to 101
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 102
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r1

						//hdd.c, line 343
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r2
						// (save result) // isreg

						//hdd.c, line 343
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	256
	sgn
	cmp	r2

						//hdd.c, line 343
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l116
		add	r7

						//hdd.c, line 347
		// Offsets 17, 0
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
	.liconst	17
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// allocreg r1

						//hdd.c, line 348
		// Offsets 144, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 111
		// Real offset of type is 111, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	144
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 348
						//call
						//pcreltotemp
	.lipcrel	_WriteStatus // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
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

	.section	.rodata.1e
l111:
	.byte	73
	.byte	68
	.byte	69
	.byte	37
	.byte	100
	.byte	58
	.byte	32
	.byte	73
	.byte	100
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	102
	.byte	121
	.byte	32
	.byte	68
	.byte	101
	.byte	118
	.byte	105
	.byte	99
	.byte	101
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
	.section	.text.1f
	.global	_ATA_Initialize
_ATA_Initialize:
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
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//hdd.c, line 356
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 40
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 40
						// static
	.liabs	l120,0
						// static pe is varadr
	stdec	r6

						//hdd.c, line 356
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// allocreg r1

						//hdd.c, line 357
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	6
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 357
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 357
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 357
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	5
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 357
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 357
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 357
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	4
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 357
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 357
						// Q1 disposable
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 357
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	3
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 357
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 357
						// Q1 disposable
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 357
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	2
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 357
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 357
						// Q1 disposable
						// (a/p push)
						// a: pushed 16, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 357
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 52
		// Real offset of type is 76, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 357
						//call
						//pcreltotemp
	.lipcrel	_WriteTaskFile // extern
	add	r7
						// Deferred popping of 20 bytes (24 in total)
						// freereg r1
						// allocreg r1

						//hdd.c, line 358
		// Offsets 144, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 84, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	144
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 358
						//call
						//pcreltotemp
	.lipcrel	_WriteStatus // extern
	add	r7
						// Deferred popping of 0 bytes (24 in total)
						// freereg r1
						// freereg r3
	.liconst	-24
	sub	r6
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.20
l120:
	.byte	73
	.byte	110
	.byte	105
	.byte	116
	.byte	105
	.byte	97
	.byte	108
	.byte	105
	.byte	122
	.byte	101
	.byte	32
	.byte	68
	.byte	101
	.byte	118
	.byte	105
	.byte	99
	.byte	101
	.byte	32
	.byte	80
	.byte	97
	.byte	114
	.byte	97
	.byte	109
	.byte	101
	.byte	116
	.byte	101
	.byte	114
	.byte	115
	.byte	13
	.byte	0
	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.21
	.global	_ATA_SetMultipleMode
_ATA_SetMultipleMode:
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
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//hdd.c, line 365
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	2
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//hdd.c, line 365
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	8
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4420
	mul	r2
						// (save result) // isreg

						//hdd.c, line 365
						// (bitwise/arithmetic) 	//ops: 0, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_hdf
						// extern pe is varadr
	add	r2
						// (save result) // isreg

						//hdd.c, line 365
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	310
	add	r2
						// (save result) // isreg

						//hdd.c, line 365
						// Z disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)store type 2
	hlf
	st	r2
						//save_temp done
						// freereg r2

						//hdd.c, line 366
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 6a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 366
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//hdd.c, line 366
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l123,0
						// static pe is varadr
	stdec	r6

						//hdd.c, line 366
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 8 bytes (8 in total)
						// allocreg r1

						//hdd.c, line 367
		// Offsets 144, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 38
		// Real offset of type is 46, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	144
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 367
						//call
						//pcreltotemp
	.lipcrel	_WriteStatus // extern
	add	r7
						// Deferred popping of 0 bytes (8 in total)
						// freereg r1
						// freereg r3
	.liconst	-8
	sub	r6
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.22
l123:
	.byte	83
	.byte	101
	.byte	116
	.byte	32
	.byte	77
	.byte	117
	.byte	108
	.byte	116
	.byte	105
	.byte	112
	.byte	108
	.byte	101
	.byte	32
	.byte	77
	.byte	111
	.byte	100
	.byte	101
	.byte	32
	.byte	37
	.byte	100
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
	.section	.text.23
	.global	_ATA_ReadSectors
_ATA_ReadSectors:
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
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	268435427
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//hdd.c, line 379
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	44
	ldidx	r6
	stdec	r6

						//hdd.c, line 379
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	36
	ldidx	r6
	stdec	r6

						//hdd.c, line 379
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	48
	ldidx	r6
	stdec	r6
						// allocreg r1

						//hdd.c, line 379
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	48
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 379
						//call
						//pcreltotemp
	.lipcrel	_chs2lba // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
	.liconst	12
	add	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 379
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//hdd.c, line 379
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 4
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
						//Saving to reg r5
						// (save temp)isreg
	mr	r5
						//save_temp done
						//No need to mask - same size
						// freereg r1

						//hdd.c, line 380
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_DebugMode
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//hdd.c, line 380
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l127
		add	r7
						// allocreg r1

						//hdd.c, line 380
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	48
	ldidx	r6
	stdec	r6

						//hdd.c, line 380
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 42 type 4
						// matchobj comparing flags 42 with 2
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6

						//hdd.c, line 380
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	60
	ldidx	r6

						//hdd.c, line 380
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l129
		add	r7

						//hdd.c, line 380
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, a
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with 8a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with 8a
						// static
	.liabs	l131,0
						// static pe is varadr
						// (save temp)store type a
	st	r0
						//save_temp done

						//hdd.c, line 380
						//pcreltotemp
	.lipcrel	l130
	add	r7
l129: # 

						//hdd.c, line 380
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, a
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with 8a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with 8a
						// static
	.liabs	l132,0
						// static pe is varadr
						// (save temp)store type a
	st	r0
						//save_temp done
						// freereg r1
l130: # 

						//hdd.c, line 380
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags a type a
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
	stdec	r6

						//hdd.c, line 380
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with a
						// extern (offset 0)
	.liabs	_debugmsg2
						// extern pe is varadr
	stdec	r6

						//hdd.c, line 380
						//call
						//pcreltotemp
	.lipcrel	_sprintf // extern
	add	r7
						// Flow control - popping 16 + 0 bytes
	.liconst	16
	add	r6
						// allocreg r1

						//hdd.c, line 380
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_debugmsg2
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 380
						//call
						//pcreltotemp
	.lipcrel	_DebugMessage // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l127: # 
						// allocreg r1

						//hdd.c, line 384
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	48
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
	.liconst	8
	addt	r6
						//sizemod based on type 0x4
	stmpdec	r5

						//hdd.c, line 384
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
				// flags 2
	//mr
	and	r0

						//hdd.c, line 384
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l135
		add	r7
						// freereg r1
		// Offsets 4420, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	4420
						// (save temp)isreg
	mr	r5
						//save_temp done
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -12
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 102 type 3
						// matchobj comparing flags 102 with 1
						// matchobj comparing flags 102 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	40
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 102 type 3
						// matchobj comparing flags 102 with 102
						// matchobj comparing flags 102 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 102
						// matchobj comparing flags 1 with 2
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
l133: # 
						// allocreg r1

						//hdd.c, line 386
						// (bitwise/arithmetic) 	//ops: 0, 6, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	44
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 2
						// reg r5 - only match against tmp
	mt	r5
	mul	r1
						// (save result) // isreg

						//hdd.c, line 386
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 3
						// (obj to r2) flags 82 type a
						// (prepobj r2)
 						// (prepobj r2)
 						// extern (offset 0)
	.liabs	_hdf
						// extern pe is varadr
	mr	r2
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r2
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//hdd.c, line 386
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	308
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 386
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 4a
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 386
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	32
	ldidx	r6
	cmp	r1
						// freereg r1

						//hdd.c, line 386
	cond	NEQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l137
		add	r7

						//hdd.c, line 388
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, -4
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	32
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

						//hdd.c, line 389
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	add	r4
						// (save result) // isreg
						// allocreg r1

						//hdd.c, line 390
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	306
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1

						//hdd.c, line 390
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 4a
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 390
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	cmp	r4
						// freereg r1

						//hdd.c, line 390
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l140
		add	r7
						// allocreg r1

						//hdd.c, line 392
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -12
		// Real offset of type is 40, isauto 0
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

						//hdd.c, line 393
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	36
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
	.liconst	40
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//hdd.c, line 397
						//pcreltotemp
	.lipcrel	l140
	add	r7
l137: # 

						//hdd.c, line 397
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	32
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
	.liconst	36
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
l140: # 

						//hdd.c, line 384
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	sub	r3
						// (save result) // isreg

						//hdd.c, line 384
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l133
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
						// matchobj comparing flags 1 with 1
	.liconst	44
	addt	r6
	stmpdec	r4
l135: # 
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 102 type 4
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x4
	ldidx	r6
						// (save temp)isreg
	mr	r5
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
						// allocreg r1

						//hdd.c, line 401
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	6
	add	r1
						// (save result) // isreg

						//hdd.c, line 401
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 401
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	240
	and	r1
						// (save result) // isreg

						//hdd.c, line 401
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	40
	ldidx	r6
	or	r1
						// (save result) // isreg

						//hdd.c, line 401
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 401
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	40
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	sgn
	shr	r1
						// (save result) // isreg

						//hdd.c, line 401
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//hdd.c, line 401
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	44
	ldidx	r6
	stdec	r6

						//hdd.c, line 401
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	44
	ldidx	r6
	stdec	r6
						// allocreg r1

						//hdd.c, line 401
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	16
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	add	r1
						// (save result) // isreg

						//hdd.c, line 401
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 401
						// Q1 disposable
						// (a/p push)
						// a: pushed 16, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 401
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 120, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 401
						//call
						//pcreltotemp
	.lipcrel	_WriteTaskFile // extern
	add	r7
						// Flow control - popping 20 + 0 bytes
	.liconst	20
	add	r6
						// freereg r1

						//hdd.c, line 403
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	ldidx	r6

						//hdd.c, line 403
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l192
		add	r7
l187: # 
						// allocreg r1

						//hdd.c, line 405
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	52
	ldidx	r6

						//hdd.c, line 405
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l145
		add	r7

						//hdd.c, line 405
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	48
	ldidx	r6
						// (save temp)store type 3
	st	r6
						//save_temp done

						//hdd.c, line 405
						//pcreltotemp
	.lipcrel	l146
	add	r7
l145: # 

						//hdd.c, line 405
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)store type 3
	st	r6
						//save_temp done
l146: # 

						//hdd.c, line 405
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 82
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//hdd.c, line 406
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 62
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
	.liconst	52
	ldidx	r6

						//hdd.c, line 406
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l148
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 406
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	44
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	4420
	mul	r1
						// (save result) // isreg

						//hdd.c, line 406
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_hdf
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//hdd.c, line 406
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	310
	add	r1
						// (save result) // isreg

						//hdd.c, line 406
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 102
						// matchobj comparing flags 6a with 1
						// matchobj comparing flags 6a with 82
						// deref 
	hlf
	ld	r1
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//hdd.c, line 406
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 82
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	sgn
	cmp	r0

						//hdd.c, line 406
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l148
		add	r7
						// allocreg r1

						//hdd.c, line 407
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
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

						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l148: # 
						// allocreg r1

						//hdd.c, line 409
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 144
		// Real offset of type is 144, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	8
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 409
						//call
						//pcreltotemp
	.lipcrel	_WriteStatus // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//hdd.c, line 410
						//call
						//pcreltotemp
	.lipcrel	_GetFPGAStatus // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//hdd.c, line 410
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//hdd.c, line 410
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	4
	and	r1
						// (save result) // isreg
						// freereg r1

						//hdd.c, line 410
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l193
		add	r7
l188: # 

						//hdd.c, line 410
						//call
						//pcreltotemp
	.lipcrel	_GetFPGAStatus // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//hdd.c, line 410
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//hdd.c, line 410
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	4
	and	r1
						// (save result) // isreg
						// freereg r1

						//hdd.c, line 410
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l188
		add	r7
l193: # 
						// allocreg r1

						//hdd.c, line 413
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	44
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4420
	mul	r1
						// (save result) // isreg

						//hdd.c, line 413
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 5
						// (obj to r4) flags 82 type a
						// (prepobj r4)
 						// (prepobj r4)
 						// extern (offset 0)
	.liabs	_hdf
						// extern pe is varadr
	mr	r4
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r4
						// (save result) // isreg
						// freereg r1

						//hdd.c, line 413
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
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r4
						// (save temp)store type 3
	st	r6
						//save_temp done
						// (bitwise/arithmetic) 	//ops: 7, 0, 3
						// (obj to r2) flags 62 type 3
						// matchobj comparing flags 62 with 62
						// deref 
	//nop
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l154
		add	r7
						// allocreg r1
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
	.lipcrel	l179
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
	.lipcrel	l179
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
	.lipcrel	l179
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
	.lipcrel	l179
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
	.lipcrel	l179
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	123
	sub	r2
						// (save result) // isreg
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l153
		add	r7
						// freereg r1
l154: # 
						// allocreg r1

						//hdd.c, line 416
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	28
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 416
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 6a type 104
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
						// freereg r1

						//hdd.c, line 416
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l157
		add	r7
						// allocreg r1

						//hdd.c, line 418
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//hdd.c, line 420
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
				// flags 2
	mr	r0
	and	r0

						//hdd.c, line 420
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l161
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 420
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	316
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1

						//hdd.c, line 420
						// (bitwise/arithmetic) 	//ops: 6, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r1) flags 6a type 4
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	mr	r1
						// (obj to tmp) flags 42 type 4
						// matchobj comparing flags 42 with 6a
						// reg r5 - only match against tmp
	mt	r5
	add	r1
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	8
	addt	r6
						//sizemod based on type 0x4
	stmpdec	r5

						//hdd.c, line 420
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 4
						// const
	.liconst	0
	sgn
	cmp	r1
						// freereg r1

						//hdd.c, line 420
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l189
		add	r7
l161: # 
						// allocreg r1
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	8
	addt	r6
						//sizemod based on type 0x4
	stmpdec	r5

						//hdd.c, line 420
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	44
	ldidx	r6

						//hdd.c, line 420
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l194
		add	r7
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	8
	addt	r6
						//sizemod based on type 0x4
	stmpdec	r5

						//hdd.c, line 420
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
	cmp	r0

						//hdd.c, line 420
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l194
		add	r7
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
						//sizemod based on type 0x4
	stmpdec	r5

						//hdd.c, line 420
						// (test)
						// (obj to tmp) flags 42 type 4
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//hdd.c, line 420
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l194
		add	r7
l189: # 
		// Offsets 268435431, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// const
	.liconst	268435431
						// (save temp)isreg
	mr	r5
						//save_temp done
l158: # 

						//hdd.c, line 422
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// deref 
	ld	r4
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
	cmp	r0

						//hdd.c, line 422
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l166
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 424
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	316
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 424
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r1) flags 6a type 4
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	mr	r1
						// (obj to tmp) flags 2 type 4
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	4
						//sizemod based on type 0x4
	ldidx	r6
	add	r1
						// (save result) // isreg

						//hdd.c, line 424
						//FIXME convert
						// (convert - reducing type 4 to 104
						//No need to mask - same size

						//hdd.c, line 424
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 424
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 264
		// Real offset of type is 268, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 424
						//call
						//pcreltotemp
	.lipcrel	_HardFileSeek // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//hdd.c, line 425
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	1
	stdec	r6

						//hdd.c, line 425
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

						//hdd.c, line 425
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	4
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 425
						//call
						//pcreltotemp
	.lipcrel	_FileReadEx // extern
	add	r7
						// Flow control - popping 8 + 4 bytes
	.liconst	12
	add	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 427
						//FIXME convert
						// (convert - reducing type 4 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 4
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 8
						//extern deref
						//sizemod based on type 0x4
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//hdd.c, line 427
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_sector_buffer, 20
						//extern deref
						//sizemod based on type 0x104
	ldt
	add	r1
						// (save result) // isreg

						//hdd.c, line 427
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	18
	sub	r1
						// (save result) // isreg

						//hdd.c, line 427
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 4
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 8)
	.liabs	_sector_buffer, 12
						// extern pe not varadr
						//sizemod based on type 0x4
	stmpdec	r1
						// freereg r1

						//hdd.c, line 428
		// Offsets 18, 20
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 20, 0
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 20 with 8
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	12
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	18
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 431
						//pcreltotemp
	.lipcrel	l167
	add	r7
l166: # 
						// allocreg r1

						//hdd.c, line 431
						//FIXME convert
						// (convert - reducing type 4 to 3
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 4
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x4
	ldidx	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//hdd.c, line 431
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

						//hdd.c, line 431
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 240
		// Real offset of type is 244, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	48
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 431
						//call
						//pcreltotemp
	.lipcrel	l15 // Static 
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l167: # 
						// allocreg r1

						//hdd.c, line 432
		// Offsets 16, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	16
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//hdd.c, line 433
		// Offsets 160, 0
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
	.liconst	160
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//hdd.c, line 434
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

						//hdd.c, line 434
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

						//hdd.c, line 434
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

						//hdd.c, line 434
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

						//hdd.c, line 434
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

						//hdd.c, line 435
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
						// freereg r1
l190: # 
						// allocreg r1

						//hdd.c, line 437
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 82 type a
						// (prepobj r1)
 						// (prepobj r1)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	mr	r1
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg

						//hdd.c, line 437
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 260
						// (a/p assign)
						// Dereferencing object...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 501
						// matchobj comparing flags 6a with 42
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// freereg r1

						//hdd.c, line 436
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r2
						// (save result) // isreg

						//hdd.c, line 436
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	512
	sgn
	cmp	r2

						//hdd.c, line 436
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l190
		add	r7
						// allocreg r1

						//hdd.c, line 439
		// Offsets 17, 0
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
	.liconst	17
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//hdd.c, line 440
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 4
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x4
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x4, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//hdd.c, line 441
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
	.liconst	1
	sub	r0
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

						//hdd.c, line 420
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

						//hdd.c, line 420
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l172
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 420
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	316
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1

						//hdd.c, line 420
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r1) flags 6a type 4
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	mr	r1
						// (obj to tmp) flags 2 type 4
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	4
						//sizemod based on type 0x4
	ldidx	r6
	add	r1
						// (save result) // isreg

						//hdd.c, line 420
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
	sgn
	cmp	r1
						// freereg r1

						//hdd.c, line 420
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l158
		add	r7
l172: # 
						// allocreg r1

						//hdd.c, line 420
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	44
	ldidx	r6

						//hdd.c, line 420
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l194
		add	r7

						//hdd.c, line 420
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r4
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
	cmp	r0

						//hdd.c, line 420
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l194
		add	r7

						//hdd.c, line 420
						// (test)
						// (obj to tmp) flags 2 type 4
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x4
	ldidx	r6

						//hdd.c, line 420
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l158
		add	r7
l194: # 
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 102 type 4
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x4
	ldidx	r6
						// (save temp)isreg
	mr	r5
						//save_temp done

						//hdd.c, line 443
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 102
						// var, auto|reg
						// matchobj comparing flags 1 with 102
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6

						//hdd.c, line 443
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l153
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 445
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	316
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 445
						// (bitwise/arithmetic) 	//ops: 6, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r1) flags 6a type 4
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	mr	r1
						// (obj to tmp) flags 42 type 4
						// matchobj comparing flags 42 with 6a
						// reg r5 - only match against tmp
	mt	r5
	add	r1
						// (save result) // isreg

						//hdd.c, line 445
						//FIXME convert
						// (convert - reducing type 4 to 104
						//No need to mask - same size

						//hdd.c, line 445
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 42
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 445
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 280
		// Real offset of type is 284, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 445
						//call
						//pcreltotemp
	.lipcrel	_HardFileSeek // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1
						// allocreg r1

						//hdd.c, line 446
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//hdd.c, line 446
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//hdd.c, line 446
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	stdec	r6
						// allocreg r1

						//hdd.c, line 446
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 446
						//call
						//pcreltotemp
	.lipcrel	_FileReadEx // extern
	add	r7
						// Flow control - popping 8 + 4 bytes
	.liconst	12
	add	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 447
						//FIXME convert
						// (convert - reducing type 3 to 4
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//hdd.c, line 447
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 6, 6
						//Special case - addt
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 4
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	addt	r5
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1

						//hdd.c, line 451
						//pcreltotemp
	.lipcrel	l153
	add	r7
l157: # 
						// allocreg r1

						//hdd.c, line 451
		// Offsets 137, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 204
		// Real offset of type is 204, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	137
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 451
						//call
						//pcreltotemp
	.lipcrel	_WriteStatus // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//hdd.c, line 452
						//pcreltotemp
	.lipcrel	l153
	add	r7
						// freereg r2
l179: # 
						// allocreg r1

						//hdd.c, line 459
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//hdd.c, line 459
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//hdd.c, line 459
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	stdec	r6
						// allocreg r2

						//hdd.c, line 459
						// (bitwise/arithmetic) 	//ops: 5, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	316
	addt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done

						//hdd.c, line 459
						// (bitwise/arithmetic) 	//ops: 6, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r2) flags 6a type 4
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r2
	mr	r2
						// (obj to tmp) flags 42 type 4
						// matchobj comparing flags 42 with 6a
						// reg r5 - only match against tmp
	mt	r5
	add	r2
						// (save result) // isreg
						// allocreg r1

						//hdd.c, line 459
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 4 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 4
						// matchobj comparing flags 4a with 42
						// reg r2 - only match against tmp
	mt	r2
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size
						// freereg r2

						//hdd.c, line 459
						//call
						//pcreltotemp
	.lipcrel	_MMC_ReadMultiple // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 460
						//FIXME convert
						// (convert - reducing type 3 to 4
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//hdd.c, line 460
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 6, 6
						//Special case - addt
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 4
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	addt	r5
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
l153: # 
						// allocreg r2
						// allocreg r1

						//hdd.c, line 464
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	48
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	52
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//hdd.c, line 403
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

						//hdd.c, line 403
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l187
		add	r7
l192: # 

						//hdd.c, line 467
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	36
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x3
	ldt
	cmp	r0

						//hdd.c, line 467
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l185
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 468
		// Offsets 9, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 336
		// Real offset of type is 336, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 468
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_queueevent // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l185: # 
						// allocreg r1

						//hdd.c, line 469
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 1
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l1,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	36
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

	.section	.rodata.24
l131:
	.byte	82
	.byte	101
	.byte	97
	.byte	100
	.byte	77
	.byte	32
	.byte	37
	.byte	108
	.byte	100
	.byte	44
	.byte	32
	.byte	37
	.byte	100
	.byte	0
	.section	.rodata.25
l132:
	.byte	82
	.byte	101
	.byte	97
	.byte	100
	.byte	32
	.byte	32
	.byte	37
	.byte	108
	.byte	100
	.byte	44
	.byte	32
	.byte	37
	.byte	100
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
	.section	.text.26
	.global	_ATA_WriteSectors
_ATA_WriteSectors:
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
						// allocreg r2

						//hdd.c, line 481
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	ldidx	r6
	stdec	r6

						//hdd.c, line 481
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	40
	ldidx	r6
	stdec	r6

						//hdd.c, line 481
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	52
	ldidx	r6
	stdec	r6
						// allocreg r1

						//hdd.c, line 481
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	52
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 481
						//call
						//pcreltotemp
	.lipcrel	_chs2lba // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
	.liconst	12
	add	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 481
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//hdd.c, line 481
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 4
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
						//Saving to reg r3
						// (save temp)isreg
	mr	r3
						//save_temp done
						//No need to mask - same size
						// freereg r1

						//hdd.c, line 482
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_DebugMode
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//hdd.c, line 482
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l199
		add	r7
						// allocreg r1

						//hdd.c, line 482
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	52
	ldidx	r6
	stdec	r6

						//hdd.c, line 482
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 42 type 4
						// matchobj comparing flags 42 with 2
						// reg r3 - only match against tmp
	mt	r3
	stdec	r6

						//hdd.c, line 482
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	64
	ldidx	r6

						//hdd.c, line 482
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l201
		add	r7

						//hdd.c, line 482
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, a
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with 8a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with 8a
						// static
	.liabs	l203,0
						// static pe is varadr
						// (save temp)store type a
	st	r0
						//save_temp done

						//hdd.c, line 482
						//pcreltotemp
	.lipcrel	l202
	add	r7
l201: # 

						//hdd.c, line 482
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, a
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with 8a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 8a
						// matchobj comparing flags 82 with 8a
						// static
	.liabs	l204,0
						// static pe is varadr
						// (save temp)store type a
	st	r0
						//save_temp done
						// freereg r1
l202: # 

						//hdd.c, line 482
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags a type a
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
	stdec	r6

						//hdd.c, line 482
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with a
						// extern (offset 0)
	.liabs	_debugmsg2
						// extern pe is varadr
	stdec	r6

						//hdd.c, line 482
						//call
						//pcreltotemp
	.lipcrel	_sprintf // extern
	add	r7
						// Flow control - popping 16 + 0 bytes
	.liconst	16
	add	r6
						// allocreg r1

						//hdd.c, line 482
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_debugmsg2
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 482
						//call
						//pcreltotemp
	.lipcrel	_DebugMessage // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l199: # 
						// allocreg r1

						//hdd.c, line 483
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	48
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4420
	mul	r1
						// (save result) // isreg

						//hdd.c, line 483
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_hdf
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
						// allocreg r1

						//hdd.c, line 483
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	316
	add	r1
						// (save result) // isreg

						//hdd.c, line 483
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 4, 2, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 6a type 4
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r1
	add	r3
						// (save result) // isreg
						// freereg r1

						//hdd.c, line 487
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	52
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
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//hdd.c, line 487
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

						//hdd.c, line 487
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l207
		add	r7
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 102 type 3
						// matchobj comparing flags 102 with 2
						// matchobj comparing flags 102 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	36
	ldidx	r6
						// (save temp)isreg
	mr	r5
						//save_temp done
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -12
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 102 type 3
						// matchobj comparing flags 102 with 102
						// matchobj comparing flags 102 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 102
						// matchobj comparing flags 1 with 2
	.liconst	44
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
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
						// matchobj comparing flags 102 with 102
						// matchobj comparing flags 102 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 102
						// matchobj comparing flags 1 with 2
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
l205: # 
						// allocreg r1

						//hdd.c, line 489
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
	.liconst	308
	add	r1
						// (save result) // isreg

						//hdd.c, line 489
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 1
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 489
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	cmp	r5
						// freereg r1

						//hdd.c, line 489
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l209
		add	r7

						//hdd.c, line 491
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
						// (save temp)isreg
	mr	r5
						//save_temp done

						//hdd.c, line 492
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	add	r4
						// (save result) // isreg
						// allocreg r1

						//hdd.c, line 493
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	306
	add	r1
						// (save result) // isreg

						//hdd.c, line 493
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 1
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 493
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	cmp	r4
						// freereg r1

						//hdd.c, line 493
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l212
		add	r7
						// allocreg r1

						//hdd.c, line 495
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -12
		// Real offset of type is 44, isauto 0
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

						//hdd.c, line 496
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	40
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
	.liconst	44
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//hdd.c, line 500
						//pcreltotemp
	.lipcrel	l212
	add	r7
l209: # 

						//hdd.c, line 500
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r5
						// (save result) // isreg
l212: # 

						//hdd.c, line 487
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	sub	r2
						// (save result) // isreg

						//hdd.c, line 487
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l205
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
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r4
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	40
	addt	r6
	stmpdec	r5
l207: # 
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
						// allocreg r1

						//hdd.c, line 504
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	6
	add	r1
						// (save result) // isreg

						//hdd.c, line 504
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 504
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	240
	and	r1
						// (save result) // isreg

						//hdd.c, line 504
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	44
	ldidx	r6
	or	r1
						// (save result) // isreg

						//hdd.c, line 504
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 504
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	44
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	sgn
	shr	r1
						// (save result) // isreg

						//hdd.c, line 504
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//hdd.c, line 504
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	48
	ldidx	r6
	stdec	r6

						//hdd.c, line 504
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	48
	ldidx	r6
	stdec	r6
						// allocreg r1

						//hdd.c, line 504
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	16
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	add	r1
						// (save result) // isreg

						//hdd.c, line 504
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 504
						// Q1 disposable
						// (a/p push)
						// a: pushed 16, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 504
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 132
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 504
						//call
						//pcreltotemp
	.lipcrel	_WriteTaskFile // extern
	add	r7
						// Flow control - popping 20 + 0 bytes
	.liconst	20
	add	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 506
		// Offsets 4, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 140
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 506
						//call
						//pcreltotemp
	.lipcrel	_WriteStatus // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//hdd.c, line 508
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 4
						// const
	.liconst	0
	sgn
	cmp	r3

						//hdd.c, line 508
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l214
		add	r7
						// allocreg r1

						//hdd.c, line 509
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
	.liconst	16
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

						//hdd.c, line 509
		// Offsets 0, 48
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 48, 0
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 48 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 48)
	.liabs	_Errors, 48
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
	.liabs	l215,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//hdd.c, line 509
						//FIXME convert
						// (convert - reducing type 4 to 3
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 52)
	.liabs	_Errors, 56
						// extern pe not varadr
						//sizemod based on type 0x3
	stmpdec	r3

						//hdd.c, line 509
		// Offsets 0, 56
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 56, 0
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 56 with 52
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
l214: # 

						//hdd.c, line 511
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// var, auto|reg
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
	.liconst	28
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//hdd.c, line 511
						// (test)
						// (obj to tmp) flags 22 type 104
						// matchobj comparing flags 22 with 62
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 62
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x104
	ldt

						//hdd.c, line 511
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l217
		add	r7

						//hdd.c, line 512
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	0
	sgn
	cmp	r3

						//hdd.c, line 512
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l219
		add	r7

						//hdd.c, line 512
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, a
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
						//sizemod based on type 0x4
	stmpdec	r3

						//hdd.c, line 512
						//pcreltotemp
	.lipcrel	l220
	add	r7
l219: # 

						//hdd.c, line 512
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	0
						// (save temp)store type 4
	st	r0
						//save_temp done
						// freereg r1
l220: # 
						// allocreg r1

						//hdd.c, line 512
						//FIXME convert
						// (convert - reducing type 4 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags a type 4
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x4
	ldidx	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//hdd.c, line 512
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 512
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 188
		// Real offset of type is 192, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	8
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 512
						//call
						//pcreltotemp
	.lipcrel	_HardFileSeek // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l217: # 
						// allocreg r1
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	12
	addt	r6
						//sizemod based on type 0x4
	stmpdec	r3

						//hdd.c, line 514
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	52
	ldidx	r6

						//hdd.c, line 514
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l265
		add	r7
		// Offsets 268435431, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	268435431
						// (save temp)isreg
	mr	r3
						//save_temp done
l221: # 

						//hdd.c, line 516
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	56
	ldidx	r6

						//hdd.c, line 516
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l225
		add	r7

						//hdd.c, line 516
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, a
						// (a/p assign)
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 8a
						// matchobj comparing flags 2 with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	52
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//hdd.c, line 516
						//pcreltotemp
	.lipcrel	l226
	add	r7
l225: # 

						//hdd.c, line 516
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
l226: # 

						//hdd.c, line 516
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r5
						//save_temp done

						//hdd.c, line 517
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	56
	ldidx	r6

						//hdd.c, line 517
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l228
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 517
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	310
	add	r1
						// (save result) // isreg

						//hdd.c, line 517
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 102
						// matchobj comparing flags 6a with 1
						// deref 
	hlf
	ld	r1
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
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

						//hdd.c, line 517
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	16
						//sizemod based on type 0x3
	ldidx	r6
	sgn
	cmp	r0

						//hdd.c, line 517
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l228
		add	r7
						// allocreg r1

						//hdd.c, line 518
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
l228: # 
						// allocreg r1

						//hdd.c, line 520
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 232
		// Real offset of type is 232, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 520
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r5
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
	.liconst	16
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r5

						//hdd.c, line 520
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//hdd.c, line 520
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l266
		add	r7
		// Offsets 268435431, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	268435431
						// (save temp)isreg
	mr	r5
						//save_temp done
l230: # 

						//hdd.c, line 522
						//call
						//pcreltotemp
	.lipcrel	_GetFPGAStatus // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//hdd.c, line 522
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//hdd.c, line 522
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
	and	r1
						// (save result) // isreg
						// freereg r1

						//hdd.c, line 522
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l267
		add	r7
l262: # 

						//hdd.c, line 522
						//call
						//pcreltotemp
	.lipcrel	_GetFPGAStatus // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//hdd.c, line 522
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//hdd.c, line 522
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
	and	r1
						// (save result) // isreg
						// freereg r1

						//hdd.c, line 522
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l262
		add	r7
l267: # 
						// allocreg r1

						//hdd.c, line 523
		// Offsets 16, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	16
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//hdd.c, line 524
		// Offsets 176, 0
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
	.liconst	176
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//hdd.c, line 525
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

						//hdd.c, line 525
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

						//hdd.c, line 525
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

						//hdd.c, line 525
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

						//hdd.c, line 525
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

						//hdd.c, line 526
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
						// freereg r1
l263: # 

						//hdd.c, line 527
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	255
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r1

						//hdd.c, line 527
						// (bitwise/arithmetic) 	//ops: 0, 4, 2
						// (obj to r1) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	mr	r1
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
	add	r1
						// (save result) // isreg

						//hdd.c, line 527
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 260, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 260
		// Real offset of type is 260, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 42
						// deref 
	byt
	ld	r4
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//hdd.c, line 527
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	1
	add	r3
						// (save result) // isreg

						//hdd.c, line 527
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	512
	sgn
	cmp	r3

						//hdd.c, line 527
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l263
		add	r7
						// allocreg r1

						//hdd.c, line 528
		// Offsets 17, 0
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
	.liconst	17
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//hdd.c, line 531
		// Offsets 0, 0
		// Have am? no, no
		// flags 22, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 272
		// Real offset of type is 272, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 22 type 3
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
						// (save temp)isreg
	mr	r2
						//save_temp done
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	1
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l241
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
	.lipcrel	l246
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
	.lipcrel	l246
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
	.lipcrel	l246
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
	.lipcrel	l246
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
	.lipcrel	l246
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	123
	sub	r2
						// (save result) // isreg
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l240
		add	r7
l241: # 

						//hdd.c, line 534
						// (test)
						// (obj to tmp) flags 22 type 104
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x104
	ldt

						//hdd.c, line 534
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l244
		add	r7

						//hdd.c, line 534
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 4
						// matchobj comparing flags 2 with 22
						// var, auto|reg
						// matchobj comparing flags 1 with 22
	.liconst	8
						//sizemod based on type 0x4
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
	sgn
	cmp	r0

						//hdd.c, line 534
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l244
		add	r7
						// freereg r1
						// freereg r3

						//hdd.c, line 536
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
						// allocreg r3

						//hdd.c, line 536
						// (bitwise/arithmetic) 	//ops: 0, 0, 4
						// (obj to r3) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0xa
	ldidx	r6
	mr	r3
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	add	r3
						// (save result) // isreg
						// allocreg r1

						//hdd.c, line 536
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 308
		// Real offset of type is 312, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 536
						//call
						//pcreltotemp
	.lipcrel	_FileWrite // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//hdd.c, line 537
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	1
	stdec	r6

						//hdd.c, line 537
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6
						// allocreg r1

						//hdd.c, line 537
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 332
		// Real offset of type is 344, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r3

						//hdd.c, line 537
						//call
						//pcreltotemp
	.lipcrel	_FileSeek // extern
	add	r7
						// Flow control - popping 8 + 4 bytes
	.liconst	12
	add	r6
						// freereg r1
l244: # 
						// allocreg r3
						// allocreg r1

						//hdd.c, line 539
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 4
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x4
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x4, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//hdd.c, line 540
						//pcreltotemp
	.lipcrel	l240
	add	r7
l246: # 

						//hdd.c, line 546
						// (test)
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_DebugMode
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//hdd.c, line 546
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l252
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 546
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 296
		// Real offset of type is 296, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l253,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 546
						//call
						//pcreltotemp
	.lipcrel	_DebugMessage // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l252: # 

						//hdd.c, line 547
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

						//hdd.c, line 547
						//FIXME convert
						// (convert - reducing type 4 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 4
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	12
						//sizemod based on type 0x4
	ldidx	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//hdd.c, line 547
						//call
						//pcreltotemp
	.lipcrel	_MMC_Write // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//hdd.c, line 548
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 4
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x4
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x4, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
l240: # 

						//hdd.c, line 551
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	52
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
	.liconst	56
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//hdd.c, line 520
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 236
		// Real offset of type is 236, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 520
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r0
				//return 0
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

						//hdd.c, line 520
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//hdd.c, line 520
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l230
		add	r7
l266: # 
		// Offsets 268435431, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// const
	.liconst	268435431
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//hdd.c, line 554
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	52
	ldidx	r6

						//hdd.c, line 554
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l255
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 555
		// Offsets 16, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 244
		// Real offset of type is 244, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 555
						//call
						//pcreltotemp
	.lipcrel	_WriteStatus // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//hdd.c, line 557
						//pcreltotemp
	.lipcrel	l256
	add	r7
l255: # 
						// allocreg r1

						//hdd.c, line 557
		// Offsets 144, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 252
		// Real offset of type is 252, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	144
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 557
						//call
						//pcreltotemp
	.lipcrel	_WriteStatus // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l256: # 
						// allocreg r1

						//hdd.c, line 514
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	52
	ldidx	r6

						//hdd.c, line 514
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l221
		add	r7
l265: # 

						//hdd.c, line 559
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	40
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x3
	ldt
	cmp	r0

						//hdd.c, line 559
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l258
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 560
		// Offsets 9, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 344
		// Real offset of type is 344, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 560
						//call
						//pcreltotemp
	.lipcrel	_drivesounds_queueevent // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l258: # 
						// allocreg r1

						//hdd.c, line 561
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 1
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l1,0
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
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
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

	.section	.rodata.27
l203:
	.byte	87
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	77
	.byte	32
	.byte	37
	.byte	108
	.byte	100
	.byte	44
	.byte	32
	.byte	37
	.byte	100
	.byte	0
	.section	.rodata.28
l204:
	.byte	87
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	32
	.byte	32
	.byte	37
	.byte	108
	.byte	100
	.byte	44
	.byte	32
	.byte	37
	.byte	100
	.byte	0
	.section	.rodata.29
l215:
	.byte	87
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	32
	.byte	116
	.byte	111
	.byte	32
	.byte	97
	.byte	117
	.byte	116
	.byte	111
	.byte	45
	.byte	103
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	101
	.byte	100
	.byte	32
	.byte	82
	.byte	68
	.byte	66
	.byte	33
	.byte	0
	.section	.rodata.2a
l253:
	.byte	87
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	32
	.byte	72
	.byte	68
	.byte	70
	.byte	95
	.byte	67
	.byte	97
	.byte	114
	.byte	100
	.byte	0
	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2b
	.global	_trap
_trap:
	stdec	r6
						// allocreg r1

						//hdd.c, line 567
		// Offsets 116, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	116
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 567
						//call
						//pcreltotemp
	.lipcrel	_putchar // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
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
	.section	.text.2c
	.global	_trap2
_trap2:
	stdec	r6
						// allocreg r1

						//hdd.c, line 572
		// Offsets 84, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	84
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 572
						//call
						//pcreltotemp
	.lipcrel	_putchar // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
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
	.section	.text.2d
	.global	_HandleHDD
_HandleHDD:
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
		// flags 40, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 40 type 103
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r6
						//save_temp done
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
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	268435427
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2
						// allocreg r1

						//hdd.c, line 585
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type 103
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	4
	and	r1
						// (save result) // isreg
						// freereg r1

						//hdd.c, line 585
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l323
		add	r7
						// allocreg r1

						//hdd.c, line 588
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

						//hdd.c, line 589
		// Offsets 128, 0
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
	.liconst	128
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//hdd.c, line 590
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

						//hdd.c, line 591
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

						//hdd.c, line 592
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

						//hdd.c, line 593
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

						//hdd.c, line 594
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

						//hdd.c, line 595
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

						// required value found in tmp
						// (save temp)isreg
	mr	r4
						//save_temp done
l326: # 

						//hdd.c, line 597
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

						//hdd.c, line 597
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r3
						// (save temp)store type 3
	st	r6
						//save_temp done

						//hdd.c, line 598
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

						//hdd.c, line 598
						// (bitwise/arithmetic) 	//ops: 0, 5, 6
						// (obj to r5) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj r5)
 						// (prepobj r5)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l94,0
						// static pe is varadr
	mr	r5
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	add	r5
						// (save result) // isreg

						//hdd.c, line 598
		// Offsets 0, 0
		// Have am? no, no
		// flags 260, 62
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 181
		// Real offset of type is 181, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 42
						// deref 
	byt
	ld	r3
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//hdd.c, line 599
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	6
	cmp	r4

						//hdd.c, line 599
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l282
		add	r7
						// freereg r1
						// freereg r2
						// allocreg r1

						//hdd.c, line 600
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 62 type 101
						// matchobj comparing flags 62 with 1
						// deref 
	byt
	ld	r5
	mr	r1
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	4
	shr	r1
						// (save result) // isreg

						//hdd.c, line 600
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	and	r1
						// (save result) // isreg
						// allocreg r2

						//hdd.c, line 600
						// (bitwise/arithmetic) 	//ops: 7, 0, 3
						// (obj to r2) flags 62 type 3
						// matchobj comparing flags 62 with 1
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

						//hdd.c, line 600
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	shl	r2
						// (save result) // isreg

						//hdd.c, line 600
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r2
						// freereg r1
l282: # 
						// allocreg r2
						// allocreg r1

						//hdd.c, line 596
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r4
						// (save result) // isreg

						//hdd.c, line 596
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	sgn
	cmp	r4

						//hdd.c, line 596
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l326
		add	r7
						// freereg r1

						//hdd.c, line 602
		// Offsets 17, 268435431
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
	.liconst	17
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r1

						//hdd.c, line 606
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	4420
	mul	r1
						// (save result) // isreg

						//hdd.c, line 606
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_hdf
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//hdd.c, line 606
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r1
						// freereg r1

						//hdd.c, line 606
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l284
		add	r7
						// allocreg r1

						//hdd.c, line 607
		// Offsets 145, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 1
	.liconst	145
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 607
						//call
						//pcreltotemp
	.lipcrel	_WriteStatus // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//hdd.c, line 610
						//pcreltotemp
	.lipcrel	l323
	add	r7
						// freereg r2
l284: # 

						//hdd.c, line 611
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l94,3
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done
						// allocreg r1

						//hdd.c, line 612
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l94,5
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 612
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//hdd.c, line 612
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l94,4
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//hdd.c, line 612
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
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
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r2
						// freereg r1
						// allocreg r1

						//hdd.c, line 613
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
	.liabs	l94,6
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 613
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 2
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
	.liconst	15
	and	r0
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
						// freereg r1

						//hdd.c, line 614
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l94,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
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

						//hdd.c, line 615
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

						//hdd.c, line 615
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l286
		add	r7
						// allocreg r2
						// allocreg r1

						//hdd.c, line 615
		// Offsets 256, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	16
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
						// freereg r1
l286: # 

						//hdd.c, line 626
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l94,7
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//hdd.c, line 626
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// reg r2 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	240
	and	r1
						// (save result) // isreg

						//hdd.c, line 626
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	16
	cmp	r1
						// freereg r1

						//hdd.c, line 626
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l288
		add	r7

						//hdd.c, line 627
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6
						// allocreg r1

						//hdd.c, line 627
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 92, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l94,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 627
						//call
						//pcreltotemp
	.lipcrel	l95 // Static 
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//hdd.c, line 628
						//pcreltotemp
	.lipcrel	l313
	add	r7
l288: # 
						// allocreg r1

						//hdd.c, line 628
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	144
	cmp	r2

						//hdd.c, line 628
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l291
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 629
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
						// static
	.liabs	l94,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 629
						//call
						//pcreltotemp
	.lipcrel	l101 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//hdd.c, line 630
						//pcreltotemp
	.lipcrel	l313
	add	r7
l291: # 
						// allocreg r1

						//hdd.c, line 630
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	236
	cmp	r2

						//hdd.c, line 630
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l294
		add	r7
						// freereg r1

						//hdd.c, line 631
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l93,0
						// static pe is varadr
	stdec	r6

						//hdd.c, line 631
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6
						// allocreg r1

						//hdd.c, line 631
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 96
		// Real offset of type is 104, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l94,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 631
						//call
						//pcreltotemp
	.lipcrel	_ATA_IdentifyDevice // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//hdd.c, line 632
						//pcreltotemp
	.lipcrel	l313
	add	r7
l294: # 
						// allocreg r1

						//hdd.c, line 632
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	145
	cmp	r2

						//hdd.c, line 632
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l297
		add	r7
						// freereg r1

						//hdd.c, line 633
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6
						// allocreg r1

						//hdd.c, line 633
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 104, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l94,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 633
						//call
						//pcreltotemp
	.lipcrel	_ATA_Initialize // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//hdd.c, line 634
						//pcreltotemp
	.lipcrel	l313
	add	r7
l297: # 
						// allocreg r1

						//hdd.c, line 634
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	198
	cmp	r2

						//hdd.c, line 634
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l300
		add	r7
						// freereg r1

						//hdd.c, line 635
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6
						// allocreg r1

						//hdd.c, line 635
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 104
		// Real offset of type is 108, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l94,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 635
						//call
						//pcreltotemp
	.lipcrel	_ATA_SetMultipleMode // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//hdd.c, line 636
						//pcreltotemp
	.lipcrel	l313
	add	r7
l300: # 
						// allocreg r1

						//hdd.c, line 636
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	32
	cmp	r2

						//hdd.c, line 636
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l303
		add	r7
						// freereg r1

						//hdd.c, line 637
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	stdec	r6

						//hdd.c, line 637
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//hdd.c, line 637
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//hdd.c, line 637
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//hdd.c, line 637
						// (a/p push)
						// a: pushed 16, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//hdd.c, line 637
						// (a/p push)
						// a: pushed 20, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6
						// allocreg r1

						//hdd.c, line 637
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 108
		// Real offset of type is 132, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l94,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 637
						//call
						//pcreltotemp
	.lipcrel	_ATA_ReadSectors // extern
	add	r7
						// Flow control - popping 24 + 0 bytes
	.liconst	24
	add	r6
						// freereg r1

						//hdd.c, line 638
						//pcreltotemp
	.lipcrel	l313
	add	r7
l303: # 
						// allocreg r1

						//hdd.c, line 638
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	196
	cmp	r2

						//hdd.c, line 638
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l306
		add	r7
						// freereg r1

						//hdd.c, line 639
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	stdec	r6

						//hdd.c, line 639
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//hdd.c, line 639
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//hdd.c, line 639
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//hdd.c, line 639
						// (a/p push)
						// a: pushed 16, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//hdd.c, line 639
						// (a/p push)
						// a: pushed 20, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6
						// allocreg r1

						//hdd.c, line 639
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 112
		// Real offset of type is 136, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l94,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 639
						//call
						//pcreltotemp
	.lipcrel	_ATA_ReadSectors // extern
	add	r7
						// Flow control - popping 24 + 0 bytes
	.liconst	24
	add	r6
						// freereg r1

						//hdd.c, line 640
						//pcreltotemp
	.lipcrel	l313
	add	r7
l306: # 
						// allocreg r1

						//hdd.c, line 640
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	48
	cmp	r2

						//hdd.c, line 640
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l309
		add	r7
						// freereg r1

						//hdd.c, line 641
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	stdec	r6

						//hdd.c, line 641
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//hdd.c, line 641
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//hdd.c, line 641
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//hdd.c, line 641
						// (a/p push)
						// a: pushed 16, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//hdd.c, line 641
						// (a/p push)
						// a: pushed 20, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6
						// allocreg r1

						//hdd.c, line 641
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 116
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l94,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 641
						//call
						//pcreltotemp
	.lipcrel	_ATA_WriteSectors // extern
	add	r7
						// Flow control - popping 24 + 0 bytes
	.liconst	24
	add	r6
						// freereg r1

						//hdd.c, line 642
						//pcreltotemp
	.lipcrel	l313
	add	r7
l309: # 
						// allocreg r1

						//hdd.c, line 642
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	197
	cmp	r2

						//hdd.c, line 642
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l312
		add	r7
						// freereg r1

						//hdd.c, line 643
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	stdec	r6

						//hdd.c, line 643
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//hdd.c, line 643
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//hdd.c, line 643
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//hdd.c, line 643
						// (a/p push)
						// a: pushed 16, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//hdd.c, line 643
						// (a/p push)
						// a: pushed 20, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6
						// allocreg r1

						//hdd.c, line 643
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 120
		// Real offset of type is 144, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l94,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 643
						//call
						//pcreltotemp
	.lipcrel	_ATA_WriteSectors // extern
	add	r7
						// Flow control - popping 24 + 0 bytes
	.liconst	24
	add	r6
						// freereg r1

						//hdd.c, line 644
						//pcreltotemp
	.lipcrel	l313
	add	r7
l312: # 
						// allocreg r1

						//hdd.c, line 645
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l314,0
						// static pe is varadr
	stdec	r6

						//hdd.c, line 645
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)

						//hdd.c, line 647
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l315,0
						// static pe is varadr
	stdec	r6

						//hdd.c, line 647
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 4 bytes
	.liconst	8
	add	r6

						//hdd.c, line 648
		// Offsets 1, 0
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
	.liconst	1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
l327: # 
						// allocreg r1

						//hdd.c, line 649
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 82 type a
						// (prepobj r1)
 						// (prepobj r1)
 						// static
	.liabs	l94,0
						// static pe is varadr
	mr	r1
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	add	r1
						// (save result) // isreg

						//hdd.c, line 649
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

						//hdd.c, line 649
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//hdd.c, line 649
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l320,0
						// static pe is varadr
	stdec	r6

						//hdd.c, line 649
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6

						//hdd.c, line 649
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r4
						// (save result) // isreg

						//hdd.c, line 649
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	7
	sgn
	cmp	r4

						//hdd.c, line 649
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l327
		add	r7
						// allocreg r1

						//hdd.c, line 650
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l94,7
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 650
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//hdd.c, line 650
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l321,0
						// static pe is varadr
	stdec	r6

						//hdd.c, line 650
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 8 bytes (8 in total)
						// allocreg r1

						//hdd.c, line 651
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l94,6
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 651
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

						//hdd.c, line 651
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l94,5
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 651
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

						//hdd.c, line 651
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l94,4
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 651
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

						//hdd.c, line 651
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l94,3
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 651
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

						//hdd.c, line 651
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l94,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 651
						// Q1 disposable
						// (a/p push)
						// a: pushed 16, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 651
		// Offsets 4, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 168
		// Real offset of type is 196, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 651
						//call
						//pcreltotemp
	.lipcrel	_WriteTaskFile // extern
	add	r7
						// Flow control - popping 20 + 8 bytes
	.liconst	28
	add	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 652
		// Offsets 145, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 176
		// Real offset of type is 176, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	145
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 652
						//call
						//pcreltotemp
	.lipcrel	_WriteStatus // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l313: # 
						// allocreg r1

						//hdd.c, line 655
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
	.liconst	444
	cmp	r0

						//hdd.c, line 655
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l323
		add	r7

						//hdd.c, line 655
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	cmp	r0

						//hdd.c, line 655
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l323
		add	r7

						//hdd.c, line 655
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
	.liconst	61
	cmp	r0

						//hdd.c, line 655
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l323
		add	r7

						//hdd.c, line 656
						//call
						//pcreltotemp
	.lipcrel	_trap2 // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
l323: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
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

	.section	.rodata.2e
l314:
	.byte	85
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	32
	.byte	65
	.byte	84
	.byte	65
	.byte	32
	.byte	99
	.byte	111
	.byte	109
	.byte	109
	.byte	97
	.byte	110
	.byte	100
	.byte	13
	.byte	0
	.section	.rodata.2f
l315:
	.byte	73
	.byte	68
	.byte	69
	.byte	58
	.byte	0
	.section	.rodata.30
l320:
	.byte	37
	.byte	48
	.byte	50
	.byte	88
	.byte	46
	.byte	0
	.section	.rodata.31
l321:
	.byte	37
	.byte	48
	.byte	50
	.byte	88
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
	.section	.text.32
	.global	_GetHardfileGeometry
_GetHardfileGeometry:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-36
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
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 102 type 104
						// matchobj comparing flags 102 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	28
						//sizemod based on type 0x104
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
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
						// (obj to tmp) flags 102 type 104
						// matchobj comparing flags 102 with 102
						// var, auto|reg
						// matchobj comparing flags 1 with 102
	.liconst	4
						//sizemod based on type 0x104
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2
						// allocreg r1

						//hdd.c, line 663
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 102
						// const
						// matchobj comparing flags 1 with 102
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done

						//hdd.c, line 665
		// Offsets 63, 0
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

						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	63
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 665
		// Offsets 127, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 8
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 8, 4 with 8, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	127
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 665
		// Offsets 255, 8
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 8, 8
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 8, 8 with 8, 4
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	255
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 665
		// Offsets -1, 12
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 12, 8
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 8, 12 with 8, 8
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	-1
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 666
		// Offsets 65535, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 24, 0 with 8, 12
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	65535
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 669
		// Offsets 0, 0
		// Have am? no, no
		// flags 22, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 3
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
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done
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
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l345
		add	r7
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r1
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l348
		add	r7
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r1
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l349
		add	r7
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r1
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l349
		add	r7
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r1
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l349
		add	r7
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r1
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l349
		add	r7
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	123
	sub	r1
						// (save result) // isreg
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l353
		add	r7

						//hdd.c, line 671
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 62 type a
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	28
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

						//hdd.c, line 671
						// (test)
						// (obj to tmp) flags 22 type 104
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
						//sizemod based on type 0x104
	ldt

						//hdd.c, line 671
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l330
		add	r7
						// freereg r1

						//hdd.c, line 676
						// (bitwise/arithmetic) 	//ops: 0, 0, 6
						// (obj to r5) flags 22 type 104
						// matchobj comparing flags 22 with 22
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 22
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 22
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x104
	ldt
	mr	r5
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	9
	shr	r5
						// (save result) // isreg
						// allocreg r1

						//hdd.c, line 677
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	308
	add	r1
						// (save result) // isreg

						//hdd.c, line 677
						// Z disposable
		// Offsets 32, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 68, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r1

						//hdd.c, line 678
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)isreg
	mr	r3
						//save_temp done

						//hdd.c, line 679
						// (bitwise/arithmetic) 	//ops: 6, 0, 5
						// (obj to r4) flags 42 type 104
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
	mr	r4
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	5
	shr	r4
						// (save result) // isreg

						//hdd.c, line 680
		// Offsets 65534, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	24
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	65534
						// (save temp)store type 4
	st	r0
						//save_temp done

						//hdd.c, line 681
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	cmp	r4

						//hdd.c, line 681
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l379
		add	r7
						// allocreg r1

						//hdd.c, line 681
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 104
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
	.liconst	32
	mul	r1
						// (save result) // isreg

						//hdd.c, line 681
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
	cmp	r1
						// freereg r1

						//hdd.c, line 681
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l382
		add	r7
l379: # 
		// Offsets 32, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	32
						// (save temp)isreg
	mr	r2
						//save_temp done
l336: # 

						//hdd.c, line 683
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	1
	add	r3
						// (save result) // isreg
						// allocreg r1

						//hdd.c, line 684
						// (bitwise/arithmetic) 	//ops: 4, 3, 2
						// (obj to r1) flags 42 type 104
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 240 type 104
						// matchobj comparing flags 240 with 42
						// reg r2 - only match against tmp
	mt	r2
	mul	r1
						// (save result) // isreg

						//hdd.c, line 684
						// Q2 disposable
						//Call division routine
	mt	r1
	stdec	r6
	mt	r2
	stdec	r6
						// (obj to tmp) flags 42 type 104
						// reg r5 - only match against tmp
	mt	r5
	exg	r1
	mr	r2
	.lipcrel	_div_u32byu32
	add	r7
	mt	r0
	mr	r4
	ldinc	r6
	mr	r2
	ldinc	r6
	mr	r1
						// (save result) // isreg
						// freereg r1

						//hdd.c, line 681
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	16
	cmp	r3

						//hdd.c, line 681
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l382
		add	r7
						// allocreg r1

						//hdd.c, line 681
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	65534
	cmp	r4

						//hdd.c, line 681
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l336
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 681
						// (bitwise/arithmetic) 	//ops: 5, 4, 2
						// (obj to r1) flags 42 type 104
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 42
						// reg r3 - only match against tmp
	mt	r3
	mul	r1
						// (save result) // isreg

						//hdd.c, line 681
						// (bitwise/arithmetic) 	//ops: 2, 3, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 104
						// reg r2 - only match against tmp
	mt	r2
	mul	r1
						// (save result) // isreg

						//hdd.c, line 681
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 42 type 104
						// reg r5 - only match against tmp
	mt	r5
	cmp	r1
						// freereg r1

						//hdd.c, line 681
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l336
		add	r7
l382: # 
						// freereg r2
						// allocreg r1

						//hdd.c, line 686
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	306
	add	r1
						// (save result) // isreg

						//hdd.c, line 686
						// Z disposable
						//FIXME convert
						// (convert - reducing type 104 to 102
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r2

						//hdd.c, line 687
						// (bitwise/arithmetic) 	//ops: 5, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	addt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//hdd.c, line 687
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	304
	add	r1
						// (save result) // isreg

						//hdd.c, line 687
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 104 to 102
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r2
						// freereg r1
						// allocreg r1

						//hdd.c, line 689
						// (bitwise/arithmetic) 	//ops: 5, 4, 2
						// (obj to r1) flags 42 type 104
						// matchobj comparing flags 42 with 4a
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 42
						// reg r3 - only match against tmp
	mt	r3
	mul	r1
						// (save result) // isreg

						//hdd.c, line 689
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	32
	mul	r1
						// (save result) // isreg

						//hdd.c, line 689
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 42 type 104
						// reg r5 - only match against tmp
	mt	r5
	cmp	r1
						// freereg r1

						//hdd.c, line 689
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l330
		add	r7
						// allocreg r2
						// allocreg r1

						//hdd.c, line 692
						//pcreltotemp
	.lipcrel	l353
	add	r7
l345: # 

						//hdd.c, line 694
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 62 type a
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	28
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

						//hdd.c, line 694
						// (test)
						// (obj to tmp) flags 22 type 104
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
						//sizemod based on type 0x104
	ldt

						//hdd.c, line 694
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l330
		add	r7

						//hdd.c, line 696
						// (bitwise/arithmetic) 	//ops: 0, 0, 6
						// (obj to r5) flags 22 type 104
						// matchobj comparing flags 22 with 22
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 22
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 22
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x104
	ldt
	mr	r5
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	9
	shr	r5
						// (save result) // isreg

						//hdd.c, line 697
						//pcreltotemp
	.lipcrel	l353
	add	r7
l348: # 

						//hdd.c, line 699
						//call
						//pcreltotemp
	.lipcrel	_MMC_GetCapacity // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//hdd.c, line 699
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r5

						//hdd.c, line 700
						//pcreltotemp
	.lipcrel	l353
	add	r7
						// freereg r1
l349: # 
						// allocreg r1

						//hdd.c, line 705
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	312
	add	r1
						// (save result) // isreg

						//hdd.c, line 705
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 1
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 705
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	16
	mul	r1
						// (save result) // isreg

						//hdd.c, line 705
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_partitions
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//hdd.c, line 705
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	12
	add	r1
						// (save result) // isreg

						//hdd.c, line 705
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 6a type 104
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
l353: # 
						// allocreg r1

						//hdd.c, line 711
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done

						//hdd.c, line 712
						// (address)
						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	mr	r0

						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//hdd.c, line 712
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 22 type 4
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
						//sizemod based on type 0x4
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	0
	sgn
	cmp	r0

						//hdd.c, line 712
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l383
		add	r7
						// freereg r1
l380: # 
						// allocreg r1

						//hdd.c, line 713
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 104
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	4
	mul	r1
						// (save result) // isreg

						//hdd.c, line 713
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	add	r1
						// (save result) // isreg

						//hdd.c, line 713
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 4 to 104
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	32
	addt	r6
	mr	r0

						// (obj to tmp) flags 6a type 4
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 82
						// deref 
	ld	r1
						//Saving to reg r0
						// (save temp)store type 4
	st	r0
						//save_temp done
						// freereg r1

						//hdd.c, line 714
		// Offsets 4, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
	.liconst	4
						// (save temp)isreg
	mr	r3
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
	.liconst	32
	addt	r6
						//sizemod based on type 0x104
	stmpdec	r2
		// Offsets 1048576, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	1048576
						// (save temp)isreg
	mr	r2
						//save_temp done
l358: # 
						// allocreg r1

						//hdd.c, line 716
						// (bitwise/arithmetic) 	//ops: 0, 4, 2
						// (obj to r1) flags 2 type 104
						// var, auto|reg
	.liconst	32
						//sizemod based on type 0x104
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 2
						// reg r3 - only match against tmp
	mt	r3
	mul	r1
						// (save result) // isreg

						//hdd.c, line 716
						// Q2 disposable
						//Call division routine
	mt	r1
	stdec	r6
	mt	r2
	stdec	r6
						// (obj to tmp) flags 42 type 104
						// reg r5 - only match against tmp
	mt	r5
	exg	r1
	mr	r2
	.lipcrel	_div_u32byu32
	add	r7
	mt	r0
	mr	r4
	ldinc	r6
	mr	r2
	ldinc	r6
	mr	r1
						// (save result) // isreg
						// freereg r1

						//hdd.c, line 717
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 240 type 104
						// reg r2 - only match against tmp
	mt	r2
	cmp	r5

						//hdd.c, line 717
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l363
		add	r7
						// allocreg r1

						//hdd.c, line 719
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 240
						// const
						// matchobj comparing flags 1 with 240
	.liconst	1023
	cmp	r4

						//hdd.c, line 719
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l384
		add	r7

						//hdd.c, line 723
						//pcreltotemp
	.lipcrel	l373
	add	r7
l363: # 

						//hdd.c, line 724
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	16383
	cmp	r4

						//hdd.c, line 724
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l384
		add	r7

						//hdd.c, line 726
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	32767
	cmp	r4

						//hdd.c, line 726
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l370
		add	r7

						//hdd.c, line 726
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	5
	cmp	r3

						//hdd.c, line 726
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l384
		add	r7
l370: # 

						//hdd.c, line 728
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 104
						// var, auto|reg
	.liconst	24
						//sizemod based on type 0x104
	ldidx	r6
	cmp	r4

						//hdd.c, line 728
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l384
		add	r7
l373: # 

						//hdd.c, line 715
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	1
	add	r3
						// (save result) // isreg

						//hdd.c, line 715
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	16
	cmp	r3

						//hdd.c, line 715
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l358
		add	r7
						// freereg r1
l384: # 
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 102 type 104
						// var, auto|reg
	.liconst	28
						//sizemod based on type 0x104
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//hdd.c, line 732
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 102
						// const
						// matchobj comparing flags 1 with 102
	.liconst	16
	cmp	r3

						//hdd.c, line 732
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l383
		add	r7
						// freereg r1

						//hdd.c, line 712
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r2
						// (save result) // isreg
						// allocreg r1

						//hdd.c, line 712
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 104
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	4
	mul	r1
						// (save result) // isreg

						//hdd.c, line 712
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	add	r1
						// (save result) // isreg

						//hdd.c, line 712
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 6a type 4
						// matchobj comparing flags 6a with 2
						// deref 
	ld	r1
	mr	r0
						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	0
	sgn
	cmp	r0
						// freereg r1

						//hdd.c, line 712
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l380
		add	r7
l383: # 
						// allocreg r1

						//hdd.c, line 735
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 22 type 3
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	129
	cmp	r0

						//hdd.c, line 735
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l377
		add	r7

						//hdd.c, line 736
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r4
						// (save result) // isreg
						// freereg r1
						// freereg r2
l377: # 
						// allocreg r2

						//hdd.c, line 737
						//FIXME convert
						// (convert - reducing type 104 to 102
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 104
						// reg r4 - only match against tmp
	mt	r4
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// matchobj comparing flags 1 with 42
	.liconst	65535
	and	r2
						// allocreg r1

						//hdd.c, line 737
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	304
	add	r1
						// (save result) // isreg

						//hdd.c, line 737
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 4a, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 218
		// Real offset of type is 218, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 102
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r2
						// freereg r1
						// allocreg r2

						//hdd.c, line 738
						//FIXME convert
						// (convert - reducing type 104 to 102
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 4a
						// reg r3 - only match against tmp
	mt	r3
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// matchobj comparing flags 1 with 42
	.liconst	65535
	and	r2
						// allocreg r1

						//hdd.c, line 738
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	306
	add	r1
						// (save result) // isreg

						//hdd.c, line 738
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 4a, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 224
		// Real offset of type is 224, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 102
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r2
						// freereg r1
						// allocreg r2

						//hdd.c, line 739
						//FIXME convert
						// (convert - reducing type 104 to 102
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	32
						//sizemod based on type 0x104
	ldidx	r6
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// matchobj comparing flags 1 with 2
	.liconst	65535
	and	r2
						// allocreg r1

						//hdd.c, line 739
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	308
	add	r1
						// (save result) // isreg

						//hdd.c, line 739
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 4a, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 230
		// Real offset of type is 230, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 102
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 2
	hlf
	st	r1
						//save_temp done
						// freereg r2
						// freereg r1

						//hdd.c, line 740
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	32
						//sizemod based on type 0x104
	ldidx	r6
	stdec	r6

						//hdd.c, line 740
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 2
						// reg r3 - only match against tmp
	mt	r3
	stdec	r6

						//hdd.c, line 740
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
	mt	r4
	stdec	r6

						//hdd.c, line 740
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 42
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6

						//hdd.c, line 740
						// (a/p push)
						// a: pushed 16, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l378,0
						// static pe is varadr
	stdec	r6

						//hdd.c, line 740
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 20 + 0 bytes
	.liconst	20
	add	r6
l330: # 
						// allocreg r2
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-36
	sub	r6
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.33
l378:
	.byte	84
	.byte	111
	.byte	116
	.byte	97
	.byte	108
	.byte	32
	.byte	115
	.byte	101
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	115
	.byte	58
	.byte	32
	.byte	37
	.byte	100
	.byte	44
	.byte	32
	.byte	99
	.byte	121
	.byte	108
	.byte	58
	.byte	32
	.byte	37
	.byte	100
	.byte	44
	.byte	32
	.byte	104
	.byte	101
	.byte	97
	.byte	100
	.byte	115
	.byte	58
	.byte	32
	.byte	37
	.byte	100
	.byte	44
	.byte	32
	.byte	115
	.byte	101
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	115
	.byte	58
	.byte	32
	.byte	37
	.byte	100
	.byte	10
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
	.section	.text.34
	.global	_BuildHardfileIndex
_BuildHardfileIndex:
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
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//hdd.c, line 747
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 62 type a
						// matchobj comparing flags 62 with 40
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	4
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

						//hdd.c, line 748
						// (bitwise/arithmetic) 	//ops: 7, 0, 6
						// (obj to r5) flags 62 type a
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
	mr	r5
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	320
	add	r5
						// (save result) // isreg

						//hdd.c, line 752
						// (bitwise/arithmetic) 	//ops: 7, 0, 3
						// (obj to r2) flags 62 type a
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r2
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	4416
	add	r2
						// (save result) // isreg

						//hdd.c, line 752
		// Offsets 16, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 132
		// Real offset of type is 132, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	16
						// (save temp)store type 4
	st	r2
						//save_temp done
						// allocreg r1

						//hdd.c, line 753
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r2
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//hdd.c, line 753
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	shl	r0
						// (save result) // isreg
	mt	r0
	mr	r1

						//hdd.c, line 753
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
						//Saving to reg r4
						// (save temp)isreg
	mr	r4
						//save_temp done
						//No need to mask - same size
						// freereg r1
						// allocreg r1

						//hdd.c, line 754
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	28
	add	r1
						// (save result) // isreg

						//hdd.c, line 754
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 4
						// (obj to r3) flags 6a type 104
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r1
	mr	r3
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	10
	shr	r3
						// (save result) // isreg
						// freereg r1

						//hdd.c, line 755
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
	cmp	r4

						//hdd.c, line 755
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l396
		add	r7
l394: # 
						// allocreg r1

						//hdd.c, line 757
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	1
	shl	r4
						// (save result) // isreg

						//hdd.c, line 758
						// (bitwise/arithmetic) 	//ops: 3, 0, 1
						// (obj to r0) flags 62 type 104
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r2
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
	st	r2
	// Volatile, or not int - not caching

						//hdd.c, line 755
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 62
						// reg r3 - only match against tmp
	mt	r3
	cmp	r4

						//hdd.c, line 755
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l394
		add	r7
l396: # 

						//hdd.c, line 761
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done

						//hdd.c, line 762
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
	.liconst	24
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//hdd.c, line 762
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 22 type 104
						// matchobj comparing flags 22 with 62
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 62
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	0
	cmp	r0

						//hdd.c, line 762
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l397
		add	r7
						// freereg r1
l395: # 

						//hdd.c, line 763
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//hdd.c, line 763
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 104
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	9
	shr	r1
						// (save result) // isreg

						//hdd.c, line 763
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

						//hdd.c, line 763
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 80
		// Real offset of type is 88, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 763
						//call
						//pcreltotemp
	.lipcrel	_FileSeek // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 764
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	28
	add	r1
						// (save result) // isreg

						//hdd.c, line 764
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 6a type 104
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r1
						// (save temp)store type 4
	stinc	r5
						//save_temp done
						// freereg r1

						//hdd.c, line 762
						// (bitwise/arithmetic) 	//ops: 4, 5, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 6a
						// reg r4 - only match against tmp
	mt	r4
	add	r3
						// (save result) // isreg

						//hdd.c, line 762
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 22 type 104
						// matchobj comparing flags 22 with 42
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 42
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x104
	ldt
	cmp	r3

						//hdd.c, line 762
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l395
		add	r7
l397: # 
						// allocreg r1
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
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.35
	.global	_HardFileSeek
_HardFileSeek:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-12
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

						//hdd.c, line 770
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	4
	addt	r4
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//hdd.c, line 770
						// (bitwise/arithmetic) 	//ops: 5, 0, 6
						//Special case - addt
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	24
	addt	r4
						// (save temp)isreg
	mr	r5
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
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r5
						// (save temp)store type 4
	st	r6
						//save_temp done

						//hdd.c, line 770
						// (bitwise/arithmetic) 	//ops: 0, 7, 3
						// (obj to r2) flags 2 type 104
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	28
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r6
	xor	r2
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
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

						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_cluster_mask
						//extern deref
						//sizemod based on type 0x104
	ldt
						// (save temp)store type 4
	st	r0
						//save_temp done
						// allocreg r1

						//hdd.c, line 770
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 2 type 104
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x104
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 2
						// matchobj comparing flags 42 with 82
						// reg r2 - only match against tmp
	mt	r2
	and	r1
						// (save result) // isreg
						// freereg r1

						//hdd.c, line 770
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l403
		add	r7
						// allocreg r1

						//hdd.c, line 772
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 62 type 104
						// matchobj comparing flags 62 with 42
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	28
	ldidx	r6
	cmp	r0

						//hdd.c, line 772
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l402
		add	r7

						//hdd.c, line 772
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//hdd.c, line 772
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l406
		add	r7

						//hdd.c, line 772
		// Offsets 7, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	7
						// (save temp)isreg
	mr	r3
						//save_temp done

						//hdd.c, line 772
						//pcreltotemp
	.lipcrel	l407
	add	r7
l406: # 

						//hdd.c, line 772
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
l407: # 
						// allocreg r1

						//hdd.c, line 772
						// (bitwise/arithmetic) 	//ops: 0, 4, 2
						// (obj to r1) flags 2 type 104
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x104
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// reg r3 - only match against tmp
	mt	r3
	shl	r1
						// (save result) // isreg

						//hdd.c, line 772
						// (bitwise/arithmetic) 	//ops: 2, 3, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 4a
						// reg r2 - only match against tmp
	mt	r2
	and	r1
						// (save result) // isreg
						// freereg r1

						//hdd.c, line 772
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l403
		add	r7
						// freereg r2
						// freereg r3
l402: # 
						// allocreg r2

						//hdd.c, line 774
						// (bitwise/arithmetic) 	//ops: 5, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	320
	addt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//hdd.c, line 774
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	4416
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//hdd.c, line 774
						// (bitwise/arithmetic) 	//ops: 2, 0, 4
						// (obj to r3) flags 6a type 104
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	mr	r3
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	9
	sub	r3
						// (save result) // isreg

						//hdd.c, line 774
						// (bitwise/arithmetic) 	//ops: 0, 4, 4
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	28
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 2
						// reg r3 - only match against tmp
	mt	r3
	shr	r0
						// (save result) // isreg
	mt	r0
	mr	r3

						//hdd.c, line 774
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	4
	mul	r3
						// (save result) // isreg

						//hdd.c, line 774
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 4, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type a
						// reg r2 - only match against tmp
	mt	r2
	addt	r3
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//hdd.c, line 774
						// (bitwise/arithmetic) 	//ops: 5, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	32
	addt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done

						//hdd.c, line 774
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 80
		// Real offset of type is 80, isauto 0
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

						//hdd.c, line 775
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r1) flags 6a type 104
						// matchobj comparing flags 6a with 6a
						// deref 
	ld	r1
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	9
	sub	r1
						// (save result) // isreg

						//hdd.c, line 775
						//FIXME convert
						// (convert - reducing type 104 to 3
						//No need to mask - same size

						//hdd.c, line 775
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	-1
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	shl	r0
						// (save result) // isreg
	mt	r0
	mr	r1

						//hdd.c, line 775
						//FIXME convert
						// (convert - reducing type 3 to 104
						//No need to mask - same size

						//hdd.c, line 775
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 104
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	28
	ldidx	r6
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x62
	mt	r0
	st	r5
	// Volatile, or not int - not caching
						// freereg r1
l403: # 
						// allocreg r3
						// allocreg r2

						//hdd.c, line 778
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	0
	stdec	r6

						//hdd.c, line 778
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
	ldidx	r6
	stdec	r6
						// allocreg r1

						//hdd.c, line 778
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 124
		// Real offset of type is 132, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 778
						//call
						//pcreltotemp
	.lipcrel	_FileSeek // extern
	add	r7
						// Deferred popping of 8 bytes (8 in total)
						// freereg r1
						// allocreg r1

						//hdd.c, line 778
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//hdd.c, line 778
						//FIXME convert
						// (convert - reducing type 103 to 101
						// matchobj comparing flags 1 with 4a
	.liconst	255
	and	r1

						//hdd.c, line 778
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 101
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
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
	.section	.text.36
	.global	_OpenHardfile
_OpenHardfile:
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
	.liconst	20
	addt	r6
						//sizemod based on type 0x103
	stmpdec	r1
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//hdd.c, line 785
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
	.liconst	2
	cmp	r0

						//hdd.c, line 785
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l411
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 786
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	26
	mul	r1
						// (save result) // isreg

						//hdd.c, line 786
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 46)
	.liabs	_config, 46
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

						//hdd.c, line 787
						//pcreltotemp
	.lipcrel	l415
	add	r7
l411: # 
						// allocreg r1

						//hdd.c, line 787
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
	.liconst	4
	cmp	r0

						//hdd.c, line 787
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l414
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 788
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	26
	mul	r1
						// (save result) // isreg

						//hdd.c, line 788
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 104)
	.liabs	_config, 104
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

						//hdd.c, line 790
						//pcreltotemp
	.lipcrel	l415
	add	r7
l414: # 
						// allocreg r1

						//hdd.c, line 790
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	0
	mr	r0

						//hdd.c, line 792
						//pcreltotemp
	.lipcrel	l408
	add	r7
l415: # 

						//hdd.c, line 793
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 22 type 101
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
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
 						// var, auto|reg
						// matchobj comparing flags 1 with 22
						// matchobj comparing flags 1 with 22
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// (bitwise/arithmetic) 	//ops: 0, 0, 5
						// (obj to r4) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
	mr	r4
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r4
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l417
		add	r7
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
	.lipcrel	l437
		add	r7
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
	.lipcrel	l438
		add	r7
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
	.lipcrel	l438
		add	r7
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
	.lipcrel	l438
		add	r7
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
	.lipcrel	l438
		add	r7
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	123
	sub	r4
						// (save result) // isreg
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l416
		add	r7
						// freereg r1
						// freereg r2
						// freereg r3
l417: # 
						// allocreg r1

						//hdd.c, line 796
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// var, auto|reg
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4420
	mul	r1
						// (save result) // isreg

						//hdd.c, line 796
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 6
						// (obj to r5) flags 82 type a
						// (prepobj r5)
 						// (prepobj r5)
 						// extern (offset 0)
	.liabs	_hdf
						// extern pe is varadr
	mr	r5
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r5
						// (save result) // isreg
						// freereg r1

						//hdd.c, line 796
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 780
		// Real offset of type is 780, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r5
						//save_temp done
						// allocreg r2

						//hdd.c, line 797
						// (bitwise/arithmetic) 	//ops: 7, 0, 3
						// (obj to r2) flags 62 type a
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r6
	mr	r2
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	2
	add	r2
						// (save result) // isreg
						// allocreg r3

						//hdd.c, line 797
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 64, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l2,0
						// static pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done

						//hdd.c, line 797
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 68, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	//mr
						//save_temp done
						// allocreg r1

						//hdd.c, line 797
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 797
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//hdd.c, line 798
		// Offsets 0, 8
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l419,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// static
	.liabs	l2,8
						// static pe not varadr
	mr	r1
					// Copying 1 words and 0 bytes to filename
					// Copying 1 words to filename
	ldinc	r0
	stinc	r1

						//hdd.c, line 800
						// (test)
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l2,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt

						//hdd.c, line 800
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l416
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//hdd.c, line 802
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	mul	r1
						// (save result) // isreg

						//hdd.c, line 802
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 140)
	.liabs	_config, 140
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
						// allocreg r1

						//hdd.c, line 802
		// Offsets 0, 0
		// Have am? no, no
		// flags 22, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 92
		// Real offset of type is 92, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 104
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
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 802
						//call
						//pcreltotemp
	.lipcrel	_ValidateDirectory // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//hdd.c, line 802
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//hdd.c, line 802
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l423
		add	r7
						// allocreg r1

						//hdd.c, line 804
		// Offsets 0, 0
		// Have am? no, no
		// flags 22, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 112
		// Real offset of type is 112, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 104
						// matchobj comparing flags 22 with 4a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 4a
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 804
						//call
						//pcreltotemp
	.lipcrel	_ChangeDirectory // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//hdd.c, line 805
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l2,0
						// static pe is varadr
	stdec	r6

						//hdd.c, line 805
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	4
	addt	r5
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1
						// allocreg r1

						//hdd.c, line 805
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 132
		// Real offset of type is 136, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 2

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 805
						//call
						//pcreltotemp
	.lipcrel	_FileOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 805
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//hdd.c, line 805
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l416
		add	r7
						// freereg r2
						// freereg r3
						// allocreg r1

						//hdd.c, line 807
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 152
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 807
						//call
						//pcreltotemp
	.lipcrel	_GetHardfileGeometry // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//hdd.c, line 809
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 103
						// var, auto|reg
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	stdec	r6

						//hdd.c, line 809
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l426,0
						// static pe is varadr
	stdec	r6

						//hdd.c, line 809
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 8 bytes (8 in total)
						// allocreg r1

						//hdd.c, line 810
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	12
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 810
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	stdec	r6
						// freereg r1

						//hdd.c, line 810
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	20
						//sizemod based on type 0xa
	ldidx	r6
	stdec	r6

						//hdd.c, line 810
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l427,0
						// static pe is varadr
	stdec	r6

						//hdd.c, line 810
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 12 bytes (20 in total)
						// allocreg r1

						//hdd.c, line 811
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	28
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done
		// Offsets 0, 0
		// Have am? no, no
		// flags 6a, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 724
		// Real offset of type is 744, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 104
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//hdd.c, line 811
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						// (obj to r2) flags 4a type 104
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	mr	r2
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	20
	shr	r2
						// (save result) // isreg

						//hdd.c, line 811
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	stdec	r6
						// freereg r2

						//hdd.c, line 811
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//hdd.c, line 811
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l428,0
						// static pe is varadr
	stdec	r6

						//hdd.c, line 811
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 12 bytes (32 in total)

						//hdd.c, line 812
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	36
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	308
	addt	r5
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1
						// allocreg r1

						//hdd.c, line 812
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 102
						// matchobj comparing flags 22 with 2
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
	.liconst	36
	ldidx	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 812
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 22
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//hdd.c, line 812
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	48
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	306
	addt	r5
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1
						// allocreg r1

						//hdd.c, line 812
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 102
						// matchobj comparing flags 22 with 2
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
	.liconst	48
	ldidx	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 812
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 22
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r3

						//hdd.c, line 812
						// (bitwise/arithmetic) 	//ops: 6, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	304
	addt	r5
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//hdd.c, line 812
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 4a
						// deref 
	hlf
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 812
						// Q1 disposable
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//hdd.c, line 812
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l429,0
						// static pe is varadr
	stdec	r6

						//hdd.c, line 812
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 16 bytes (48 in total)
						// allocreg r1

						//hdd.c, line 813
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// deref 
	hlf
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r3
						// allocreg r2

						//hdd.c, line 813
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 22 type 102
						// matchobj comparing flags 22 with 6a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 6a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 6a
	.liconst	60
	ldidx	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//hdd.c, line 813
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 22
						// reg r2 - only match against tmp
	//mt
	mul	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//hdd.c, line 813
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 22 type 102
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// var FIXME - deref?
						// reg - auto
	.liconst	52
	ldidx	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//hdd.c, line 813
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 22
						// reg r2 - only match against tmp
	//mt
	mul	r1
						// (save result) // isreg
						// freereg r2

						//hdd.c, line 813
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	11
	shr	r1
						// (save result) // isreg

						//hdd.c, line 813
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//hdd.c, line 813
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l430,0
						// static pe is varadr
	stdec	r6

						//hdd.c, line 813
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 8 bytes (56 in total)
						// allocreg r1

						//hdd.c, line 815
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 352
		// Real offset of type is 408, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 815
						//call
						//pcreltotemp
	.lipcrel	_GetTimer // extern
	add	r7
						// Deferred popping of 0 bytes (56 in total)
						// freereg r1
						// allocreg r3

						//hdd.c, line 815
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r3
						// allocreg r1

						//hdd.c, line 816
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 372
		// Real offset of type is 428, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 816
						//call
						//pcreltotemp
	.lipcrel	_BuildHardfileIndex // extern
	add	r7
						// Deferred popping of 0 bytes (56 in total)
						// freereg r1
						// allocreg r1

						//hdd.c, line 817
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 380
		// Real offset of type is 436, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 817
						//call
						//pcreltotemp
	.lipcrel	_GetTimer // extern
	add	r7
						// Deferred popping of 0 bytes (56 in total)
						// freereg r1
						// allocreg r1

						//hdd.c, line 817
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//hdd.c, line 817
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 4, 4
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 4a type 104
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mr	r0
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 4a
						// reg r3 - only match against tmp
	mt	r3
	sub	r0
						// (save result) // isreg
	mt	r0
	mr	r3
						// freereg r1
						// allocreg r1

						//hdd.c, line 818
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 4a type 104
						// matchobj comparing flags 4a with 4a
						// reg r3 - only match against tmp
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	16
	shr	r1
						// (save result) // isreg
						// freereg r3

						//hdd.c, line 818
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//hdd.c, line 818
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l431,0
						// static pe is varadr
	stdec	r6

						//hdd.c, line 818
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 8 + 56 bytes
	.liconst	64
	add	r6
						// allocreg r1

						//hdd.c, line 820
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

						//hdd.c, line 820
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	128
	and	r1
						// (save result) // isreg
						// freereg r1

						//hdd.c, line 820
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l433
		add	r7
						// allocreg r3
						// allocreg r2

						//hdd.c, line 821
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 22 type 102
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
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//hdd.c, line 821
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 102
						// matchobj comparing flags 22 with 22
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 22
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 22
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 821
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 22
						// reg r1 - only match against tmp
	//mt
	mul	r2
						// (save result) // isreg
						// freereg r1

						//hdd.c, line 821
						// (minus)
						// (obj to r2) flags 4a type 3
						// reg r2 - only match against tmp
	.liconst	0
	exg r2
	sub r2
						// (save result) // isreg
						// allocreg r1

						//hdd.c, line 821
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	316
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 821
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 4
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 4
	st	r1
						//save_temp done
						// freereg r2
						// freereg r1

						//hdd.c, line 823
						//pcreltotemp
	.lipcrel	l434
	add	r7
l433: # 
						// allocreg r2
						// allocreg r1

						//hdd.c, line 823
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	316
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 823
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 472
		// Real offset of type is 472, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 4
	st	r1
						//save_temp done
						// freereg r1
l434: # 
						// allocreg r1

						//hdd.c, line 825
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

						//hdd.c, line 825
						// Z disposable
		// Offsets 1, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 476
		// Real offset of type is 476, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//hdd.c, line 826
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	mr	r0
				//return 0

						//hdd.c, line 827
						//pcreltotemp
	.lipcrel	l408
	add	r7
l423: # 
						// allocreg r1

						//hdd.c, line 831
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

						//hdd.c, line 831
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
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//hdd.c, line 832
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
	.liconst	16
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

						//hdd.c, line 832
		// Offsets 0, 48
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 48, 0
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 48 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 48)
	.liabs	_Errors, 48
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
	.liabs	l436,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//hdd.c, line 832
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82

						// required value found in r0
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
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x104
	ldt
						//Saving to reg r0
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//hdd.c, line 832
		// Offsets 0, 56
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 56, 0
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 22
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 22
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 22
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//hdd.c, line 835
						//pcreltotemp
	.lipcrel	l416
	add	r7
						// freereg r2
l437: # 
						// allocreg r1

						//hdd.c, line 837
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// var, auto|reg
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4420
	mul	r1
						// (save result) // isreg

						//hdd.c, line 837
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_hdf
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//hdd.c, line 837
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 644
		// Real offset of type is 644, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	2
						// (save temp)store type 3
	st	r1
						//save_temp done
						// allocreg r2

						//hdd.c, line 838
						// (bitwise/arithmetic) 	//ops: 7, 0, 3
						// (obj to r2) flags 62 type a
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r2
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
	add	r2
						// (save result) // isreg

						//hdd.c, line 838
						// Z disposable
		// Offsets 1, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 88, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r2
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// allocreg r2

						//hdd.c, line 839
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	28
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//hdd.c, line 839
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 104
		// Real offset of type is 104, isauto 0
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
						// allocreg r2

						//hdd.c, line 840
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	316
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//hdd.c, line 840
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 116
		// Real offset of type is 116, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 4
	st	r2
						//save_temp done
						// freereg r2

						//hdd.c, line 841
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 132
		// Real offset of type is 132, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//hdd.c, line 841
						//call
						//pcreltotemp
	.lipcrel	_GetHardfileGeometry // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//hdd.c, line 842
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	1
	mr	r0

						//hdd.c, line 843
						//pcreltotemp
	.lipcrel	l408
	add	r7
						// freereg r3
l438: # 
						// allocreg r1

						//hdd.c, line 848
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// var, auto|reg
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4420
	mul	r1
						// (save result) // isreg

						//hdd.c, line 848
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_hdf
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//hdd.c, line 848
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 656
		// Real offset of type is 656, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r1
						//save_temp done
						// allocreg r2

						//hdd.c, line 849
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r2
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	3
	sub	r2
						// (save result) // isreg
						// allocreg r3

						//hdd.c, line 849
						// (bitwise/arithmetic) 	//ops: 2, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	312
	addt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done

						//hdd.c, line 849
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 102
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 2
	hlf
	st	r3
						//save_temp done
						// freereg r2
						// allocreg r2

						//hdd.c, line 850
						// (bitwise/arithmetic) 	//ops: 7, 0, 3
						// (obj to r2) flags 62 type a
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r6
	mr	r2
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
	add	r2
						// (save result) // isreg

						//hdd.c, line 850
						// Z disposable
		// Offsets 1, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 176
		// Real offset of type is 176, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r2
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// allocreg r2

						//hdd.c, line 851
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	28
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//hdd.c, line 851
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 192
		// Real offset of type is 192, isauto 0
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

						//hdd.c, line 852
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 1
						// deref 
	hlf
	ld	r3
						// (save temp)isreg
	mr	r3
						//save_temp done

						//hdd.c, line 852
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	16
	mul	r3
						// (save result) // isreg

						//hdd.c, line 852
						// (bitwise/arithmetic) 	//ops: 0, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_partitions
						// extern pe is varadr
	add	r3
						// (save result) // isreg

						//hdd.c, line 852
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
	add	r3
						// (save result) // isreg
						// allocreg r2

						//hdd.c, line 852
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	316
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//hdd.c, line 852
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 104 to 4
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 104
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r3
						//Saving to reg r0
						// (save temp)store type 4
	st	r2
						//save_temp done
						// freereg r3
						// freereg r2

						//hdd.c, line 853
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 252
		// Real offset of type is 252, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//hdd.c, line 853
						//call
						//pcreltotemp
	.lipcrel	_GetHardfileGeometry // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//hdd.c, line 854
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	1
	mr	r0

						//hdd.c, line 855
						//pcreltotemp
	.lipcrel	l408
	add	r7
l416: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//hdd.c, line 857
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

						//hdd.c, line 857
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 480
		// Real offset of type is 480, isauto 0
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

						//hdd.c, line 858
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	mr	r0
				//return 0
l408: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
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

	.section	.rodata.37
l426:
	.byte	72
	.byte	65
	.byte	82
	.byte	68
	.byte	70
	.byte	73
	.byte	76
	.byte	69
	.byte	32
	.byte	37
	.byte	100
	.byte	58
	.byte	13
	.byte	0
	.section	.rodata.38
l427:
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	58
	.byte	32
	.byte	34
	.byte	37
	.byte	46
	.byte	56
	.byte	115
	.byte	46
	.byte	37
	.byte	46
	.byte	51
	.byte	115
	.byte	34
	.byte	13
	.byte	0
	.section	.rodata.39
l428:
	.byte	115
	.byte	105
	.byte	122
	.byte	101
	.byte	58
	.byte	32
	.byte	37
	.byte	108
	.byte	117
	.byte	32
	.byte	40
	.byte	37
	.byte	108
	.byte	117
	.byte	32
	.byte	77
	.byte	66
	.byte	41
	.byte	13
	.byte	0
	.section	.rodata.3a
l429:
	.byte	67
	.byte	72
	.byte	83
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
	.byte	0
	.section	.rodata.3b
l430:
	.byte	32
	.byte	40
	.byte	37
	.byte	108
	.byte	117
	.byte	32
	.byte	77
	.byte	66
	.byte	41
	.byte	13
	.byte	0
	.section	.rodata.3c
l431:
	.byte	72
	.byte	97
	.byte	114
	.byte	100
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	105
	.byte	110
	.byte	100
	.byte	101
	.byte	120
	.byte	101
	.byte	100
	.byte	32
	.byte	105
	.byte	110
	.byte	32
	.byte	37
	.byte	108
	.byte	117
	.byte	32
	.byte	109
	.byte	115
	.byte	13
	.byte	0
	.section	.rodata.3d
l436:
	.byte	66
	.byte	97
	.byte	100
	.byte	32
	.byte	104
	.byte	97
	.byte	114
	.byte	100
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	100
	.byte	105
	.byte	114
	.byte	101
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	121
	.byte	0
	.section	.rodata.3e
l419:
	.byte	72
	.byte	68
	.byte	70
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
	.section	.text.3f
	.global	_GetHDFFileType
_GetHDFFileType:
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
		// Offsets 83, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	83
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//hdd.c, line 866
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6
						// allocreg r1

						//hdd.c, line 866
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// extern (offset 0)
	.liabs	_rdbfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 866
						//call
						//pcreltotemp
	.lipcrel	_FileOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//hdd.c, line 866
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//hdd.c, line 866
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l445
		add	r7
						// allocreg r1

						//hdd.c, line 869
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_DebugMode
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//hdd.c, line 869
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l447
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 869
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l448,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 869
						//call
						//pcreltotemp
	.lipcrel	_DebugMessage // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l447: # 
						// allocreg r1

						//hdd.c, line 870
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
		// Offsets 70, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	70
						// (save temp)isreg
	mr	r5
						//save_temp done
l449: # 

						//hdd.c, line 872
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

						//hdd.c, line 872
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 28, isauto 0
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
	.liabs	_rdbfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 872
						//call
						//pcreltotemp
	.lipcrel	_FileRead // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//hdd.c, line 873
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	1
	stdec	r6

						//hdd.c, line 873
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	512
	stdec	r6
						// allocreg r1

						//hdd.c, line 873
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_rdbfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 873
						//call
						//pcreltotemp
	.lipcrel	_FileSeek // extern
	add	r7
						// Flow control - popping 8 + 4 bytes
	.liconst	12
	add	r6
						// freereg r1

						//hdd.c, line 874
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//hdd.c, line 874
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	82
	cmp	r2

						//hdd.c, line 874
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l454
		add	r7
						// allocreg r1

						//hdd.c, line 874
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 1
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 874
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	68
	cmp	r1
						// freereg r1

						//hdd.c, line 874
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l454
		add	r7
						// allocreg r1

						//hdd.c, line 874
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 2
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 874
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 2
						// reg r3 - only match against tmp
	mt	r3
	cmp	r1
						// freereg r1

						//hdd.c, line 874
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l454
		add	r7
						// allocreg r1

						//hdd.c, line 874
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 240
						// extern
	.liabs	_sector_buffer, 3
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 874
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	75
	cmp	r1
						// freereg r1

						//hdd.c, line 874
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l454
		add	r7
						// allocreg r1

						//hdd.c, line 875
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	mr	r0

						//hdd.c, line 876
						//pcreltotemp
	.lipcrel	l442
	add	r7
l454: # 

						//hdd.c, line 876
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	68
	cmp	r2

						//hdd.c, line 876
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l459
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 876
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 1
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 876
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	79
	cmp	r1
						// freereg r1

						//hdd.c, line 876
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l459
		add	r7
						// allocreg r1

						//hdd.c, line 876
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 2
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 876
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 2
						// reg r3 - only match against tmp
	mt	r3
	cmp	r1
						// freereg r1

						//hdd.c, line 876
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l459
		add	r7
						// allocreg r1

						//hdd.c, line 877
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 240
						// const
						// matchobj comparing flags 1 with 240
	.liconst	3
	mr	r0

						//hdd.c, line 878
						//pcreltotemp
	.lipcrel	l442
	add	r7
l459: # 

						//hdd.c, line 878
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	80
	cmp	r2

						//hdd.c, line 878
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l463
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 878
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 1
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 878
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 2
						// reg r5 - only match against tmp
	mt	r5
	cmp	r1
						// freereg r1

						//hdd.c, line 878
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l463
		add	r7
						// allocreg r1

						//hdd.c, line 878
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 240
						// extern
	.liabs	_sector_buffer, 2
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 878
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 2
						// reg r3 - only match against tmp
	mt	r3
	cmp	r1
						// freereg r1

						//hdd.c, line 878
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l463
		add	r7
						// allocreg r1

						//hdd.c, line 879
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 240
						// const
						// matchobj comparing flags 1 with 240
	.liconst	3
	mr	r0

						//hdd.c, line 880
						//pcreltotemp
	.lipcrel	l442
	add	r7
l463: # 

						//hdd.c, line 880
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 240 type 3
						// reg r3 - only match against tmp
	mt	r3
	cmp	r2

						//hdd.c, line 880
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l467
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 880
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 240
						// extern
	.liabs	_sector_buffer, 1
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 880
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 2
						// reg r5 - only match against tmp
	mt	r5
	cmp	r1
						// freereg r1

						//hdd.c, line 880
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l467
		add	r7
						// allocreg r1

						//hdd.c, line 880
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 240
						// extern
	.liabs	_sector_buffer, 2
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//hdd.c, line 880
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 2
						// reg r3 - only match against tmp
	mt	r3
	cmp	r1
						// freereg r1

						//hdd.c, line 880
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l467
		add	r7
						// allocreg r1

						//hdd.c, line 881
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 240
						// const
						// matchobj comparing flags 1 with 240
	.liconst	3
	mr	r0

						//hdd.c, line 882
						//pcreltotemp
	.lipcrel	l442
	add	r7
l467: # 

						//hdd.c, line 871
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r4
						// (save result) // isreg

						//hdd.c, line 871
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	16
	sgn
	cmp	r4

						//hdd.c, line 871
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l449
		add	r7
						// freereg r1
						// allocreg r1

						//hdd.c, line 883
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0

						//hdd.c, line 884
						//pcreltotemp
	.lipcrel	l442
	add	r7
l445: # 

						//hdd.c, line 885
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	1
	mr	r0
l442: # 
						// freereg r1
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

	.section	.rodata.40
l448:
	.byte	72
	.byte	117
	.byte	110
	.byte	116
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	102
	.byte	111
	.byte	114
	.byte	32
	.byte	82
	.byte	68
	.byte	66
	.byte	46
	.byte	46
	.byte	46
	.byte	0
	.section	.bss.41
	.global	_debugmsg
	.comm	_debugmsg,40
	.section	.bss.42
	.global	_debugmsg2
	.comm	_debugmsg2,40
	.section	.bss.43
	.align	4
	.global	_hdf
	.comm	_hdf,17680
	.section	.bss.44
	.align	4
	.global	_rdbfile
	.comm	_rdbfile,300
	.section	.bss.45
	.align	4
	.lcomm	l1,4
	.section	.bss.46
	.lcomm	l2,12
	.section	.bss.47
	.align	2
	.lcomm	l93,512
	.section	.bss.48
	.lcomm	l94,8
