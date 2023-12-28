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
	.global	_PatchKick1xMemoryDetection
_PatchKick1xMemoryDetection:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-4
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

						//fpga.c, line 61
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	24
	addt	r4
						// (save temp)store type a
	st	r6
						//save_temp done
						// allocreg r2

						//fpga.c, line 61
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//fpga.c, line 61
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
						// matchobj comparing flags 82 with 62
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 62
						// static
	.liabs	l5,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//fpga.c, line 61
		// Offsets 24, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	24
						// (save temp)isreg
	mr	r3
						//save_temp done

						//fpga.c, line 61
						//call
						//pcreltotemp
	.lipcrel	___strncmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//fpga.c, line 61
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//fpga.c, line 61
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l4
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//fpga.c, line 62
		// Offsets 50, 13
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 13, 0
		// Real offset of type is 13, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 13)
	.liabs	_kick1xfoundstr, 13
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	50
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fpga.c, line 64
						//pcreltotemp
	.lipcrel	l6
	add	r7
						// freereg r1
						// freereg r2
						// freereg r3
l4: # 
						// allocreg r2

						//fpga.c, line 66
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type a
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//fpga.c, line 66
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 62
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 62
						// static
	.liabs	l9,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//fpga.c, line 66
		// Offsets 23, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 64, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	23
						// (save temp)isreg
	mr	r3
						//save_temp done

						//fpga.c, line 66
						//call
						//pcreltotemp
	.lipcrel	___strncmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//fpga.c, line 66
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//fpga.c, line 66
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l12
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//fpga.c, line 67
		// Offsets 51, 13
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 13, 0
		// Real offset of type is 13, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 13)
	.liabs	_kick1xfoundstr, 13
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	51
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
l6: # 

						//fpga.c, line 63
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_kickfoundstr
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_kick1xfoundstr
						// extern pe is varadr
						// (save temp)store type a
	st	r0
						//save_temp done

						//fpga.c, line 75
						// (bitwise/arithmetic) 	//ops: 5, 0, 6
						//Special case - addt
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	340
	addt	r4
						// (save temp)isreg
	mr	r5
						//save_temp done
						// matchobj comparing flags 42 with 42
						// Obsoleting t1
						// allocreg r1

						//fpga.c, line 75
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 42
						// deref 
	byt
	ld	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 75
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	102
	cmp	r1
						// freereg r1

						//fpga.c, line 75
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l12
		add	r7
						// allocreg r1

						//fpga.c, line 75
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	341
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 75
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

						//fpga.c, line 75
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	120
	cmp	r1
						// freereg r1

						//fpga.c, line 75
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l12
		add	r7
						// allocreg r1

						//fpga.c, line 76
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_applypatchstr
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_applymemdetectionpatchstr
						// extern pe is varadr
						// (save temp)store type a
	st	r0
						//save_temp done

						//fpga.c, line 77
						// Z disposable
		// Offsets 96, 0
		// Have am? no, yes
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 96
		// Real offset of type is 96, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	96
						// (save temp)store type 1
	stbinc	r5
						//Disposable, postinc doesn't matter.
						//save_temp done
l12: # 
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

	.section	.rodata.1
l5:
	.byte	101
	.byte	120
	.byte	101
	.byte	99
	.byte	32
	.byte	51
	.byte	51
	.byte	46
	.byte	49
	.byte	57
	.byte	50
	.byte	32
	.byte	40
	.byte	56
	.byte	32
	.byte	79
	.byte	99
	.byte	116
	.byte	32
	.byte	49
	.byte	57
	.byte	56
	.byte	54
	.byte	41
	.byte	0
	.section	.rodata.2
l9:
	.byte	101
	.byte	120
	.byte	101
	.byte	99
	.byte	32
	.byte	51
	.byte	52
	.byte	46
	.byte	50
	.byte	32
	.byte	40
	.byte	50
	.byte	56
	.byte	32
	.byte	79
	.byte	99
	.byte	116
	.byte	32
	.byte	49
	.byte	57
	.byte	56
	.byte	55
	.byte	41
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
	.section	.text.3
	.global	_SendFileV2
