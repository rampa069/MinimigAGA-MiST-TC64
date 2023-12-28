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
	.global	_cd_parsecueline
_cd_parsecueline:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-24
	add	r6
						// allocreg r5
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
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
						// allocreg r2

						//bincue.c, line 35
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 40
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 40
						// static
	.liabs	l2,0
						// static pe is varadr
	stdec	r6
						// allocreg r1

						//bincue.c, line 35
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	1692
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 35
						//call
						//pcreltotemp
	.lipcrel	_strtok // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//bincue.c, line 35
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//bincue.c, line 36
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
				// flags 42
	and	r4

						//bincue.c, line 36
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l54
		add	r7
						// freereg r2
						// allocreg r2

						//bincue.c, line 38
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//bincue.c, line 38
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l9,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 38
						//call
						//pcreltotemp
	.lipcrel	___strcmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// allocreg r1

						//bincue.c, line 38
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//bincue.c, line 38
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l8
		add	r7
						// allocreg r2

						//bincue.c, line 40
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l12,0
						// static pe is varadr
	stdec	r6
						// allocreg r1

						//bincue.c, line 40
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 40
						//call
						//pcreltotemp
	.lipcrel	_strtok // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//bincue.c, line 40
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//bincue.c, line 40
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
				// flags 42
	and	r4

						//bincue.c, line 40
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l11
		add	r7
						// freereg r2
						// freereg r3

						//bincue.c, line 42
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
	stdec	r6

						//bincue.c, line 42
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l13,0
						// static pe is varadr
	stdec	r6

						//bincue.c, line 42
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// allocreg r3

						//bincue.c, line 43
						// (bitwise/arithmetic) 	//ops: 6, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2204
	addt	r5
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//bincue.c, line 43
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 80
		// Real offset of type is 80, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//bincue.c, line 43
		// Offsets 261, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 84
		// Real offset of type is 84, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	261
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 43
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//bincue.c, line 46
						//pcreltotemp
	.lipcrel	l14
	add	r7
l11: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//bincue.c, line 46
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	2204
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 46
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
l14: # 

						//bincue.c, line 47
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	24
	addt	r5
						// (save temp)store type a
	st	r6
						//save_temp done

						//bincue.c, line 47
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 22
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
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//bincue.c, line 48
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l2,0
						// static pe is varadr
	stdec	r6
						// allocreg r1

						//bincue.c, line 48
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 48
						//call
						//pcreltotemp
	.lipcrel	_strtok // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//bincue.c, line 48
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//bincue.c, line 48
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
				// flags 42
	and	r4

						//bincue.c, line 48
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l22
		add	r7
						// freereg r2
						// allocreg r2

						//bincue.c, line 50
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 84
		// Real offset of type is 84, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//bincue.c, line 50
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 88, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l19,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 50
						//call
						//pcreltotemp
	.lipcrel	___strcmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// allocreg r1

						//bincue.c, line 50
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//bincue.c, line 50
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l18
		add	r7
						// allocreg r2
						// allocreg r1

						//bincue.c, line 51
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 22
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//bincue.c, line 52
						//pcreltotemp
	.lipcrel	l22
	add	r7
						// freereg r1
						// freereg r2
l18: # 
						// allocreg r2

						//bincue.c, line 52
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 108
		// Real offset of type is 108, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//bincue.c, line 52
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
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l23,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 52
						//call
						//pcreltotemp
	.lipcrel	___strcmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// allocreg r1

						//bincue.c, line 52
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//bincue.c, line 52
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l22
		add	r7
						// allocreg r2
						// allocreg r1

						//bincue.c, line 53
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 22
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	2
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l22: # 
						// allocreg r1

						//bincue.c, line 55
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

						//bincue.c, line 55
						// Z disposable
		// Offsets -1, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 76
		// Real offset of type is 76, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	-1
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r1
						// freereg r2
