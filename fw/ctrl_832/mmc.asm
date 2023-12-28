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
	.global	_MMC_Init
_MMC_Init:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-8
	add	r6
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
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
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
						// allocreg r2
						// allocreg r1

						//mmc.c, line 60
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
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	63
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//mmc.c, line 61
		// Offsets 2, 0
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
	.liconst	2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 63
		// Offsets 10, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	10
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
l75: # 

						//mmc.c, line 64
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

						//mmc.c, line 64
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	sub	r2
						// (save result) // isreg
						// allocreg r1

						//mmc.c, line 64
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 64
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
	sgn
	cmp	r1
						// freereg r1

						//mmc.c, line 64
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l75
		add	r7
						// allocreg r1

						//mmc.c, line 66
		// Offsets 20, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 17
		// Real offset of type is 17, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	20
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 66
						//call
						//pcreltotemp
	.lipcrel	_WaitTimer // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//mmc.c, line 70
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 5
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l5,0
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

						//mmc.c, line 72
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6
						// allocreg r1

						//mmc.c, line 72
		// Offsets 64, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 25
		// Real offset of type is 29, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	64
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 72
						//call
						//pcreltotemp
	.lipcrel	_MMC_Command // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with 82
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//mmc.c, line 72
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//mmc.c, line 72
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	cmp	r1
						// freereg r1

						//mmc.c, line 72
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l14
		add	r7
						// allocreg r1

						//mmc.c, line 74
		// Offsets 1000, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1000
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 74
						//call
						//pcreltotemp
	.lipcrel	_GetTimer // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//mmc.c, line 74
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l3,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//mmc.c, line 75
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	426
	stdec	r6
						// allocreg r1

						//mmc.c, line 75
		// Offsets 72, 0
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
	.liconst	72
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 75
						//call
						//pcreltotemp
	.lipcrel	_MMC_Command // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//mmc.c, line 75
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//mmc.c, line 75
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	cmp	r1
						// freereg r1

						//mmc.c, line 75
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l22
		add	r7
						// allocreg r1

						//mmc.c, line 77
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
l76: # 

						//mmc.c, line 78
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

						//mmc.c, line 78
						// (address)
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
	addt	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//mmc.c, line 78
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 82
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 78
						// (bitwise/arithmetic) 	//ops: 4, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r3 - only match against tmp
	mt	r3
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 78
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 260, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 76
		// Real offset of type is 76, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 4a
						// deref 
	byt
	ld	r4
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//mmc.c, line 78
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	1
	add	r2
						// (save result) // isreg
						// storing UNSIGNED CHAR to register - must mask
	.liconst	0xff
	and	r2
						// allocreg r1

						//mmc.c, line 78
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 78
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	4
	sgn
	cmp	r1
						// freereg r1

						//mmc.c, line 78
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l76
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
		// Offsets 268435431, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	268435431
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//mmc.c, line 79
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	6
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 79
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	cmp	r1
						// freereg r1

						//mmc.c, line 79
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l22
		add	r7
						// allocreg r1

						//mmc.c, line 79
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	7
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 79
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	170
	cmp	r1
						// freereg r1

						//mmc.c, line 79
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l22
		add	r7

						//mmc.c, line 81
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l24,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 81
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// allocreg r1

						//mmc.c, line 82
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 100, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 82
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//mmc.c, line 82
						// (test)
						// (obj to tmp) flags 4a type 104
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//mmc.c, line 82
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l83
		add	r7
l77: # 

						//mmc.c, line 84
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//mmc.c, line 84
		// Offsets 119, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 112
		// Real offset of type is 116, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	119
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 84
						//call
						//pcreltotemp
	.lipcrel	_MMC_Command // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//mmc.c, line 84
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//mmc.c, line 84
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	cmp	r1
						// freereg r1

						//mmc.c, line 84
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l29
		add	r7

						//mmc.c, line 86
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1073741824
	stdec	r6
						// allocreg r1

						//mmc.c, line 86
		// Offsets 105, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 128
		// Real offset of type is 132, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	105
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 86
						//call
						//pcreltotemp
	.lipcrel	_MMC_Command // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//mmc.c, line 86
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//mmc.c, line 86
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
				// flags 4a
	and	r1
						// freereg r1

						//mmc.c, line 86
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l43
		add	r7

						//mmc.c, line 88
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	stdec	r6
						// allocreg r1

						//mmc.c, line 88
		// Offsets 122, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 144
		// Real offset of type is 148, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	122
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 88
						//call
						//pcreltotemp
	.lipcrel	_MMC_Command // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//mmc.c, line 88
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//mmc.c, line 88
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
				// flags 4a
	and	r1
						// freereg r1

						//mmc.c, line 88
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l33
		add	r7
						// allocreg r1

						//mmc.c, line 90
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
l78: # 

						//mmc.c, line 91
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

						//mmc.c, line 91
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 91
						// (bitwise/arithmetic) 	//ops: 7, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r6
	add	r1
						// (save result) // isreg

						//mmc.c, line 91
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 260, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 168
		// Real offset of type is 168, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 62
						// deref 
	byt
	ld	r4
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//mmc.c, line 91
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	1
	add	r2
						// (save result) // isreg
						// storing UNSIGNED CHAR to register - must mask
	.liconst	0xff
	and	r2
						// allocreg r1

						//mmc.c, line 91
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 91
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	4
	sgn
	cmp	r1
						// freereg r1

						//mmc.c, line 91
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l78
		add	r7
						// allocreg r1

						//mmc.c, line 93
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 93
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	64
	and	r1
						// (save result) // isreg
						// freereg r1

						//mmc.c, line 93
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l39
		add	r7
						// allocreg r1

						//mmc.c, line 93
		// Offsets 3, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	3
						// (save temp)store type 3
	st	r6
						//save_temp done

						//mmc.c, line 93
						//pcreltotemp
	.lipcrel	l40
	add	r7
l39: # 

						//mmc.c, line 93
		// Offsets 2, 0
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
	.liconst	2
						// (save temp)store type 3
	st	r6
						//save_temp done
l40: # 

						//mmc.c, line 93
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l5,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 82
						// deref 
	ld	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//mmc.c, line 96
						//pcreltotemp
	.lipcrel	l41
	add	r7
l33: # 

						//mmc.c, line 96
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l42,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 96
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
l41: # 

						//mmc.c, line 98
		// Offsets 3, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	3
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 99
		// Offsets 1, 0
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
	.liconst	1
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//mmc.c, line 100
						//call
						//pcreltotemp
	.lipcrel	_MMC_GetCapacity // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//mmc.c, line 101
						//setreturn
						// (obj to r0) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l5,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0

						//mmc.c, line 102
						//pcreltotemp
	.lipcrel	l7
	add	r7
l29: # 

						//mmc.c, line 106
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l44,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 106
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//mmc.c, line 107
		// Offsets 3, 0
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
	.liconst	3
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 108
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0

						//mmc.c, line 109
						//pcreltotemp
	.lipcrel	l7
	add	r7
						// freereg r1
l43: # 
						// allocreg r1

						//mmc.c, line 82
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 112
		// Real offset of type is 112, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 82
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//mmc.c, line 82
						// (test)
						// (obj to tmp) flags 4a type 104
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//mmc.c, line 82
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l77
		add	r7
l83: # 
						// allocreg r1

						//mmc.c, line 111
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l45,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 111
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//mmc.c, line 112
		// Offsets 3, 0
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
	.liconst	3
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 113
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0

						//mmc.c, line 114
						//pcreltotemp
	.lipcrel	l7
	add	r7
						// freereg r1
l22: # 

						//mmc.c, line 118
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//mmc.c, line 118
		// Offsets 119, 0
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
	.liconst	119
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 118
						//call
						//pcreltotemp
	.lipcrel	_MMC_Command // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//mmc.c, line 118
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//mmc.c, line 118
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	cmp	r1
						// freereg r1

						//mmc.c, line 118
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l49
		add	r7

						//mmc.c, line 120
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	stdec	r6
						// allocreg r1

						//mmc.c, line 120
		// Offsets 105, 0
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
						// const
						// matchobj comparing flags 1 with 1
	.liconst	105
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 120
						//call
						//pcreltotemp
	.lipcrel	_MMC_Command // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//mmc.c, line 120
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//mmc.c, line 120
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	sgn
	cmp	r1
						// freereg r1

						//mmc.c, line 120
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l49
		add	r7

						//mmc.c, line 122
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

						//mmc.c, line 122
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// allocreg r1

						//mmc.c, line 123
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 104
		// Real offset of type is 104, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 123
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//mmc.c, line 123
						// (test)
						// (obj to tmp) flags 4a type 104
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//mmc.c, line 123
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l85
		add	r7