_SendFileV2:
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

						//fpga.c, line 89
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done

						//fpga.c, line 91
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
	.liabs	_checksum_pre
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

						//fpga.c, line 94
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
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
	.liconst	1
	sgn
	shr	r1
						// (save result) // isreg

						//fpga.c, line 94
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//fpga.c, line 94
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l16,0
						// static pe is varadr
	stdec	r6

						//fpga.c, line 94
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 8 bytes (8 in total)

						//fpga.c, line 95
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l17,0
						// static pe is varadr
	stdec	r6

						//fpga.c, line 95
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 8 bytes
	.liconst	12
	add	r6

						//fpga.c, line 96
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	36
	ldidx	r6

						//fpga.c, line 96
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l19
		add	r7

						//fpga.c, line 98
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	11
	stdec	r6

						//fpga.c, line 98
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

						//fpga.c, line 98
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 98
						//call
						//pcreltotemp
	.lipcrel	_RARead // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
l19: # 
						// allocreg r1

						//fpga.c, line 101
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

						//fpga.c, line 101
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	44
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
	sgn
	cmp	r0

						//fpga.c, line 101
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l46
		add	r7
						// freereg r1
l44: # 
						// allocreg r1

						//fpga.c, line 102
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	512
	mul	r1
						// (save result) // isreg

						//fpga.c, line 102
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	40
	ldidx	r6
	add	r1
						// (save result) // isreg

						//fpga.c, line 102
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8388607
	and	r1
						// (save result) // isreg

						//fpga.c, line 102
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	6815744
	xor	r1
						// (save result) // isreg

						//fpga.c, line 102
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to a
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type a
	st	r6
						//save_temp done
						// freereg r1
						// allocreg r1

						//fpga.c, line 103
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 4a
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	31
	and	r1
						// (save result) // isreg
						// freereg r1

						//fpga.c, line 103
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l25
		add	r7
						// allocreg r1

						//fpga.c, line 103
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l26,0
						// static pe is varadr
	stdec	r6

						//fpga.c, line 103
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l25: # 

						//fpga.c, line 104
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	512
	stdec	r6

						//fpga.c, line 104
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	stdec	r6
						// allocreg r1

						//fpga.c, line 104
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 72, isauto 0
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

						//fpga.c, line 104
						//call
						//pcreltotemp
	.lipcrel	_RARead // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
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
	.liconst	12
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r4

						//fpga.c, line 105
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	36
	ldidx	r6

						//fpga.c, line 105
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l47
		add	r7
						// allocreg r1

						//fpga.c, line 107
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
	.liconst	12
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r4
						// freereg r1
l45: # 
						// allocreg r1

						//fpga.c, line 108
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
	add	r1
						// (save result) // isreg
						// allocreg r3

						//fpga.c, line 108
						// (bitwise/arithmetic) 	//ops: 0, 6, 4
						// (obj to r3) flags 2 type a
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	32
	ldidx	r6
	mr	r3
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 2
						// reg r5 - only match against tmp
	mt	r5
	add	r3
						// (save result) // isreg

						//fpga.c, line 108
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r5
						// (save result) // isreg
						// allocreg r2

						//fpga.c, line 108
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

						//fpga.c, line 108
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 6a
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r3
						//save_temp done

						//fpga.c, line 108
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

						//fpga.c, line 108
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

						//fpga.c, line 109
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	36
	ldidx	r6
						//Saving to reg r4
						// (save temp)isreg
	mr	r4
						//save_temp done
						//No need to mask - same size

						//fpga.c, line 109
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	//mt
	cmp	r5

						//fpga.c, line 109
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l34
		add	r7
						// allocreg r1

						//fpga.c, line 109
						// (bitwise/arithmetic) 	//ops: 6, 5, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
	sub	r5
						// (save result) // isreg
