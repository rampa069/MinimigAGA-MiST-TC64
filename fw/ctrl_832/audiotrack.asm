	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_audiotrack_busy
_audiotrack_busy:
	stdec	r6
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
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1

						//audiotrack.c, line 13
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 21 type 501
						// matchobj comparing flags 21 with 40
						// const/deref
						// matchobj comparing flags 1 with 40
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a1 with 40
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 40
	.liconst	268435379
						//sizemod based on type 0x501
	byt
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done

						//audiotrack.c, line 13
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 21
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	1
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
						// allocreg r1

						//audiotrack.c, line 13
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with a
	.liconst	820
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1

						//audiotrack.c, line 13
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags a type 403
						// matchobj comparing flags a with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	4
						//sizemod based on type 0x403
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 6a type 403
						// matchobj comparing flags 6a with a
						// deref 
	ld	r1
	cmp	r0
						// freereg r1

						//audiotrack.c, line 13
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l3
		add	r7
						// allocreg r1

						//audiotrack.c, line 13
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 13
						//pcreltotemp
	.lipcrel	l4
	add	r7
l3: # 

						//audiotrack.c, line 13
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done
l4: # 

						//audiotrack.c, line 13
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 3
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// freereg r1
						// freereg r2
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
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
	.section	.text.1
	.global	_audiotrack_cue
_audiotrack_cue:
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

						//audiotrack.c, line 19
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	0
	stdec	r6
						// allocreg r1

						//audiotrack.c, line 19
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	832
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 19
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//audiotrack.c, line 19
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//audiotrack.c, line 19
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 19
						//call
						//pcreltotemp
	.lipcrel	_RASeek // extern
	add	r7
						// Deferred popping of 8 bytes (8 in total)
						// freereg r1
						// allocreg r2

						//audiotrack.c, line 20
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	836
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//audiotrack.c, line 20
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	824
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 20
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r2
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r2
						// freereg r1
						// freereg r3
						// matchobj comparing flags 1 with 6a
	.liconst	-8
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
	.section	.text.2
	.global	_audiotrack_play
_audiotrack_play:
	stdec	r6

						//audiotrack.c, line 26
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l10,0
						// static pe is varadr
	stdec	r6

						//audiotrack.c, line 26
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)

						//audiotrack.c, line 27
		// Offsets 1, 268435379
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435383, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	268435379
	mr	r0
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	-4
	sub	r6
	ldinc	r6
	mr	r7

	.section	.rodata.3
l10:
	.byte	69
	.byte	110
	.byte	97
	.byte	98
	.byte	108
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	97
	.byte	117
	.byte	100
	.byte	105
	.byte	111
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
	.section	.text.4
	.global	_audiotrack_stop
_audiotrack_stop:
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
		// Offsets 268435379, 0
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
	.liconst	268435379
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2
						// allocreg r1

						//audiotrack.c, line 33
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	840
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 33
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

						//audiotrack.c, line 35
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	2
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//audiotrack.c, line 36
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l13,0
						// static pe is varadr
	stdec	r6

						//audiotrack.c, line 36
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//audiotrack.c, line 37
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
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//audiotrack.c, line 38
						// (bitwise/arithmetic) 	//ops: 6, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	828
	addt	r5
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//audiotrack.c, line 38
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	2
	mul	r1
						// (save result) // isreg

						//audiotrack.c, line 38
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r1
						// freereg r1

						//audiotrack.c, line 38
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l24
		add	r7
l22: # 
						// allocreg r1

						//audiotrack.c, line 39
						// (bitwise/arithmetic) 	//ops: 7, 5, 2
						// (obj to r1) flags 62 type a
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 62
						// reg r4 - only match against tmp
	mt	r4
	add	r1
						// (save result) // isreg

						//audiotrack.c, line 39
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

						//audiotrack.c, line 38
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r4
						// (save result) // isreg
						// allocreg r1

						//audiotrack.c, line 38
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	2
	mul	r1
						// (save result) // isreg

						//audiotrack.c, line 38
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 4a type 3
						// reg r1 - only match against tmp
	mt	r1
	sgn
	cmp	r4
						// freereg r1

						//audiotrack.c, line 38
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l22
		add	r7
