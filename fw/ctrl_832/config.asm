	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_ClearKickstartMirrorE0
_ClearKickstartMirrorE0:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
		// Offsets 131072, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	131072
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2
						// allocreg r1

						//config.c, line 38
		// Offsets 524288, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	524288
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 39
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
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
l8: # 

						//config.c, line 40
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)store type 3
	stinc	r1
						//save_temp done

						//config.c, line 39
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r2
						// (save result) // isreg

						//config.c, line 39
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 1
						// reg r3 - only match against tmp
	mt	r3
	sgn
	cmp	r2

						//config.c, line 39
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l8
		add	r7
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
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.global	_ClearVectorTable
_ClearVectorTable:
	stdec	r6
						// allocreg r2
						// allocreg r1

						//config.c, line 47
		// Offsets 6815744, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	6815744
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 48
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
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
l16: # 

						//config.c, line 49
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)store type 3
	stinc	r1
						//save_temp done

						//config.c, line 48
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r2
						// (save result) // isreg

						//config.c, line 48
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	256
	sgn
	cmp	r2

						//config.c, line 48
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l16
		add	r7
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
	.section	.text.2
	.global	_UploadKickstart
_UploadKickstart:
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
		// Offsets 16252928, 0
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
	.liconst	16252928
						// (save temp)isreg
	mr	r4
						//save_temp done

						//config.c, line 56
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
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
	.liconst	0
						// (save temp)store type 3
	st	r6
						//save_temp done

						//config.c, line 59
						// (address)
						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
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
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// allocreg r3

						//config.c, line 59
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	16
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//config.c, line 59
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	40
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//config.c, line 59
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 59
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r3
						// freereg r2
						// freereg r1

						//config.c, line 60
		// Offsets 0, 8
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l20,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	12
	addt	r6
	mr	r1

					// Copying 1 words and 0 bytes to filename
					// Copying 1 words to filename
	ldinc	r0
	stinc	r1

						//config.c, line 62
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 104
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6

						//config.c, line 62
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l21,0
						// static pe is varadr
	stdec	r6

						//config.c, line 62
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// allocreg r1

						//config.c, line 64
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 64, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 64
						//call
						//pcreltotemp
	.lipcrel	_ValidateDirectory // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//config.c, line 64
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 64
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l23
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//config.c, line 66
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 4a
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
	.liconst	4
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

						//config.c, line 66
		// Offsets 0, 24
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 0
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 24 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 24)
	.liabs	_Errors, 24
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
	.liabs	l24,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//config.c, line 66
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 28)
	.liabs	_Errors, 32
						// extern pe not varadr
						//sizemod based on type 0x3
	stmpdec	r5

						//config.c, line 66
		// Offsets 0, 32
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 32, 0
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 32 with 28
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

						//config.c, line 67
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	mr	r0
				//return 0

						//config.c, line 68
						//pcreltotemp
	.lipcrel	l18
	add	r7
						// freereg r1
l23: # 
						// allocreg r1

						//config.c, line 69
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 84
		// Real offset of type is 84, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 104
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 69
						//call
						//pcreltotemp
	.lipcrel	_ChangeDirectory // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//config.c, line 71
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
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l25,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 71
						//call
						//pcreltotemp
	.lipcrel	_BootPrint // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//config.c, line 72
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l28,0
						// static pe is varadr
	stdec	r6
						// allocreg r1

						//config.c, line 72
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 101
		// Real offset of type is 105, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 72
						//call
						//pcreltotemp
	.lipcrel	_RAOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//config.c, line 72
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 72
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l31
		add	r7
						// allocreg r1

						//config.c, line 73
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	20
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//config.c, line 73
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r6
						//save_temp done

						//config.c, line 74
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	3072
	cmp	r0

						//config.c, line 74
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l30
		add	r7
						// freereg r1

						//config.c, line 75
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	stdec	r6

						//config.c, line 75
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_romkey
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//config.c, line 75
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 120
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
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 75
						//call
						//pcreltotemp
	.lipcrel	_RARead // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//config.c, line 76
						//pcreltotemp
	.lipcrel	l31
	add	r7
l30: # 
						// allocreg r1

						//config.c, line 77
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
	.liconst	4
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

						//config.c, line 77
		// Offsets 0, 24
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 0
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 24 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 24)
	.liabs	_Errors, 24
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
	.liabs	l32,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//config.c, line 77
		// Offsets 0, 28
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 28, 0
		// Real offset of type is 28, isauto 0
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
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//config.c, line 77
		// Offsets 0, 32
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 32, 0
		// Real offset of type is 32, isauto 0
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
						// freereg r1
l31: # 

						//config.c, line 81
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	16
						//sizemod based on type 0xa
	ldidx	r6
	stdec	r6
						// allocreg r1

						//config.c, line 81
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 136
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 81
						//call
						//pcreltotemp
	.lipcrel	_RAOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//config.c, line 81
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 81
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l34
		add	r7
						// allocreg r1

						//config.c, line 82
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 148
		// Real offset of type is 148, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 82
						//call
						//pcreltotemp
	.lipcrel	_ClearError // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//config.c, line 83
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	15
	and	r1
						// (save result) // isreg

						//config.c, line 83
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	11
	cmp	r1
						// freereg r1

						//config.c, line 83
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l36
		add	r7
						// allocreg r1

						//config.c, line 83
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6

						//config.c, line 83
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l36
		add	r7

						//config.c, line 84
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 62
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
	.liconst	4
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

						//config.c, line 84
		// Offsets 0, 24
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 0
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 24 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 24)
	.liabs	_Errors, 24
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
	.liabs	l38,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//config.c, line 84
		// Offsets 0, 28
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 28, 0
		// Real offset of type is 28, isauto 0
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
	st	r0
						//save_temp done

						//config.c, line 86
						//pcreltotemp
	.lipcrel	l57
	add	r7
l36: # 

						//config.c, line 86
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1048576
	cmp	r0

						//config.c, line 86
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l41
		add	r7
						// freereg r1
						// allocreg r1

						//config.c, line 88
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 160
		// Real offset of type is 160, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l42,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 88
						//call
						//pcreltotemp
	.lipcrel	_BootPrint // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//config.c, line 89
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	10
	shr	r1
						// (save result) // isreg

						//config.c, line 89
						//FIXME convert
						// (convert - reducing type 104 to 3
						//No need to mask - same size

						//config.c, line 89
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//config.c, line 89
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	14680064
	stdec	r6

						//config.c, line 89
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	stdec	r6

						//config.c, line 89
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6
						// allocreg r1

						//config.c, line 89
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 180
		// Real offset of type is 196, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 89
						//call
						//pcreltotemp
	.lipcrel	_SendFileV2 // extern
	add	r7
						// Deferred popping of 16 bytes (16 in total)
						// freereg r1
						// allocreg r1

						//config.c, line 90
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	10
	shr	r1
						// (save result) // isreg

						//config.c, line 90
						//FIXME convert
						// (convert - reducing type 104 to 3
						//No need to mask - same size

						//config.c, line 90
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//config.c, line 90
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 4a
						// reg r4 - only match against tmp
	mt	r4
	stdec	r6

						//config.c, line 90
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 240
						// const
						// matchobj comparing flags 1 with 240
	.liconst	0
	stdec	r6

						//config.c, line 90
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6
						// allocreg r1

						//config.c, line 90
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 196
		// Real offset of type is 228, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 90
						//call
						//pcreltotemp
	.lipcrel	_SendFileV2 // extern
	add	r7
						// Flow control - popping 16 + 16 bytes
	.liconst	32
	add	r6
						// freereg r1

						//config.c, line 91
						//call
						//pcreltotemp
	.lipcrel	_ClearVectorTable // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//config.c, line 92
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	1024
	mr	r0

						//config.c, line 93
						//pcreltotemp
	.lipcrel	l18
	add	r7
l41: # 
						// allocreg r1

						//config.c, line 93
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	524288
	cmp	r0

						//config.c, line 93
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l45
		add	r7
						// freereg r1
						// allocreg r1

						//config.c, line 95
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
	shr	r1
						// (save result) // isreg

						//config.c, line 95
						//FIXME convert
						// (convert - reducing type 104 to 3
						//No need to mask - same size

						//config.c, line 95
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//config.c, line 95
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 4a
						// reg r4 - only match against tmp
	mt	r4
	stdec	r6

						//config.c, line 95
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 240
						// const
						// matchobj comparing flags 1 with 240
	.liconst	0
	stdec	r6

						//config.c, line 95
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6
						// allocreg r1

						//config.c, line 95
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 168
		// Real offset of type is 184, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 95
						//call
						//pcreltotemp
	.lipcrel	_SendFileV2 // extern
	add	r7
						// Deferred popping of 16 bytes (16 in total)
						// freereg r1

						//config.c, line 96
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	32
						//sizemod based on type 0xa
	ldidx	r6
	stdec	r6
						// allocreg r1

						//config.c, line 96
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 180
		// Real offset of type is 200, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 96
						//call
						//pcreltotemp
	.lipcrel	_RAOpen // extern
	add	r7
						// Deferred popping of 4 bytes (20 in total)
						// freereg r1
						// allocreg r1

						//config.c, line 97
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
	shr	r1
						// (save result) // isreg

						//config.c, line 97
						//FIXME convert
						// (convert - reducing type 104 to 3
						//No need to mask - same size

						//config.c, line 97
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//config.c, line 97
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	14680064
	stdec	r6

						//config.c, line 97
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	stdec	r6

						//config.c, line 97
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6
						// allocreg r1

						//config.c, line 97
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 200
		// Real offset of type is 236, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 97
						//call
						//pcreltotemp
	.lipcrel	_SendFileV2 // extern
	add	r7
						// Flow control - popping 16 + 20 bytes
	.liconst	36
	add	r6
						// freereg r1

						//config.c, line 98
						//call
						//pcreltotemp
	.lipcrel	_ClearVectorTable // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//config.c, line 99
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	512
	mr	r0

						//config.c, line 100
						//pcreltotemp
	.lipcrel	l18
	add	r7