l34: # 

						//fpga.c, line 107
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

						//fpga.c, line 107
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	512
	sgn
	cmp	r0

						//fpga.c, line 107
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l45
		add	r7
						// freereg r1
l47: # 
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 102 type 3
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done

						//fpga.c, line 112
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 102
						// const
						// matchobj comparing flags 1 with 102
	.liconst	512
	stdec	r6
						// allocreg r1

						//fpga.c, line 112
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 76
		// Real offset of type is 80, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 112
						//call
						//pcreltotemp
	.lipcrel	_CheckSum // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//fpga.c, line 112
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//fpga.c, line 112
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_checksum_pre
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_checksum_pre, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//fpga.c, line 115
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_config, 100
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//fpga.c, line 115
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l36
		add	r7
						// allocreg r1

						//fpga.c, line 115
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//fpga.c, line 115
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l35
		add	r7

						//fpga.c, line 115
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 2
	.liconst	512
	cmp	r4

						//fpga.c, line 115
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l36
		add	r7
						// freereg r1
l35: # 

						//fpga.c, line 116
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_kickfoundstr
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

						//fpga.c, line 117
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
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_applypatchstr
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
						// allocreg r1

						//fpga.c, line 118
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 92
		// Real offset of type is 92, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 118
						//call
						//pcreltotemp
	.lipcrel	_PatchKick1xMemoryDetection // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l36: # 
						// allocreg r1

						//fpga.c, line 101
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r4
						// (save result) // isreg

						//fpga.c, line 101
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	44
	ldidx	r6
	sgn
	cmp	r4

						//fpga.c, line 101
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l44
		add	r7
						// freereg r1
l46: # 
						// allocreg r1

						//fpga.c, line 122
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l39,0
						// static pe is varadr
	stdec	r6

						//fpga.c, line 122
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//fpga.c, line 124
						// (test)
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_kickfoundstr
						//extern deref
						//sizemod based on type 0xa
	ldt

						//fpga.c, line 124
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l41
		add	r7

						//fpga.c, line 125
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	stdec	r6

						//fpga.c, line 125
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
l41: # 

						//fpga.c, line 127
						// (test)
						// (obj to tmp) flags 2 type a
						// extern
	.liabs	_applypatchstr
						//extern deref
						//sizemod based on type 0xa
	ldt

						//fpga.c, line 127
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l43
		add	r7

						//fpga.c, line 128
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	stdec	r6

						//fpga.c, line 128
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
l43: # 
						// freereg r1
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

	.section	.rodata.4
l26:
	.byte	42
	.byte	0
	.section	.rodata.5
l16:
	.byte	70
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	115
	.byte	105
	.byte	122
	.byte	101
	.byte	58
	.byte	32
	.byte	37
	.byte	100
	.byte	107
	.byte	66
	.byte	13
	.byte	0
	.section	.rodata.6
l17:
	.byte	91
	.byte	0
	.section	.rodata.7
l39:
	.byte	93
	.byte	13
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
	.section	.text.8
	.global	_BootPrint
_BootPrint:
	stdec	r6
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
	.global	_ClearMemory