l24: # 

						//audiotrack.c, line 41
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	1
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done

						//audiotrack.c, line 42
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

						//audiotrack.c, line 42
						// (bitwise/arithmetic) 	//ops: 7, 0, 5
						// (obj to r4) flags 6a type 403
						// matchobj comparing flags 6a with 260
						// deref 
	//nop
	mr	r4
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	and	r4
						// (save result) // isreg

						//audiotrack.c, line 43
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l18,0
						// static pe is varadr
	stdec	r6

						//audiotrack.c, line 43
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//audiotrack.c, line 44
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

						//audiotrack.c, line 44
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

						//audiotrack.c, line 44
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
	cmp	r4

						//audiotrack.c, line 44
	cond	NEQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l25
		add	r7
l23: # 

						//audiotrack.c, line 44
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 260 type 501
						// deref 
	byt
	ld	r3
						// (save temp)store type 3
	st	r6
						//save_temp done

						//audiotrack.c, line 44
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 6a type 403
						// matchobj comparing flags 6a with 260
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	1
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

						//audiotrack.c, line 44
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags a type 403
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
	cmp	r4

						//audiotrack.c, line 44
	cond	EQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l23
		add	r7
l25: # 

						//audiotrack.c, line 46
						// Z disposable
		// Offsets 2, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 501
						// const
	.liconst	2
						// (save temp)store type 1
	stbinc	r3
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r1

						//audiotrack.c, line 47
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	820
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 47
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
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r1
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

	.section	.rodata.5
l13:
	.byte	67
	.byte	108
	.byte	101
	.byte	97
	.byte	114
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	97
	.byte	117
	.byte	100
	.byte	105
	.byte	111
	.byte	32
	.byte	98
	.byte	117
	.byte	102
	.byte	102
	.byte	101
	.byte	114
	.byte	10
	.byte	0
	.section	.rodata.6
l18:
	.byte	87
	.byte	97
	.byte	105
	.byte	116
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	102
	.byte	111
	.byte	114
	.byte	32
	.byte	97
	.byte	117
	.byte	100
	.byte	105
	.byte	111
	.byte	32
	.byte	116
	.byte	111
	.byte	32
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	32
	.byte	99
	.byte	108
	.byte	101
	.byte	97
	.byte	114
	.byte	101
	.byte	100
	.byte	32
	.byte	98
	.byte	117
	.byte	102
	.byte	102
	.byte	101
	.byte	114
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
	.section	.text.7
	.global	_audiotrack_fill