l79: # 

						//mmc.c, line 125
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//mmc.c, line 125
		// Offsets 119, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 116
		// Real offset of type is 120, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	119
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 125
						//call
						//pcreltotemp
	.lipcrel	_MMC_Command // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//mmc.c, line 125
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//mmc.c, line 125
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	cmp	r1
						// freereg r1

						//mmc.c, line 125
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l55
		add	r7

						//mmc.c, line 127
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	stdec	r6
						// allocreg r1

						//mmc.c, line 127
		// Offsets 105, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 132
		// Real offset of type is 136, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	105
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 127
						//call
						//pcreltotemp
	.lipcrel	_MMC_Command // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//mmc.c, line 127
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//mmc.c, line 127
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
				// flags 4a
	and	r1
						// freereg r1

						//mmc.c, line 127
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l61
		add	r7

						//mmc.c, line 130
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	512
	stdec	r6
						// allocreg r1

						//mmc.c, line 130
		// Offsets 80, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 148
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	80
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 130
						//call
						//pcreltotemp
	.lipcrel	_MMC_Command // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//mmc.c, line 130
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//mmc.c, line 130
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
				// flags 4a
	and	r1
						// freereg r1

						//mmc.c, line 130
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l59
		add	r7
						// allocreg r1

						//mmc.c, line 131
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l60,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 131
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
l59: # 

						//mmc.c, line 133
		// Offsets 3, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	3
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 135
		// Offsets 1, 0
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
	.liconst	1
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//mmc.c, line 136
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 5
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l5,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	2
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//mmc.c, line 137
						//call
						//pcreltotemp
	.lipcrel	_MMC_GetCapacity // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//mmc.c, line 139
						//setreturn
						// (obj to r0) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l5,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0

						//mmc.c, line 140
						//pcreltotemp
	.lipcrel	l7
	add	r7
l55: # 

						//mmc.c, line 144
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l62,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 144
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//mmc.c, line 145
		// Offsets 3, 0
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
	.liconst	3
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 146
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0

						//mmc.c, line 147
						//pcreltotemp
	.lipcrel	l7
	add	r7
						// freereg r1
l61: # 
						// allocreg r1

						//mmc.c, line 123
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 116
		// Real offset of type is 116, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 123
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//mmc.c, line 123
						// (test)
						// (obj to tmp) flags 4a type 104
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//mmc.c, line 123
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l79
		add	r7
l85: # 
						// allocreg r1

						//mmc.c, line 149
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l63,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 149
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//mmc.c, line 150
		// Offsets 3, 0
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
	.liconst	3
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 151
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0

						//mmc.c, line 152
						//pcreltotemp
	.lipcrel	l7
	add	r7
						// freereg r1
l49: # 

						//mmc.c, line 156
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l64,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 156
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// allocreg r1

						//mmc.c, line 157
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 88, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 157
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//mmc.c, line 157
						// (test)
						// (obj to tmp) flags 4a type 104
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//mmc.c, line 157
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l86
		add	r7
l80: # 

						//mmc.c, line 159
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//mmc.c, line 159
		// Offsets 65, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 104, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	65
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 159
						//call
						//pcreltotemp
	.lipcrel	_MMC_Command // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//mmc.c, line 159
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//mmc.c, line 159
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
				// flags 4a
	and	r1
						// freereg r1

						//mmc.c, line 159
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7

						//mmc.c, line 162
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	512
	stdec	r6
						// allocreg r1

						//mmc.c, line 162
		// Offsets 80, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 116
		// Real offset of type is 120, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	80
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 162
						//call
						//pcreltotemp
	.lipcrel	_MMC_Command // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//mmc.c, line 162
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//mmc.c, line 162
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
				// flags 4a
	and	r1
						// freereg r1

						//mmc.c, line 162
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l71
		add	r7
						// allocreg r1

						//mmc.c, line 163
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l72,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 163
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
l71: # 

						//mmc.c, line 165
		// Offsets 3, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	3
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 167
		// Offsets 1, 0
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
	.liconst	1
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//mmc.c, line 168
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 5
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l5,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//mmc.c, line 169
						//call
						//pcreltotemp
	.lipcrel	_MMC_GetCapacity // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//mmc.c, line 170
						//setreturn
						// (obj to r0) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l5,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0

						//mmc.c, line 171
						//pcreltotemp
	.lipcrel	l7
	add	r7
						// freereg r1
l69: # 
						// allocreg r1

						//mmc.c, line 157
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 100, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 157
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//mmc.c, line 157
						// (test)
						// (obj to tmp) flags 4a type 104
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//mmc.c, line 157
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l80
		add	r7
l86: # 
						// allocreg r1

						//mmc.c, line 174
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l73,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 174
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//mmc.c, line 175
		// Offsets 3, 0
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
	.liconst	3
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 176
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0

						//mmc.c, line 177
						//pcreltotemp
	.lipcrel	l7
	add	r7
l14: # 

						//mmc.c, line 179
		// Offsets 3, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	3
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 180
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l74,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 180
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//mmc.c, line 181
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0
l7: # 
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

	.section	.rodata.1
l42:
	.byte	67
	.byte	77
	.byte	68
	.byte	53
	.byte	56
	.byte	32
	.byte	40
	.byte	82
	.byte	69
	.byte	65
	.byte	68
	.byte	95
	.byte	79
	.byte	67
	.byte	82
	.byte	41
	.byte	32
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	33
	.byte	13
	.byte	0
	.section	.rodata.2
l44:
	.byte	67
	.byte	77
	.byte	68
	.byte	53
	.byte	53
	.byte	32
	.byte	40
	.byte	65
	.byte	80
	.byte	80
	.byte	95
	.byte	67
	.byte	77
	.byte	68
	.byte	41
	.byte	32
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	33
	.byte	13
	.byte	0
	.section	.rodata.3
l24:
	.byte	83
	.byte	68
	.byte	72
	.byte	67
	.byte	32
	.byte	99
	.byte	97
	.byte	114
	.byte	100
	.byte	32
	.byte	100
	.byte	101
	.byte	116
	.byte	101
	.byte	99
	.byte	116
	.byte	101
	.byte	100
	.byte	13
	.byte	0
	.section	.rodata.4
l45:
	.byte	83
	.byte	68
	.byte	72
	.byte	67
	.byte	32
	.byte	99
	.byte	97
	.byte	114
	.byte	100
	.byte	32
	.byte	105
	.byte	110
	.byte	105
	.byte	116
	.byte	105
	.byte	97
	.byte	108
	.byte	105
	.byte	122
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	32
	.byte	116
	.byte	105
	.byte	109
	.byte	101
	.byte	100
	.byte	32
	.byte	111
	.byte	117
	.byte	116
	.byte	33
	.byte	13
	.byte	0
	.section	.rodata.5
l60:
	.byte	67
	.byte	77
	.byte	68
	.byte	49
	.byte	54
	.byte	32
	.byte	40
	.byte	83
	.byte	69
	.byte	84
	.byte	95
	.byte	66
	.byte	76
	.byte	79
	.byte	67
	.byte	75
	.byte	76
	.byte	69
	.byte	78
	.byte	41
	.byte	32
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	33
	.byte	13
	.byte	0
	.section	.rodata.6
l62:
	.byte	67
	.byte	77
	.byte	68
	.byte	53
	.byte	53
	.byte	32
	.byte	40
	.byte	65
	.byte	80
	.byte	80
	.byte	95
	.byte	67
	.byte	77
	.byte	68
	.byte	41
	.byte	32
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	33
	.byte	13
	.byte	0
	.section	.rodata.7
l50:
	.byte	83
	.byte	68
	.byte	32
	.byte	99
	.byte	97
	.byte	114
	.byte	100
	.byte	32
	.byte	100
	.byte	101
	.byte	116
	.byte	101
	.byte	99
	.byte	116
	.byte	101
	.byte	100
	.byte	13
	.byte	0
	.section	.rodata.8
l63:
	.byte	83
	.byte	68
	.byte	32
	.byte	99
	.byte	97
	.byte	114
	.byte	100
	.byte	32
	.byte	105
	.byte	110
	.byte	105
	.byte	116
	.byte	105
	.byte	97
	.byte	108
	.byte	105
	.byte	122
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	32
	.byte	116
	.byte	105
	.byte	109
	.byte	101
	.byte	100
	.byte	32
	.byte	111
	.byte	117
	.byte	116
	.byte	33
	.byte	13
	.byte	0
	.section	.rodata.9
l72:
	.byte	67
	.byte	77
	.byte	68
	.byte	49
	.byte	54
	.byte	32
	.byte	40
	.byte	83
	.byte	69
	.byte	84
	.byte	95
	.byte	66
	.byte	76
	.byte	79
	.byte	67
	.byte	75
	.byte	76
	.byte	69
	.byte	78
	.byte	41
	.byte	32
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	33
	.byte	13
	.byte	0
	.section	.rodata.a
l64:
	.byte	77
	.byte	77
	.byte	67
	.byte	32
	.byte	99
	.byte	97
	.byte	114
	.byte	100
	.byte	32
	.byte	100
	.byte	101
	.byte	116
	.byte	101
	.byte	99
	.byte	116
	.byte	101
	.byte	100
	.byte	13
	.byte	0
	.section	.rodata.b