_ClearMemory:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-4
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
						// (obj to tmp) flags 40 type 104
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r5
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 102 type 104
						// matchobj comparing flags 102 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	20
	ldidx	r6
						// (save temp)isreg
	mr	r5
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
						// matchobj comparing flags 1 with 102
						// const
						// matchobj comparing flags 1 with 102
	.liconst	268435431
						// (save temp)isreg
	mr	r3
						//save_temp done
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
l52: # 

						//fpga.c, line 148
		// Offsets 16, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	16
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fpga.c, line 149
		// Offsets 16, 0
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
						// allocreg r1

						//fpga.c, line 149
		// Offsets 0, 0
		// Have am? no, no
		// flags 260, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 150
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	1
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//fpga.c, line 150
		// Offsets 0, 0
		// Have am? no, no
		// flags 260, 62
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r2
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//fpga.c, line 151
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	0
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//fpga.c, line 152
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

						//fpga.c, line 153
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

						//fpga.c, line 153
		// Offsets 0, 0
		// Have am? no, no
		// flags 260, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 1
		// Real offset of type is 1, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	1
	addt	r6
	mr	r0

						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 82
						// matchobj comparing flags 260 with 82
						// deref 
	byt
	ld	r2
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fpga.c, line 154
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//fpga.c, line 154
		// Offsets 0, 0
		// Have am? no, no
		// flags 260, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 2
		// Real offset of type is 2, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 2, 0 with 1, 1
						//Fuzzy match found, offset: 0 (varadr: 1)
	.liconst	0
	add	r0

						// required value found in r0
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 82
						// deref 
	byt
	ld	r2
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fpga.c, line 155
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 82
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//fpga.c, line 155
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l56
		add	r7
						// allocreg r1

						//fpga.c, line 157
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
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 157
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	128
	cmp	r1
						// freereg r1

						//fpga.c, line 157
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l58
		add	r7
						// allocreg r1

						//fpga.c, line 157
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
	.liconst	2
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 157
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	6
	cmp	r1
						// freereg r1

						//fpga.c, line 157
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l58
		add	r7

						//fpga.c, line 159
		// Offsets 170, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	170
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//fpga.c, line 160
		// Offsets 202, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	202
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//fpga.c, line 161
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
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//fpga.c, line 162
		// Offsets 4, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	4
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done
						// allocreg r1

						//fpga.c, line 164
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
	.liconst	24
	shr	r1
						// (save result) // isreg

						//fpga.c, line 164
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 101
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//fpga.c, line 165
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 104
						// matchobj comparing flags 42 with 4a
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
	.liconst	16
	shr	r1
						// (save result) // isreg

						//fpga.c, line 165
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 101
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//fpga.c, line 166
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 104
						// matchobj comparing flags 42 with 4a
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
	.liconst	8
	shr	r1
						// (save result) // isreg

						//fpga.c, line 166
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 101
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done
						// freereg r1

						//fpga.c, line 167
						//FIXME convert
						// (convert - reducing type 104 to 101
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 4a
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done
						// allocreg r1

						//fpga.c, line 169
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 42 type 104
						// matchobj comparing flags 42 with 42
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
	.liconst	24
	shr	r1
						// (save result) // isreg

						//fpga.c, line 169
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 101
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//fpga.c, line 170
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 42 type 104
						// matchobj comparing flags 42 with 4a
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
	.liconst	16
	shr	r1
						// (save result) // isreg

						//fpga.c, line 170
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 101
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//fpga.c, line 171
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 42 type 104
						// matchobj comparing flags 42 with 4a
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
	.liconst	8
	shr	r1
						// (save result) // isreg

						//fpga.c, line 171
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 101
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done
						// freereg r1

						//fpga.c, line 172
						//FIXME convert
						// (convert - reducing type 104 to 101
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 4a
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done
l58: # 

						//fpga.c, line 174
		// Offsets 17, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	17
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fpga.c, line 176
						//pcreltotemp
	.lipcrel	l61
	add	r7
l56: # 

						//fpga.c, line 177
		// Offsets 17, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	17
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//fpga.c, line 146
						//pcreltotemp
	.lipcrel	l52
	add	r7
l61: # 
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
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.a
	.global	_GetFPGAStatus
_GetFPGAStatus:
	stdec	r6
	mt	r3
	stdec	r6
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
						// const
	.liconst	268435431
						// (save temp)isreg
	mr	r3
						//save_temp done
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

						//fpga.c, line 185
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

						//fpga.c, line 186
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
						// allocreg r1

						//fpga.c, line 186
		// Offsets 0, 0
		// Have am? no, no
		// flags 260, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 1
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 187
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done

						//fpga.c, line 188
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

						//fpga.c, line 189
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

						//fpga.c, line 190
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

						//fpga.c, line 191
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

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r2
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fpga.c, line 192
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

						//fpga.c, line 194
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 101
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
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
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.b
	.global	_fpga_init