l8: # 
						// allocreg r2

						//bincue.c, line 57
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 52
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//bincue.c, line 57
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l26,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 57
						//call
						//pcreltotemp
	.lipcrel	___strcmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// allocreg r1

						//bincue.c, line 57
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//bincue.c, line 57
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l37
		add	r7
						// allocreg r2

						//bincue.c, line 59
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l2,0
						// static pe is varadr
	stdec	r6
						// allocreg r1

						//bincue.c, line 59
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 59
						//call
						//pcreltotemp
	.lipcrel	_strtok // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//bincue.c, line 59
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//bincue.c, line 59
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
				// flags 42
	and	r4

						//bincue.c, line 59
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l33
		add	r7

						//bincue.c, line 62
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	10
	stdec	r6
						// allocreg r1

						//bincue.c, line 62
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	addt	r6
	stdec	r6
						// freereg r1
						// allocreg r1

						//bincue.c, line 62
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 96, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 62
						//call
						//pcreltotemp
	.lipcrel	_strtoul // extern
	add	r7
						// Deferred popping of 8 bytes (8 in total)
						// freereg r1
						// allocreg r1

						//bincue.c, line 62
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//bincue.c, line 62
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	12
	addt	r5
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//bincue.c, line 62
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
	.liconst	8
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 4a type 104
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1

						//bincue.c, line 63
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	48
	ldidx	r6
	stdec	r6

						//bincue.c, line 63
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l29,0
						// static pe is varadr
	stdec	r6

						//bincue.c, line 63
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 8 + 8 bytes
	.liconst	16
	add	r6

						//bincue.c, line 64
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
	cmp	r4

						//bincue.c, line 64
	cond	EQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l33
		add	r7
						// allocreg r1

						//bincue.c, line 66
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	8
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
		// Offsets 0, 0
		// Have am? no, no
		// flags 22, 2
						// (a/p assign)
						// Dereferencing object...
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

						// (obj to tmp) flags 22 type 3
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
	ld	r6
						//sizemod based on type 0x3
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//bincue.c, line 66
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 22
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 22
						// matchobj comparing flags 1 with 82
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 22 type 3
						// matchobj comparing flags 22 with 2
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
	.liconst	8
	ldidx	r6
						//sizemod based on type 0x3
	ldt
	sgn
	cmp	r0

						//bincue.c, line 66
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l33
		add	r7

						//bincue.c, line 67
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 22
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 22
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 22
	.liconst	8
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l33: # 

						//bincue.c, line 71
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l2,0
						// static pe is varadr
	stdec	r6
						// allocreg r1

						//bincue.c, line 71
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 80
		// Real offset of type is 84, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 71
						//call
						//pcreltotemp
	.lipcrel	_strtok // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//bincue.c, line 71
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//bincue.c, line 71
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
				// flags 42
	and	r4

						//bincue.c, line 71
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l37
		add	r7
						// freereg r2
						// allocreg r2

						//bincue.c, line 73
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 96
		// Real offset of type is 96, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//bincue.c, line 73
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 100, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l39,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 73
						//call
						//pcreltotemp
	.lipcrel	___strcmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// allocreg r1

						//bincue.c, line 73
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//bincue.c, line 73
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l37
		add	r7
						// allocreg r2
						// allocreg r1

						//bincue.c, line 73
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	12
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done
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
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
						// (save temp)store type 3
	st	r6
						//save_temp done
						// freereg r1

						//bincue.c, line 73
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

						//bincue.c, line 73
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l37
		add	r7
						// freereg r2
						// allocreg r1

						//bincue.c, line 74
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//bincue.c, line 74
						// (bitwise/arithmetic) 	//ops: 0, 7, 3
						// (obj to r2) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	mr	r2
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	shl	r2
						// (save result) // isreg

						//bincue.c, line 74
						// Q1 disposable
						// Z disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 62
						// reg r2 - only match against tmp
	mt	r2
	mr	r0
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x6a
	mt	r0
	st	r1
						// freereg r2
						// freereg r1