_audiotrack_fill:
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

						//audiotrack.c, line 53
						// (bitwise/arithmetic) 	//ops: 6, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	840
	addt	r5
						// (save temp)isreg
	mr	r3
						//save_temp done

						//audiotrack.c, line 53
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	828
	addt	r5
						// (save temp)store type a
	st	r6
						//save_temp done

						//audiotrack.c, line 53
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	820
	addt	r5
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1
						// allocreg r1
		// Offsets 0, 0
		// Have am? no, no
		// flags 22, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 176
		// Real offset of type is 176, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 3
						// matchobj comparing flags 22 with 2
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//audiotrack.c, line 53
						// (bitwise/arithmetic) 	//ops: 0, 2, 3
						// (obj to r2) flags 22 type 3
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
						//sizemod based on type 0x3
	ldt
	mr	r2
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 22
						// reg r1 - only match against tmp
	mt	r1
	mul	r2
						// (save result) // isreg

						//audiotrack.c, line 53
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 1
						// (obj to r0) flags 6a type a
						// deref 
	ld	r3
	mr	r0
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 6a
						// matchobj comparing flags 4a with 6a
						// reg r2 - only match against tmp
	mt	r2
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r3
						// freereg r2

						//audiotrack.c, line 55
						// (bitwise/arithmetic) 	//ops: 6, 0, 5
						//Special case - addt
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	824
	addt	r5
						// (save temp)isreg
	mr	r4
						//save_temp done

						//audiotrack.c, line 55
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r4
	sgn
	cmp	r1
						// freereg r1

						//audiotrack.c, line 55
	cond	GE
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l29
		add	r7
						// allocreg r2
						// allocreg r1

						//audiotrack.c, line 57
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 3
						// matchobj comparing flags 22 with 62
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 62
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x3
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//audiotrack.c, line 57
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 22
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//audiotrack.c, line 57
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
	stdec	r6
						// allocreg r1

						//audiotrack.c, line 57
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 52
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 2
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 57
						//call
						//pcreltotemp
	.lipcrel	_RARead // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//audiotrack.c, line 58
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r4
	mr	r0
						// (obj to tmp) flags 22 type 3
						// matchobj comparing flags 22 with 62
						// matchobj comparing flags 22 with 62
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 62
						// matchobj comparing flags a2 with 62
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x3
	ldt
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x62
	mt	r0
	st	r4

						//audiotrack.c, line 61
						//pcreltotemp
	.lipcrel	l30
	add	r7
l29: # 
						// allocreg r1

						//audiotrack.c, line 63
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 3
						// deref 
	ld	r4
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//audiotrack.c, line 63
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 62
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//audiotrack.c, line 63
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
	stdec	r6
						// allocreg r1

						//audiotrack.c, line 63
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 64, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 2
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 63
						//call
						//pcreltotemp
	.lipcrel	_RARead // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//audiotrack.c, line 64
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r4
	mr	r1
						// (obj to tmp) flags 22 type 3
						// matchobj comparing flags 22 with 62
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 62
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x3
	ldt
	sub	r1
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 180
		// Real offset of type is 180, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 22
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r4
						//save_temp done

						//audiotrack.c, line 65
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
						// (save temp)isreg
	mr	r2
						//save_temp done

						//audiotrack.c, line 66
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	512
	sgn
	cmp	r1
						// freereg r1

						//audiotrack.c, line 66
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l36
		add	r7
l35: # 
						// allocreg r1

						//audiotrack.c, line 67
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 2 type a
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 2
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg

						//audiotrack.c, line 67
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 80
		// Real offset of type is 80, isauto 0
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

						//audiotrack.c, line 66
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r2
						// (save result) // isreg

						//audiotrack.c, line 66
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	512
	sgn
	cmp	r2

						//audiotrack.c, line 66
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l35
		add	r7
l36: # 
						// allocreg r1

						//audiotrack.c, line 69
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
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 69
						//call
						//pcreltotemp
	.lipcrel	_audiotrack_cue // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l30: # 
						// allocreg r1

						//audiotrack.c, line 71
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 22 type 3
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// var FIXME - deref?
						// reg - auto
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 22
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
						// matchobj comparing flags 1 with 22
	.liconst	1
	xor	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x22
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 1
	.liconst	4
	ldidx	r6
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness
						// freereg r1
						// freereg r2
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

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.8
	.global	_audiotrack_fastforward
_audiotrack_fastforward:
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

						//audiotrack.c, line 77
						// (bitwise/arithmetic) 	//ops: 3, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	824
	addt	r2
						// (save temp)isreg
	mr	r3
						//save_temp done

						//audiotrack.c, line 77
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r3
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	2048
	sgn
	cmp	r0

						//audiotrack.c, line 77
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l40
		add	r7
						// freereg r1

						//audiotrack.c, line 79
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	stdec	r6

						//audiotrack.c, line 79
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2048
	stdec	r6
						// allocreg r1

						//audiotrack.c, line 79
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 79
						//call
						//pcreltotemp
	.lipcrel	_RASeek // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//audiotrack.c, line 80
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
	.liconst	2048
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x62
	mt	r0
	st	r3

						//audiotrack.c, line 83
						//pcreltotemp
	.lipcrel	l41
	add	r7