l45: # 
						// allocreg r1

						//config.c, line 100
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	524299
	cmp	r0

						//config.c, line 100
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l48
		add	r7
						// freereg r1
						// allocreg r1

						//config.c, line 102
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
	shr	r1
						// (save result) // isreg

						//config.c, line 102
						//FIXME convert
						// (convert - reducing type 104 to 3
						//No need to mask - same size

						//config.c, line 102
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//config.c, line 102
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 4a
						// reg r4 - only match against tmp
	mt	r4
	stdec	r6

						//config.c, line 102
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 240
						// var, auto|reg
						// matchobj comparing flags 1 with 240
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//config.c, line 102
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_romkey
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//config.c, line 102
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 168
		// Real offset of type is 184, isauto 0
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
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 102
						//call
						//pcreltotemp
	.lipcrel	_SendFileV2 // extern
	add	r7
						// Deferred popping of 16 bytes (16 in total)
						// freereg r1

						//config.c, line 103
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	32
						//sizemod based on type 0xa
	ldidx	r6
	stdec	r6
						// allocreg r1

						//config.c, line 103
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 180
		// Real offset of type is 200, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 103
						//call
						//pcreltotemp
	.lipcrel	_RAOpen // extern
	add	r7
						// Deferred popping of 4 bytes (20 in total)
						// freereg r1
						// allocreg r1

						//config.c, line 104
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
	shr	r1
						// (save result) // isreg

						//config.c, line 104
						//FIXME convert
						// (convert - reducing type 104 to 3
						//No need to mask - same size

						//config.c, line 104
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//config.c, line 104
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	14680064
	stdec	r6

						//config.c, line 104
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	28
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//config.c, line 104
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_romkey
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//config.c, line 104
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 200
		// Real offset of type is 236, isauto 0
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
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 104
						//call
						//pcreltotemp
	.lipcrel	_SendFileV2 // extern
	add	r7
						// Flow control - popping 16 + 20 bytes
	.liconst	36
	add	r6
						// freereg r1

						//config.c, line 105
						//call
						//pcreltotemp
	.lipcrel	_ClearVectorTable // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//config.c, line 106
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	512
	mr	r0

						//config.c, line 107
						//pcreltotemp
	.lipcrel	l18
	add	r7
l48: # 
						// allocreg r1

						//config.c, line 107
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	262144
	cmp	r0

						//config.c, line 107
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l51
		add	r7
						// freereg r1
						// allocreg r1

						//config.c, line 109
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
	shr	r1
						// (save result) // isreg

						//config.c, line 109
						//FIXME convert
						// (convert - reducing type 104 to 3
						//No need to mask - same size

						//config.c, line 109
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//config.c, line 109
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 4a
						// reg r4 - only match against tmp
	mt	r4
	stdec	r6

						//config.c, line 109
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 240
						// const
						// matchobj comparing flags 1 with 240
	.liconst	0
	stdec	r6

						//config.c, line 109
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6
						// allocreg r1

						//config.c, line 109
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 168
		// Real offset of type is 184, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 109
						//call
						//pcreltotemp
	.lipcrel	_SendFileV2 // extern
	add	r7
						// Deferred popping of 16 bytes (16 in total)
						// freereg r1

						//config.c, line 110
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	32
						//sizemod based on type 0xa
	ldidx	r6
	stdec	r6
						// allocreg r1

						//config.c, line 110
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 180
		// Real offset of type is 200, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 110
						//call
						//pcreltotemp
	.lipcrel	_RAOpen // extern
	add	r7
						// Deferred popping of 4 bytes (20 in total)
						// freereg r1
						// allocreg r1

						//config.c, line 111
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
	shr	r1
						// (save result) // isreg

						//config.c, line 111
						//FIXME convert
						// (convert - reducing type 104 to 3
						//No need to mask - same size

						//config.c, line 111
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//config.c, line 111
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	16515072
	stdec	r6

						//config.c, line 111
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	stdec	r6

						//config.c, line 111
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6
						// allocreg r1

						//config.c, line 111
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 200
		// Real offset of type is 236, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 111
						//call
						//pcreltotemp
	.lipcrel	_SendFileV2 // extern
	add	r7
						// Flow control - popping 16 + 20 bytes
	.liconst	36
	add	r6
						// freereg r1

						//config.c, line 112
						//call
						//pcreltotemp
	.lipcrel	_ClearVectorTable // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//config.c, line 113
						//call
						//pcreltotemp
	.lipcrel	_ClearKickstartMirrorE0 // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//config.c, line 114
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	256
	mr	r0

						//config.c, line 115
						//pcreltotemp
	.lipcrel	l18
	add	r7
l51: # 
						// allocreg r1

						//config.c, line 115
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	262155
	cmp	r0

						//config.c, line 115
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l54
		add	r7
						// freereg r1
						// allocreg r1

						//config.c, line 117
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
	shr	r1
						// (save result) // isreg

						//config.c, line 117
						//FIXME convert
						// (convert - reducing type 104 to 3
						//No need to mask - same size

						//config.c, line 117
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//config.c, line 117
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 4a
						// reg r4 - only match against tmp
	mt	r4
	stdec	r6

						//config.c, line 117
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 240
						// var, auto|reg
						// matchobj comparing flags 1 with 240
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//config.c, line 117
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_romkey
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//config.c, line 117
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 168
		// Real offset of type is 184, isauto 0
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
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 117
						//call
						//pcreltotemp
	.lipcrel	_SendFileV2 // extern
	add	r7
						// Deferred popping of 16 bytes (16 in total)
						// freereg r1

						//config.c, line 118
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	32
						//sizemod based on type 0xa
	ldidx	r6
	stdec	r6
						// allocreg r1

						//config.c, line 118
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 180
		// Real offset of type is 200, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 118
						//call
						//pcreltotemp
	.lipcrel	_RAOpen // extern
	add	r7
						// Deferred popping of 4 bytes (20 in total)
						// freereg r1
						// allocreg r1

						//config.c, line 119
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
	shr	r1
						// (save result) // isreg

						//config.c, line 119
						//FIXME convert
						// (convert - reducing type 104 to 3
						//No need to mask - same size

						//config.c, line 119
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//config.c, line 119
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	16515072
	stdec	r6

						//config.c, line 119
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	28
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//config.c, line 119
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_romkey
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//config.c, line 119
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 200
		// Real offset of type is 236, isauto 0
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
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 119
						//call
						//pcreltotemp
	.lipcrel	_SendFileV2 // extern
	add	r7
						// Flow control - popping 16 + 20 bytes
	.liconst	36
	add	r6
						// freereg r1

						//config.c, line 120
						//call
						//pcreltotemp
	.lipcrel	_ClearVectorTable // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//config.c, line 121
						//call
						//pcreltotemp
	.lipcrel	_ClearKickstartMirrorE0 // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//config.c, line 122
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	256
	mr	r0

						//config.c, line 123
						//pcreltotemp
	.lipcrel	l18
	add	r7
l54: # 
						// allocreg r1

						//config.c, line 124
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
	.liconst	4
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

						//config.c, line 124
		// Offsets 0, 24
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 0
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 24 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 24)
	.liabs	_Errors, 24
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
	.liabs	l56,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//config.c, line 124
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
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//config.c, line 126
						//pcreltotemp
	.lipcrel	l57
	add	r7
l34: # 

						//config.c, line 127
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
	.liconst	4
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

						//config.c, line 127
		// Offsets 0, 24
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 0
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 24 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 24)
	.liabs	_Errors, 24
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
	.liabs	l58,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//config.c, line 127
		// Offsets 0, 28
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 28, 0
		// Real offset of type is 28, isauto 0
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
	st	r0
						//save_temp done
l57: # 

						//config.c, line 127
		// Offsets 0, 32
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 32, 0
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 32)
	.liabs	_Errors, 32
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

						//config.c, line 127
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
						//extern: comparing 0 with 32
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

						//config.c, line 129
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
	mr	r0
l18: # 
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

	.section	.rodata.3
l24:
	.byte	66
	.byte	97
	.byte	100
	.byte	32
	.byte	82
	.byte	79
	.byte	77
	.byte	32
	.byte	68
	.byte	105
	.byte	114
	.byte	101
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	121
	.byte	0
	.section	.rodata.4
l32:
	.byte	82
	.byte	79
	.byte	77
	.byte	32
	.byte	75
	.byte	101
	.byte	121
	.byte	32
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	119
	.byte	114
	.byte	111
	.byte	110
	.byte	103
	.byte	32
	.byte	115
	.byte	105
	.byte	122
	.byte	101
	.byte	0
	.section	.rodata.5
l38:
	.byte	82
	.byte	79
	.byte	77
	.byte	32
	.byte	114
	.byte	101
	.byte	113
	.byte	117
	.byte	105
	.byte	114
	.byte	101
	.byte	115
	.byte	32
	.byte	107
	.byte	101
	.byte	121
	.byte	32
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	0
	.section	.rodata.6
l42:
	.byte	85
	.byte	112
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	49
	.byte	77
	.byte	66
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
	.byte	46
	.byte	46
	.byte	46
	.byte	0
	.section	.rodata.7
l56:
	.byte	82
	.byte	79
	.byte	77
	.byte	32
	.byte	115
	.byte	105
	.byte	122
	.byte	101
	.byte	32
	.byte	105
	.byte	110
	.byte	99
	.byte	111
	.byte	114
	.byte	114
	.byte	101
	.byte	99
	.byte	116
	.byte	0
	.section	.rodata.8
l58:
	.byte	82
	.byte	79
	.byte	77
	.byte	32
	.byte	109
	.byte	105
	.byte	115
	.byte	115
	.byte	105
	.byte	110
	.byte	103
	.byte	0
	.section	.rodata.9
l20:
	.byte	82
	.byte	79
	.byte	77
	.byte	0
	.section	.rodata.a
l21:
	.byte	82
	.byte	79
	.byte	77
	.byte	32
	.byte	100
	.byte	105
	.byte	114
	.byte	58
	.byte	32
	.byte	37
	.byte	100
	.byte	10
	.byte	0
	.section	.rodata.b
l25:
	.byte	67
	.byte	104
	.byte	101
	.byte	99
	.byte	107
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	102
	.byte	111
	.byte	114
	.byte	32
	.byte	65
	.byte	109
	.byte	105
	.byte	103
	.byte	97
	.byte	32
	.byte	70
	.byte	111
	.byte	114
	.byte	101
	.byte	118
	.byte	101
	.byte	114
	.byte	32
	.byte	107
	.byte	101
	.byte	121
	.byte	32
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	58
	.byte	0
	.section	.rodata.c
l28:
	.byte	82
	.byte	79
	.byte	77
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	75
	.byte	69
	.byte	89
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
	.global	_UploadExtROM