l37: # 
						// allocreg r2
						// allocreg r1

						//bincue.c, line 77
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	12
	addt	r5
						// (save temp)store type a
	st	r6
						//save_temp done

						//bincue.c, line 77
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 22 type 3
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
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 22
						// var, auto|reg
						// matchobj comparing flags 1 with 22
	.liconst	40
	ldidx	r6
	sgn
	cmp	r0

						//bincue.c, line 77
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l54
		add	r7
						// freereg r1
						// freereg r2
						// allocreg r2

						//bincue.c, line 77
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 76
		// Real offset of type is 76, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//bincue.c, line 77
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 80
		// Real offset of type is 80, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l43,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 77
						//call
						//pcreltotemp
	.lipcrel	___strcmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// allocreg r1

						//bincue.c, line 77
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//bincue.c, line 77
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l54
		add	r7
						// allocreg r2

						//bincue.c, line 79
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l2,0
						// static pe is varadr
	stdec	r6
						// allocreg r1

						//bincue.c, line 79
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 92
		// Real offset of type is 96, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 79
						//call
						//pcreltotemp
	.lipcrel	_strtok // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//bincue.c, line 79
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//bincue.c, line 79
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
				// flags 42
	and	r4

						//bincue.c, line 79
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l54
		add	r7

						//bincue.c, line 84
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
	stdec	r6

						//bincue.c, line 84
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l46,0
						// static pe is varadr
	stdec	r6

						//bincue.c, line 84
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 8 bytes (8 in total)

						//bincue.c, line 85
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l2,0
						// static pe is varadr
	stdec	r6
						// allocreg r1

						//bincue.c, line 85
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 128
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 85
						//call
						//pcreltotemp
	.lipcrel	_strtok // extern
	add	r7
						// Flow control - popping 4 + 8 bytes
	.liconst	12
	add	r6
						// freereg r1

						//bincue.c, line 85
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 102
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	12
	addt	r6
						//sizemod based on type 0xa
	stmpdec	r4
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
						//sizemod based on type 0xa
	stmpdec	r5

						//bincue.c, line 85
						// (test)
						// (obj to tmp) flags 42 type a
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//bincue.c, line 85
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l54
		add	r7
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5

						//bincue.c, line 87
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	10
	stdec	r6
						// allocreg r5

						//bincue.c, line 87
						// (address)
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
	addt	r6
						// (save temp)isreg
	mr	r5
						//save_temp done

						//bincue.c, line 87
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r5 - only match against tmp
	//mt
	stdec	r6
						// allocreg r1

						//bincue.c, line 87
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 144
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	16
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 87
						//call
						//pcreltotemp
	.lipcrel	_strtoul // extern
	add	r7
						// Deferred popping of 8 bytes (8 in total)
						// freereg r1
						// allocreg r3

						//bincue.c, line 87
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r3

						//bincue.c, line 87
						//FIXME convert
						// (convert - reducing type 104 to 3
						//No need to mask - same size

						//bincue.c, line 88
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
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
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//bincue.c, line 89
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	10
	stdec	r6

						//bincue.c, line 89
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6
						// allocreg r1

						//bincue.c, line 89
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 168
		// Real offset of type is 184, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	24
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 89
						//call
						//pcreltotemp
	.lipcrel	_strtoul // extern
	add	r7
						// Deferred popping of 8 bytes (16 in total)
						// freereg r1
						// allocreg r4

						//bincue.c, line 89
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//bincue.c, line 89
						//FIXME convert
						// (convert - reducing type 104 to 3
						//No need to mask - same size

						//bincue.c, line 90
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	32
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
	.liconst	28
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//bincue.c, line 91
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	10
	stdec	r6

						//bincue.c, line 91
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6
						// freereg r5
						// allocreg r1

						//bincue.c, line 91
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 192
		// Real offset of type is 216, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	32
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 91
						//call
						//pcreltotemp
	.lipcrel	_strtoul // extern
	add	r7
						// Flow control - popping 8 + 16 bytes
	.liconst	24
	add	r6
						// freereg r1
						// allocreg r1

						//bincue.c, line 91
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//bincue.c, line 91
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	24
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//bincue.c, line 92
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 4a type 3
						// matchobj comparing flags 4a with 82
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	75
	mul	r1
						// (save result) // isreg
						// freereg r4
						// allocreg r2

						//bincue.c, line 92
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						// (obj to r2) flags 4a type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	4500
	mul	r2
						// (save result) // isreg
						// freereg r3

						//bincue.c, line 92
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//bincue.c, line 92
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
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//bincue.c, line 93
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 22 type 3
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
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 22
						// var, auto|reg
						// matchobj comparing flags 1 with 22
	.liconst	40
	ldidx	r6
	cmp	r0

						//bincue.c, line 93
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l52
		add	r7
						// allocreg r5
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 102 type a
						// matchobj comparing flags 102 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//bincue.c, line 95
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 3
						// matchobj comparing flags 2 with 102
						// var, auto|reg
						// matchobj comparing flags 1 with 102
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2352
	mul	r2
						// (save result) // isreg
						// allocreg r1

						//bincue.c, line 95
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	16
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 95
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 4a, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 296
		// Real offset of type is 296, isauto 0
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
						// allocreg r2

						//bincue.c, line 96
						// (bitwise/arithmetic) 	//ops: 6, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	20
	addt	r5
						// (save temp)isreg
	mr	r2
						//save_temp done

						//bincue.c, line 96
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 232
		// Real offset of type is 232, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 3
	st	r2
						//save_temp done
						// freereg r2
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
						//sizemod based on type 0xa
	stmpdec	r5

						//bincue.c, line 97
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 6a type 3
						// deref 
	ld	r1
						// freereg r1

						//bincue.c, line 97
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l52
		add	r7
						// allocreg r2
						// allocreg r1

						//bincue.c, line 98
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	mr	r0

						//bincue.c, line 99
						//pcreltotemp
	.lipcrel	l3
	add	r7
						// freereg r1