_fpga_init:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-68
	add	r6
						// allocreg r2
						// allocreg r1

						//fpga.c, line 199
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 199
						//call
						//pcreltotemp
	.lipcrel	_GetTimer // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//fpga.c, line 204
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

						//fpga.c, line 205
		// Offsets 136, 268435427
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435427, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						//Fuzzy match found, offset: -5 (varadr: 0)
	.liconst	-5
	add	r0
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	136
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fpga.c, line 206
		// Offsets 255, 268435427
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435427, isauto 0
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
	.liconst	255
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r3

						//fpga.c, line 206
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 21, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 21 type 101
						// matchobj comparing flags 21 with 1
						// matchobj comparing flags 21 with 1
						// const/deref
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						//Fuzzy match found, offset: -1 (varadr: 0)
	.liconst	-1
	addt	r0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 1
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done

						//fpga.c, line 207
		// Offsets 255, 268435427
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435427, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 21
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 21
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
	.liconst	255
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r4

						//fpga.c, line 207
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 21, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 17
		// Real offset of type is 17, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 21 type 101
						// matchobj comparing flags 21 with 1
						// matchobj comparing flags 21 with 1
						// const/deref
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						//Fuzzy match found, offset: -1 (varadr: 0)
	.liconst	-1
	addt	r0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 1
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r4
						//save_temp done

						//fpga.c, line 208
		// Offsets 255, 268435427
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435427, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 21
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 21
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
	.liconst	255
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r5

						//fpga.c, line 208
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 21, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 18
		// Real offset of type is 18, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 21 type 101
						// matchobj comparing flags 21 with 1
						// matchobj comparing flags 21 with 1
						// const/deref
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						//Fuzzy match found, offset: -1 (varadr: 0)
	.liconst	-1
	addt	r0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 1
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r5
						//save_temp done

						//fpga.c, line 209
		// Offsets 255, 268435427
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435427, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 21
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 21
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
	.liconst	255
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fpga.c, line 209
		// Offsets 268435427, 0
		// Have am? no, no
		// flags 21, 62
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 21 type 101
						// matchobj comparing flags 21 with 1
						// matchobj comparing flags 21 with 1
						// const/deref
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						//Fuzzy match found, offset: -1 (varadr: 0)
	.liconst	-1
	addt	r0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 1
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//fpga.c, line 210
		// Offsets 33, 268435431
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435431, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 21
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 21
						// matchobj comparing flags 1 with 1
						//Fuzzy match found, offset: 3 (varadr: 0)
	.liconst	3
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

						//fpga.c, line 211
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 21 type 502
						// matchobj comparing flags 21 with 1
						// matchobj comparing flags 21 with 1
						// const/deref
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						//Fuzzy match found, offset: -22 (varadr: 0)
	.liconst	-22
	addt	r0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 1
						//sizemod based on type 0x502
	hlf
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 21
						// matchobj comparing flags 1 with 21
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fpga.c, line 211
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 21 type 502
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
	.liconst	268435410
						//sizemod based on type 0x502
	hlf
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 21
						// matchobj comparing flags 1 with 21
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fpga.c, line 211
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 21 type 502
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
	.liconst	268435410
						//sizemod based on type 0x502
	hlf
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 21
						// matchobj comparing flags 1 with 21
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fpga.c, line 211
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 21 type 502
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
	.liconst	268435410
						//sizemod based on type 0x502
	hlf
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 21
						// matchobj comparing flags 1 with 21
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//fpga.c, line 213
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	6
	stdec	r6
						// allocreg r1

						//fpga.c, line 213
		// Offsets 7, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 84
		// Real offset of type is 88, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	7
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 213
						//call
						//pcreltotemp
	.lipcrel	_OsdDoReset // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1
						// allocreg r1

						//fpga.c, line 215
		// Offsets 50, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 92
		// Real offset of type is 96, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	50
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 215
						//call
						//pcreltotemp
	.lipcrel	_WaitTimer // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)
						// freereg r1

						//fpga.c, line 216
						//call
						//pcreltotemp
	.lipcrel	_BootInit // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)
						// allocreg r1

						//fpga.c, line 217
		// Offsets 100, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 104, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	100
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 217
						//call
						//pcreltotemp
	.lipcrel	_WaitTimer // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)
						// freereg r1

						//fpga.c, line 219
						//call
						//pcreltotemp
	.lipcrel	_BootHome // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)
						// allocreg r1

						//fpga.c, line 222
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 222
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

						//fpga.c, line 222
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 4a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r5

						//fpga.c, line 222
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//fpga.c, line 222
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 4a
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r4

						//fpga.c, line 222
						// Q1 disposable
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//fpga.c, line 222
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 4a
						// reg r3 - only match against tmp
	mt	r3
				// flags 4a
	and	r3
						// freereg r3

						//fpga.c, line 222
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l67
		add	r7
						// allocreg r1

						//fpga.c, line 222
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 116
		// Real offset of type is 132, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l69,0
						// static pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done

						//fpga.c, line 222
						//pcreltotemp
	.lipcrel	l68
	add	r7