_UploadExtROM:
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
						// (obj to tmp) flags 40 type 104
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r5

						//config.c, line 139
						// (address)
						// (prepobj tmp)
 						// reg r6 - no need to prep
	mt	r6
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r3

						//config.c, line 139
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//config.c, line 139
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	28
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//config.c, line 139
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 139
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//config.c, line 140
		// Offsets 0, 8
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l61,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	addt	r6
	mr	r1

					// Copying 1 words and 0 bytes to filename
					// Copying 1 words to filename
	ldinc	r0
	stinc	r1
						// allocreg r1

						//config.c, line 142
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 104
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 142
						//call
						//pcreltotemp
	.lipcrel	_ValidateDirectory // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//config.c, line 142
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 142
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l63
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//config.c, line 144
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 68, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 42 with 4a
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 144
						//call
						//pcreltotemp
	.lipcrel	_ChangeDirectory // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//config.c, line 145
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6
						// allocreg r1

						//config.c, line 145
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 80
		// Real offset of type is 84, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// extern (offset 0)
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 145
						//call
						//pcreltotemp
	.lipcrel	_RAOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//config.c, line 145
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 145
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l70
		add	r7
						// allocreg r1

						//config.c, line 146
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 92
		// Real offset of type is 92, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 146
						//call
						//pcreltotemp
	.lipcrel	_ClearError // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//config.c, line 147
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	524288
	cmp	r0

						//config.c, line 147
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l67
		add	r7
						// allocreg r1

						//config.c, line 149
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
	shr	r1
						// (save result) // isreg

						//config.c, line 149
						//FIXME convert
						// (convert - reducing type 104 to 3
						//No need to mask - same size

						//config.c, line 149
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//config.c, line 149
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	14680064
	stdec	r6

						//config.c, line 149
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	stdec	r6

						//config.c, line 149
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6
						// allocreg r1

						//config.c, line 149
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 108
		// Real offset of type is 124, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 149
						//call
						//pcreltotemp
	.lipcrel	_SendFileV2 // extern
	add	r7
						// Flow control - popping 16 + 0 bytes
	.liconst	16
	add	r6
						// freereg r1

						//config.c, line 150
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0

						//config.c, line 151
						//pcreltotemp
	.lipcrel	l59
	add	r7
l67: # 
						// allocreg r1

						//config.c, line 154
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
	.liconst	4
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

						//config.c, line 154
		// Offsets 0, 24
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 0
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 24 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 24)
	.liabs	_Errors, 24
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
	.liabs	l69,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//config.c, line 154
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
						// extern
	.liabs	_romfile, 300
						//extern deref
						//sizemod based on type 0x104
	ldt
						//Saving to reg r0
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//config.c, line 154
		// Offsets 0, 32
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 32, 0
		// Real offset of type is 32, isauto 0
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

						//config.c, line 154
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
						//extern: comparing 0 with 32
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

						//config.c, line 159
						//pcreltotemp
	.lipcrel	l70
	add	r7
l63: # 

						//config.c, line 159
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
	.liconst	4
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

						//config.c, line 159
		// Offsets 0, 24
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 0
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 24 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 24)
	.liabs	_Errors, 24
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
	.liabs	l71,0
						// static pe is varadr
						// (save temp)store type a
	stinc	r0
						//save_temp done

						//config.c, line 159
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 3
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 28)
	.liabs	_Errors, 32
						// extern pe not varadr
						//sizemod based on type 0x3
	stmpdec	r4

						//config.c, line 159
		// Offsets 0, 32
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 32, 0
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 32 with 28
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

						//config.c, line 159
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
						//extern: comparing 0 with 32
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
l70: # 

						//config.c, line 160
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	0
	mr	r0
l59: # 
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

	.section	.rodata.e
l69:
	.byte	69
	.byte	120
	.byte	116
	.byte	82
	.byte	79
	.byte	77
	.byte	32
	.byte	115
	.byte	105
	.byte	122
	.byte	101
	.byte	32
	.byte	105
	.byte	110
	.byte	99
	.byte	111
	.byte	114
	.byte	114
	.byte	101
	.byte	99
	.byte	116
	.byte	0
	.section	.rodata.f
l71:
	.byte	66
	.byte	97
	.byte	100
	.byte	32
	.byte	69
	.byte	120
	.byte	116
	.byte	82
	.byte	79
	.byte	77
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
	.section	.rodata.10
l61:
	.byte	82
	.byte	79
	.byte	77
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
	.section	.text.11
	.global	_UploadActionReplay
_UploadActionReplay:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//config.c, line 172
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l76,0
						// static pe is varadr
	stdec	r6
						// allocreg r1

						//config.c, line 172
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 172
						//call
						//pcreltotemp
	.lipcrel	_RAOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//config.c, line 172
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 172
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l75
		add	r7

						//config.c, line 175
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l77,0
						// static pe is varadr
	stdec	r6

						//config.c, line 175
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// allocreg r1

						//config.c, line 176
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// extern
	.liabs	_romfile, 24
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	511
	add	r1
						// (save result) // isreg

						//config.c, line 176
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	9
	shr	r1
						// (save result) // isreg

						//config.c, line 176
						//FIXME convert
						// (convert - reducing type 104 to 3
						//No need to mask - same size

						//config.c, line 176
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//config.c, line 176
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	10551296
	stdec	r6

						//config.c, line 176
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	stdec	r6

						//config.c, line 176
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6
						// allocreg r1

						//config.c, line 176
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_romfile
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 176
						//call
						//pcreltotemp
	.lipcrel	_SendFileV2 // extern
	add	r7
						// Flow control - popping 16 + 4 bytes
	.liconst	20
	add	r6
						// freereg r1
						// allocreg r1

						//config.c, line 181
		// Offsets 4784148, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4784148
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 181
						// (bitwise/arithmetic) 	//ops: 0, 0, 5
						// (obj to r4) flags 1 type a
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	mr	r4
				//return 0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r4
						// (save result) // isreg

						//config.c, line 181
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
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

						//config.c, line 181
		// Offsets 128, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	128
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 181
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 181
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 183
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 184
		// Offsets 90, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	90
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 185
		// Offsets 15, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	15
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 186
		// Offsets 255, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 187
		// Offsets 255, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 188
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 189
		// Offsets 255, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 190
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_config, 43
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//config.c, line 190
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l79
		add	r7
						// allocreg r1

						//config.c, line 190
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 88, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	255
						// (save temp)isreg
	mr	r3
						//save_temp done

						//config.c, line 190
						//pcreltotemp
	.lipcrel	l80
	add	r7
l79: # 

						//config.c, line 190
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 88, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
l80: # 

						//config.c, line 190
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 191
		// Offsets 255, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	255
						// (save temp)store type 1
	stbinc	r4
						//save_temp done
						// allocreg r1

						//config.c, line 192
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_config, 39
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 192
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	and	r1
						// (save result) // isreg
						// freereg r1

						//config.c, line 192
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l82
		add	r7
						// allocreg r1

						//config.c, line 192
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 112
		// Real offset of type is 112, isauto 0
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

						//config.c, line 192
						//pcreltotemp
	.lipcrel	l83
	add	r7
l82: # 

						//config.c, line 192
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 112
		// Real offset of type is 112, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
l83: # 

						//config.c, line 192
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 193
		// Offsets 255, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	255
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 194
		// Offsets 15, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	15
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 195
		// Offsets 255, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 196
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	stbinc	r4
						//save_temp done
						// allocreg r1

						//config.c, line 197
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_config, 39
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 197
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	and	r1
						// (save result) // isreg
						// freereg r1

						//config.c, line 197
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l85
		add	r7
						// allocreg r1

						//config.c, line 197
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 148
		// Real offset of type is 148, isauto 0
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

						//config.c, line 197
						//pcreltotemp
	.lipcrel	l86
	add	r7
l85: # 

						//config.c, line 197
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 148
		// Real offset of type is 148, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
						// freereg r2
						// freereg r3
l86: # 

						//config.c, line 197
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 198
		// Offsets 255, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	255
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 199
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	stbinc	r4
						//save_temp done

						//config.c, line 200
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// allocreg r1

						//config.c, line 203
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_config, 38
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 203
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	3
	and	r1
						// (save result) // isreg

						//config.c, line 203
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r1
						// (save result) // isreg

						//config.c, line 203
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	524288
	mul	r1
						// (save result) // isreg
						// allocreg r3

						//config.c, line 204
						// (bitwise/arithmetic) 	//ops: 2, 0, 4
						// (obj to r3) flags 4a type 3
						// reg r1 - only match against tmp
	mt	r1
	mr	r3
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	24
	sgn
	shr	r3
						// (save result) // isreg

						//config.c, line 204
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r3
						// (save result) // isreg
						// allocreg r2

						//config.c, line 204
		// Offsets 4784196, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 196
		// Real offset of type is 196, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4784196
						// (save temp)isreg
	mr	r2
						//save_temp done

						//config.c, line 204
						// (bitwise/arithmetic) 	//ops: 0, 0, 5
						// (obj to r4) flags 1 type a
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	mr	r4
				//return 0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r4
						// (save result) // isreg

						//config.c, line 204
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 1
	stbinc	r2
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r3
						// freereg r2
						// allocreg r2

						//config.c, line 205
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
	.liconst	16
	sgn
	shr	r2
						// (save result) // isreg

						//config.c, line 205
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r2
						// (save result) // isreg

						//config.c, line 205
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r4
						//save_temp done
						// freereg r2
						// allocreg r2

						//config.c, line 206
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
	.liconst	8
	sgn
	shr	r2
						// (save result) // isreg

						//config.c, line 206
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r2
						// (save result) // isreg

						//config.c, line 206
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r4
						//save_temp done
						// freereg r2

						//config.c, line 207
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	255
	and	r1
						// (save result) // isreg

						//config.c, line 207
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
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

						//config.c, line 209
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	mr	r0

						//config.c, line 210
						//pcreltotemp
	.lipcrel	l72
	add	r7
l75: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//config.c, line 211
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

						//config.c, line 211
						//call
						//pcreltotemp
	.lipcrel	_ClearError // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//config.c, line 212
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
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l88,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 212
						//call
						//pcreltotemp
	.lipcrel	_puts // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//config.c, line 213
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	0
	mr	r0
l72: # 
						// allocreg r1
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

	.section	.rodata.12
l77:
	.byte	85
	.byte	112
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	72
	.byte	82
	.byte	84
	.byte	109
	.byte	111
	.byte	110
	.byte	32
	.byte	82
	.byte	79
	.byte	77
	.byte	46
	.byte	46
	.byte	46
	.byte	32
	.byte	0
	.section	.rodata.13