l52: # 
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 102 type a
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r1

						//bincue.c, line 100
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 102
						// var, auto|reg
						// matchobj comparing flags 1 with 102
	.liconst	40
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r1
						// (save result) // isreg

						//bincue.c, line 100
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 22 type 3
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x3
	ldt
	cmp	r1
						// freereg r1

						//bincue.c, line 100
	cond	NEQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l54
		add	r7
						// freereg r2
						// allocreg r1

						//bincue.c, line 102
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 22
						// var, auto|reg
						// matchobj comparing flags 1 with 22
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2352
	mul	r1
						// (save result) // isreg
						// allocreg r2

						//bincue.c, line 102
						// (bitwise/arithmetic) 	//ops: 6, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	16
	addt	r5
						// (save temp)isreg
	mr	r2
						//save_temp done

						//bincue.c, line 102
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r2
	sub	r0
						// (save result) // isreg
	mt	r0
	mr	r2
						// freereg r1
						// allocreg r1

						//bincue.c, line 102
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	20
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 102
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 4a, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 244
		// Real offset of type is 244, isauto 0
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

						//bincue.c, line 103
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	mr	r0

						//bincue.c, line 104
						//pcreltotemp
	.lipcrel	l3
	add	r7
l54: # 
						// allocreg r2
						// allocreg r1

						//bincue.c, line 109
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0
l3: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
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

	.section	.rodata.1
l13:
	.byte	70
	.byte	105
	.byte	108
	.byte	101
	.byte	110
	.byte	97
	.byte	109
	.byte	101
	.byte	32
	.byte	37
	.byte	115
	.byte	10
	.byte	0
	.section	.rodata.2
l19:
	.byte	66
	.byte	73
	.byte	78
	.byte	65
	.byte	82
	.byte	89
	.byte	0
	.section	.rodata.3
l23:
	.byte	87
	.byte	65
	.byte	86
	.byte	69
	.byte	0
	.section	.rodata.4
l12:
	.byte	34
	.byte	0
	.section	.rodata.5
l29:
	.byte	84
	.byte	114
	.byte	97
	.byte	99
	.byte	107
	.byte	32
	.byte	37
	.byte	100
	.byte	10
	.byte	0
	.section	.rodata.6
l39:
	.byte	65
	.byte	85
	.byte	68
	.byte	73
	.byte	79
	.byte	0
	.section	.rodata.7
l46:
	.byte	73
	.byte	68
	.byte	88
	.byte	58
	.byte	32
	.byte	37
	.byte	115
	.byte	10
	.byte	0
	.section	.rodata.8
l9:
	.byte	70
	.byte	73
	.byte	76
	.byte	69
	.byte	0
	.section	.rodata.9
l26:
	.byte	84
	.byte	82
	.byte	65
	.byte	67
	.byte	75
	.byte	0
	.section	.rodata.a