l67: # 

						//fpga.c, line 222
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 116
		// Real offset of type is 132, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l70,0
						// static pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
l68: # 

						//fpga.c, line 222
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// reg r2 - only match against tmp
	mt	r2
	stdec	r6

						//fpga.c, line 222
						// (a/p push)
						// a: pushed 16, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l71,0
						// static pe is varadr
	stdec	r6
						// allocreg r3

						//fpga.c, line 222
						// (address)
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	44
	addt	r6
						// (save temp)isreg
	mr	r3
						//save_temp done

						//fpga.c, line 222
						// (a/p push)
						// a: pushed 20, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r3 - only match against tmp
	//mt
	stdec	r6

						//fpga.c, line 222
						//call
						//pcreltotemp
	.lipcrel	_sprintf // extern
	add	r7
						// Deferred popping of 24 bytes (28 in total)
						// allocreg r1

						//fpga.c, line 223
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 136
		// Real offset of type is 164, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 223
						//call
						//pcreltotemp
	.lipcrel	_BootPrintEx // extern
	add	r7
						// Deferred popping of 0 bytes (28 in total)
						// freereg r1

						//fpga.c, line 224
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l72,0
						// static pe is varadr
	stdec	r6

						//fpga.c, line 224
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// static
	.liabs	l73,0
						// static pe is varadr
	stdec	r6

						//fpga.c, line 224
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r3 - only match against tmp
	mt	r3
	stdec	r6

						//fpga.c, line 224
						//call
						//pcreltotemp
	.lipcrel	_sprintf // extern
	add	r7
						// Deferred popping of 12 bytes (40 in total)
						// allocreg r1

						//fpga.c, line 225
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 156
		// Real offset of type is 196, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r3

						//fpga.c, line 225
						//call
						//pcreltotemp
	.lipcrel	_BootPrintEx // extern
	add	r7
						// Deferred popping of 0 bytes (40 in total)
						// freereg r1
						// allocreg r1

						//fpga.c, line 226
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 164
		// Real offset of type is 204, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l74,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 226
						//call
						//pcreltotemp
	.lipcrel	_BootPrintEx // extern
	add	r7
						// Deferred popping of 0 bytes (40 in total)
						// freereg r1
						// allocreg r1

						//fpga.c, line 227
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 172
		// Real offset of type is 212, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l75,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 227
						//call
						//pcreltotemp
	.lipcrel	_BootPrintEx // extern
	add	r7
						// Deferred popping of 0 bytes (40 in total)
						// freereg r1
						// allocreg r1

						//fpga.c, line 228
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 180
		// Real offset of type is 220, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l76,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 228
						//call
						//pcreltotemp
	.lipcrel	_BootPrintEx // extern
	add	r7
						// Deferred popping of 0 bytes (40 in total)
						// freereg r1
						// allocreg r1

						//fpga.c, line 229
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 188
		// Real offset of type is 228, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l77,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 229
						//call
						//pcreltotemp
	.lipcrel	_BootPrintEx // extern
	add	r7
						// Deferred popping of 0 bytes (40 in total)
						// freereg r1
						// allocreg r1

						//fpga.c, line 230
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 196
		// Real offset of type is 236, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l78,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 230
						//call
						//pcreltotemp
	.lipcrel	_BootPrintEx // extern
	add	r7
						// Deferred popping of 0 bytes (40 in total)
						// freereg r1
						// allocreg r1

						//fpga.c, line 231
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 204
		// Real offset of type is 244, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l79,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 231
						//call
						//pcreltotemp
	.lipcrel	_BootPrintEx // extern
	add	r7
						// Deferred popping of 0 bytes (40 in total)
						// freereg r1
						// allocreg r1

						//fpga.c, line 232
		// Offsets 1000, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 212
		// Real offset of type is 252, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	1000
						// (save temp)isreg
	mr	r1
						//save_temp done

						//fpga.c, line 232
						//call
						//pcreltotemp
	.lipcrel	_WaitTimer // extern
	add	r7
						// Deferred popping of 0 bytes (40 in total)
						// freereg r1

						//fpga.c, line 235
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_df
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

						//fpga.c, line 236
		// Offsets 0, 700
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 700, 0
		// Real offset of type is 740, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 700 with 1
						//Fuzzy match found, offset: 699 (varadr: 1)
	.liconst	699
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fpga.c, line 237
		// Offsets 0, 1400
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 1400, 0
		// Real offset of type is 1440, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 1400 with 701
						//Fuzzy match found, offset: 699 (varadr: 1)
	.liconst	699
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//fpga.c, line 238
		// Offsets 0, 2100
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 2100, 0
		// Real offset of type is 2140, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 2100 with 1401
						//Fuzzy match found, offset: 699 (varadr: 1)
	.liconst	699
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	-108
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
l69:
	.byte	32
	.byte	66
	.byte	69
	.byte	84
	.byte	65
	.byte	0
	.section	.rodata.d