l88:
	.byte	13
	.byte	104
	.byte	114
	.byte	116
	.byte	109
	.byte	111
	.byte	110
	.byte	46
	.byte	114
	.byte	111
	.byte	109
	.byte	32
	.byte	110
	.byte	111
	.byte	116
	.byte	32
	.byte	102
	.byte	111
	.byte	117
	.byte	110
	.byte	100
	.byte	33
	.byte	13
	.byte	0
	.section	.rodata.14
l76:
	.byte	72
	.byte	82
	.byte	84
	.byte	77
	.byte	79
	.byte	78
	.byte	32
	.byte	32
	.byte	82
	.byte	79
	.byte	77
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
	.section	.text.15
	.global	_SetConfigurationFilename
_SetConfigurationFilename:
	stdec	r6
						// allocreg r1

						//config.c, line 221
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r1 - only match against tmp
	mt	r1
				// flags 42
	and	r1

						//config.c, line 221
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l92
		add	r7

						//config.c, line 222
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r1 - only match against tmp
	stdec	r6

						//config.c, line 222
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l93,0
						// static pe is varadr
	stdec	r6

						//config.c, line 222
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_configfilename
						// extern pe is varadr
	stdec	r6

						//config.c, line 222
						//call
						//pcreltotemp
	.lipcrel	_sprintf // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
	.liconst	12
	add	r6

						//config.c, line 224
						//pcreltotemp
	.lipcrel	l94
	add	r7
l92: # 

						//config.c, line 224
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
	mt	r1
	stdec	r6
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l95,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_configfilename
						// extern pe not varadr
	mr	r1
					// Copying 3 words and 0 bytes to configfilename
					// Copying 3 words to configfilename
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
	ldinc	r6
	mr	r1
l94: # 
						// freereg r1
	ldinc	r6
	mr	r7

	.section	.rodata.16
l93:
	.byte	77
	.byte	73
	.byte	78
	.byte	77
	.byte	71
	.byte	65
	.byte	65
	.byte	37
	.byte	100
	.byte	67
	.byte	70
	.byte	71
	.byte	0
	.section	.rodata.17
l95:
	.byte	77
	.byte	73
	.byte	78
	.byte	77
	.byte	71
	.byte	65
	.byte	65
	.byte	32
	.byte	67
	.byte	70
	.byte	71
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
	.section	.text.18
	.global	_ConfigurationExists
_ConfigurationExists:
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

						//config.c, line 231
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	//mt
				// flags 42
	and	r3

						//config.c, line 231
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l99
		add	r7

						//config.c, line 232
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// extern (offset 0)
	.liabs	_configfilename
						// extern pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
l99: # 
						// allocreg r1

						//config.c, line 233
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
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 233
						//call
						//pcreltotemp
	.lipcrel	_ChangeDirectory // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//config.c, line 234
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// reg r3 - only match against tmp
	mt	r3
	stdec	r6
						// allocreg r1

						//config.c, line 234
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 234
						//call
						//pcreltotemp
	.lipcrel	_FileOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//config.c, line 234
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 234
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l101
		add	r7
						// allocreg r1

						//config.c, line 236
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	mr	r0

						//config.c, line 237
						//pcreltotemp
	.lipcrel	l96
	add	r7
						// freereg r1
l101: # 
						// allocreg r1

						//config.c, line 238
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 238
						//call
						//pcreltotemp
	.lipcrel	_ClearError // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//config.c, line 239
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	0
	mr	r0
l96: # 
						// allocreg r1
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
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.19
	.global	_CheckConfiguration
_CheckConfiguration:
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
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//config.c, line 247
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 40
						// reg r4 - only match against tmp
	//mt
				// flags 42
	and	r4

						//config.c, line 247
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l110
		add	r7
						// freereg r1
						// allocreg r1

						//config.c, line 250
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	24
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 250
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 6a type 104
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	208
	cmp	r0
						// freereg r1

						//config.c, line 250
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l110
		add	r7

						//config.c, line 252
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

						//config.c, line 252
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 252
						//call
						//pcreltotemp
	.lipcrel	_FileRead // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//config.c, line 252
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 252
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l110
		add	r7
						// allocreg r1

						//config.c, line 255
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_sector_buffer, 41
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 255
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	sgn
	cmp	r1
						// freereg r1

						//config.c, line 255
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l112
		add	r7
						// allocreg r1

						//config.c, line 256
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0

						//config.c, line 259
						//pcreltotemp
	.lipcrel	l103
	add	r7
						// freereg r1
						// freereg r2
						// freereg r3
l112: # 
						// allocreg r2

						//config.c, line 259
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//config.c, line 259
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 52
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// static
	.liabs	l102,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//config.c, line 259
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done

						//config.c, line 259
						//call
						//pcreltotemp
	.lipcrel	___strncmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//config.c, line 259
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 259
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l114
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//config.c, line 260
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	mr	r0

						//config.c, line 262
						//pcreltotemp
	.lipcrel	l103
	add	r7
l114: # 

						//config.c, line 262
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// extern
	.liabs	_sector_buffer, 8
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	3
	cmp	r0

						//config.c, line 262
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l116
		add	r7

						//config.c, line 263
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0

						//config.c, line 265
						//pcreltotemp
	.lipcrel	l103
	add	r7
l116: # 

						//config.c, line 265
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	1
	mr	r0

						//config.c, line 266
						//pcreltotemp
	.lipcrel	l103
	add	r7
l110: # 

						//config.c, line 269
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	0
	mr	r0
l103: # 
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
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1a
	.global	_LoadConfiguration
_LoadConfiguration:
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
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//config.c, line 276
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
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

						//config.c, line 279
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//config.c, line 279
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l122
		add	r7
						// freereg r1

						//config.c, line 281
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//config.c, line 282
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 282
						//call
						//pcreltotemp
	.lipcrel	_ChangeDirectory // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//config.c, line 283
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_configfilename
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//config.c, line 283
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 32, isauto 0
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

						//config.c, line 283
						//call
						//pcreltotemp
	.lipcrel	_FileOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//config.c, line 283
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 283
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l122
		add	r7
						// allocreg r1

						//config.c, line 284
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
l122: # 

						//config.c, line 288
						// (test)
						// (obj to tmp) flags 42 type a
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//config.c, line 288
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l151
		add	r7
						// freereg r1
						// freereg r3
						// allocreg r1

						//config.c, line 291
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
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l125,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 291
						//call
						//pcreltotemp
	.lipcrel	_BootPrint // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r3

						//config.c, line 292
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	24
	addt	r4
						// (save temp)isreg
	mr	r3
						//save_temp done

						//config.c, line 292
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 6a type 104
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r3
	stdec	r6

						//config.c, line 292
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 6a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 6a
						// static
	.liabs	l126,0
						// static pe is varadr
	stdec	r6

						//config.c, line 292
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6

						//config.c, line 293
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 6a type 104
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r3
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	208
	cmp	r0
						// freereg r3

						//config.c, line 293
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l151
		add	r7
						// allocreg r3

						//config.c, line 295
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

						//config.c, line 295
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 295
						//call
						//pcreltotemp
	.lipcrel	_FileRead // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//config.c, line 298
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 41
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 298
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	sgn
	cmp	r1
						// freereg r1

						//config.c, line 298
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l130
		add	r7
						// freereg r2
						// freereg r3
						// allocreg r2

						//config.c, line 302
		// Offsets 12, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 84
		// Real offset of type is 84, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 12)
	.liabs	_sector_buffer, 12
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//config.c, line 302
		// Offsets 12, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 88, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 12 with 12
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 12 with 12
						// extern (offset 12)
	.liabs	_config, 12
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//config.c, line 302
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 92
		// Real offset of type is 92, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done

						//config.c, line 302
						//call
						//pcreltotemp
	.lipcrel	___strncmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3

						//config.c, line 304
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r5
						//save_temp done

						//config.c, line 307
						//pcreltotemp
	.lipcrel	l133
	add	r7
l130: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//config.c, line 307
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l134,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 307
						//call
						//pcreltotemp
	.lipcrel	_BootPrint // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// freereg r2
						// freereg r3