l73:
	.byte	77
	.byte	77
	.byte	67
	.byte	32
	.byte	99
	.byte	97
	.byte	114
	.byte	100
	.byte	32
	.byte	105
	.byte	110
	.byte	105
	.byte	116
	.byte	105
	.byte	97
	.byte	108
	.byte	105
	.byte	122
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	32
	.byte	116
	.byte	105
	.byte	109
	.byte	101
	.byte	100
	.byte	32
	.byte	111
	.byte	117
	.byte	116
	.byte	33
	.byte	13
	.byte	0
	.section	.rodata.c
l74:
	.byte	78
	.byte	111
	.byte	32
	.byte	109
	.byte	101
	.byte	109
	.byte	111
	.byte	114
	.byte	121
	.byte	32
	.byte	99
	.byte	97
	.byte	114
	.byte	100
	.byte	32
	.byte	100
	.byte	101
	.byte	116
	.byte	101
	.byte	99
	.byte	116
	.byte	101
	.byte	100
	.byte	33
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
	.section	.text.d
	.global	_MMC_Read
_MMC_Read:
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
						// (obj to tmp) flags 40 type 104
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 4
	st	r6
						//save_temp done
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
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	255
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

						//mmc.c, line 194
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x3
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//mmc.c, line 194
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 2
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	cmp	r1
						// freereg r1

						//mmc.c, line 194
	cond	SGT
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l90
		add	r7
						// allocreg r1

						//mmc.c, line 196
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 62
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
	.liconst	1
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

						//mmc.c, line 196
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_Errors
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
	.liabs	l91,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//mmc.c, line 196
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 82
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
						//Saving to reg r0
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//mmc.c, line 196
		// Offsets 0, 8
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 8, 0
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 62
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 62
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//mmc.c, line 196
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 8
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

						//mmc.c, line 197
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
	mr	r0

						//mmc.c, line 198
						//pcreltotemp
	.lipcrel	l87
	add	r7
						// freereg r1
l90: # 
						// allocreg r1

						//mmc.c, line 200
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l5,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 200
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	3
	cmp	r1
						// freereg r1

						//mmc.c, line 200
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l93
		add	r7
						// allocreg r1

						//mmc.c, line 201
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 62 type 104
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	9
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching
						// freereg r1
l93: # 

						//mmc.c, line 203
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	2
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 205
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	stdec	r6
						// allocreg r1

						//mmc.c, line 205
		// Offsets 81, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	81
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 205
						//call
						//pcreltotemp
	.lipcrel	_MMC_Command // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//mmc.c, line 205
						// (test)
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//mmc.c, line 205
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l95
		add	r7

						//mmc.c, line 207
		// Offsets 3, 0
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
	.liconst	3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 208
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	stdec	r6
						// allocreg r1

						//mmc.c, line 208
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 62
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l4,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 208
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//mmc.c, line 208
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l96,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 208
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
	.liconst	12
	add	r6

						//mmc.c, line 209
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
	.liconst	1
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

						//mmc.c, line 209
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_Errors
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
	.liabs	l97,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//mmc.c, line 209
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 82
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
						//Saving to reg r0
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//mmc.c, line 209
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 62
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l4,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 8)
	.liabs	_Errors, 12
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//mmc.c, line 209
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 8
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

						//mmc.c, line 210
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
	mr	r0

						//mmc.c, line 211
						//pcreltotemp
	.lipcrel	l87
	add	r7
l95: # 
						// allocreg r1

						//mmc.c, line 214
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 3
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l3,0
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

						//mmc.c, line 215
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 501
						// matchobj comparing flags 240 with 1
						// matchobj comparing flags 240 with 82
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 215
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 240
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
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//mmc.c, line 215
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
	.liconst	254
	cmp	r0

						//mmc.c, line 215
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l114
		add	r7
						// freereg r1
		// Offsets 1000000, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1000000
						// (save temp)isreg
	mr	r5
						//save_temp done
l98: # 
						// allocreg r1

						//mmc.c, line 217
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 136
		// Real offset of type is 136, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 217
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l3,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
	addt	r1
						// (save temp)store type 4
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//mmc.c, line 217
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 240 type 104
						// matchobj comparing flags 240 with 2
						// reg r5 - only match against tmp
	mt	r5
	cmp	r1
						// freereg r1

						//mmc.c, line 217
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l102
		add	r7
						// allocreg r1

						//mmc.c, line 219
		// Offsets 3, 0
		// Have am? no, no
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
	.liconst	3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 220
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	stdec	r6

						//mmc.c, line 220
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 62
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 62
						// static
	.liabs	l103,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 220
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6

						//mmc.c, line 221
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
	.liconst	1
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

						//mmc.c, line 221
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_Errors
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
	.liabs	l104,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//mmc.c, line 221
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 82
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
						//Saving to reg r0
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//mmc.c, line 221
		// Offsets 0, 8
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 8, 0
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 62
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//mmc.c, line 221
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
						//extern: comparing 0 with 8
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

						//mmc.c, line 222
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
	mr	r0

						//mmc.c, line 223
						//pcreltotemp
	.lipcrel	l87
	add	r7
l102: # 

						//mmc.c, line 215
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 215
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

						//mmc.c, line 215
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
	.liconst	254
	cmp	r0

						//mmc.c, line 215
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l98
		add	r7
						// freereg r1
l114: # 
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	255
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r1

						//mmc.c, line 226
						// (test)
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	24
	ldidx	r6

						//mmc.c, line 226
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l106
		add	r7

						//mmc.c, line 228
		// Offsets 64, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	64
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 229
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 501
						// matchobj comparing flags 240 with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 230
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 260 type 501
						// matchobj comparing flags 260 with 240
						// deref 
	byt
	ld	r3
						// (save temp)store type 4
	st	r6
						//save_temp done

						//mmc.c, line 231
		// Offsets 65, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	65
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 234
						//pcreltotemp
	.lipcrel	l115
	add	r7
l106: # 

						//mmc.c, line 235
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	24
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//mmc.c, line 236
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)store type 4
	st	r6
						//save_temp done
		// Offsets 0, 0
		// Have am? no, no
		// flags 162, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 162 type 104
						// matchobj comparing flags 162 with 1
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
l108: # 

						//mmc.c, line 238
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 501
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 238
		// Offsets 0, 0
		// Have am? no, yes
		// flags 260, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 240
						// deref 
	byt
	ld	r3
						// (save temp)store type 1
	stbinc	r2
						//save_temp done

						//mmc.c, line 239
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 501
						// matchobj comparing flags 240 with 260
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 239
		// Offsets 0, 0
		// Have am? no, yes
		// flags 260, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 240
						// deref 
	byt
	ld	r3
						// (save temp)store type 1
	stbinc	r2
						//save_temp done

						//mmc.c, line 240
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 501
						// matchobj comparing flags 240 with 260
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 240
		// Offsets 0, 0
		// Have am? no, yes
		// flags 260, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 240
						// deref 
	byt
	ld	r3
						// (save temp)store type 1
	stbinc	r2
						//save_temp done

						//mmc.c, line 241
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 501
						// matchobj comparing flags 240 with 260
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 241
		// Offsets 0, 0
		// Have am? no, yes
		// flags 260, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 240
						// deref 
	byt
	ld	r3
						// (save temp)store type 1
	stbinc	r2
						//save_temp done

						//mmc.c, line 237
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	1
	add	r4
						// (save result) // isreg

						//mmc.c, line 237
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	128
	cmp	r4

						//mmc.c, line 237
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l108
		add	r7
l115: # 
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

						//mmc.c, line 245
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 501
						// matchobj comparing flags 240 with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 246
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 240, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 501
						// matchobj comparing flags 240 with 240
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	stbinc	r3
						//Disposable, postinc doesn't matter.
						//save_temp done

						//mmc.c, line 248
						// Z disposable
		// Offsets 3, 0
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
	.liconst	3
						// (save temp)store type 1
	stbinc	r4
						//Disposable, postinc doesn't matter.
						//save_temp done

						//mmc.c, line 249
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0
l87: # 
						// Z disposable
		// Offsets 255, 0
		// Have am? no, yes
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	255
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
						// freereg r2
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

	.section	.rodata.e
l91:
	.byte	82
	.byte	101
	.byte	97
	.byte	100
	.byte	32
	.byte	98
	.byte	101
	.byte	121
	.byte	111
	.byte	110
	.byte	100
	.byte	32
	.byte	101
	.byte	110
	.byte	100
	.byte	32
	.byte	111
	.byte	102
	.byte	32
	.byte	100
	.byte	101
	.byte	118
	.byte	105
	.byte	99
	.byte	101
	.byte	46
	.byte	0
	.section	.rodata.f
l97:
	.byte	67
	.byte	77
	.byte	68
	.byte	49
	.byte	55
	.byte	32
	.byte	82
	.byte	101
	.byte	97
	.byte	100
	.byte	32
	.byte	98
	.byte	108
	.byte	111
	.byte	99
	.byte	107
	.byte	0
	.section	.rodata.10
