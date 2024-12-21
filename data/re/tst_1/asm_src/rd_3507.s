	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.file	"rd_3507.cc"
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
	ldc1	$f12, 48($fp)
	jal	fmin
	mov.d	$f14, $f12
	sdc1	$f0, 72($fp)
	ldc1	$f12, 56($fp)
	jal	pow
	ldc1	$f14, 40($fp)
	sdc1	$f0, 40($fp)
	ldc1	$f12, 40($fp)
	jal	_ZSt14isgreaterequaldd
	mov.d	$f14, $f12
	beqz	$2, $BB0_3
	nop
# %bb.1:
	j	$BB0_2
	nop
$BB0_2:
	jal	sin
	ldc1	$f12, 48($fp)
	sdc1	$f0, 40($fp)
	ldc1	$f12, 48($fp)
	jal	fmin
	ldc1	$f14, 56($fp)
	sdc1	$f0, 56($fp)
	ldc1	$f12, 56($fp)
	jal	_ZSt11islessequaldd
	ldc1	$f14, 40($fp)
	mtc1	$2, $f0
	cvt.d.w	$f0, $f0
	sdc1	$f0, 40($fp)
	ldc1	$f12, 72($fp)
	jal	_ZSt11islessequaldd
	ldc1	$f14, 56($fp)
	mtc1	$2, $f0
	cvt.d.w	$f0, $f0
	j	$BB0_3
	sdc1	$f0, 48($fp)
$BB0_3:
	jal	sin
	ldc1	$f12, 48($fp)
	sdc1	$f0, 40($fp)
	ldc1	$f12, 56($fp)
	jal	fmin
	ldc1	$f14, 48($fp)
	sdc1	$f0, 64($fp)
	ldc1	$f12, 40($fp)
	jal	fdim
	mov.d	$f14, $f12
	sdc1	$f0, 56($fp)
	jal	tan
	ldc1	$f12, 72($fp)
	j	$BB0_4
	sdc1	$f0, 40($fp)
$BB0_4:                                 # =>This Inner Loop Header: Depth=1
	ldc1	$f12, 56($fp)
	jal	_ZSt6islessdd
	mov.d	$f14, $f12
	beqz	$2, $BB0_7
	nop
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	j	$BB0_6
	nop
$BB0_6:                                 #   in Loop: Header=BB0_4 Depth=1
	jal	floor
	ldc1	$f12, 64($fp)
	sdc1	$f0, 56($fp)
	jal	sin
	ldc1	$f12, 48($fp)
	j	$BB0_4
	sdc1	$f0, 64($fp)
$BB0_7:
	ldc1	$f12, 56($fp)
	jal	_ZSt13islessgreaterdd
	mov.d	$f14, $f12
	mtc1	$2, $f0
	cvt.d.w	$f0, $f0
	sdc1	$f0, 72($fp)
	jal	atan
	ldc1	$f12, 64($fp)
	sdc1	$f0, 48($fp)
	ldc1	$f12, 72($fp)
	jal	_ZSt6islessdd
	ldc1	$f14, 56($fp)
	mtc1	$2, $f0
	cvt.d.w	$f0, $f0
	sdc1	$f0, 56($fp)
	ldc1	$f12, 48($fp)
	jal	_ZSt13islessgreaterdd
	ldc1	$f14, 72($fp)
	beqz	$2, $BB0_10
	nop
# %bb.8:
	j	$BB0_9
	nop
$BB0_9:
	ldc1	$f12, 64($fp)
	jal	_ZSt14isgreaterequaldd
	ldc1	$f14, 56($fp)
	mtc1	$2, $f0
	cvt.d.w	$f0, $f0
	sdc1	$f0, 56($fp)
	jal	sin
	ldc1	$f12, 72($fp)
	j	$BB0_11
	sdc1	$f0, 48($fp)
