	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.file	"rd_4636.cc"
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
	.mask 	0xc0000000,-12
	.fmask	0x00300000,-8
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	sdc1	$f20, 88($sp)           # 8-byte Folded Spill
	sw	$ra, 84($sp)            # 4-byte Folded Spill
	sw	$fp, 80($sp)            # 4-byte Folded Spill
	.cfi_offset 52, -8
	.cfi_offset 53, -4
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	move	$fp, $sp
	.cfi_def_cfa_register 30
	sw	$zero, 76($fp)
	ldc1	$f12, 56($fp)
	jal	fdim
	ldc1	$f14, 40($fp)
	sdc1	$f0, 56($fp)
	jal	exp
	ldc1	$f12, 16($fp)
	mov.d	$f20, $f0
	ldc1	$f12, 64($fp)
	jal	fdim
	mov.d	$f14, $f12
	div.d	$f0, $f20, $f0
	sdc1	$f0, 48($fp)
	ldc1	$f12, 32($fp)
	jal	_ZSt14isgreaterequaldd
	ldc1	$f14, 24($fp)
	beqz	$2, $BB0_3
	nop
# %bb.1:
	j	$BB0_2
	nop
$BB0_2:
	jal	log
	ldc1	$f12, 24($fp)
	mov.d	$f20, $f0
	ldc1	$f12, 48($fp)
	jal	fmax
	ldc1	$f14, 32($fp)
	mul.d	$f0, $f20, $f0
	sdc1	$f0, 16($fp)
	ldc1	$f12, 40($fp)
	jal	fmin
	ldc1	$f14, 24($fp)
	mov.d	$f20, $f0
	ldc1	$f12, 16($fp)
	jal	pow
	ldc1	$f14, 32($fp)
	div.d	$f0, $f20, $f0
	sdc1	$f0, 48($fp)
	ldc1	$f12, 24($fp)
	jal	fdim
	ldc1	$f14, 48($fp)
	mov.d	$f20, $f0
	jal	log10
	ldc1	$f12, 40($fp)
	add.d	$f0, $f20, $f0
	j	$BB0_3
	sdc1	$f0, 56($fp)
$BB0_3:
	ldc1	$f12, 64($fp)
	jal	_ZSt6islessdd
	ldc1	$f14, 24($fp)
	beqz	$2, $BB0_6
	nop
# %bb.4:
	j	$BB0_5
	nop
$BB0_5:
	jal	atan
	ldc1	$f12, 24($fp)
	mov.d	$f20, $f0
	ldc1	$f12, 16($fp)
	jal	fmin
	ldc1	$f14, 56($fp)
	mul.d	$f0, $f20, $f0
	sdc1	$f0, 40($fp)
	jal	atan
	ldc1	$f12, 48($fp)
	sdc1	$f0, 56($fp)
	ldc1	$f12, 24($fp)
	jal	fmax
	ldc1	$f14, 16($fp)
	j	$BB0_6
	sdc1	$f0, 48($fp)
$BB0_6:
	lw	$2, 76($fp)
	move	$sp, $fp
	lw	$fp, 80($sp)            # 4-byte Folded Reload
	lw	$ra, 84($sp)            # 4-byte Folded Reload
	ldc1	$f20, 88($sp)           # 8-byte Folded Reload
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
	.section	.text._ZSt14isgreaterequaldd,"axG",@progbits,_ZSt14isgreaterequaldd,comdat
	.weak	_ZSt14isgreaterequaldd  # -- Begin function _ZSt14isgreaterequaldd
	.p2align	2
	.type	_ZSt14isgreaterequaldd,@function
	.set	nomicromips
	.set	nomips16
	.ent	_ZSt14isgreaterequaldd
_ZSt14isgreaterequaldd:                 # @_ZSt14isgreaterequaldd
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
	c.ult.d	$f0, $f2
	bc1t	$BB1_2
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
	.end	_ZSt14isgreaterequaldd
$func_end1:
	.size	_ZSt14isgreaterequaldd, ($func_end1)-_ZSt14isgreaterequaldd
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt6islessdd,"axG",@progbits,_ZSt6islessdd,comdat
	.weak	_ZSt6islessdd           # -- Begin function _ZSt6islessdd
	.p2align	2
	.type	_ZSt6islessdd,@function
	.set	nomicromips
	.set	nomips16
	.ent	_ZSt6islessdd
_ZSt6islessdd:                          # @_ZSt6islessdd
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
	c.olt.d	$f0, $f2
	bc1f	$BB2_2
	addiu	$2, $zero, 0
# %bb.1:
	addiu	$2, $zero, 1
$BB2_2:
	move	$sp, $fp
	lw	$fp, 20($sp)            # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 24
	.set	at
	.set	macro
	.set	reorder
	.end	_ZSt6islessdd
$func_end2:
	.size	_ZSt6islessdd, ($func_end2)-_ZSt6islessdd
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 7.0.1 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
	.text