l96:
	.byte	67
	.byte	77
	.byte	68
	.byte	49
	.byte	55
	.byte	32
	.byte	40
	.byte	82
	.byte	69
	.byte	65
	.byte	68
	.byte	95
	.byte	66
	.byte	76
	.byte	79
	.byte	67
	.byte	75
	.byte	41
	.byte	58
	.byte	32
	.byte	105
	.byte	110
	.byte	118
	.byte	97
	.byte	108
	.byte	105
	.byte	100
	.byte	32
	.byte	114
	.byte	101
	.byte	115
	.byte	112
	.byte	111
	.byte	110
	.byte	115
	.byte	101
	.byte	32
	.byte	48
	.byte	120
	.byte	37
	.byte	48
	.byte	50
	.byte	88
	.byte	32
	.byte	40
	.byte	108
	.byte	98
	.byte	97
	.byte	61
	.byte	37
	.byte	108
	.byte	117
	.byte	41
	.byte	13
	.byte	0
	.section	.rodata.11
l104:
	.byte	67
	.byte	77
	.byte	68
	.byte	49
	.byte	55
	.byte	32
	.byte	78
	.byte	111
	.byte	32
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	32
	.byte	116
	.byte	111
	.byte	107
	.byte	101
	.byte	110
	.byte	0
	.section	.rodata.12
l103:
	.byte	67
	.byte	77
	.byte	68
	.byte	49
	.byte	55
	.byte	32
	.byte	40
	.byte	82
	.byte	69
	.byte	65
	.byte	68
	.byte	95
	.byte	66
	.byte	76
	.byte	79
	.byte	67
	.byte	75
	.byte	41
	.byte	58
	.byte	32
	.byte	110
	.byte	111
	.byte	32
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	32
	.byte	116
	.byte	111
	.byte	107
	.byte	101
	.byte	110
	.byte	33
	.byte	32
	.byte	40
	.byte	108
	.byte	98
	.byte	97
	.byte	61
	.byte	37
	.byte	108
	.byte	117
	.byte	41
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
	.section	.text.13
l116:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-4
	add	r6
						// allocreg r5
		// Offsets 1000000, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1000000
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

						//mmc.c, line 257
		// Offsets 2, 0
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
	.liconst	2
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 259
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
	stdec	r6
						// allocreg r1

						//mmc.c, line 259
		// Offsets 73, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	73
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 259
						//call
						//pcreltotemp
	.lipcrel	_MMC_Command // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with 1
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//mmc.c, line 259
						// (test)
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//mmc.c, line 259
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l120
		add	r7
						// allocreg r1

						//mmc.c, line 261
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l4,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 261
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//mmc.c, line 261
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l121,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 261
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6

						//mmc.c, line 262
		// Offsets 3, 0
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
	.liconst	3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 263
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
	.liconst	1
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

						//mmc.c, line 263
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_Errors
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
	.liabs	l122,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//mmc.c, line 263
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l4,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 4)
	.liabs	_Errors, 8
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//mmc.c, line 263
		// Offsets 0, 8
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 8, 0
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 8 with 4
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

						//mmc.c, line 263
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
						//extern: comparing 0 with 8
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

						//mmc.c, line 264
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
	mr	r0

						//mmc.c, line 265
						//pcreltotemp
	.lipcrel	l117
	add	r7
l120: # 
						// allocreg r1

						//mmc.c, line 268
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 3
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l3,0
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

						//mmc.c, line 269
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
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 269
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

						//mmc.c, line 269
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 260
						// matchobj comparing flags 6a with 82
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	254
	cmp	r0

						//mmc.c, line 269
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l136
		add	r7
						// freereg r1
l134: # 
						// allocreg r1

						//mmc.c, line 271
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
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 271
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l3,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
	addt	r1
						// (save temp)store type 4
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//mmc.c, line 271
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 240 type 104
						// matchobj comparing flags 240 with 2
						// reg r5 - only match against tmp
	mt	r5
	cmp	r1
						// freereg r1

						//mmc.c, line 271
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l127
		add	r7
						// allocreg r1

						//mmc.c, line 273
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 240
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
	.liconst	1
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

						//mmc.c, line 273
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_Errors
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
	.liabs	l128,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//mmc.c, line 273
		// Offsets 0, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 0
		// Real offset of type is 4, isauto 0
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

						//mmc.c, line 273
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

						//mmc.c, line 273
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
						//extern: comparing 0 with 8
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

						//mmc.c, line 274
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
	.liabs	l129,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 274
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with 82
	.liconst	4
	add	r6

						//mmc.c, line 275
		// Offsets 3, 0
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
	.liconst	3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 276
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0

						//mmc.c, line 277
						//pcreltotemp
	.lipcrel	l117
	add	r7
l127: # 

						//mmc.c, line 269
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 269
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

						//mmc.c, line 269
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 260
						// deref 
	//nop
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	254
	cmp	r0

						//mmc.c, line 269
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l134
		add	r7
						// freereg r1
l136: # 
						// allocreg r1

						//mmc.c, line 280
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
						// const
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
l135: # 

						//mmc.c, line 281
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//mmc.c, line 281
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l6,0
						// static pe is varadr
	mr	r1
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg

						//mmc.c, line 281
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 260, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 42
						// deref 
	byt
	ld	r3
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//mmc.c, line 281
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	1
	add	r2
						// (save result) // isreg

						//mmc.c, line 281
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	16
	sgn
	cmp	r2

						//mmc.c, line 281
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l135
		add	r7
						// allocreg r1

						//mmc.c, line 283
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
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 284
						// Z disposable
		// Offsets 255, 0
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

						//mmc.c, line 286
						// Z disposable
		// Offsets 3, 0
		// Have am? no, yes
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
	.liconst	3
						// (save temp)store type 1
	stbinc	r4
						//Disposable, postinc doesn't matter.
						//save_temp done

						//mmc.c, line 287
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0
l117: # 
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

	.section	.rodata.14
l122:
	.byte	71
	.byte	101
	.byte	116
	.byte	67
	.byte	83
	.byte	68
	.byte	32
	.byte	45
	.byte	32
	.byte	105
	.byte	110
	.byte	118
	.byte	97
	.byte	108
	.byte	105
	.byte	100
	.byte	32
	.byte	114
	.byte	101
	.byte	115
	.byte	112
	.byte	111
	.byte	110
	.byte	115
	.byte	101
	.byte	0
	.section	.rodata.15
l121:
	.byte	67
	.byte	77
	.byte	68
	.byte	57
	.byte	32
	.byte	40
	.byte	71
	.byte	69
	.byte	84
	.byte	95
	.byte	67
	.byte	83
	.byte	68
	.byte	41
	.byte	58
	.byte	32
	.byte	105
	.byte	110
	.byte	118
	.byte	97
	.byte	108
	.byte	105
	.byte	100
	.byte	32
	.byte	114
	.byte	101
	.byte	115
	.byte	112
	.byte	111
	.byte	110
	.byte	115
	.byte	101
	.byte	32
	.byte	48
	.byte	120
	.byte	37
	.byte	48
	.byte	50
	.byte	88
	.byte	32
	.byte	13
	.byte	0
	.section	.rodata.16
l128:
	.byte	71
	.byte	101
	.byte	116
	.byte	67
	.byte	83
	.byte	68
	.byte	32
	.byte	45
	.byte	32
	.byte	78
	.byte	111
	.byte	32
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	32
	.byte	116
	.byte	111
	.byte	107
	.byte	101
	.byte	110
	.byte	0
	.section	.rodata.17
l129:
	.byte	67
	.byte	77
	.byte	68
	.byte	57
	.byte	32
	.byte	40
	.byte	82
	.byte	69
	.byte	65
	.byte	68
	.byte	95
	.byte	66
	.byte	76
	.byte	79
	.byte	67
	.byte	75
	.byte	41
	.byte	58
	.byte	32
	.byte	110
	.byte	111
	.byte	32
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	32
	.byte	116
	.byte	111
	.byte	107
	.byte	101
	.byte	110
	.byte	33
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
	.section	.text.18
	.global	_MMC_GetCapacity