l40: # 
						// allocreg r1

						//audiotrack.c, line 84
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 84
						//call
						//pcreltotemp
	.lipcrel	_audiotrack_cue // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l41: # 
						// allocreg r1
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
	.section	.text.9
	.global	_audiotrack_rewind
_audiotrack_rewind:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
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
						// allocreg r4
						// allocreg r2

						//audiotrack.c, line 91
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	300
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//audiotrack.c, line 91
						// (bitwise/arithmetic) 	//ops: 4, 0, 5
						//Special case - addt
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	824
	addt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//audiotrack.c, line 91
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r4
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//audiotrack.c, line 91
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 6a type 104
						// matchobj comparing flags 6a with 62
						// deref 
	ld	r2
	mr	r0
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 6a
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	mt	r1
	sub	r0
						// (save result) // isreg
	mt	r0
	mr	r1
						// freereg r2

						//audiotrack.c, line 91
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	2048
	cmp	r1
						// freereg r1

						//audiotrack.c, line 91
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l45
		add	r7

						//audiotrack.c, line 93
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	stdec	r6

						//audiotrack.c, line 93
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	-2048
	stdec	r6
						// allocreg r1

						//audiotrack.c, line 93
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 93
						//call
						//pcreltotemp
	.lipcrel	_RASeek // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//audiotrack.c, line 94
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r4
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	2048
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x62
	mt	r0
	st	r4

						//audiotrack.c, line 97
						//pcreltotemp
	.lipcrel	l46
	add	r7
l45: # 
						// allocreg r1

						//audiotrack.c, line 98
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 98
						//call
						//pcreltotemp
	.lipcrel	_audiotrack_cue // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l46: # 
						// allocreg r1
						// freereg r1
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
	.section	.text.a
	.global	_audiotrack_init
_audiotrack_init:
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
						// allocreg r1

						//audiotrack.c, line 106
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	840
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 106
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 2, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	40
	ldidx	r6
						// (save temp)store type a
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//audiotrack.c, line 107
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	820
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 107
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//audiotrack.c, line 108
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	828
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 108
						// Z disposable
		// Offsets 32768, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	32768
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//audiotrack.c, line 109
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 109
						//call
						//pcreltotemp
	.lipcrel	_audiotrack_stop // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//audiotrack.c, line 110
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	28
	ldidx	r6
	stdec	r6
						// allocreg r1

						//audiotrack.c, line 110
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
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 110
						//call
						//pcreltotemp
	.lipcrel	_RAOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//audiotrack.c, line 110
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//audiotrack.c, line 110
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l50
		add	r7
						// allocreg r1

						//audiotrack.c, line 112
						// (bitwise/arithmetic) 	//ops: 5, 0, 6
						//Special case - addt
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	832
	addt	r4
						// (save temp)isreg
	mr	r5
						//save_temp done

						//audiotrack.c, line 112
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 316
		// Real offset of type is 316, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	32
	ldidx	r6
						// (save temp)store type 3
	st	r5
						//save_temp done

						//audiotrack.c, line 113
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	36
	ldidx	r6

						//audiotrack.c, line 113
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l52
		add	r7

						//audiotrack.c, line 114
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	836
	addt	r4
						// (save temp)store type a
	st	r6
						//save_temp done

						//audiotrack.c, line 114
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 22
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 62
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
	mr	r0
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	36
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//audiotrack.c, line 116
						//pcreltotemp
	.lipcrel	l53
	add	r7
						// freereg r1