$BB0_10:
	ldc1	$f12, 64($fp)
	jal	pow
	ldc1	$f14, 48($fp)
	sdc1	$f0, 72($fp)
	ldc1	$f12, 64($fp)
	jal	atan2
	ldc1	$f14, 48($fp)
	sdc1	$f0, 56($fp)
	ldc1	$f12, 48($fp)
	jal	fmin
	ldc1	$f14, 56($fp)
	sdc1	$f0, 48($fp)
	ldc1	$f12, 72($fp)
	jal	pow
	ldc1	$f14, 56($fp)
	sdc1	$f0, 72($fp)
	ldc1	$f12, 48($fp)
	jal	_ZSt9isgreaterdd
	ldc1	$f14, 56($fp)
	mtc1	$2, $f0
	cvt.d.w	$f0, $f0
	j	$BB0_11
	sdc1	$f0, 56($fp)
$BB0_11:
	ldc1	$f12, 72($fp)
	jal	_ZSt14isgreaterequaldd
	ldc1	$f14, 64($fp)
	mtc1	$2, $f0
	cvt.d.w	$f0, $f0
	sdc1	$f0, 64($fp)
	jal	cos
	ldc1	$f12, 72($fp)
	sdc1	$f0, 56($fp)
	jal	sqrt
	ldc1	$f12, 64($fp)
	sdc1	$f0, 48($fp)
	jal	tan
	ldc1	$f12, 72($fp)
	sdc1	$f0, 56($fp)
	ldc1	$f12, 64($fp)
	jal	pow
	ldc1	$f14, 56($fp)
	sdc1	$f0, 64($fp)
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
	.end	_ZSt11islessequaldd
$func_end2:
	.size	_ZSt11islessequaldd, ($func_end2)-_ZSt11islessequaldd
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
	bc1f	$BB3_2
	addiu	$2, $zero, 0
# %bb.1:
	addiu	$2, $zero, 1
$BB3_2:
	move	$sp, $fp
	lw	$fp, 20($sp)            # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 24
	.set	at
	.set	macro
	.set	reorder
	.end	_ZSt6islessdd
$func_end3:
	.size	_ZSt6islessdd, ($func_end3)-_ZSt6islessdd
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13islessgreaterdd,"axG",@progbits,_ZSt13islessgreaterdd,comdat
	.weak	_ZSt13islessgreaterdd   # -- Begin function _ZSt13islessgreaterdd
	.p2align	2
	.type	_ZSt13islessgreaterdd,@function
	.set	nomicromips
	.set	nomips16
	.ent	_ZSt13islessgreaterdd
_ZSt13islessgreaterdd:                  # @_ZSt13islessgreaterdd
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
	c.ueq.d	$f0, $f2
	bc1t	$BB4_2
	addiu	$2, $zero, 0
# %bb.1:
	addiu	$2, $zero, 1
$BB4_2:
	move	$sp, $fp
	lw	$fp, 20($sp)            # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 24
	.set	at
	.set	macro
	.set	reorder
	.end	_ZSt13islessgreaterdd
$func_end4:
	.size	_ZSt13islessgreaterdd, ($func_end4)-_ZSt13islessgreaterdd
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt9isgreaterdd,"axG",@progbits,_ZSt9isgreaterdd,comdat
	.weak	_ZSt9isgreaterdd        # -- Begin function _ZSt9isgreaterdd
	.p2align	2
	.type	_ZSt9isgreaterdd,@function
	.set	nomicromips
	.set	nomips16
	.ent	_ZSt9isgreaterdd
_ZSt9isgreaterdd:                       # @_ZSt9isgreaterdd
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
	c.ule.d	$f0, $f2
	bc1t	$BB5_2
	addiu	$2, $zero, 0
# %bb.1:
	addiu	$2, $zero, 1
$BB5_2:
	move	$sp, $fp
	lw	$fp, 20($sp)            # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 24
	.set	at
	.set	macro
	.set	reorder
	.end	_ZSt9isgreaterdd
$func_end5:
	.size	_ZSt9isgreaterdd, ($func_end5)-_ZSt9isgreaterdd
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 7.0.1 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
	.text