_MMC_GetCapacity:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4

						//mmc.c, line 294
						//call
						//pcreltotemp
	.lipcrel	l116 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//mmc.c, line 295
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l6,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 295
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	192
	and	r1
						// (save result) // isreg

						//mmc.c, line 295
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	64
	cmp	r1
						// freereg r1

						//mmc.c, line 295
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l141
		add	r7
						// allocreg r1

						//mmc.c, line 297
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l6,7
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 297
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	63
	and	r1
						// (save result) // isreg

						//mmc.c, line 297
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	26
	shl	r1
						// (save result) // isreg

						//mmc.c, line 297
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						//Saving to reg r4
						// (save temp)isreg
	mr	r4
						//save_temp done
						//No need to mask - same size
						// freereg r1
						// allocreg r1

						//mmc.c, line 298
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l6,8
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 298
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	18
	shl	r1
						// (save result) // isreg

						//mmc.c, line 298
						//FIXME convert
						// (convert - reducing type 3 to 104
						//No need to mask - same size

						//mmc.c, line 298
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 5, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	or	r4
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//mmc.c, line 299
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l6,9
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 299
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	10
	shl	r1
						// (save result) // isreg

						//mmc.c, line 299
						//FIXME convert
						// (convert - reducing type 3 to 104
						//No need to mask - same size

						//mmc.c, line 299
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 5, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	or	r4
						// (save result) // isreg
						// freereg r1

						//mmc.c, line 300
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1024
	add	r4
						// (save result) // isreg

						//mmc.c, line 303
						//pcreltotemp
	.lipcrel	l142
	add	r7
l141: # 
						// allocreg r1

						//mmc.c, line 306
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l6,5
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 306
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	15
	and	r1
						// (save result) // isreg

						//mmc.c, line 307
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	9
	sub	r1
						// (save result) // isreg

						//mmc.c, line 307
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
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
						// reg r1 - only match against tmp
	mt	r1
	shl	r0
						// (save result) // isreg
	mt	r0
	mr	r1
						// allocreg r2

						//mmc.c, line 308
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l6,6
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//mmc.c, line 308
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	3
	and	r2
						// (save result) // isreg

						//mmc.c, line 308
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	10
	shl	r2
						// (save result) // isreg

						//mmc.c, line 308
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
						//Saving to reg r4
						// (save temp)isreg
	mr	r4
						//save_temp done
						//No need to mask - same size
						// freereg r2
						// allocreg r2

						//mmc.c, line 309
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l6,7
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//mmc.c, line 309
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	shl	r2
						// (save result) // isreg

						//mmc.c, line 309
						//FIXME convert
						// (convert - reducing type 3 to 104
						//No need to mask - same size

						//mmc.c, line 309
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 5, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r4
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//mmc.c, line 310
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l6,8
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r2
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	6
	shr	r2
						// (save result) // isreg

						//mmc.c, line 310
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	3
	and	r2
						// (save result) // isreg

						//mmc.c, line 310
						//FIXME convert
						// (convert - reducing type 3 to 104
						//No need to mask - same size

						//mmc.c, line 310
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 5, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r4
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//mmc.c, line 311
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l6,9
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//mmc.c, line 311
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	3
	and	r2
						// (save result) // isreg

						//mmc.c, line 311
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	shl	r2
						// (save result) // isreg
						// allocreg r3

						//mmc.c, line 312
						// (bitwise/arithmetic) 	//ops: 0, 0, 4
						// (obj to r3) flags 2 type 101
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l6,10
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r3
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	7
	shr	r3
						// (save result) // isreg

						//mmc.c, line 312
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	and	r3
						// (save result) // isreg

						//mmc.c, line 312
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
	or	r2
						// (save result) // isreg
						// freereg r3

						//mmc.c, line 313
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	add	r4
						// (save result) // isreg

						//mmc.c, line 314
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	add	r2
						// (save result) // isreg

						//mmc.c, line 314
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 5, 3, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	shl	r4
						// (save result) // isreg
						// freereg r2

						//mmc.c, line 315
						//FIXME convert
						// (convert - reducing type 3 to 104
						//No need to mask - same size

						//mmc.c, line 315
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 5, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	mul	r4
						// (save result) // isreg
						// freereg r1
l142: # 

						//mmc.c, line 316
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l1,4
						// static pe not varadr
						//sizemod based on type 0x3
	stmpdec	r4

						//mmc.c, line 317
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 104
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	mr	r0
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
	.section	.text.19
	.global	_MMC_ReadMultiple
_MMC_ReadMultiple:
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
						// (obj to tmp) flags 40 type 104
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 4
	st	r6
						//save_temp done
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
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	255
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

						//mmc.c, line 332
						// (bitwise/arithmetic) 	//ops: 0, 7, 1
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	28
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 2
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r6
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// allocreg r1

						//mmc.c, line 332
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x3
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//mmc.c, line 332
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0x104
	ldidx	r6
	cmp	r1
						// freereg r1

						//mmc.c, line 332
	cond	SGT
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l146
		add	r7
						// allocreg r1

						//mmc.c, line 334
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
	.liconst	1
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

						//mmc.c, line 334
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_Errors
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
	.liabs	l147,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//mmc.c, line 334
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	4
						//sizemod based on type 0x104
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//mmc.c, line 334
		// Offsets 0, 8
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 8, 0
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//mmc.c, line 334
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 8
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

						//mmc.c, line 335
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
	mr	r0

						//mmc.c, line 336
						//pcreltotemp
	.lipcrel	l143
	add	r7
						// freereg r1
l146: # 
						// allocreg r1

						//mmc.c, line 338
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l5,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 338
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	3
	cmp	r1
						// freereg r1

						//mmc.c, line 338
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l149
		add	r7
						// allocreg r1

						//mmc.c, line 339
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 62 type 104
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	9
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching
						// freereg r1
l149: # 

						//mmc.c, line 340
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	2
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 342
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	stdec	r6
						// allocreg r1

						//mmc.c, line 342
		// Offsets 82, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	82
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 342
						//call
						//pcreltotemp
	.lipcrel	_MMC_Command // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//mmc.c, line 342
						// (test)
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//mmc.c, line 342
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l151
		add	r7

						//mmc.c, line 344
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r6
	stdec	r6
						// allocreg r1

						//mmc.c, line 344
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 62
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l4,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 344
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//mmc.c, line 344
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l152,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 344
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
	.liconst	12
	add	r6

						//mmc.c, line 345
		// Offsets 3, 0
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
	.liconst	3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 346
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
	.liconst	1
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

						//mmc.c, line 346
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_Errors
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

						//mmc.c, line 346
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l4,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 4)
	.liabs	_Errors, 8
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//mmc.c, line 346
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 8 with 4
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//mmc.c, line 346
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 62
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 8
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

						//mmc.c, line 347
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
	mr	r0

						//mmc.c, line 348
						//pcreltotemp
	.lipcrel	l143
	add	r7
l151: # 
						// allocreg r1

						//mmc.c, line 350
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// var, auto|reg
	.liconst	28
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 350
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r0
				//return 0
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

						//mmc.c, line 350
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//mmc.c, line 350
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l174
		add	r7
l171: # 
						// allocreg r1

						//mmc.c, line 353
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 3
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l3,0
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

						//mmc.c, line 354
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 501
						// matchobj comparing flags 240 with 1
						// matchobj comparing flags 240 with 82
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 354
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 240
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
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//mmc.c, line 354
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
	.liconst	254
	cmp	r0

						//mmc.c, line 354
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l175
		add	r7
						// freereg r1
		// Offsets 1000000, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1000000
						// (save temp)isreg
	mr	r5
						//save_temp done
l157: # 
						// allocreg r1

						//mmc.c, line 356
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 137
		// Real offset of type is 137, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 356
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l3,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
	addt	r1
						// (save temp)store type 4
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//mmc.c, line 356
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 240 type 104
						// matchobj comparing flags 240 with 2
						// reg r5 - only match against tmp
	mt	r5
	cmp	r1
						// freereg r1

						//mmc.c, line 356
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l161
		add	r7
						// allocreg r1

						//mmc.c, line 358
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 240
						// deref 
	ld	r6
	stdec	r6

						//mmc.c, line 358
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 62
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 62
						// static
	.liabs	l162,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 358
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6

						//mmc.c, line 359
		// Offsets 3, 0
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
	.liconst	3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 360
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
	.liconst	1
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

						//mmc.c, line 360
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_Errors
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
	.liabs	l163,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//mmc.c, line 360
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l4,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 4)
	.liabs	_Errors, 8
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//mmc.c, line 360
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 8 with 4
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 62 type 104
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//mmc.c, line 360
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 62
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 8
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

						//mmc.c, line 361
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
	mr	r0

						//mmc.c, line 362
						//pcreltotemp
	.lipcrel	l143
	add	r7
l161: # 

						//mmc.c, line 354
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 354
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

						//mmc.c, line 354
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
	.liconst	254
	cmp	r0

						//mmc.c, line 354
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l157
		add	r7
						// freereg r1
l175: # 
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	255
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r1

						//mmc.c, line 365
						// (test)
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	24
	ldidx	r6

						//mmc.c, line 365
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l165
		add	r7

						//mmc.c, line 367
		// Offsets 64, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	64
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 368
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 501
						// matchobj comparing flags 240 with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 369
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 260 type 501
						// matchobj comparing flags 260 with 240
						// deref 
	byt
	ld	r3
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 260
						// matchobj comparing flags 1 with 260
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//mmc.c, line 370
		// Offsets 65, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	65
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 373
						//pcreltotemp
	.lipcrel	l166
	add	r7