l52: # 
						// allocreg r1

						//audiotrack.c, line 116
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	300
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 116
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	836
	addt	r4
						// (save temp)store type a
	st	r6
						//save_temp done

						//audiotrack.c, line 116
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 62
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
	mr	r0
						// (obj to tmp) flags 6a type 104
						// deref 
	ld	r1
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l53: # 
						// allocreg r1

						//audiotrack.c, line 118
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	32
	ldidx	r6

						//audiotrack.c, line 118
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l84
		add	r7
						// freereg r1

						//audiotrack.c, line 120
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	12
	stdec	r6

						//audiotrack.c, line 120
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_tmp
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//audiotrack.c, line 120
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 120
						//call
						//pcreltotemp
	.lipcrel	_RARead // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//audiotrack.c, line 120
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//audiotrack.c, line 120
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
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

						//audiotrack.c, line 121
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

						//audiotrack.c, line 121
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l57
		add	r7
						// freereg r2
						// freereg r3
						// allocreg r2

						//audiotrack.c, line 123
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 88, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// static
	.liabs	l61,0
						// static pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//audiotrack.c, line 123
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
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_tmp
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//audiotrack.c, line 123
		// Offsets 4, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 96
		// Real offset of type is 96, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	4
						// (save temp)isreg
	mr	r3
						//save_temp done

						//audiotrack.c, line 123
						//call
						//pcreltotemp
	.lipcrel	___strncmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//audiotrack.c, line 123
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//audiotrack.c, line 123
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l59
		add	r7
						// allocreg r2

						//audiotrack.c, line 123
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 116
		// Real offset of type is 116, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l62,0
						// static pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//audiotrack.c, line 123
		// Offsets 8, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 120
		// Real offset of type is 120, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 8)
	.liabs	_tmp, 8
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//audiotrack.c, line 123
		// Offsets 4, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 124
		// Real offset of type is 124, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	4
						// (save temp)isreg
	mr	r3
						//save_temp done

						//audiotrack.c, line 123
						//call
						//pcreltotemp
	.lipcrel	___strncmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//audiotrack.c, line 123
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//audiotrack.c, line 123
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l59
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//audiotrack.c, line 125
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l63,0
						// static pe is varadr
	stdec	r6

						//audiotrack.c, line 125
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//audiotrack.c, line 126
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 316
		// Real offset of type is 316, isauto 0
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

						//audiotrack.c, line 127
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6

						//audiotrack.c, line 127
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l84
		add	r7

						//audiotrack.c, line 127
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r5

						//audiotrack.c, line 127
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l84
		add	r7
						// freereg r1
						// freereg r2
						// freereg r3
l64: # 

						//audiotrack.c, line 130
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	8
	stdec	r6

						//audiotrack.c, line 130
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_tmp
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//audiotrack.c, line 130
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 152
		// Real offset of type is 160, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 130
						//call
						//pcreltotemp
	.lipcrel	_RARead // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//audiotrack.c, line 130
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//audiotrack.c, line 130
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1
						// allocreg r1

						//audiotrack.c, line 131
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_tmp, 7
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 131
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	24
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//audiotrack.c, line 131
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_tmp, 6
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//audiotrack.c, line 131
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	16
	shl	r2
						// (save result) // isreg

						//audiotrack.c, line 131
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//audiotrack.c, line 131
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_tmp, 5
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//audiotrack.c, line 131
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r2
						// (save result) // isreg

						//audiotrack.c, line 131
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//audiotrack.c, line 131
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_tmp, 4
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//audiotrack.c, line 131
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 2
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
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r2
						// freereg r1
						// allocreg r2

						//audiotrack.c, line 132
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 216
		// Real offset of type is 216, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 2
						// static
	.liabs	l70,0
						// static pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//audiotrack.c, line 132
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
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_tmp
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//audiotrack.c, line 132
		// Offsets 4, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 224
		// Real offset of type is 224, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	4
						// (save temp)isreg
	mr	r3
						//save_temp done

						//audiotrack.c, line 132
						//call
						//pcreltotemp
	.lipcrel	___strncmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//audiotrack.c, line 132
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//audiotrack.c, line 132
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//audiotrack.c, line 134
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l71,0
						// static pe is varadr
	stdec	r6

						//audiotrack.c, line 134
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//audiotrack.c, line 136
						//pcreltotemp
	.lipcrel	l77
	add	r7
						// freereg r1
						// freereg r2
						// freereg r3