l133: # 
						// allocreg r2

						//config.c, line 310
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 92
		// Real offset of type is 92, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//config.c, line 310
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 96
		// Real offset of type is 96, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// static
	.liabs	l102,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//config.c, line 310
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 100, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done

						//config.c, line 310
						//call
						//pcreltotemp
	.lipcrel	___strncmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//config.c, line 310
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 310
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l136
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//config.c, line 311
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
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
l136: # 

						//config.c, line 313
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// extern
	.liabs	_sector_buffer, 8
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	cmp	r0

						//config.c, line 313
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l138
		add	r7
						// freereg r1
						// freereg r2
						// freereg r3
						// allocreg r1

						//config.c, line 315
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 116
		// Real offset of type is 116, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l139,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 315
						//call
						//pcreltotemp
	.lipcrel	_BootPrint // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r3

						//config.c, line 316
		// Offsets 102, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 140
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 102)
	.liabs	_sector_buffer, 102
						// extern pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//config.c, line 316
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 144
		// Real offset of type is 144, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// static
	.liabs	l140,0
						// static pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//config.c, line 316
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 148
		// Real offset of type is 148, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 316
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1
l138: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//config.c, line 318
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// extern
	.liabs	_sector_buffer, 8
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	3
	cmp	r0

						//config.c, line 318
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l142
		add	r7
						// freereg r1
						// allocreg r1

						//config.c, line 320
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 120
		// Real offset of type is 120, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l143,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 320
						//call
						//pcreltotemp
	.lipcrel	_BootPrint // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//config.c, line 321
		// Offsets 0, 132
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 132, 0
		// Real offset of type is 132, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 132)
	.liabs	_sector_buffer, 132
						// extern pe not varadr
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

						//config.c, line 322
		// Offsets 0, 152
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 152, 0
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 152 with 132
						//Fuzzy match found, offset: 20 (varadr: 1)
	.liconst	20
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
	st	r0
						//save_temp done

						//config.c, line 322
		// Offsets 152, 148
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 148, 0
		// Real offset of type is 148, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 148 with 152
						//Fuzzy match found, offset: -4 (varadr: 1)
	.liconst	-4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_sector_buffer, 152
						//extern deref
						//sizemod based on type 0x104
	ldt
						// (save temp)store type 4
	st	r0
						//save_temp done

						//config.c, line 322
		// Offsets 148, 144
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 144, 0
		// Real offset of type is 144, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//extern: comparing 144 with 148
						//Fuzzy match found, offset: -4 (varadr: 1)
	.liconst	-4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_sector_buffer, 148
						//extern deref
						//sizemod based on type 0x104
	ldt
						// (save temp)store type 4
	st	r0
						//save_temp done

						//config.c, line 322
		// Offsets 144, 140
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 140, 0
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//extern: comparing 140 with 144
						//Fuzzy match found, offset: -4 (varadr: 1)
	.liconst	-4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_sector_buffer, 144
						//extern deref
						//sizemod based on type 0x104
	ldt
						// (save temp)store type 4
	st	r0
						//save_temp done

						//config.c, line 323
		// Offsets 0, 156
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 156, 0
		// Real offset of type is 156, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//extern: comparing 156 with 140
						//Fuzzy match found, offset: 16 (varadr: 1)
	.liconst	16
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

						//config.c, line 324
		// Offsets 0, 157
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 157, 0
		// Real offset of type is 157, isauto 0
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

						//config.c, line 325
		// Offsets 0, 158
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 158, 0
		// Real offset of type is 158, isauto 0
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

						//config.c, line 326
		// Offsets 0, 166
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 166, 0
		// Real offset of type is 166, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 166 with 159
						//Fuzzy match found, offset: 7 (varadr: 1)
	.liconst	7
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

						//config.c, line 327
		// Offsets 0, 182
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 182, 0
		// Real offset of type is 182, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 182 with 167
						//Fuzzy match found, offset: 15 (varadr: 1)
	.liconst	15
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

						//config.c, line 328
		// Offsets 0, 183
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 183, 0
		// Real offset of type is 183, isauto 0
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

						//config.c, line 329
		// Offsets 0, 184
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
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//config.c, line 330
		// Offsets 0, 192
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 192, 0
		// Real offset of type is 192, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 192 with 185
						//Fuzzy match found, offset: 7 (varadr: 1)
	.liconst	7
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
l142: # 
						// allocreg r1

						//config.c, line 332
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// extern
	.liabs	_sector_buffer, 8
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	3
	cmp	r0

						//config.c, line 332
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l145
		add	r7
						// freereg r1
						// allocreg r1

						//config.c, line 334
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 124
		// Real offset of type is 124, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l146,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 334
						//call
						//pcreltotemp
	.lipcrel	_BootPrint // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//config.c, line 335
		// Offsets 0, 126
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 126, 0
		// Real offset of type is 126, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 126)
	.liabs	_sector_buffer, 126
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
l145: # 
						// allocreg r1

						//config.c, line 337
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// extern
	.liabs	_sector_buffer, 8
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	3
	cmp	r0

						//config.c, line 337
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l148
		add	r7
						// freereg r1
						// allocreg r1

						//config.c, line 339
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 128
		// Real offset of type is 128, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l149,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 339
						//call
						//pcreltotemp
	.lipcrel	_BootPrint // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//config.c, line 340
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done
l148: # 
						// allocreg r1

						//config.c, line 343
		// Offsets 3, 8
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 8, 0
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 8)
	.liabs	_sector_buffer, 8
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	3
						// (save temp)store type 4
	st	r0
						//save_temp done

						//config.c, line 344
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//config.c, line 344
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l151
		add	r7

						//config.c, line 345
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
	mt	r1
	stdec	r6
	mt	r2
	stdec	r6
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						// extern
	.liabs	_sector_buffer
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_config
						// extern pe not varadr
	mr	r1
					// Copying 52 words and 0 bytes to config
					// Copying 52 words to config
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	208
	addt	r1
	mr	r2
.cpyconfigwordloop3:
	ldinc	r0
	stinc	r1
	mt	r1
	cmp	r2
	cond	NEQ
		.lipcrel	.cpyconfigwordloop3
		add	r7
	ldinc	r6
	mr	r2
	ldinc	r6
	mr	r1
l151: # 

						//config.c, line 348
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//config.c, line 348
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l153
		add	r7
						// freereg r1
						// freereg r2
						// freereg r3
						// allocreg r1

						//config.c, line 350
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l154,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 350
						//call
						//pcreltotemp
	.lipcrel	_BootPrint // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//config.c, line 351
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 351
						//call
						//pcreltotemp
	.lipcrel	_ClearError // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r3

						//config.c, line 353
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_config
						// extern pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//config.c, line 353
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 52
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//config.c, line 353
		// Offsets 208, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	208
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 353
						//call
						//pcreltotemp
	.lipcrel	___memset // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1
						// allocreg r3

						//config.c, line 354
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 76
		// Real offset of type is 76, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_config
						// extern pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//config.c, line 354
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 80
		// Real offset of type is 80, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// static
	.liabs	l102,0
						// static pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//config.c, line 354
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 84
		// Real offset of type is 84, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 354
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1
						// allocreg r3

						//config.c, line 355
		// Offsets 12, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 104
		// Real offset of type is 104, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 12)
	.liabs	_config, 12
						// extern pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//config.c, line 355
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 108
		// Real offset of type is 108, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// static
	.liabs	l155,0
						// static pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//config.c, line 355
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 112
		// Real offset of type is 112, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 355
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//config.c, line 356
		// Offsets 3, 8
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 8, 0
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 8)
	.liabs	_config, 8
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	3
						// (save temp)store type 4
	st	r0
						//save_temp done

						//config.c, line 357
		// Offsets 1, 45
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 45, 0
		// Real offset of type is 45, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 45 with 8
						//Fuzzy match found, offset: 37 (varadr: 1)
	.liconst	37
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//config.c, line 358
		// Offsets 0, 20
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 20, 0
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 20 with 46
						//Fuzzy match found, offset: -26 (varadr: 1)
	.liconst	-26
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

						//config.c, line 359
		// Offsets 21, 38
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 38, 0
		// Real offset of type is 38, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 38 with 21
						//Fuzzy match found, offset: 17 (varadr: 1)
	.liconst	17
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	21
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//config.c, line 360
		// Offsets 0, 98
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 98, 0
		// Real offset of type is 98, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 98 with 39
						//Fuzzy match found, offset: 59 (varadr: 1)
	.liconst	59
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

						//config.c, line 361
		// Offsets 0, 39
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 39, 0
		// Real offset of type is 39, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 39 with 99
						//Fuzzy match found, offset: -60 (varadr: 1)
	.liconst	-60
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

						//config.c, line 362
		// Offsets 1, 40
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
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//config.c, line 363
		// Offsets 1, 41
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 41, 0
		// Real offset of type is 41, isauto 0
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

						//config.c, line 364
		// Offsets 0, 43
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 43, 0
		// Real offset of type is 43, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 43 with 42
						//Fuzzy match found, offset: 1 (varadr: 1)
	.liconst	1
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

						//config.c, line 365
		// Offsets 1, 46
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 46, 0
		// Real offset of type is 46, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 46 with 44
						//Fuzzy match found, offset: 2 (varadr: 1)
	.liconst	2
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r3

						//config.c, line 366
		// Offsets 48, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 132
		// Real offset of type is 132, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 48 with 47
						//Fuzzy match found, offset: 1 (varadr: 0)
	.liconst	1
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//config.c, line 366
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 136
		// Real offset of type is 136, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l156,0
						// static pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//config.c, line 366
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 140
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	8
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 366
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//config.c, line 367
		// Offsets 0, 56
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 56, 0
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 56)
	.liabs	_config, 56
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
						// allocreg r3

						//config.c, line 368
		// Offsets 74, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 160
		// Real offset of type is 160, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 74 with 57
						//Fuzzy match found, offset: 17 (varadr: 0)
	.liconst	17
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//config.c, line 368
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 164
		// Real offset of type is 164, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l157,0
						// static pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//config.c, line 368
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 168
		// Real offset of type is 168, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	8
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 368
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//config.c, line 369
		// Offsets 0, 82
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 82, 0
		// Real offset of type is 82, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 82)
	.liabs	_config, 82
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

						//config.c, line 370
		// Offsets 2, 72
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 72, 0
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 72 with 83
						//Fuzzy match found, offset: -11 (varadr: 1)
	.liconst	-11
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	2
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r3

						//config.c, line 374
		// Offsets 102, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 188
		// Real offset of type is 188, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 102 with 73
						//Fuzzy match found, offset: 29 (varadr: 0)
	.liconst	29
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//config.c, line 374
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 192
		// Real offset of type is 192, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l158,0
						// static pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//config.c, line 374
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 196
		// Real offset of type is 196, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	8
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 374
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1
						// allocreg r1

						//config.c, line 376
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
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l159,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 376
						//call
						//pcreltotemp
	.lipcrel	_BootPrint // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l153: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//config.c, line 379
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
						//Saving to reg r1
						// (save temp)isreg
	mr	r0
						//save_temp done
						// matchobj comparing flags 1 with 42
	.liconst	255
	and	r1
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

	.section	.rodata.1b
l139:
	.byte	67
	.byte	111
	.byte	110
	.byte	102
	.byte	105
	.byte	103
	.byte	32
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	112
	.byte	114
	.byte	101
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	115
	.byte	32
	.byte	69
	.byte	120
	.byte	116
	.byte	82
	.byte	79
	.byte	77
	.byte	32
	.byte	115
	.byte	117
	.byte	112
	.byte	112
	.byte	111
	.byte	114
	.byte	116
	.byte	0
	.section	.rodata.1c
l140:
	.byte	69
	.byte	88
	.byte	84
	.byte	69
	.byte	78
	.byte	68
	.byte	69
	.byte	68
	.byte	0
	.section	.rodata.1d
l143:
	.byte	67
	.byte	111
	.byte	110
	.byte	102
	.byte	105
	.byte	103
	.byte	32
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	112
	.byte	114
	.byte	101
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	115
	.byte	32
	.byte	82
	.byte	79
	.byte	77
	.byte	32
	.byte	80
	.byte	97
	.byte	116
	.byte	104
	.byte	32
	.byte	115
	.byte	117
	.byte	112
	.byte	112
	.byte	111
	.byte	114
	.byte	116
	.byte	0
	.section	.rodata.1e
l146:
	.byte	67
	.byte	111
	.byte	110
	.byte	102
	.byte	105
	.byte	103
	.byte	32
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	112
	.byte	114
	.byte	101
	.byte	100
	.byte	97
	.byte	116
	.byte	101
	.byte	115
	.byte	32
	.byte	68
	.byte	114
	.byte	105
	.byte	118
	.byte	101
	.byte	115
	.byte	111
	.byte	117
	.byte	110
	.byte	100
	.byte	115
	.byte	32
	.byte	115
	.byte	117
	.byte	112
	.byte	112
	.byte	111
	.byte	114
	.byte	116
	.byte	0
	.section	.rodata.1f