l165: # 

						//mmc.c, line 374
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	24
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//mmc.c, line 375
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
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 102 type 104
						// matchobj comparing flags 102 with 1
						// matchobj comparing flags 102 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	4
						//sizemod based on type 0x104
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
l167: # 

						//mmc.c, line 377
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 501
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 377
		// Offsets 0, 0
		// Have am? no, yes
		// flags 260, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 240
						// deref 
	byt
	ld	r3
						// (save temp)store type 1
	stbinc	r2
						//save_temp done

						//mmc.c, line 378
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 501
						// matchobj comparing flags 240 with 260
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 378
		// Offsets 0, 0
		// Have am? no, yes
		// flags 260, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 240
						// deref 
	byt
	ld	r3
						// (save temp)store type 1
	stbinc	r2
						//save_temp done

						//mmc.c, line 379
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 501
						// matchobj comparing flags 240 with 260
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 379
		// Offsets 0, 0
		// Have am? no, yes
		// flags 260, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 240
						// deref 
	byt
	ld	r3
						// (save temp)store type 1
	stbinc	r2
						//save_temp done

						//mmc.c, line 380
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 501
						// matchobj comparing flags 240 with 260
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 380
		// Offsets 0, 0
		// Have am? no, yes
		// flags 260, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 240
						// deref 
	byt
	ld	r3
						// (save temp)store type 1
	stbinc	r2
						//save_temp done

						//mmc.c, line 376
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	1
	add	r4
						// (save result) // isreg

						//mmc.c, line 376
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	128
	cmp	r4

						//mmc.c, line 376
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l167
		add	r7
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

						//mmc.c, line 383
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	24
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	512
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
						// freereg r1
l166: # 

						//mmc.c, line 386
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 501
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 387
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 501
						// matchobj comparing flags 240 with 240
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//mmc.c, line 350
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 100, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 240
						// var, auto|reg
						// matchobj comparing flags 1 with 240
	.liconst	28
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 350
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r0
				//return 0
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

						//mmc.c, line 350
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//mmc.c, line 350
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l171
		add	r7
l174: # 
						// allocreg r1

						//mmc.c, line 390
						//call
						//pcreltotemp
	.lipcrel	_MMC_CMD12 // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//mmc.c, line 392
						// Z disposable
		// Offsets 3, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	3
						// (save temp)store type 1
	stbinc	r4
						//Disposable, postinc doesn't matter.
						//save_temp done

						//mmc.c, line 393
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0
l143: # 
						// Z disposable
		// Offsets 255, 0
		// Have am? no, yes
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	255
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
						// freereg r2
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

	.section	.rodata.1a
l147:
	.byte	82
	.byte	101
	.byte	97
	.byte	100
	.byte	77
	.byte	32
	.byte	98
	.byte	101
	.byte	121
	.byte	111
	.byte	110
	.byte	100
	.byte	32
	.byte	101
	.byte	110
	.byte	100
	.byte	32
	.byte	111
	.byte	102
	.byte	32
	.byte	100
	.byte	101
	.byte	118
	.byte	105
	.byte	99
	.byte	101
	.byte	46
	.byte	0
	.section	.rodata.1b
l153:
	.byte	67
	.byte	77
	.byte	68
	.byte	49
	.byte	56
	.byte	32
	.byte	45
	.byte	32
	.byte	105
	.byte	110
	.byte	118
	.byte	97
	.byte	108
	.byte	105
	.byte	100
	.byte	32
	.byte	114
	.byte	101
	.byte	115
	.byte	112
	.byte	111
	.byte	110
	.byte	115
	.byte	101
	.byte	0
	.section	.rodata.1c
l152:
	.byte	67
	.byte	77
	.byte	68
	.byte	49
	.byte	56
	.byte	32
	.byte	40
	.byte	82
	.byte	69
	.byte	65
	.byte	68
	.byte	95
	.byte	77
	.byte	85
	.byte	76
	.byte	84
	.byte	73
	.byte	80
	.byte	76
	.byte	69
	.byte	95
	.byte	66
	.byte	76
	.byte	79
	.byte	67
	.byte	75
	.byte	41
	.byte	58
	.byte	32
	.byte	105
	.byte	110
	.byte	118
	.byte	97
	.byte	108
	.byte	105
	.byte	100
	.byte	32
	.byte	114
	.byte	101
	.byte	115
	.byte	112
	.byte	111
	.byte	110
	.byte	115
	.byte	101
	.byte	32
	.byte	48
	.byte	120
	.byte	37
	.byte	48
	.byte	50
	.byte	88
	.byte	32
	.byte	40
	.byte	108
	.byte	98
	.byte	97
	.byte	61
	.byte	37
	.byte	108
	.byte	117
	.byte	41
	.byte	13
	.byte	0
	.section	.rodata.1d
l163:
	.byte	67
	.byte	77
	.byte	68
	.byte	49
	.byte	56
	.byte	32
	.byte	45
	.byte	32
	.byte	110
	.byte	111
	.byte	32
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	32
	.byte	116
	.byte	111
	.byte	107
	.byte	101
	.byte	110
	.byte	0
	.section	.rodata.1e
l162:
	.byte	67
	.byte	77
	.byte	68
	.byte	49
	.byte	56
	.byte	32
	.byte	40
	.byte	82
	.byte	69
	.byte	65
	.byte	68
	.byte	95
	.byte	77
	.byte	85
	.byte	76
	.byte	84
	.byte	73
	.byte	80
	.byte	76
	.byte	69
	.byte	95
	.byte	66
	.byte	76
	.byte	79
	.byte	67
	.byte	75
	.byte	41
	.byte	58
	.byte	32
	.byte	110
	.byte	111
	.byte	32
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	32
	.byte	116
	.byte	111
	.byte	107
	.byte	101
	.byte	110
	.byte	33
	.byte	32
	.byte	40
	.byte	108
	.byte	98
	.byte	97
	.byte	61
	.byte	37
	.byte	108
	.byte	117
	.byte	41
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
	.section	.text.1f
	.global	_MMC_Write
_MMC_Write:
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
						// (obj to tmp) flags 40 type 104
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
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
						// allocreg r1

						//mmc.c, line 401
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x3
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//mmc.c, line 401
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	//mt
	cmp	r5
						// freereg r1

						//mmc.c, line 401
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l180
		add	r7
						// allocreg r1

						//mmc.c, line 403
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 4a
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
	.liconst	1
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

						//mmc.c, line 403
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_Errors
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
	.liabs	l181,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//mmc.c, line 403
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 4)
	.liabs	_Errors, 8
						// extern pe not varadr
						//sizemod based on type 0x3
	stmpdec	r5

						//mmc.c, line 403
		// Offsets 0, 8
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 8, 0
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 8 with 4
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//mmc.c, line 403
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 8
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

						//mmc.c, line 404
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
	mr	r0

						//mmc.c, line 405
						//pcreltotemp
	.lipcrel	l177
	add	r7
						// freereg r1
l180: # 
						// allocreg r1

						//mmc.c, line 407
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l5,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 407
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	3
	cmp	r1
						// freereg r1

						//mmc.c, line 407
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l183
		add	r7
						// allocreg r1

						//mmc.c, line 408
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	9
	shl	r5
						// (save result) // isreg
						// freereg r1
l183: # 

						//mmc.c, line 410
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	2
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 412
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6
						// allocreg r1

						//mmc.c, line 412
		// Offsets 88, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	88
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 412
						//call
						//pcreltotemp
	.lipcrel	_MMC_Command // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//mmc.c, line 412
						// (test)
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//mmc.c, line 412
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l185
		add	r7

						//mmc.c, line 414
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6
						// allocreg r1

						//mmc.c, line 414
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 42
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l4,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 414
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//mmc.c, line 414
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l186,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 414
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
	.liconst	12
	add	r6

						//mmc.c, line 415
		// Offsets 3, 0
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
	.liconst	3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 416
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
	.liconst	1
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

						//mmc.c, line 416
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_Errors
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
	.liabs	l187,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//mmc.c, line 416
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l4,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 4)
	.liabs	_Errors, 8
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//mmc.c, line 416
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 8)
	.liabs	_Errors, 12
						// extern pe not varadr
						//sizemod based on type 0x3
	stmpdec	r5

						//mmc.c, line 416
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 8
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

						//mmc.c, line 417
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
	mr	r0

						//mmc.c, line 418
						//pcreltotemp
	.lipcrel	l177
	add	r7
l185: # 
						// allocreg r1

						//mmc.c, line 420
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 421
		// Offsets 254, 0
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
	.liconst	254
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 424
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 102 type a
						// matchobj comparing flags 102 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