l43:
	.byte	73
	.byte	78
	.byte	68
	.byte	69
	.byte	88
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
	.section	.text.b
	.global	_cd_setcuefile
_cd_setcuefile:
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

						//bincue.c, line 116
						// (bitwise/arithmetic) 	//ops: 4, 0, 5
						//Special case - addt
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	4
	addt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done

						//bincue.c, line 116
		// Offsets -1, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	-1
						// (save temp)store type 3
	st	r4
						//save_temp done

						//bincue.c, line 118
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	ldidx	r6
	stdec	r6
						// allocreg r1

						//bincue.c, line 118
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	28
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 118
						//call
						//pcreltotemp
	.lipcrel	_RAOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//bincue.c, line 118
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//bincue.c, line 118
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l58
		add	r7
						// allocreg r1

						//bincue.c, line 120
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 3
	st	r4
						//save_temp done

						//bincue.c, line 121
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 3
	st	r3
						//save_temp done

						//bincue.c, line 124
						//pcreltotemp
	.lipcrel	l59
	add	r7
l58: # 

						//bincue.c, line 124
		// Offsets 1, 0
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
	.liconst	1
						// (save temp)store type 3
	st	r3
						//save_temp done
l59: # 

						//bincue.c, line 125
						// (test)
						// (obj to tmp) flags 62 type 3
						// deref 
	ld	r4

						//bincue.c, line 125
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l60
		add	r7

						//bincue.c, line 125
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done

						//bincue.c, line 125
						//pcreltotemp
	.lipcrel	l61
	add	r7
l60: # 

						//bincue.c, line 125
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r2
						//save_temp done
l61: # 

						//bincue.c, line 125
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 3
						// reg r2 - only match against tmp
	mt	r2
	mr	r0
						// freereg r1
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
	.section	.text.c
	.global	_cd_findtrack
_cd_findtrack:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-4
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
						// allocreg r5
						// allocreg r4
						// allocreg r1

						//bincue.c, line 131
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done

						//bincue.c, line 132
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r3

						//bincue.c, line 132
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l66
		add	r7

						//bincue.c, line 133
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	0
	mr	r0

						//bincue.c, line 135
						//pcreltotemp
	.lipcrel	l63
	add	r7
						// freereg r1
l66: # 

						//bincue.c, line 135
		// Offsets 2, 0
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
	.liconst	2
						// (save temp)store type 3
	st	r3
						//save_temp done

						//bincue.c, line 137
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	stdec	r6

						//bincue.c, line 137
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6

						//bincue.c, line 137
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	28
	addt	r3
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1
						// allocreg r1

						//bincue.c, line 137
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 2

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 137
						//call
						//pcreltotemp
	.lipcrel	_RASeek // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
l67: # 

						//bincue.c, line 140
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	512
	stdec	r6

						//bincue.c, line 140
						// (bitwise/arithmetic) 	//ops: 4, 0, 5
						//Special case - addt
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1692
	addt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done

						//bincue.c, line 140
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
	stdec	r6
						// allocreg r1

						//bincue.c, line 140
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	8
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 140
						//call
						//pcreltotemp
	.lipcrel	_RAReadLine // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//bincue.c, line 140
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//bincue.c, line 140
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7

						//bincue.c, line 142
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r4 - only match against tmp
	mt	r4
	stdec	r6

						//bincue.c, line 142
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l72,0
						// static pe is varadr
	stdec	r6

						//bincue.c, line 142
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 8 bytes (8 in total)

						//bincue.c, line 143
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	3
	stdec	r6
						// allocreg r1

						//bincue.c, line 143
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 68, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 143
						//call
						//pcreltotemp
	.lipcrel	_cd_parsecueline // extern
	add	r7
						// Flow control - popping 4 + 8 bytes
	.liconst	12
	add	r6
						// freereg r1
						// allocreg r1

						//bincue.c, line 143
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//bincue.c, line 143
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l67
		add	r7
						// allocreg r1

						//bincue.c, line 145
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	20
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 145
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//bincue.c, line 145
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	16
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 145
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//bincue.c, line 145
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	2204
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 145
						// Q1 disposable
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	stdec	r6
						// freereg r1

						//bincue.c, line 145
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l75,0
						// static pe is varadr
	stdec	r6

						//bincue.c, line 145
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 16 + 0 bytes
	.liconst	16
	add	r6

						//bincue.c, line 146
		// Offsets 1, 0
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
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)isreg
	mr	r5
						//save_temp done

						//bincue.c, line 147
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 62
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
						// (save temp)store type 3
	st	r3
						//save_temp done
