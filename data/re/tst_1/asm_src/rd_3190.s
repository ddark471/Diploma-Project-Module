	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.file	"rd_3190.cc"
	.text
	.globl	main                    # -- Begin function main
	.p2align	2
	.type	main,@function
	.set	nomicromips
	.set	nomips16
	.ent	main
main:                                   # @main
	.cfi_startproc
	.frame	$fp,96,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	sw	$ra, 92($sp)            # 4-byte Folded Spill
	sw	$fp, 88($sp)            # 4-byte Folded Spill
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp, $sp
	.cfi_def_cfa_register 30
	sw	$zero, 84($fp)
	jal	asin
	ldc1	$f12, 24($fp)
	sdc1	$f0, 40($fp)
	ldc1	$f12, 72($fp)
	jal	fmax
	ldc1	$f14, 64($fp)
	sdc1	$f0, 40($fp)
	ldc1	$f12, 72($fp)
	jal	_ZSt11islessequaldd
	ldc1	$f14, 56($fp)
	mtc1	$2, $f0
	cvt.d.w	$f0, $f0
	sdc1	$f0, 40($fp)
	ldc1	$f12, 56($fp)
	jal	fdim
	ldc1	$f14, 48($fp)
	j	$BB0_1
	sdc1	$f0, 48($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	ldc1	$f12, 56($fp)
	jal	_ZSt11islessequaldd
	mov.d	$f14, $f12
	beqz	$2, $BB0_4
	nop
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	j	$BB0_3
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	ldc1	$f12, 72($fp)
	jal	fdim
	mov.d	$f14, $f12
	sdc1	$f0, 64($fp)
	ldc1	$f12, 32($fp)
	jal	pow
	ldc1	$f14, 40($fp)
	sdc1	$f0, 24($fp)
	jal	cos
	ldc1	$f12, 32($fp)
	j	$BB0_1
	sdc1	$f0, 48($fp)
$BB0_4:
	ldc1	$f12, 72($fp)
	jal	atan2
	ldc1	$f14, 64($fp)
	sdc1	$f0, 40($fp)
	jal	sin
	ldc1	$f12, 72($fp)
	sdc1	$f0, 24($fp)
	ldc1	$f12, 72($fp)
	jal	atan2
	ldc1	$f14, 32($fp)
	sdc1	$f0, 72($fp)
	ldc1	$f12, 24($fp)
	jal	_ZSt11islessequaldd
	ldc1	$f14, 48($fp)
	mtc1	$2, $f0
	cvt.d.w	$f0, $f0
	sdc1	$f0, 24($fp)
	lw	$2, 84($fp)
	move	$sp, $fp
	lw	$fp, 88($sp)            # 4-byte Folded Reload
	lw	$ra, 92($sp)            # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 96
	.set	at
	.set	macro
	.set	reorder
	.end	main
$func_end0:
	.size	main, ($func_end0)-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11islessequaldd,"axG",@progbits,_ZSt11islessequaldd,comdat
	.weak	_ZSt11islessequaldd     # -- Begin function _ZSt11islessequaldd
	.p2align	2
	.type	_ZSt11islessequaldd,@function
	.set	nomicromips
	.set	nomips16
	.ent	_ZSt11islessequaldd
_ZSt11islessequaldd:                    # @_ZSt11islessequaldd
	.cfi_startproc
	.frame	$fp,24,$ra
	.mask 	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	.cfi_def_cfa_offset 24
	sw	$fp, 20($sp)            # 4-byte Folded Spill
	.cfi_offset 30, -4
	move	$fp, $sp
	.cfi_def_cfa_register 30
	sdc1	$f12, 8($fp)
	sdc1	$f14, 0($fp)
	ldc1	$f0, 8($fp)
	ldc1	$f2, 0($fp)
	c.ole.d	$f0, $f2
	bc1f	$BB1_2
	addiu	$2, $zero, 0
# %bb.1:
	addiu	$2, $zero, 1
$BB1_2:
	move	$sp, $fp
	lw	$fp, 20($sp)            # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 24
	.set	at
	.set	macro
	.set	reorder
	.end	_ZSt11islessequaldd
$func_end1:
	.size	_ZSt11islessequaldd, ($func_end1)-_ZSt11islessequaldd
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 7.0.1 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
	.text