l188: # 

						//mmc.c, line 425
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
	ldbinc	r4
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 425
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r2
						// (save result) // isreg

						//mmc.c, line 425
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	512
	cmp	r2

						//mmc.c, line 425
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l188
		add	r7
						// freereg r1
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

						//mmc.c, line 427
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
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 428
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

						//mmc.c, line 430
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

						//mmc.c, line 430
		// Offsets 0, 0
		// Have am? no, no
		// flags 260, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l4,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 82
						// matchobj comparing flags 260 with 82
						// deref 
	byt
	ld	r3
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//mmc.c, line 436
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 260
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l4,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done
						// allocreg r1

						//mmc.c, line 436
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 62 with 2
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
	.liconst	31
	and	r1
						// (save result) // isreg

						//mmc.c, line 436
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	5
	cmp	r1
						// freereg r1

						//mmc.c, line 436
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l193
		add	r7
						// allocreg r1

						//mmc.c, line 438
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6

						//mmc.c, line 438
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//mmc.c, line 438
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l194,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 438
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
						// matchobj comparing flags 1 with 82
	.liconst	12
	add	r6

						//mmc.c, line 439
		// Offsets 3, 0
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
	.liconst	3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 440
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
	.liconst	1
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

						//mmc.c, line 440
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_Errors
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
	.liabs	l195,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//mmc.c, line 440
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l4,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 4)
	.liabs	_Errors, 8
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//mmc.c, line 440
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 8)
	.liabs	_Errors, 12
						// extern pe not varadr
						//sizemod based on type 0x3
	stmpdec	r5

						//mmc.c, line 440
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 8
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

						//mmc.c, line 441
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
	mr	r0

						//mmc.c, line 442
						//pcreltotemp
	.lipcrel	l177
	add	r7
l193: # 

						//mmc.c, line 444
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 3
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l3,0
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

						//mmc.c, line 445
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
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 445
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

						//mmc.c, line 445
						// (test)
						// (obj to tmp) flags 6a type 403
						// matchobj comparing flags 6a with 260
						// matchobj comparing flags 6a with 82
						// deref 
	ld	r6

						//mmc.c, line 445
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l206
		add	r7
						// freereg r1
l204: # 
						// allocreg r1

						//mmc.c, line 447
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 156
		// Real offset of type is 156, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 447
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l3,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
	addt	r1
						// (save temp)store type 4
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//mmc.c, line 447
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1000000
	cmp	r1
						// freereg r1

						//mmc.c, line 447
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l200
		add	r7
						// allocreg r1

						//mmc.c, line 449
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6

						//mmc.c, line 449
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l201,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 449
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6

						//mmc.c, line 450
		// Offsets 3, 0
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
	.liconst	3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 451
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
	.liconst	1
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

						//mmc.c, line 451
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_Errors
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
	.liabs	l202,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//mmc.c, line 451
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 4)
	.liabs	_Errors, 8
						// extern pe not varadr
						//sizemod based on type 0x3
	stmpdec	r5

						//mmc.c, line 451
		// Offsets 0, 8
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 8, 0
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 8 with 4
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

						//mmc.c, line 451
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
						//extern: comparing 0 with 8
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

						//mmc.c, line 452
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
	mr	r0

						//mmc.c, line 453
						//pcreltotemp
	.lipcrel	l177
	add	r7
l200: # 

						//mmc.c, line 445
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 445
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

						//mmc.c, line 445
						// (test)
						// (obj to tmp) flags 6a type 403
						// matchobj comparing flags 6a with 260
						// deref 
	ld	r6

						//mmc.c, line 445
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l204
		add	r7
						// freereg r1
l206: # 
						// allocreg r1

						//mmc.c, line 456
						// Z disposable
		// Offsets 3, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	3
						// (save temp)store type 1
	stbinc	r4
						//Disposable, postinc doesn't matter.
						//save_temp done

						//mmc.c, line 457
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0
l177: # 
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

	.section	.rodata.20
l181:
	.byte	82
	.byte	101
	.byte	97
	.byte	100
	.byte	32
	.byte	98
	.byte	101
	.byte	121
	.byte	111
	.byte	110
	.byte	100
	.byte	32
	.byte	101
	.byte	110
	.byte	100
	.byte	32
	.byte	111
	.byte	102
	.byte	32
	.byte	100
	.byte	101
	.byte	118
	.byte	105
	.byte	99
	.byte	101
	.byte	46
	.byte	0
	.section	.rodata.21
l187:
	.byte	67
	.byte	77
	.byte	68
	.byte	50
	.byte	52
	.byte	32
	.byte	105
	.byte	110
	.byte	118
	.byte	97
	.byte	108
	.byte	105
	.byte	100
	.byte	32
	.byte	114
	.byte	101
	.byte	115
	.byte	112
	.byte	111
	.byte	110
	.byte	115
	.byte	101
	.byte	0
	.section	.rodata.22
l186:
	.byte	67
	.byte	77
	.byte	68
	.byte	50
	.byte	52
	.byte	32
	.byte	40
	.byte	87
	.byte	82
	.byte	73
	.byte	84
	.byte	69
	.byte	95
	.byte	66
	.byte	76
	.byte	79
	.byte	67
	.byte	75
	.byte	41
	.byte	58
	.byte	32
	.byte	105
	.byte	110
	.byte	118
	.byte	97
	.byte	108
	.byte	105
	.byte	100
	.byte	32
	.byte	114
	.byte	101
	.byte	115
	.byte	112
	.byte	111
	.byte	110
	.byte	115
	.byte	101
	.byte	32
	.byte	48
	.byte	120
	.byte	37
	.byte	48
	.byte	50
	.byte	88
	.byte	32
	.byte	40
	.byte	108
	.byte	98
	.byte	97
	.byte	61
	.byte	37
	.byte	108
	.byte	117
	.byte	41
	.byte	13
	.byte	0
	.section	.rodata.23
l195:
	.byte	67
	.byte	77
	.byte	68
	.byte	50
	.byte	52
	.byte	32
	.byte	105
	.byte	110
	.byte	118
	.byte	97
	.byte	108
	.byte	105
	.byte	100
	.byte	32
	.byte	114
	.byte	101
	.byte	115
	.byte	112
	.byte	111
	.byte	110
	.byte	115
	.byte	101
	.byte	0
	.section	.rodata.24
l194:
	.byte	67
	.byte	77
	.byte	68
	.byte	50
	.byte	52
	.byte	32
	.byte	40
	.byte	87
	.byte	82
	.byte	73
	.byte	84
	.byte	69
	.byte	95
	.byte	66
	.byte	76
	.byte	79
	.byte	67
	.byte	75
	.byte	41
	.byte	58
	.byte	32
	.byte	105
	.byte	110
	.byte	118
	.byte	97
	.byte	108
	.byte	105
	.byte	100
	.byte	32
	.byte	115
	.byte	116
	.byte	97
	.byte	116
	.byte	117
	.byte	115
	.byte	32
	.byte	48
	.byte	120
	.byte	37
	.byte	48
	.byte	50
	.byte	88
	.byte	32
	.byte	40
	.byte	108
	.byte	98
	.byte	97
	.byte	61
	.byte	37
	.byte	108
	.byte	117
	.byte	41
	.byte	13
	.byte	0
	.section	.rodata.25
l202:
	.byte	67
	.byte	77
	.byte	68
	.byte	50
	.byte	52
	.byte	32
	.byte	112
	.byte	111
	.byte	115
	.byte	116
	.byte	45
	.byte	119
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	32
	.byte	116
	.byte	105
	.byte	109
	.byte	101
	.byte	111
	.byte	117
	.byte	116
	.byte	0
	.section	.rodata.26
l201:
	.byte	67
	.byte	77
	.byte	68
	.byte	50
	.byte	52
	.byte	32
	.byte	40
	.byte	87
	.byte	82
	.byte	73
	.byte	84
	.byte	69
	.byte	95
	.byte	66
	.byte	76
	.byte	79
	.byte	67
	.byte	75
	.byte	41
	.byte	58
	.byte	32
	.byte	98
	.byte	117
	.byte	115
	.byte	121
	.byte	32
	.byte	119
	.byte	97
	.byte	105
	.byte	116
	.byte	32
	.byte	116
	.byte	105
	.byte	109
	.byte	101
	.byte	111
	.byte	117
	.byte	116
	.byte	33
	.byte	32
	.byte	40
	.byte	108
	.byte	98
	.byte	97
	.byte	61
	.byte	37
	.byte	108
	.byte	117
	.byte	41
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
	.section	.text.27
	.global	_MMC_Command