l69: # 
						// allocreg r1

						//bincue.c, line 151
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
	mr	r0
l63: # 
						// freereg r1
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

	.section	.rodata.d
l75:
	.byte	84
	.byte	114
	.byte	97
	.byte	99
	.byte	107
	.byte	32
	.byte	102
	.byte	111
	.byte	117
	.byte	110
	.byte	100
	.byte	32
	.byte	105
	.byte	110
	.byte	32
	.byte	37
	.byte	115
	.byte	44
	.byte	32
	.byte	115
	.byte	116
	.byte	97
	.byte	114
	.byte	116
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	97
	.byte	116
	.byte	32
	.byte	98
	.byte	121
	.byte	116
	.byte	101
	.byte	32
	.byte	111
	.byte	102
	.byte	102
	.byte	115
	.byte	101
	.byte	116
	.byte	32
	.byte	37
	.byte	100
	.byte	44
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
	.section	.rodata.e
l72:
	.byte	71
	.byte	111
	.byte	116
	.byte	32
	.byte	108
	.byte	105
	.byte	110
	.byte	101
	.byte	32
	.byte	37
	.byte	115
	.byte	10
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
	.section	.text.f
	.global	_cd_cueaudio
_cd_cueaudio:
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

						//bincue.c, line 157
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done

						//bincue.c, line 158
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	ldidx	r6
	stdec	r6
						// allocreg r1

						//bincue.c, line 158
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
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 158
						//call
						//pcreltotemp
	.lipcrel	_cd_findtrack // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//bincue.c, line 159
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r3

						//bincue.c, line 159
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l81
		add	r7

						//bincue.c, line 161
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
						// (save temp)store type 3
	st	r3
						//save_temp done

						//bincue.c, line 162
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	458752
	stdec	r6
						// allocreg r1

						//bincue.c, line 162
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	20
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 162
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//bincue.c, line 162
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	16
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 162
						// Q1 disposable
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//bincue.c, line 162
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	2204
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 162
						// Q1 disposable
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	stdec	r6
						// freereg r1

						//bincue.c, line 162
						// (bitwise/arithmetic) 	//ops: 4, 0, 5
						//Special case - addt
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	848
	addt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//bincue.c, line 162
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 162
						//call
						//pcreltotemp
	.lipcrel	_audiotrack_init // extern
	add	r7
						// Flow control - popping 16 + 0 bytes
	.liconst	16
	add	r6
						// freereg r1
						// allocreg r1

						//bincue.c, line 162
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//bincue.c, line 162
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l81
		add	r7

						//bincue.c, line 164
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 3
	st	r3
						//save_temp done
						// allocreg r1

						//bincue.c, line 165
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 165
						//call
						//pcreltotemp
	.lipcrel	_audiotrack_fill // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//bincue.c, line 166
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r5
						//save_temp done
l81: # 
						// allocreg r1

						//bincue.c, line 169
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
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
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.10
	.global	_cd_playaudio
_cd_playaudio:
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
						// allocreg r2

						//bincue.c, line 175
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	8
	ldidx	r6
	stdec	r6
						// allocreg r1

						//bincue.c, line 175
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 2
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 175
						//call
						//pcreltotemp
	.lipcrel	_cd_cueaudio // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//bincue.c, line 176
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r3

						//bincue.c, line 176
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l85
		add	r7
						// allocreg r1

						//bincue.c, line 177
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	848
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 177
						//call
						//pcreltotemp
	.lipcrel	_audiotrack_play // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l85: # 
						// allocreg r1

						//bincue.c, line 178
						// (test)
						// (obj to tmp) flags 62 type 3
						// deref 
	ld	r3

						//bincue.c, line 178
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l86
		add	r7

						//bincue.c, line 178
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done

						//bincue.c, line 178
						//pcreltotemp
	.lipcrel	l87
	add	r7