l69: # 
						// allocreg r2

						//audiotrack.c, line 136
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 244
		// Real offset of type is 244, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l75,0
						// static pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//audiotrack.c, line 136
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 248
		// Real offset of type is 248, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_tmp
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//audiotrack.c, line 136
		// Offsets 4, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 252
		// Real offset of type is 252, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	4
						// (save temp)isreg
	mr	r3
						//save_temp done

						//audiotrack.c, line 136
						//call
						//pcreltotemp
	.lipcrel	___strncmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//audiotrack.c, line 136
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//audiotrack.c, line 136
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l74
		add	r7
						// allocreg r2
						// allocreg r1

						//audiotrack.c, line 138
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6
						// allocreg r3

						//audiotrack.c, line 138
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	304
	addt	r4
						// (save temp)isreg
	mr	r3
						//save_temp done

						//audiotrack.c, line 138
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 6a type 104
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r3
	stdec	r6

						//audiotrack.c, line 138
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 6a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 6a
						// static
	.liabs	l76,0
						// static pe is varadr
	stdec	r6

						//audiotrack.c, line 138
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
	.liconst	12
	add	r6

						//audiotrack.c, line 139
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 6a type 104
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r3
						//Saving to reg r0
						// (save temp)store type 3
	st	r5
						//save_temp done
						// freereg r3

						//audiotrack.c, line 140
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 22
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 6a
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
	mr	r0
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//audiotrack.c, line 141
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

						//audiotrack.c, line 144
						//pcreltotemp
	.lipcrel	l77
	add	r7
l74: # 
						// allocreg r3

						//audiotrack.c, line 144
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//audiotrack.c, line 144
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_tmp
						//extern deref
						//sizemod based on type 0x3
	ldt
	stdec	r6

						//audiotrack.c, line 144
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l78,0
						// static pe is varadr
	stdec	r6

						//audiotrack.c, line 144
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
	.liconst	12
	add	r6
l77: # 

						//audiotrack.c, line 145
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6

						//audiotrack.c, line 145
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l80
		add	r7
						// freereg r1

						//audiotrack.c, line 146
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	stdec	r6
						// allocreg r1

						//audiotrack.c, line 146
						//FIXME convert
						// (convert - reducing type 3 to 104
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

						//audiotrack.c, line 146
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//audiotrack.c, line 146
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 272
		// Real offset of type is 280, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 146
						//call
						//pcreltotemp
	.lipcrel	_RASeek // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
l80: # 
						// allocreg r1

						//audiotrack.c, line 127
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6

						//audiotrack.c, line 127
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l84
		add	r7

						//audiotrack.c, line 127
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r5

						//audiotrack.c, line 127
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l64
		add	r7

						//audiotrack.c, line 150
						//pcreltotemp
	.lipcrel	l84
	add	r7
						// freereg r1
l59: # 

						//audiotrack.c, line 151
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l83,0
						// static pe is varadr
	stdec	r6

						//audiotrack.c, line 151
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)

						//audiotrack.c, line 152
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//audiotrack.c, line 152
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	40
	ldidx	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//audiotrack.c, line 152
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//audiotrack.c, line 152
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 144
		// Real offset of type is 156, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 152
						//call
						//pcreltotemp
	.lipcrel	_RASeek // extern
	add	r7
						// Flow control - popping 8 + 4 bytes
	.liconst	12
	add	r6
						// freereg r1

						//audiotrack.c, line 156
						//pcreltotemp
	.lipcrel	l84
	add	r7