_MMC_Command:
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
						// (obj to tmp) flags 40 type 101
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
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

						//mmc.c, line 465
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 2
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l2,0
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

						//mmc.c, line 466
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
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 468
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 42 type 501
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//mmc.c, line 469
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 42
						// reg r5 - only match against tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 469
						//call
						//pcreltotemp
	.lipcrel	_MMC_CRC // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r2

						//mmc.c, line 471
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 104
						// var, auto|reg
	.liconst	16
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	24
	shr	r2
						// (save result) // isreg

						//mmc.c, line 471
						//FIXME convert
						// (convert - reducing type 104 to 101
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r2

						//mmc.c, line 472
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 501
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//mmc.c, line 473
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//mmc.c, line 473
						//call
						//pcreltotemp
	.lipcrel	_MMC_CRC // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r2

						//mmc.c, line 475
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 104
						// var, auto|reg
	.liconst	16
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	shr	r2
						// (save result) // isreg

						//mmc.c, line 475
						//FIXME convert
						// (convert - reducing type 104 to 101
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r2

						//mmc.c, line 476
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 501
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//mmc.c, line 477
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//mmc.c, line 477
						//call
						//pcreltotemp
	.lipcrel	_MMC_CRC // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r2

						//mmc.c, line 479
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 104
						// var, auto|reg
	.liconst	16
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	shr	r2
						// (save result) // isreg

						//mmc.c, line 479
						//FIXME convert
						// (convert - reducing type 104 to 101
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r2

						//mmc.c, line 480
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 501
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//mmc.c, line 481
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//mmc.c, line 481
						//call
						//pcreltotemp
	.lipcrel	_MMC_CRC // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r2

						//mmc.c, line 483
						//FIXME convert
						// (convert - reducing type 104 to 101
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 104
						// var, auto|reg
	.liconst	16
	ldidx	r6
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// matchobj comparing flags 1 with 2
	.liconst	255
	and	r2

						//mmc.c, line 484
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 501
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
						// allocreg r1

						//mmc.c, line 485
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//mmc.c, line 485
						//call
						//pcreltotemp
	.lipcrel	_MMC_CRC // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//mmc.c, line 487
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l2,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 487
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	shl	r1
						// (save result) // isreg

						//mmc.c, line 487
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l2,4
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1

						//mmc.c, line 488
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l2,0
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
	.liabs	l2,0
						// static pe not varadr
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!

						//mmc.c, line 489
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 501
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l2,0
						//static deref
						//sizemod based on type 0x501
	byt
	ldt
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 491
		// Offsets 100, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 87
		// Real offset of type is 87, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	100
						// (save temp)isreg
	mr	r4
						//save_temp done
l213: # 
						// allocreg r2

						//mmc.c, line 493
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 493
		// Offsets 0, 0
		// Have am? no, no
		// flags 260, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//mmc.c, line 494
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 260
						// reg r2 - only match against tmp
	//mt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 494
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	255
	cmp	r1
						// freereg r1

						//mmc.c, line 494
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l214
		add	r7
						// allocreg r1

						//mmc.c, line 494
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 92
		// Real offset of type is 92, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 494
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r4
						// (save result) // isreg

						//mmc.c, line 494
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//mmc.c, line 494
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l213
		add	r7
l214: # 
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l4,4
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r2
						// freereg r2
						// allocreg r1

						//mmc.c, line 496
						//setreturn
						// (obj to r0) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l4,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// freereg r1
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
	.section	.text.28
	.global	_MMC_CMD12
_MMC_CMD12:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-4
	add	r6
						// allocreg r5
		// Offsets 1000000, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1000000
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

						//mmc.c, line 503
		// Offsets 76, 0
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
	.liconst	76
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 504
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

						//mmc.c, line 505
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

						//mmc.c, line 506
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

						//mmc.c, line 507
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

						//mmc.c, line 508
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

						//mmc.c, line 509
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

						//mmc.c, line 511
		// Offsets 100, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	100
						// (save temp)isreg
	mr	r2
						//save_temp done
l227: # 

						//mmc.c, line 513
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 513
		// Offsets 0, 0
		// Have am? no, no
		// flags 260, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 260 type 101
						// matchobj comparing flags 260 with 1
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//mmc.c, line 515
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 260
						// reg r4 - only match against tmp
	//mt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 515
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	255
	cmp	r1
						// freereg r1

						//mmc.c, line 515
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l229
		add	r7
						// allocreg r1

						//mmc.c, line 515
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 5
		// Real offset of type is 5, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 515
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r2
						// (save result) // isreg

						//mmc.c, line 515
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//mmc.c, line 515
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l227
		add	r7
l229: # 
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l4,4
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r4
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

						//mmc.c, line 517
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 3
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l3,0
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

						//mmc.c, line 518
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
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 518
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

						//mmc.c, line 518
						// (test)
						// (obj to tmp) flags 6a type 403
						// matchobj comparing flags 6a with 260
						// matchobj comparing flags 6a with 82
						// deref 
	ld	r6

						//mmc.c, line 518
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l230
		add	r7
l228: # 
						// allocreg r1

						//mmc.c, line 520
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 520
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l3,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
	addt	r1
						// (save temp)store type 4
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//mmc.c, line 520
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 240 type 104
						// matchobj comparing flags 240 with 2
						// reg r5 - only match against tmp
	mt	r5
	cmp	r1
						// freereg r1

						//mmc.c, line 520
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l225
		add	r7

						//mmc.c, line 522
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 240
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 240
						// static
	.liabs	l226,0
						// static pe is varadr
	stdec	r6

						//mmc.c, line 522
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//mmc.c, line 523
		// Offsets 3, 0
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
	.liconst	3
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//mmc.c, line 524
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0

						//mmc.c, line 525
						//pcreltotemp
	.lipcrel	l215
	add	r7
l225: # 

						//mmc.c, line 518
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	255
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//mmc.c, line 518
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

						//mmc.c, line 518
						// (test)
						// (obj to tmp) flags 6a type 403
						// matchobj comparing flags 6a with 260
						// deref 
	ld	r6

						//mmc.c, line 518
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l228
		add	r7
l230: # 

						//mmc.c, line 527
						//setreturn
						// (obj to r0) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l4,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
l215: # 
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

	.section	.rodata.29
l226:
	.byte	67
	.byte	77
	.byte	68
	.byte	49
	.byte	50
	.byte	32
	.byte	40
	.byte	83
	.byte	84
	.byte	79
	.byte	80
	.byte	95
	.byte	84
	.byte	82
	.byte	65
	.byte	78
	.byte	83
	.byte	77
	.byte	73
	.byte	83
	.byte	83
	.byte	73
	.byte	79
	.byte	78
	.byte	41
	.byte	58
	.byte	32
	.byte	98
	.byte	117
	.byte	115
	.byte	121
	.byte	32
	.byte	119
	.byte	97
	.byte	105
	.byte	116
	.byte	32
	.byte	116
	.byte	105
	.byte	109
	.byte	101
	.byte	111
	.byte	117
	.byte	116
	.byte	33
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
	.section	.text.2a
	.global	_MMC_CRC
_MMC_CRC:
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
						// Destination is a variable with offset 0, 1
		// Real offset of type is 1, isauto 0
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
						// allocreg r3
						// allocreg r2
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 2
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 102 type 101
						// matchobj comparing flags 102 with 40
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l2,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//mmc.c, line 534
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 102
						// const
						// matchobj comparing flags 1 with 102
	.liconst	0
						// (save temp)isreg
	mr	r3
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
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	//mt
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	5
	addt	r6
						//sizemod based on type 0x101
	byt
	stmpdec	r5
		// Offsets 0, 0
		// Have am? no, no
		// flags 162, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 162 type 101
						// deref 
	byt
	ld	r6
						// (save temp)isreg
	mr	r5
						//save_temp done
l233: # 
						// allocreg r1

						//mmc.c, line 536
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 536
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	shl	r1
						// (save result) // isreg

						//mmc.c, line 536
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
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
						// matchobj comparing flags 1 with 4a
	.liconst	255
	and	r2
						// freereg r1

						//mmc.c, line 537
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	1
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//mmc.c, line 537
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
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

						//mmc.c, line 537
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l238
		add	r7
						// allocreg r1

						//mmc.c, line 538
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 538
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	9
	xor	r1
						// (save result) // isreg

						//mmc.c, line 538
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
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
						// matchobj comparing flags 1 with 4a
	.liconst	255
	and	r2
						// freereg r1
l238: # 

						//mmc.c, line 539
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 42 type 101
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//mmc.c, line 539
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

						//mmc.c, line 539
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l240
		add	r7
						// allocreg r1

						//mmc.c, line 540
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	9
	xor	r1
						// (save result) // isreg

						//mmc.c, line 540
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
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
						// matchobj comparing flags 1 with 4a
	.liconst	255
	and	r2
						// freereg r1
l240: # 
						// allocreg r1

						//mmc.c, line 541
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	shl	r1
						// (save result) // isreg

						//mmc.c, line 541
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	5
	addt	r6
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1

						//mmc.c, line 535
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	1
	add	r5
						// (save result) // isreg
						// storing UNSIGNED CHAR to register - must mask
	.liconst	0xff
	and	r5
						// allocreg r1

						//mmc.c, line 535
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//mmc.c, line 535
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

						//mmc.c, line 535
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l233
		add	r7
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l2,4
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r2
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

	.section	.bss.2b
	.align	4
	.lcomm	l1,4
	.section	.bss.2c
	.lcomm	l2,1
	.section	.bss.2d
	.align	4
	.lcomm	l3,4
	.section	.bss.2e
	.lcomm	l4,1
	.section	.bss.2f
	.lcomm	l5,1
	.section	.bss.30
	.lcomm	l6,16