l149:
	.byte	87
	.byte	114
	.byte	111
	.byte	110
	.byte	103
	.byte	32
	.byte	99
	.byte	111
	.byte	110
	.byte	102
	.byte	105
	.byte	103
	.byte	117
	.byte	114
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	32
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	102
	.byte	111
	.byte	114
	.byte	109
	.byte	97
	.byte	116
	.byte	33
	.byte	10
	.byte	0
	.section	.rodata.20
l134:
	.byte	67
	.byte	111
	.byte	110
	.byte	102
	.byte	105
	.byte	103
	.byte	32
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	115
	.byte	97
	.byte	110
	.byte	105
	.byte	116
	.byte	121
	.byte	32
	.byte	99
	.byte	104
	.byte	101
	.byte	99
	.byte	107
	.byte	32
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	33
	.byte	10
	.byte	0
	.section	.rodata.21
l125:
	.byte	79
	.byte	112
	.byte	101
	.byte	110
	.byte	101
	.byte	100
	.byte	32
	.byte	99
	.byte	111
	.byte	110
	.byte	102
	.byte	105
	.byte	103
	.byte	117
	.byte	114
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	32
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	10
	.byte	0
	.section	.rodata.22
l126:
	.byte	67
	.byte	111
	.byte	110
	.byte	102
	.byte	105
	.byte	103
	.byte	117
	.byte	114
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	32
	.byte	102
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
	.byte	108
	.byte	117
	.byte	13
	.byte	0
	.section	.rodata.23
l154:
	.byte	67
	.byte	111
	.byte	110
	.byte	102
	.byte	105
	.byte	103
	.byte	32
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	32
	.byte	45
	.byte	32
	.byte	117
	.byte	115
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	100
	.byte	101
	.byte	102
	.byte	97
	.byte	117
	.byte	108
	.byte	116
	.byte	115
	.byte	10
	.byte	0
	.section	.rodata.24
l155:
	.byte	75
	.byte	73
	.byte	67
	.byte	75
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.section	.rodata.25
l156:
	.byte	72
	.byte	65
	.byte	82
	.byte	68
	.byte	70
	.byte	73
	.byte	76
	.byte	69
	.byte	0
	.section	.rodata.26
l157:
	.byte	72
	.byte	65
	.byte	82
	.byte	68
	.byte	70
	.byte	73
	.byte	76
	.byte	69
	.byte	0
	.section	.rodata.27
l158:
	.byte	69
	.byte	88
	.byte	84
	.byte	69
	.byte	78
	.byte	68
	.byte	69
	.byte	68
	.byte	0
	.section	.rodata.28
l159:
	.byte	68
	.byte	101
	.byte	102
	.byte	97
	.byte	117
	.byte	108
	.byte	116
	.byte	115
	.byte	32
	.byte	115
	.byte	101
	.byte	116
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
	.section	.text.29
	.global	_ApplyConfiguration
_ApplyConfiguration:
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
	.liconst	16
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

						//config.c, line 386
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

						//config.c, line 393
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	36
	ldidx	r6

						//config.c, line 393
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l163
		add	r7

						//config.c, line 395
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
l210: # 
						// allocreg r1

						//config.c, line 397
						//FIXME convert
						// (convert - reducing type 3 to 103
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

						//config.c, line 397
						//call
						//pcreltotemp
	.lipcrel	_OpenHardfile // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//config.c, line 397
						// (test)
						// (obj to tmp) flags 4a type 101
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 397
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l169
		add	r7
						// allocreg r1

						//config.c, line 401
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4420
	mul	r1
						// (save result) // isreg

						//config.c, line 401
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

						//config.c, line 401
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 480
		// Real offset of type is 480, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r4
						// (save temp)isreg
	mr	r3
						//save_temp done
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						// (obj to r2) flags 42 type 3
						// matchobj comparing flags 42 with 62
						// reg r3 - only match against tmp
	//mt
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l173
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
	.lipcrel	l175
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	127
	sub	r2
						// (save result) // isreg
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l177
		add	r7
						// freereg r1
						// freereg r2
						// allocreg r1

						//config.c, line 403
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
						// allocreg r2

						//config.c, line 403
						// (bitwise/arithmetic) 	//ops: 5, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	12
	addt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done

						//config.c, line 403
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	stdec	r6
						// freereg r2

						//config.c, line 403
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//config.c, line 403
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l172,0
						// static pe is varadr
	stdec	r6

						//config.c, line 403
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
	stdec	r6

						//config.c, line 403
						//call
						//pcreltotemp
	.lipcrel	_sprintf // extern
	add	r7
						// Flow control - popping 16 + 0 bytes
	.liconst	16
	add	r6
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
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type a
	st	r6
						//save_temp done

						//config.c, line 404
						//pcreltotemp
	.lipcrel	l170
	add	r7
l173: # 
						// allocreg r1

						//config.c, line 406
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	4
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//config.c, line 406
						// (bitwise/arithmetic) 	//ops: 5, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	12
	addt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done

						//config.c, line 406
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
	stdec	r6
						// freereg r2

						//config.c, line 406
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//config.c, line 406
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l174,0
						// static pe is varadr
	stdec	r6

						//config.c, line 406
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
	stdec	r6

						//config.c, line 406
						//call
						//pcreltotemp
	.lipcrel	_sprintf // extern
	add	r7
						// Flow control - popping 16 + 0 bytes
	.liconst	16
	add	r6
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
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type a
	st	r6
						//save_temp done

						//config.c, line 407
						//pcreltotemp
	.lipcrel	l170
	add	r7
l175: # 
						// allocreg r2
						// allocreg r1

						//config.c, line 409
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l176,0
						// static pe is varadr
	stdec	r6

						//config.c, line 409
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
	stdec	r6

						//config.c, line 409
						//call
						//pcreltotemp
	.lipcrel	_sprintf // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
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
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type a
	st	r6
						//save_temp done

						//config.c, line 410
						//pcreltotemp
	.lipcrel	l170
	add	r7
						// freereg r1
l177: # 
						// allocreg r1

						//config.c, line 412
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	2
	sub	r1
						// (save result) // isreg

						//config.c, line 412
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//config.c, line 412
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l178,0
						// static pe is varadr
	stdec	r6

						//config.c, line 412
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
	stdec	r6

						//config.c, line 412
						//call
						//pcreltotemp
	.lipcrel	_sprintf // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
	.liconst	12
	add	r6
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 42, 162
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type a
	st	r6
						//save_temp done
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
l170: # 
						// allocreg r1

						//config.c, line 415
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 52
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 415
						//call
						//pcreltotemp
	.lipcrel	_BootPrint // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r3

						//config.c, line 416
						// (bitwise/arithmetic) 	//ops: 7, 0, 4
						// (obj to r3) flags 62 type a
						// deref 
	ld	r6
	mr	r3
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	308
	add	r3
						// (save result) // isreg
						// allocreg r1

						//config.c, line 416
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 1
						// deref 
	hlf
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 416
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r4

						//config.c, line 416
						// (bitwise/arithmetic) 	//ops: 0, 0, 5
						// (obj to r4) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r4
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	306
	add	r4
						// (save result) // isreg
						// allocreg r1

						//config.c, line 416
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 1
						// deref 
	hlf
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 416
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r5

						//config.c, line 416
						// (bitwise/arithmetic) 	//ops: 0, 0, 6
						// (obj to r5) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	8
						//sizemod based on type 0xa
	ldidx	r6
	mr	r5
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	304
	add	r5
						// (save result) // isreg
						// allocreg r1

						//config.c, line 416
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 1
						// deref 
	hlf
	ld	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 416
						// Q1 disposable
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//config.c, line 416
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l179,0
						// static pe is varadr
	stdec	r6

						//config.c, line 416
						// (a/p push)
						// a: pushed 16, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
	stdec	r6

						//config.c, line 416
						//call
						//pcreltotemp
	.lipcrel	_sprintf // extern
	add	r7
						// Deferred popping of 20 bytes (20 in total)
						// allocreg r1

						//config.c, line 417
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 116
		// Real offset of type is 136, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 417
						//call
						//pcreltotemp
	.lipcrel	_BootPrint // extern
	add	r7
						// Deferred popping of 0 bytes (20 in total)
						// freereg r1
						// allocreg r1

						//config.c, line 418
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// deref 
	hlf
	ld	r5
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r5
						// allocreg r2

						//config.c, line 418
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 6a
						// deref 
	hlf
	ld	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r4

						//config.c, line 418
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 6a
						// reg r2 - only match against tmp
	//mt
	mul	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//config.c, line 418
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 102
						// deref 
	hlf
	ld	r3
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r3

						//config.c, line 418
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 6a
						// reg r2 - only match against tmp
	//mt
	mul	r1
						// (save result) // isreg
						// freereg r2

						//config.c, line 418
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	11
	shr	r1
						// (save result) // isreg

						//config.c, line 418
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1

						//config.c, line 418
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l180,0
						// static pe is varadr
	stdec	r6

						//config.c, line 418
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
	stdec	r6

						//config.c, line 418
						//call
						//pcreltotemp
	.lipcrel	_sprintf // extern
	add	r7
						// Deferred popping of 12 bytes (32 in total)
						// allocreg r1

						//config.c, line 419
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 192
		// Real offset of type is 224, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 419
						//call
						//pcreltotemp
	.lipcrel	_BootPrint // extern
	add	r7
						// Deferred popping of 0 bytes (32 in total)
						// freereg r1
						// allocreg r1

						//config.c, line 420
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// var, auto|reg
	.liconst	32
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

						//config.c, line 420
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 6a type 4
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r1
	stdec	r6
						// freereg r1

						//config.c, line 420
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 6a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 6a
						// static
	.liabs	l181,0
						// static pe is varadr
	stdec	r6

						//config.c, line 420
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
	stdec	r6

						//config.c, line 420
						//call
						//pcreltotemp
	.lipcrel	_sprintf // extern
	add	r7
						// Flow control - popping 12 + 32 bytes
	.liconst	44
	add	r6
						// allocreg r1

						//config.c, line 421
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
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_s
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 421
						//call
						//pcreltotemp
	.lipcrel	_BootPrint // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l169: # 
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//config.c, line 396
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

						//config.c, line 396
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	4
	sgn
	cmp	r0

						//config.c, line 396
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l210
		add	r7
						// freereg r1
						// allocreg r1

						//config.c, line 426
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_config, 73
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//config.c, line 426
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l184
		add	r7

						//config.c, line 426
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_config, 72
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//config.c, line 426
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l184
		add	r7

						//config.c, line 426
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
						// (save temp)isreg
	mr	r4
						//save_temp done

						//config.c, line 426
						//pcreltotemp
	.lipcrel	l185
	add	r7
