	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.file	"rd_3038.cc"
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
	.mask 	0xc0000000,-20
	.fmask	0x00f00000,-8
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	sdc1	$f22, 88($sp)           # 8-byte Folded Spill
	sdc1	$f20, 80($sp)           # 8-byte Folded Spill
	sw	$ra, 76($sp)            # 4-byte Folded Spill
	sw	$fp, 72($sp)            # 4-byte Folded Spill
	.cfi_offset 54, -8
	.cfi_offset 55, -4
	.cfi_offset 52, -16
	.cfi_offset 53, -12
	.cfi_offset 31, -20
	.cfi_offset 30, -24
	move	$fp, $sp
	.cfi_def_cfa_register 30
	ldc1	$f12, 16($fp)
	jal	fdim
	ldc1	$f14, 24($fp)
	mov.d	$f20, $f0
	ldc1	$f12, 48($fp)
	jal	fdim
	ldc1	$f14, 40($fp)
	div.d	$f0, $f20, $f0
	sdc1	$f0, 24($fp)
	jal	sin
	ldc1	$f12, 24($fp)
	mov.d	$f20, $f0
	ldc1	$f12, 48($fp)
	jal	pow
	mov.d	$f14, $f12
	div.d	$f0, $f20, $f0
	sdc1	$f0, 24($fp)
	jal	exp
	ldc1	$f12, 40($fp)
	sdc1	$f0, 32($fp)
	ldc1	$f12, 40($fp)
	jal	pow
	mov.d	$f14, $f12
	sdc1	$f0, 56($fp)
	ldc1	$f12, 64($fp)
	jal	fdim
	ldc1	$f14, 40($fp)
	mov.d	$f20, $f0
	jal	sin
	ldc1	$f12, 64($fp)
	add.d	$f0, $f20, $f0
	sdc1	$f0, 48($fp)
	jal	tan
	ldc1	$f12, 24($fp)
	sdc1	$f0, 40($fp)
	jal	tan
	ldc1	$f12, 24($fp)
	sdc1	$f0, 24($fp)
	jal	log10
	ldc1	$f12, 16($fp)
	mov.d	$f20, $f0
	jal	floor
	ldc1	$f12, 40($fp)
	mul.d	$f0, $f20, $f0
	sdc1	$f0, 16($fp)
	ldc1	$f12, 56($fp)
	jal	pow
	ldc1	$f14, 64($fp)
	sdc1	$f0, 48($fp)
	jal	exp
	ldc1	$f12, 40($fp)
	sdc1	$f0, 48($fp)
	ldc1	$f20, 48($fp)
	ldc1	$f14, 24($fp)
	jal	fmax
	mov.d	$f12, $f20
	mov.d	$f22, $f0
	ldc1	$f12, 64($fp)
	jal	fmax
	mov.d	$f14, $f20
	mul.d	$f0, $f22, $f0
	sdc1	$f0, 24($fp)
	ldc1	$f12, 56($fp)
	jal	fmin
	ldc1	$f14, 40($fp)
	sdc1	$f0, 48($fp)
	addiu	$2, $zero, 0
	move	$sp, $fp
	lw	$fp, 72($sp)            # 4-byte Folded Reload
	lw	$ra, 76($sp)            # 4-byte Folded Reload
	ldc1	$f20, 80($sp)           # 8-byte Folded Reload
	ldc1	$f22, 88($sp)           # 8-byte Folded Reload
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

	.ident	"clang version 7.0.1 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
	.text