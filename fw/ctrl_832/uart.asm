	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_putchar
_putchar:
	stdec	r6
						// allocreg r1

						//uart.c, line 5
						//FIXME convert
						// (convert - reducing type 3 to 501
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	268435443
	mr	r0
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//uart.c, line 6
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r1 - only match against tmp
	mr	r0
						// freereg r1
	ldinc	r6
	mr	r7