l184: # 

						//config.c, line 426
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
l185: # 

						//config.c, line 426
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// reg r4 - only match against tmp
	mt	r4
	stdec	r6

						//config.c, line 426
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_config, 47
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//config.c, line 426
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l188
		add	r7

						//config.c, line 426
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_config, 46
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//config.c, line 426
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l188
		add	r7

						//config.c, line 426
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 0
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
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//config.c, line 426
						//pcreltotemp
	.lipcrel	l189
	add	r7
l188: # 

						//config.c, line 426
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 0
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
						// freereg r1
						// freereg r2
l189: # 

						//config.c, line 426
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags a type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6
						// allocreg r2

						//config.c, line 426
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with a
						// extern
	.liabs	_config, 43
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//config.c, line 426
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r2

						//config.c, line 426
						//call
						//pcreltotemp
	.lipcrel	_ConfigIDE // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//config.c, line 428
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_config, 183
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//config.c, line 428
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l192
		add	r7
						// allocreg r2
						// allocreg r1

						//config.c, line 428
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_config, 182
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//config.c, line 428
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l192
		add	r7

						//config.c, line 428
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
						// (save temp)isreg
	mr	r5
						//save_temp done

						//config.c, line 428
						//pcreltotemp
	.lipcrel	l193
	add	r7
l192: # 

						//config.c, line 428
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done
l193: # 

						//config.c, line 428
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6

						//config.c, line 428
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_config, 157
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//config.c, line 428
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l196
		add	r7

						//config.c, line 428
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_config, 156
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//config.c, line 428
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l196
		add	r7

						//config.c, line 428
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 0
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
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//config.c, line 428
						//pcreltotemp
	.lipcrel	l197
	add	r7
l196: # 

						//config.c, line 428
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 0
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
						// freereg r1
						// freereg r2
l197: # 

						//config.c, line 428
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags a type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6
						// allocreg r2

						//config.c, line 428
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with a
						// extern
	.liabs	_config, 43
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//config.c, line 428
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	sgn
	shr	r2
						// (save result) // isreg
						// allocreg r1

						//config.c, line 428
						// Q1 disposable
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
	.liconst	2
	or	r1
						// (save result) // isreg
						// freereg r2

						//config.c, line 428
						//call
						//pcreltotemp
	.lipcrel	_ConfigIDE // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
l163: # 
						// allocreg r2
						// allocreg r1

						//config.c, line 431
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_config, 98
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 431
						//call
						//pcreltotemp
	.lipcrel	_ConfigCPU // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//config.c, line 432
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_config, 38
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 432
						//call
						//pcreltotemp
	.lipcrel	_ConfigMemory // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//config.c, line 433
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_config, 39
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 433
						//call
						//pcreltotemp
	.lipcrel	_ConfigChipset // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//config.c, line 434
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_config, 40
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 434
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

						//config.c, line 434
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_config, 41
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 434
						//call
						//pcreltotemp
	.lipcrel	_ConfigFloppy // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1
						// allocreg r1

						//config.c, line 435
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_config, 44
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 435
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

						//config.c, line 435
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_config, 36
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 435
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

						//config.c, line 435
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_config, 37
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 435
						//call
						//pcreltotemp
	.lipcrel	_ConfigVideo // extern
	add	r7
						// Flow control - popping 8 + 4 bytes
	.liconst	12
	add	r6
						// freereg r1
						// allocreg r1

						//config.c, line 436
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_config, 45
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 436
						//call
						//pcreltotemp
	.lipcrel	_ConfigMisc // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//config.c, line 438
						// (test)
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0x101
	byt
	ldidx	r6

						//config.c, line 438
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l205
		add	r7

						//config.c, line 440
		// Offsets 32, 268435431
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is 268435431, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 2
						// deref
						// const to r0
						// matchobj comparing flags 1 with 2
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

						//config.c, line 441
		// Offsets 8, 268435427
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
	.liconst	8
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//config.c, line 443
		// Offsets 6, 268435427
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
	.liconst	6
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//config.c, line 444
		// Offsets 33, 268435431
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

						//config.c, line 445
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 21 type 502
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
						// (save temp)store type 3
	st	r6
						//save_temp done

						//config.c, line 445
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 21 type 502
						// matchobj comparing flags 21 with 21
						// const/deref
						// matchobj comparing flags 1 with 21
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

						//config.c, line 445
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

						//config.c, line 445
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

						//config.c, line 446
						//call
						//pcreltotemp
	.lipcrel	_UploadActionReplay // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//config.c, line 447
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 12)
	.liabs	_config, 12
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//config.c, line 447
		// Offsets 132, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 324
		// Real offset of type is 328, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_config, 132
						//extern deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 447
						//call
						//pcreltotemp
	.lipcrel	_UploadKickstart // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//config.c, line 447
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//config.c, line 447
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

						//config.c, line 447
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l201
		add	r7
						// allocreg r1

						//config.c, line 449
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
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
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//config.c, line 452
						//pcreltotemp
	.lipcrel	l202
	add	r7
						// freereg r1
l201: # 

						//config.c, line 453
		// Offsets 0, 12
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l203,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// extern (offset 12)
	.liabs	_config, 12
						// extern pe not varadr
	mr	r1
					// Copying 2 words and 1 bytes to config
					// Copying 2 words to config
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
					// Copying 1 byte tail to config
	ldbinc	r0
	stbinc	r1

						//config.c, line 454
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 12)
	.liabs	_config, 12
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//config.c, line 454
		// Offsets 132, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 336
		// Real offset of type is 340, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_config, 132
						//extern deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 454
						//call
						//pcreltotemp
	.lipcrel	_UploadKickstart // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//config.c, line 454
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
l202: # 
						// allocreg r1

						//config.c, line 456
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6

						//config.c, line 456
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l205
		add	r7

						//config.c, line 456
						// (compare) (q1 signed) (q2 signed)
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
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1024
	sgn
	cmp	r0

						//config.c, line 456
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l205
		add	r7
						// freereg r1

						//config.c, line 459
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 102)
	.liabs	_config, 102
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//config.c, line 459
		// Offsets 136, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 336
		// Real offset of type is 340, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_config, 136
						//extern deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 459
						//call
						//pcreltotemp
	.lipcrel	_UploadExtROM // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//config.c, line 459
						// (test)
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 459
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l208
		add	r7

						//config.c, line 461
		// Offsets 0, 102
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l209,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// extern (offset 102)
	.liabs	_config, 102
						// extern pe not varadr
	mr	r1
					// Copying 2 words and 1 bytes to config
					// Copying 2 words to config
	ldinc	r0
	stinc	r1
	ldinc	r0
	stinc	r1
					// Copying 1 byte tail to config
	ldbinc	r0
	stbinc	r1

						//config.c, line 462
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 102)
	.liabs	_config, 102
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//config.c, line 462
		// Offsets 136, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 348
		// Real offset of type is 352, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_config, 136
						//extern deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 462
						//call
						//pcreltotemp
	.lipcrel	_UploadExtROM // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//config.c, line 462
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//config.c, line 462
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 4a type 101
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
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
l208: # 
						// allocreg r1

						//config.c, line 464
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 348
		// Real offset of type is 348, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 464
						//call
						//pcreltotemp
	.lipcrel	_ClearError // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l205: # 
						// allocreg r1

						//config.c, line 467
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

	.section	.rodata.2a
l172:
	.byte	10
	.byte	72
	.byte	97
	.byte	114
	.byte	100
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	48
	.byte	32
	.byte	40
	.byte	119
	.byte	105
	.byte	116
	.byte	104
	.byte	32
	.byte	102
	.byte	97
	.byte	107
	.byte	101
	.byte	32
	.byte	82
	.byte	68
	.byte	66
	.byte	41
	.byte	58
	.byte	32
	.byte	37
	.byte	46
	.byte	56
	.byte	115
	.byte	46
	.byte	37
	.byte	46
	.byte	51
	.byte	115
	.byte	0
	.section	.rodata.2b
l174:
	.byte	10
	.byte	72
	.byte	97
	.byte	114
	.byte	100
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	48
	.byte	58
	.byte	32
	.byte	37
	.byte	46
	.byte	56
	.byte	115
	.byte	46
	.byte	37
	.byte	46
	.byte	51
	.byte	115
	.byte	0
	.section	.rodata.2c
l176:
	.byte	10
	.byte	72
	.byte	97
	.byte	114
	.byte	100
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	48
	.byte	58
	.byte	32
	.byte	117
	.byte	115
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	114
	.byte	101
	.byte	32
	.byte	83
	.byte	68
	.byte	32
	.byte	99
	.byte	97
	.byte	114
	.byte	100
	.byte	0
	.section	.rodata.2d
l178:
	.byte	10
	.byte	72
	.byte	97
	.byte	114
	.byte	100
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	48
	.byte	58
	.byte	32
	.byte	117
	.byte	115
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	83
	.byte	68
	.byte	32
	.byte	99
	.byte	97
	.byte	114
	.byte	100
	.byte	32
	.byte	112
	.byte	97
	.byte	114
	.byte	116
	.byte	105
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	32
	.byte	37
	.byte	100
	.byte	0
	.section	.rodata.2e
l179:
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
	.section	.rodata.2f
l180:
	.byte	83
	.byte	105
	.byte	122
	.byte	101
	.byte	58
	.byte	32
	.byte	37
	.byte	108
	.byte	117
	.byte	32
	.byte	77
	.byte	66
	.byte	0
	.section	.rodata.30
l181:
	.byte	79
	.byte	102
	.byte	102
	.byte	115
	.byte	101
	.byte	116
	.byte	58
	.byte	32
	.byte	37
	.byte	108
	.byte	100
	.byte	0
	.section	.rodata.31
l203:
	.byte	75
	.byte	73
	.byte	67
	.byte	75
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.section	.rodata.32
l209:
	.byte	69
	.byte	88
	.byte	84
	.byte	69
	.byte	78
	.byte	68
	.byte	69
	.byte	68
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
	.section	.text.33
	.global	_SaveConfiguration
