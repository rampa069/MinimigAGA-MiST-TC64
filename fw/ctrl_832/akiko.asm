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
	.global	_akiko_inthandler
_akiko_inthandler:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4
						// allocreg r3
		// Offsets 268435334, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// const
	.liconst	268435334
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//akiko.c, line 12
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 21 type 502
						// matchobj comparing flags 21 with 1
						// const/deref
						// matchobj comparing flags 1 with 1
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	-4
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
						// (save temp)isreg
	mr	r2
						//save_temp done

						//akiko.c, line 13
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 260 type 502
						// matchobj comparing flags 260 with 21
						// matchobj comparing flags 260 with 1
						// deref 
	hlf
	ld	r3
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//akiko.c, line 14
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 42 with 260
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	32768
	and	r1
						// (save result) // isreg
						// freereg r1

						//akiko.c, line 14
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l4
		add	r7
						// allocreg r1

						//akiko.c, line 16
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	16384
	and	r1
						// (save result) // isreg
						// freereg r1

						//akiko.c, line 16
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l6
		add	r7

						//akiko.c, line 17
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
	stdec	r6

						//akiko.c, line 17
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 42
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
	stdec	r6

						//akiko.c, line 17
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// matchobj comparing flags 82 with 1
						// static
	.liabs	l7,0
						// static pe is varadr
	stdec	r6

						//akiko.c, line 17
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
						// matchobj comparing flags 1 with 1
	.liconst	12
	add	r6

						//akiko.c, line 19
						//pcreltotemp
	.lipcrel	l8
	add	r7
l6: # 

						//akiko.c, line 19
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 103
						// reg r2 - only match against tmp
	mt	r2
	stdec	r6

						//akiko.c, line 19
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l9,0
						// static pe is varadr
	stdec	r6

						//akiko.c, line 19
						//call
						//pcreltotemp
	.lipcrel	_printf // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
l8: # 

						//akiko.c, line 20
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 502
						// const
	.liconst	0
						// (save temp)store type 2
	hlf
	st	r3
						//save_temp done
l4: # 
						// freereg r2
						// freereg r3
						// freereg r4
	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.1
l7:
	.byte	65
	.byte	107
	.byte	105
	.byte	107
	.byte	111
	.byte	32
	.byte	119
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	58
	.byte	32
	.byte	37
	.byte	120
	.byte	44
	.byte	32
	.byte	37
	.byte	120
	.byte	10
	.byte	0
	.section	.rodata.2
l9:
	.byte	65
	.byte	107
	.byte	105
	.byte	107
	.byte	111
	.byte	32
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	58
	.byte	32
	.byte	37
	.byte	120
	.byte	10
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
	.ctor .ctor.101.akiko
	.ref	_akikoconstructor
	.section	.text.3
	.global	_akikoconstructor
_akikoconstructor:
	stdec	r6
	ldinc	r6
	mr	r7