l57: # 
						// allocreg r1

						//audiotrack.c, line 156
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l85,0
						// static pe is varadr
	stdec	r6

						//audiotrack.c, line 156
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l84: # 
						// allocreg r1

						//audiotrack.c, line 158
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
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 158
						//call
						//pcreltotemp
	.lipcrel	_audiotrack_cue // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//audiotrack.c, line 159
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
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//audiotrack.c, line 159
						//call
						//pcreltotemp
	.lipcrel	_audiotrack_fill // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l50: # 
						// allocreg r1

						//audiotrack.c, line 162
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l86,0
						// static pe is varadr
	stdec	r6

						//audiotrack.c, line 162
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)

						//audiotrack.c, line 163
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	1
	mr	r0
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 1
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
l71:
	.byte	70
	.byte	111
	.byte	117
	.byte	110
	.byte	100
	.byte	32
	.byte	102
	.byte	109
	.byte	116
	.byte	32
	.byte	99
	.byte	104
	.byte	117
	.byte	110
	.byte	107
	.byte	10
	.byte	0
	.section	.rodata.c
l76:
	.byte	70
	.byte	111
	.byte	117
	.byte	110
	.byte	100
	.byte	32
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	32
	.byte	99
	.byte	104
	.byte	117
	.byte	110
	.byte	107
	.byte	44
	.byte	32
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	32
	.byte	115
	.byte	116
	.byte	97
	.byte	114
	.byte	116
	.byte	115
	.byte	32
	.byte	97
	.byte	116
	.byte	32
	.byte	37
	.byte	100
	.byte	32
	.byte	119
	.byte	105
	.byte	116
	.byte	104
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
l70:
	.byte	102
	.byte	109
	.byte	116
	.byte	32
	.byte	0
	.section	.rodata.e
l75:
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	32
	.byte	0
	.section	.rodata.f
l78:
	.byte	83
	.byte	107
	.byte	105
	.byte	112
	.byte	112
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	32
	.byte	99
	.byte	104
	.byte	117
	.byte	110
	.byte	107
	.byte	32
	.byte	37
	.byte	108
	.byte	120
	.byte	32
	.byte	119
	.byte	105
	.byte	116
	.byte	104
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
	.section	.rodata.10
l63:
	.byte	70
	.byte	111
	.byte	117
	.byte	110
	.byte	100
	.byte	32
	.byte	87
	.byte	65
	.byte	86
	.byte	69
	.byte	32
	.byte	104
	.byte	101
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	10
	.byte	0
	.section	.rodata.11
l83:
	.byte	84
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	97
	.byte	115
	.byte	32
	.byte	82
	.byte	65
	.byte	87
	.byte	32
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	10
	.byte	0
	.section	.rodata.12
l61:
	.byte	82
	.byte	73
	.byte	70
	.byte	70
	.byte	0
	.section	.rodata.13
l62:
	.byte	87
	.byte	65
	.byte	86
	.byte	69
	.byte	0
	.section	.rodata.14
l85:
	.byte	67
	.byte	97
	.byte	110
	.byte	39
	.byte	116
	.byte	32
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	32
	.byte	104
	.byte	101
	.byte	97
	.byte	100
	.byte	101
	.byte	114
	.byte	10
	.byte	0
	.section	.rodata.15
l86:
	.byte	73
	.byte	110
	.byte	105
	.byte	116
	.byte	105
	.byte	97
	.byte	108
	.byte	105
	.byte	115
	.byte	101
	.byte	100
	.byte	32
	.byte	97
	.byte	117
	.byte	100
	.byte	105
	.byte	111
	.byte	116
	.byte	114
	.byte	97
	.byte	99
	.byte	107
	.byte	10
	.byte	0
	.section	.bss.16
	.global	_tmp
	.comm	_tmp,16