l70:
	.byte	0
	.section	.rodata.e
l71:
	.byte	77
	.byte	105
	.byte	110
	.byte	105
	.byte	109
	.byte	105
	.byte	103
	.byte	32
	.byte	65
	.byte	71
	.byte	65
	.byte	37
	.byte	115
	.byte	32
	.byte	118
	.byte	101
	.byte	114
	.byte	115
	.byte	105
	.byte	111
	.byte	110
	.byte	32
	.byte	50
	.byte	48
	.byte	37
	.byte	100
	.byte	45
	.byte	37
	.byte	100
	.byte	45
	.byte	37
	.byte	100
	.byte	32
	.byte	102
	.byte	111
	.byte	114
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
	.section	.rodata.f
l72:
	.byte	50
	.byte	48
	.byte	50
	.byte	51
	.byte	45
	.byte	49
	.byte	50
	.byte	45
	.byte	49
	.byte	52
	.byte	0
	.section	.rodata.10
l73:
	.byte	70
	.byte	105
	.byte	114
	.byte	109
	.byte	119
	.byte	97
	.byte	114
	.byte	101
	.byte	32
	.byte	118
	.byte	101
	.byte	114
	.byte	115
	.byte	105
	.byte	111
	.byte	110
	.byte	58
	.byte	32
	.byte	37
	.byte	115
	.byte	0
	.section	.rodata.11
l74:
	.byte	32
	.byte	0
	.section	.rodata.12
l75:
	.byte	77
	.byte	105
	.byte	110
	.byte	105
	.byte	109
	.byte	105
	.byte	103
	.byte	32
	.byte	65
	.byte	71
	.byte	65
	.byte	32
	.byte	98
	.byte	121
	.byte	32
	.byte	82
	.byte	111
	.byte	107
	.byte	32
	.byte	75
	.byte	114
	.byte	97
	.byte	106
	.byte	110
	.byte	99
	.byte	46
	.byte	32
	.byte	32
	.byte	79
	.byte	114
	.byte	105
	.byte	103
	.byte	105
	.byte	110
	.byte	97
	.byte	108
	.byte	32
	.byte	77
	.byte	105
	.byte	110
	.byte	105
	.byte	109
	.byte	105
	.byte	103
	.byte	32
	.byte	98
	.byte	121
	.byte	32
	.byte	68
	.byte	101
	.byte	110
	.byte	110
	.byte	105
	.byte	115
	.byte	32
	.byte	118
	.byte	97
	.byte	110
	.byte	32
	.byte	87
	.byte	101
	.byte	101
	.byte	114
	.byte	101
	.byte	110
	.byte	0
	.section	.rodata.13