_SaveConfiguration:
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
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//config.c, line 473
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 40
						// reg r4 - only match against tmp
	//mt
				// flags 42
	and	r4

						//config.c, line 473
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l217
		add	r7
						// freereg r1

						//config.c, line 475
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//config.c, line 476
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
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 476
						//call
						//pcreltotemp
	.lipcrel	_ChangeDirectory // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//config.c, line 477
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_configfilename
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//config.c, line 477
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 20, isauto 0
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

						//config.c, line 477
						//call
						//pcreltotemp
	.lipcrel	_FileOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//config.c, line 477
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 477
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l217
		add	r7
						// allocreg r1

						//config.c, line 478
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
l217: # 

						//config.c, line 482
						// (test)
						// (obj to tmp) flags 42 type a
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//config.c, line 482
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l219
		add	r7

						//config.c, line 484
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 42
						// extern
	.liabs	_file, 24
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	208
	cmp	r0

						//config.c, line 484
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l223
		add	r7
						// freereg r1

						//config.c, line 486
		// Offsets 208, 24
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 0
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// extern (offset 24)
	.liabs	_file, 24
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	208
						// (save temp)store type 4
	st	r0
						//save_temp done
						// allocreg r1

						//config.c, line 487
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
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 24
						//Fuzzy match found, offset: -24 (varadr: 0)
	.liconst	-24
	addt	r0

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 487
						//call
						//pcreltotemp
	.lipcrel	_UpdateEntry // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//config.c, line 487
						// (test)
						// (obj to tmp) flags 4a type 103
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 487
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l223
		add	r7
						// allocreg r1

						//config.c, line 488
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	mr	r0

						//config.c, line 489
						//pcreltotemp
	.lipcrel	l212
	add	r7
						// freereg r1
						// freereg r2
						// freereg r3
l223: # 
						// allocreg r3

						//config.c, line 491
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//config.c, line 491
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//config.c, line 491
		// Offsets 1024, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1024
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 491
						//call
						//pcreltotemp
	.lipcrel	___memset // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r3
						// freereg r2
						// freereg r1

						//config.c, line 492
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						// extern
	.liabs	_config
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe not varadr
	mr	r1
					// Copying 52 words and 0 bytes to sector_buffer
					// Copying 52 words to sector_buffer
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	208
	addt	r1
	mr	r2
.cpysector_bufferwordloop6:
	ldinc	r0
	stinc	r1
	mt	r1
	cmp	r2
	cond	NEQ
		.lipcrel	.cpysector_bufferwordloop6
		add	r7

						//config.c, line 493
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

						//config.c, line 493
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 40, isauto 0
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

						//config.c, line 493
						//call
						//pcreltotemp
	.lipcrel	_FileWrite // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//config.c, line 494
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0

						//config.c, line 495
						//pcreltotemp
	.lipcrel	l212
	add	r7
l219: # 
						// allocreg r1

						//config.c, line 498
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 498
						//call
						//pcreltotemp
	.lipcrel	_ClearError // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//config.c, line 499
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l225,0
						// static pe is varadr
	stdec	r6

						//config.c, line 499
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)

						//config.c, line 500
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l226,0
						// static pe is varadr
	stdec	r6

						//config.c, line 500
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 4 bytes (8 in total)
						// allocreg r3

						//config.c, line 501
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//config.c, line 501
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_configfilename
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//config.c, line 501
		// Offsets 11, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	11
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 501
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Deferred popping of 0 bytes (8 in total)
						// freereg r3
						// freereg r2
						// freereg r1

						//config.c, line 502
		// Offsets 0, 11
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 11, 0
		// Real offset of type is 19, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 11)
	.liabs	_file, 11
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

						//config.c, line 503
		// Offsets 208, 24
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 0
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 24 with 12
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
	.liconst	208
						// (save temp)store type 4
	st	r0
						//save_temp done

						//config.c, line 504
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 24
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 24
						// extern (offset 0)
	.liabs	_config
						// extern pe is varadr
	stdec	r6

						//config.c, line 504
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_file, 24
						//extern deref
						//sizemod based on type 0x104
	ldt
	stdec	r6

						//config.c, line 504
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	208
	stdec	r6

						//config.c, line 504
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l227,0
						// static pe is varadr
	stdec	r6

						//config.c, line 504
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 16 bytes (24 in total)

						//config.c, line 505
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//config.c, line 505
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 84, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 505
						//call
						//pcreltotemp
	.lipcrel	_FileCreate // extern
	add	r7
						// Flow control - popping 4 + 24 bytes
	.liconst	28
	add	r6
						// freereg r1
						// allocreg r1

						//config.c, line 505
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 505
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l229
		add	r7

						//config.c, line 507
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l230,0
						// static pe is varadr
	stdec	r6

						//config.c, line 507
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)

						//config.c, line 508
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l231,0
						// static pe is varadr
	stdec	r6

						//config.c, line 508
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Deferred popping of 4 bytes (8 in total)
						// allocreg r3

						//config.c, line 509
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 84
		// Real offset of type is 92, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//config.c, line 509
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 96, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//config.c, line 509
		// Offsets 1024, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 92
		// Real offset of type is 100, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1024
						// (save temp)isreg
	mr	r1
						//save_temp done

						//config.c, line 509
						//call
						//pcreltotemp
	.lipcrel	___memset // extern
	add	r7
						// Deferred popping of 0 bytes (8 in total)
						// freereg r3
						// freereg r2
						// freereg r1

						//config.c, line 510
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						// extern
	.liabs	_config
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe not varadr
	mr	r1
					// Copying 52 words and 0 bytes to sector_buffer
					// Copying 52 words to sector_buffer
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	208
	addt	r1
	mr	r2
.cpysector_bufferwordloop7:
	ldinc	r0
	stinc	r1
	mt	r1
	cmp	r2
	cond	NEQ
		.lipcrel	.cpysector_bufferwordloop7
		add	r7

						//config.c, line 512
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

						//config.c, line 512
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 104
		// Real offset of type is 116, isauto 0
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

						//config.c, line 512
						//call
						//pcreltotemp
	.lipcrel	_FileWrite // extern
	add	r7
						// Flow control - popping 4 + 8 bytes
	.liconst	12
	add	r6
						// freereg r1
						// allocreg r1

						//config.c, line 512
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//config.c, line 512
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l233
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//config.c, line 514
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l234,0
						// static pe is varadr
	stdec	r6

						//config.c, line 514
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//config.c, line 515
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0

						//config.c, line 516
						//pcreltotemp
	.lipcrel	l212
	add	r7
l233: # 

						//config.c, line 518
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l236,0
						// static pe is varadr
	stdec	r6

						//config.c, line 518
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//config.c, line 521
						//pcreltotemp
	.lipcrel	l237
	add	r7
l229: # 

						//config.c, line 521
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l238,0
						// static pe is varadr
	stdec	r6

						//config.c, line 521
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
l237: # 

						//config.c, line 523
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	0
	mr	r0
l212: # 
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

	.section	.rodata.34
l234:
	.byte	70
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	119
	.byte	114
	.byte	105
	.byte	116
	.byte	116
	.byte	101
	.byte	110
	.byte	32
	.byte	115
	.byte	117
	.byte	99
	.byte	99
	.byte	101
	.byte	115
	.byte	115
	.byte	102
	.byte	117
	.byte	108
	.byte	108
	.byte	121
	.byte	46
	.byte	13
	.byte	0
	.section	.rodata.35
l230:
	.byte	70
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	100
	.byte	46
	.byte	13
	.byte	0
	.section	.rodata.36
l231:
	.byte	84
	.byte	114
	.byte	121
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	116
	.byte	111
	.byte	32
	.byte	119
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	32
	.byte	110
	.byte	101
	.byte	119
	.byte	32
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	46
	.byte	46
	.byte	46
	.byte	13
	.byte	0
	.section	.rodata.37
l236:
	.byte	70
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	119
	.byte	114
	.byte	105
	.byte	116
	.byte	101
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
	.section	.rodata.38
l225:
	.byte	67
	.byte	111
	.byte	110
	.byte	102
	.byte	105
	.byte	103
	.byte	117
	.byte	114
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	32
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	110
	.byte	111
	.byte	116
	.byte	32
	.byte	102
	.byte	111
	.byte	117
	.byte	110
	.byte	100
	.byte	33
	.byte	13
	.byte	0
	.section	.rodata.39
l226:
	.byte	84
	.byte	114
	.byte	121
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	116
	.byte	111
	.byte	32
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	101
	.byte	32
	.byte	97
	.byte	32
	.byte	110
	.byte	101
	.byte	119
	.byte	32
	.byte	111
	.byte	110
	.byte	101
	.byte	46
	.byte	46
	.byte	46
	.byte	13
	.byte	0
	.section	.rodata.3a
l227:
	.byte	67
	.byte	111
	.byte	110
	.byte	102
	.byte	105
	.byte	103
	.byte	32
	.byte	115
	.byte	105
	.byte	122
	.byte	101
	.byte	32
	.byte	105
	.byte	115
	.byte	32
	.byte	37
	.byte	120
	.byte	32
	.byte	40
	.byte	37
	.byte	120
	.byte	41
	.byte	32
	.byte	45
	.byte	32
	.byte	97
	.byte	100
	.byte	100
	.byte	114
	.byte	101
	.byte	115
	.byte	115
	.byte	32
	.byte	105
	.byte	115
	.byte	32
	.byte	37
	.byte	120
	.byte	10
	.byte	0
	.section	.rodata.3b
l238:
	.byte	70
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	99
	.byte	114
	.byte	101
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
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
	.section	.bss.3c
	.align	4
	.global	_file
	.comm	_file,300
	.section	.bss.3d
	.align	4
	.global	_config
	.comm	_config,208
	.section	.bss.3e
	.global	_DebugMode
	.comm	_DebugMode,1
	.section	.bss.3f
	.global	_configfilename
	.comm	_configfilename,12
	.section	.bss.40
	.global	_romkey
	.comm	_romkey,3072
	.section	.bss.41
	.align	4
	.global	_romfile
	.comm	_romfile,820
	.section	.rodata.42
l102:
	.byte	77
	.byte	78
	.byte	77
	.byte	71
	.byte	67
	.byte	70
	.byte	71
	.byte	65
	.byte	0
	.section	.bss.43
	.lcomm	l1,12