l86: # 

						//bincue.c, line 178
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r2
						//save_temp done
l87: # 

						//bincue.c, line 178
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 3
						// reg r2 - only match against tmp
	mt	r2
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
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.11
	.global	_cd_continueaudio
_cd_continueaudio:
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

						//bincue.c, line 184
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 40
						// deref 
	ld	r2

						//bincue.c, line 184
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l94
		add	r7
						// freereg r1

						//bincue.c, line 186
						// (bitwise/arithmetic) 	//ops: 3, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	848
	addt	r2
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//bincue.c, line 186
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
						// matchobj comparing flags 42 with 42
						// reg r3 - only match against tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 186
						//call
						//pcreltotemp
	.lipcrel	_audiotrack_busy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//bincue.c, line 186
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//bincue.c, line 186
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l94
		add	r7
						// allocreg r1

						//bincue.c, line 187
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//bincue.c, line 187
						//call
						//pcreltotemp
	.lipcrel	_audiotrack_fill // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l94: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.data.12
	.align	4
	.global	_cue
_cue:
						// Declaring from tree
						// static
	.ref	l1
	.section	.rodata.13
l1:
	.byte	70
	.byte	73
	.byte	76
	.byte	69
	.byte	32
	.byte	34
	.byte	69
	.byte	88
	.byte	79
	.byte	68
	.byte	85
	.byte	83
	.byte	95
	.byte	84
	.byte	72
	.byte	69
	.byte	76
	.byte	65
	.byte	83
	.byte	84
	.byte	87
	.byte	65
	.byte	82
	.byte	46
	.byte	66
	.byte	73
	.byte	78
	.byte	34
	.byte	32
	.byte	66
	.byte	73
	.byte	78
	.byte	65
	.byte	82
	.byte	89
	.byte	10
	.byte	32
	.byte	32
	.byte	84
	.byte	82
	.byte	65
	.byte	67
	.byte	75
	.byte	32
	.byte	48
	.byte	49
	.byte	32
	.byte	77
	.byte	79
	.byte	68
	.byte	69
	.byte	49
	.byte	47
	.byte	50
	.byte	51
	.byte	53
	.byte	50
	.byte	10
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	73
	.byte	78
	.byte	68
	.byte	69
	.byte	88
	.byte	32
	.byte	48
	.byte	49
	.byte	32
	.byte	48
	.byte	48
	.byte	58
	.byte	48
	.byte	48
	.byte	58
	.byte	48
	.byte	48
	.byte	10
	.byte	32
	.byte	32
	.byte	84
	.byte	82
	.byte	65
	.byte	67
	.byte	75
	.byte	32
	.byte	48
	.byte	50
	.byte	32
	.byte	65
	.byte	85
	.byte	68
	.byte	73
	.byte	79
	.byte	10
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	80
	.byte	82
	.byte	69
	.byte	71
	.byte	65
	.byte	80
	.byte	32
	.byte	48
	.byte	48
	.byte	58
	.byte	48
	.byte	50
	.byte	58
	.byte	48
	.byte	48
	.byte	10
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	73
	.byte	78
	.byte	68
	.byte	69
	.byte	88
	.byte	32
	.byte	48
	.byte	49
	.byte	32
	.byte	52
	.byte	52
	.byte	58
	.byte	49
	.byte	56
	.byte	58
	.byte	50
	.byte	49
	.byte	10
	.byte	32
	.byte	32
	.byte	84
	.byte	82
	.byte	65
	.byte	67
	.byte	75
	.byte	32
	.byte	48
	.byte	51
	.byte	32
	.byte	65
	.byte	85
	.byte	68
	.byte	73
	.byte	79
	.byte	10
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	73
	.byte	78
	.byte	68
	.byte	69
	.byte	88
	.byte	32
	.byte	48
	.byte	49
	.byte	32
	.byte	52
	.byte	57
	.byte	58
	.byte	48
	.byte	50
	.byte	58
	.byte	53
	.byte	55
	.byte	10
	.byte	32
	.byte	32
	.byte	84
	.byte	82
	.byte	65
	.byte	67
	.byte	75
	.byte	32
	.byte	48
	.byte	52
	.byte	32
	.byte	65
	.byte	85
	.byte	68
	.byte	73
	.byte	79
	.byte	10
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	73
	.byte	78
	.byte	68
	.byte	69
	.byte	88
	.byte	32
	.byte	48
	.byte	49
	.byte	32
	.byte	53
	.byte	49
	.byte	58
	.byte	48
	.byte	51
	.byte	58
	.byte	53
	.byte	56
	.byte	10
	.byte	32
	.byte	32
	.byte	84
	.byte	82
	.byte	65
	.byte	67
	.byte	75
	.byte	32
	.byte	48
	.byte	53
	.byte	32
	.byte	65
	.byte	85
	.byte	68
	.byte	73
	.byte	79
	.byte	10
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	73
	.byte	78
	.byte	68
	.byte	69
	.byte	88
	.byte	32
	.byte	48
	.byte	49
	.byte	32
	.byte	53
	.byte	50
	.byte	58
	.byte	48
	.byte	54
	.byte	58
	.byte	54
	.byte	54
	.byte	10
	.byte	32
	.byte	32
	.byte	84
	.byte	82
	.byte	65
	.byte	67
	.byte	75
	.byte	32
	.byte	48
	.byte	54
	.byte	32
	.byte	65
	.byte	85
	.byte	68
	.byte	73
	.byte	79
	.byte	10
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	73
	.byte	78
	.byte	68
	.byte	69
	.byte	88
	.byte	32
	.byte	48
	.byte	49
	.byte	32
	.byte	53
	.byte	55
	.byte	58
	.byte	49
	.byte	48
	.byte	58
	.byte	48
	.byte	53
	.byte	10
	.byte	32
	.byte	32
	.byte	84
	.byte	82
	.byte	65
	.byte	67
	.byte	75
	.byte	32
	.byte	48
	.byte	55
	.byte	32
	.byte	65
	.byte	85
	.byte	68
	.byte	73
	.byte	79
	.byte	10
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	73
	.byte	78
	.byte	68
	.byte	69
	.byte	88
	.byte	32
	.byte	48
	.byte	49
	.byte	32
	.byte	54
	.byte	52
	.byte	58
	.byte	49
	.byte	56
	.byte	58
	.byte	49
	.byte	52
	.byte	10
	.byte	32
	.byte	32
	.byte	84
	.byte	82
	.byte	65
	.byte	67
	.byte	75
	.byte	32
	.byte	48
	.byte	56
	.byte	32
	.byte	65
	.byte	85
	.byte	68
	.byte	73
	.byte	79
	.byte	10
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	73
	.byte	78
	.byte	68
	.byte	69
	.byte	88
	.byte	32
	.byte	48
	.byte	49
	.byte	32
	.byte	54
	.byte	57
	.byte	58
	.byte	52
	.byte	50
	.byte	58
	.byte	51
	.byte	53
	.byte	10
	.byte	32
	.byte	32
	.byte	84
	.byte	82
	.byte	65
	.byte	67
	.byte	75
	.byte	32
	.byte	48
	.byte	57
	.byte	32
	.byte	65
	.byte	85
	.byte	68
	.byte	73
	.byte	79
	.byte	10
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	73
	.byte	78
	.byte	68
	.byte	69
	.byte	88
	.byte	32
	.byte	48
	.byte	49
	.byte	32
	.byte	55
	.byte	48
	.byte	58
	.byte	52
	.byte	49
	.byte	58
	.byte	54
	.byte	52
	.byte	10
	.byte	32
	.byte	32
	.byte	84
	.byte	82
	.byte	65
	.byte	67
	.byte	75
	.byte	32
	.byte	49
	.byte	48
	.byte	32
	.byte	65
	.byte	85
	.byte	68
	.byte	73
	.byte	79
	.byte	10
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	73
	.byte	78
	.byte	68
	.byte	69
	.byte	88
	.byte	32
	.byte	48
	.byte	49
	.byte	32
	.byte	55
	.byte	49
	.byte	58
	.byte	52
	.byte	52
	.byte	58
	.byte	51
	.byte	51
	.byte	10
	.byte	0
	.section	.data.14
l2:
	.byte	34
	.byte	9
	.byte	32
	.byte	10
	.byte	13
	.byte	0