l76:
	.byte	85
	.byte	112
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	115
	.byte	32
	.byte	98
	.byte	121
	.byte	32
	.byte	74
	.byte	97
	.byte	107
	.byte	117
	.byte	98
	.byte	32
	.byte	66
	.byte	101
	.byte	100
	.byte	110
	.byte	97
	.byte	114
	.byte	115
	.byte	107
	.byte	105
	.byte	44
	.byte	32
	.byte	84
	.byte	111
	.byte	98
	.byte	105
	.byte	97
	.byte	115
	.byte	32
	.byte	71
	.byte	117
	.byte	98
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	44
	.byte	32
	.byte	83
	.byte	97
	.byte	115
	.byte	99
	.byte	104
	.byte	97
	.byte	32
	.byte	66
	.byte	111
	.byte	105
	.byte	110
	.byte	103
	.byte	44
	.byte	32
	.byte	65
	.byte	46
	.byte	77
	.byte	46
	.byte	32
	.byte	82
	.byte	111
	.byte	98
	.byte	105
	.byte	110
	.byte	115
	.byte	111
	.byte	110
	.byte	32
	.byte	38
	.byte	32
	.byte	111
	.byte	116
	.byte	104
	.byte	101
	.byte	114
	.byte	115
	.byte	0
	.section	.rodata.14
l77:
	.byte	32
	.byte	0
	.section	.rodata.15
l78:
	.byte	80
	.byte	111
	.byte	114
	.byte	116
	.byte	101
	.byte	100
	.byte	32
	.byte	116
	.byte	111
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
	.byte	32
	.byte	98
	.byte	121
	.byte	32
	.byte	65
	.byte	108
	.byte	97
	.byte	115
	.byte	116
	.byte	97
	.byte	105
	.byte	114
	.byte	32
	.byte	77
	.byte	46
	.byte	32
	.byte	82
	.byte	111
	.byte	98
	.byte	105
	.byte	110
	.byte	115
	.byte	111
	.byte	110
	.byte	0
	.section	.rodata.16
l79:
	.byte	32
	.byte	0
	.section	.rodata.17
	.global	_applymemdetectionpatchstr
_applymemdetectionpatchstr:
	.byte	65
	.byte	112
	.byte	112
	.byte	108
	.byte	121
	.byte	105
	.byte	110
	.byte	103
	.byte	32
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
	.byte	49
	.byte	46
	.byte	120
	.byte	32
	.byte	109
	.byte	101
	.byte	109
	.byte	111
	.byte	114
	.byte	121
	.byte	32
	.byte	100
	.byte	101
	.byte	116
	.byte	101
	.byte	99
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	32
	.byte	112
	.byte	97
	.byte	116
	.byte	99
	.byte	104
	.byte	10
	.byte	0
	.section	.data.18
	.global	_kick1xfoundstr
_kick1xfoundstr:
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
	.byte	118
	.byte	49
	.byte	46
	.byte	120
	.byte	32
	.byte	102
	.byte	111
	.byte	117
	.byte	110
	.byte	100
	.byte	10
	.byte	0
	.section	.bss.19
	.align	4
	.global	_checksum_pre
	.comm	_checksum_pre,4
	.section	.bss.1a
	.align	4
	.global	_kickfoundstr
	.comm	_kickfoundstr,4
	.section	.bss.1b
	.align	4
	.global	_applypatchstr
	.comm	_applypatchstr,4
