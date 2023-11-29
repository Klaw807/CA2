
/home/yangyx/desktop/CA2/code_test/lab0/rv64imf/testFloat2Double/testFloat2Double.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	1ac030ef          	jal	132a8 <__call_exitprocs>
   10100:	7481b503          	ld	a0,1864(gp) # 25ac8 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	5890f0ef          	jal	1fe9c <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00014537          	lui	a0,0x14
   10124:	a7850513          	add	a0,a0,-1416 # 13a78 <__libc_fini_array>
   10128:	5010c06f          	j	1ce28 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00015197          	auipc	gp,0x15
   10134:	25018193          	add	gp,gp,592 # 25380 <__global_pointer$>
   10138:	77018513          	add	a0,gp,1904 # 25af0 <_PathLocale>
   1013c:	00016617          	auipc	a2,0x16
   10140:	a4460613          	add	a2,a2,-1468 # 25b80 <__BSS_END__>
   10144:	40a60633          	sub	a2,a2,a0
   10148:	00000593          	li	a1,0
   1014c:	7dc000ef          	jal	10928 <memset>
   10150:	0000d517          	auipc	a0,0xd
   10154:	cd850513          	add	a0,a0,-808 # 1ce28 <atexit>
   10158:	00050863          	beqz	a0,10168 <_start+0x38>
   1015c:	00004517          	auipc	a0,0x4
   10160:	91c50513          	add	a0,a0,-1764 # 13a78 <__libc_fini_array>
   10164:	4c50c0ef          	jal	1ce28 <atexit>
   10168:	724000ef          	jal	1088c <__libc_init_array>
   1016c:	00012503          	lw	a0,0(sp)
   10170:	00810593          	add	a1,sp,8
   10174:	00000613          	li	a2,0
   10178:	06c000ef          	jal	101e4 <main>
   1017c:	f6dff06f          	j	100e8 <exit>

0000000000010180 <__do_global_dtors_aux>:
   10180:	ff010113          	add	sp,sp,-16
   10184:	00813023          	sd	s0,0(sp)
   10188:	7a01c783          	lbu	a5,1952(gp) # 25b20 <completed.1>
   1018c:	00113423          	sd	ra,8(sp)
   10190:	02079263          	bnez	a5,101b4 <__do_global_dtors_aux+0x34>
   10194:	00000793          	li	a5,0
   10198:	00078a63          	beqz	a5,101ac <__do_global_dtors_aux+0x2c>
   1019c:	00025537          	lui	a0,0x25
   101a0:	96450513          	add	a0,a0,-1692 # 24964 <__EH_FRAME_BEGIN__>
   101a4:	00000097          	auipc	ra,0x0
   101a8:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101ac:	00100793          	li	a5,1
   101b0:	7af18023          	sb	a5,1952(gp) # 25b20 <completed.1>
   101b4:	00813083          	ld	ra,8(sp)
   101b8:	00013403          	ld	s0,0(sp)
   101bc:	01010113          	add	sp,sp,16
   101c0:	00008067          	ret

00000000000101c4 <frame_dummy>:
   101c4:	00000793          	li	a5,0
   101c8:	00078c63          	beqz	a5,101e0 <frame_dummy+0x1c>
   101cc:	00025537          	lui	a0,0x25
   101d0:	7a818593          	add	a1,gp,1960 # 25b28 <object.0>
   101d4:	96450513          	add	a0,a0,-1692 # 24964 <__EH_FRAME_BEGIN__>
   101d8:	00000317          	auipc	t1,0x0
   101dc:	00000067          	jr	zero # 0 <exit-0x100e8>
   101e0:	00008067          	ret

00000000000101e4 <main>:
   101e4:	fe010113          	add	sp,sp,-32
   101e8:	00113c23          	sd	ra,24(sp)
   101ec:	00813823          	sd	s0,16(sp)
   101f0:	02010413          	add	s0,sp,32
   101f4:	000237b7          	lui	a5,0x23
   101f8:	a387b783          	ld	a5,-1480(a5) # 22a38 <__trunctfdf2+0x3c0>
   101fc:	fef43423          	sd	a5,-24(s0)
   10200:	fe843783          	ld	a5,-24(s0)
   10204:	00078513          	mv	a0,a5
   10208:	334000ef          	jal	1053c <__truncdfsf2>
   1020c:	20a507d3          	fmv.s	fa5,fa0
   10210:	fef42227          	fsw	fa5,-28(s0)
   10214:	fe840793          	add	a5,s0,-24
   10218:	0007b783          	ld	a5,0(a5)
   1021c:	00078593          	mv	a1,a5
   10220:	000237b7          	lui	a5,0x23
   10224:	a2078513          	add	a0,a5,-1504 # 22a20 <__trunctfdf2+0x3a8>
   10228:	01d000ef          	jal	10a44 <printf>
   1022c:	fe440793          	add	a5,s0,-28
   10230:	0007a783          	lw	a5,0(a5)
   10234:	00078593          	mv	a1,a5
   10238:	000237b7          	lui	a5,0x23
   1023c:	a2878513          	add	a0,a5,-1496 # 22a28 <__trunctfdf2+0x3b0>
   10240:	005000ef          	jal	10a44 <printf>
   10244:	fe843783          	ld	a5,-24(s0)
   10248:	00078593          	mv	a1,a5
   1024c:	000237b7          	lui	a5,0x23
   10250:	a3078513          	add	a0,a5,-1488 # 22a30 <__trunctfdf2+0x3b8>
   10254:	7f0000ef          	jal	10a44 <printf>
   10258:	fe442787          	flw	fa5,-28(s0)
   1025c:	20f78553          	fmv.s	fa0,fa5
   10260:	1e8000ef          	jal	10448 <__extendsfdf2>
   10264:	00050793          	mv	a5,a0
   10268:	00078593          	mv	a1,a5
   1026c:	000237b7          	lui	a5,0x23
   10270:	a3078513          	add	a0,a5,-1488 # 22a30 <__trunctfdf2+0x3b8>
   10274:	7d0000ef          	jal	10a44 <printf>
   10278:	fe043423          	sd	zero,-24(s0)
   1027c:	fe042223          	sw	zero,-28(s0)
   10280:	000237b7          	lui	a5,0x23
   10284:	a407a787          	flw	fa5,-1472(a5) # 22a40 <__trunctfdf2+0x3c8>
   10288:	fef42227          	fsw	fa5,-28(s0)
   1028c:	fe442787          	flw	fa5,-28(s0)
   10290:	20f78553          	fmv.s	fa0,fa5
   10294:	1b4000ef          	jal	10448 <__extendsfdf2>
   10298:	00050793          	mv	a5,a0
   1029c:	fef43423          	sd	a5,-24(s0)
   102a0:	fe840793          	add	a5,s0,-24
   102a4:	0007b783          	ld	a5,0(a5)
   102a8:	00078593          	mv	a1,a5
   102ac:	000237b7          	lui	a5,0x23
   102b0:	a2078513          	add	a0,a5,-1504 # 22a20 <__trunctfdf2+0x3a8>
   102b4:	790000ef          	jal	10a44 <printf>
   102b8:	fe440793          	add	a5,s0,-28
   102bc:	0007a783          	lw	a5,0(a5)
   102c0:	00078593          	mv	a1,a5
   102c4:	000237b7          	lui	a5,0x23
   102c8:	a2878513          	add	a0,a5,-1496 # 22a28 <__trunctfdf2+0x3b0>
   102cc:	778000ef          	jal	10a44 <printf>
   102d0:	fe843783          	ld	a5,-24(s0)
   102d4:	00078593          	mv	a1,a5
   102d8:	000237b7          	lui	a5,0x23
   102dc:	a3078513          	add	a0,a5,-1488 # 22a30 <__trunctfdf2+0x3b8>
   102e0:	764000ef          	jal	10a44 <printf>
   102e4:	fe442787          	flw	fa5,-28(s0)
   102e8:	20f78553          	fmv.s	fa0,fa5
   102ec:	15c000ef          	jal	10448 <__extendsfdf2>
   102f0:	00050793          	mv	a5,a0
   102f4:	00078593          	mv	a1,a5
   102f8:	000237b7          	lui	a5,0x23
   102fc:	a3078513          	add	a0,a5,-1488 # 22a30 <__trunctfdf2+0x3b8>
   10300:	744000ef          	jal	10a44 <printf>
   10304:	00000793          	li	a5,0
   10308:	00078513          	mv	a0,a5
   1030c:	01813083          	ld	ra,24(sp)
   10310:	01013403          	ld	s0,16(sp)
   10314:	02010113          	add	sp,sp,32
   10318:	00008067          	ret

000000000001031c <print_d>:
   1031c:	fe010113          	add	sp,sp,-32
   10320:	00813c23          	sd	s0,24(sp)
   10324:	02010413          	add	s0,sp,32
   10328:	00050793          	mv	a5,a0
   1032c:	fef42623          	sw	a5,-20(s0)
   10330:	00200893          	li	a7,2
   10334:	00000073          	ecall
   10338:	00000013          	nop
   1033c:	01813403          	ld	s0,24(sp)
   10340:	02010113          	add	sp,sp,32
   10344:	00008067          	ret

0000000000010348 <print_s>:
   10348:	fe010113          	add	sp,sp,-32
   1034c:	00813c23          	sd	s0,24(sp)
   10350:	02010413          	add	s0,sp,32
   10354:	fea43423          	sd	a0,-24(s0)
   10358:	00000893          	li	a7,0
   1035c:	00000073          	ecall
   10360:	00000013          	nop
   10364:	01813403          	ld	s0,24(sp)
   10368:	02010113          	add	sp,sp,32
   1036c:	00008067          	ret

0000000000010370 <print_c>:
   10370:	fe010113          	add	sp,sp,-32
   10374:	00813c23          	sd	s0,24(sp)
   10378:	02010413          	add	s0,sp,32
   1037c:	00050793          	mv	a5,a0
   10380:	fef407a3          	sb	a5,-17(s0)
   10384:	00100893          	li	a7,1
   10388:	00000073          	ecall
   1038c:	00000013          	nop
   10390:	01813403          	ld	s0,24(sp)
   10394:	02010113          	add	sp,sp,32
   10398:	00008067          	ret

000000000001039c <exit_proc>:
   1039c:	ff010113          	add	sp,sp,-16
   103a0:	00813423          	sd	s0,8(sp)
   103a4:	01010413          	add	s0,sp,16
   103a8:	00300893          	li	a7,3
   103ac:	00000073          	ecall
   103b0:	00000013          	nop
   103b4:	00813403          	ld	s0,8(sp)
   103b8:	01010113          	add	sp,sp,16
   103bc:	00008067          	ret

00000000000103c0 <read_char>:
   103c0:	fe010113          	add	sp,sp,-32
   103c4:	00813c23          	sd	s0,24(sp)
   103c8:	02010413          	add	s0,sp,32
   103cc:	00400893          	li	a7,4
   103d0:	00000073          	ecall
   103d4:	00050793          	mv	a5,a0
   103d8:	fef407a3          	sb	a5,-17(s0)
   103dc:	fef44783          	lbu	a5,-17(s0)
   103e0:	00078513          	mv	a0,a5
   103e4:	01813403          	ld	s0,24(sp)
   103e8:	02010113          	add	sp,sp,32
   103ec:	00008067          	ret

00000000000103f0 <read_num>:
   103f0:	fe010113          	add	sp,sp,-32
   103f4:	00813c23          	sd	s0,24(sp)
   103f8:	02010413          	add	s0,sp,32
   103fc:	00500893          	li	a7,5
   10400:	00000073          	ecall
   10404:	00050793          	mv	a5,a0
   10408:	fef43423          	sd	a5,-24(s0)
   1040c:	fe843783          	ld	a5,-24(s0)
   10410:	00078513          	mv	a0,a5
   10414:	01813403          	ld	s0,24(sp)
   10418:	02010113          	add	sp,sp,32
   1041c:	00008067          	ret

0000000000010420 <print_f>:
   10420:	fe010113          	add	sp,sp,-32
   10424:	00813c23          	sd	s0,24(sp)
   10428:	02010413          	add	s0,sp,32
   1042c:	fea42627          	fsw	fa0,-20(s0)
   10430:	00600893          	li	a7,6
   10434:	00000073          	ecall
   10438:	00000013          	nop
   1043c:	01813403          	ld	s0,24(sp)
   10440:	02010113          	add	sp,sp,32
   10444:	00008067          	ret

0000000000010448 <__extendsfdf2>:
   10448:	fe010113          	add	sp,sp,-32
   1044c:	00913423          	sd	s1,8(sp)
   10450:	00113c23          	sd	ra,24(sp)
   10454:	e00504d3          	fmv.x.w	s1,fa0
   10458:	00813823          	sd	s0,16(sp)
   1045c:	002027f3          	frrm	a5
   10460:	0174d79b          	srlw	a5,s1,0x17
   10464:	0ff7f793          	zext.b	a5,a5
   10468:	02949413          	sll	s0,s1,0x29
   1046c:	00178693          	add	a3,a5,1
   10470:	02945713          	srl	a4,s0,0x29
   10474:	01f4d49b          	srlw	s1,s1,0x1f
   10478:	0fe6f693          	and	a3,a3,254
   1047c:	00070413          	mv	s0,a4
   10480:	03f49493          	sll	s1,s1,0x3f
   10484:	00068e63          	beqz	a3,104a0 <__extendsfdf2+0x58>
   10488:	38078793          	add	a5,a5,896
   1048c:	03479793          	sll	a5,a5,0x34
   10490:	01d71413          	sll	s0,a4,0x1d
   10494:	0087e7b3          	or	a5,a5,s0
   10498:	00f4e533          	or	a0,s1,a5
   1049c:	03c0006f          	j	104d8 <__extendsfdf2+0x90>
   104a0:	04079663          	bnez	a5,104ec <__extendsfdf2+0xa4>
   104a4:	00048513          	mv	a0,s1
   104a8:	02070863          	beqz	a4,104d8 <__extendsfdf2+0x90>
   104ac:	00070513          	mv	a0,a4
   104b0:	390000ef          	jal	10840 <__clzdi2>
   104b4:	ff55079b          	addw	a5,a0,-11
   104b8:	00f41433          	sll	s0,s0,a5
   104bc:	3a900793          	li	a5,937
   104c0:	00c41413          	sll	s0,s0,0xc
   104c4:	40a7853b          	subw	a0,a5,a0
   104c8:	03451513          	sll	a0,a0,0x34
   104cc:	00c45413          	srl	s0,s0,0xc
   104d0:	00a46433          	or	s0,s0,a0
   104d4:	00946533          	or	a0,s0,s1
   104d8:	01813083          	ld	ra,24(sp)
   104dc:	01013403          	ld	s0,16(sp)
   104e0:	00813483          	ld	s1,8(sp)
   104e4:	02010113          	add	sp,sp,32
   104e8:	00008067          	ret
   104ec:	00071863          	bnez	a4,104fc <__extendsfdf2+0xb4>
   104f0:	7ff00793          	li	a5,2047
   104f4:	03479793          	sll	a5,a5,0x34
   104f8:	fa1ff06f          	j	10498 <__extendsfdf2+0x50>
   104fc:	00100793          	li	a5,1
   10500:	03379793          	sll	a5,a5,0x33
   10504:	01d71413          	sll	s0,a4,0x1d
   10508:	00f46433          	or	s0,s0,a5
   1050c:	7ff00793          	li	a5,2047
   10510:	03479793          	sll	a5,a5,0x34
   10514:	00f46433          	or	s0,s0,a5
   10518:	004007b7          	lui	a5,0x400
   1051c:	fff78793          	add	a5,a5,-1 # 3fffff <__BSS_END__+0x3da47f>
   10520:	00e7b7b3          	sltu	a5,a5,a4
   10524:	0017c793          	xor	a5,a5,1
   10528:	0047979b          	sllw	a5,a5,0x4
   1052c:	00946533          	or	a0,s0,s1
   10530:	fa0784e3          	beqz	a5,104d8 <__extendsfdf2+0x90>
   10534:	00186073          	csrs	fflags,16
   10538:	fa1ff06f          	j	104d8 <__extendsfdf2+0x90>

000000000001053c <__truncdfsf2>:
   1053c:	00202873          	frrm	a6
   10540:	03455693          	srl	a3,a0,0x34
   10544:	7ff6f693          	and	a3,a3,2047
   10548:	00168593          	add	a1,a3,1
   1054c:	00c51793          	sll	a5,a0,0xc
   10550:	7fe5f593          	and	a1,a1,2046
   10554:	00c7d613          	srl	a2,a5,0xc
   10558:	0008081b          	sext.w	a6,a6
   1055c:	03f55713          	srl	a4,a0,0x3f
   10560:	0097d793          	srl	a5,a5,0x9
   10564:	10058463          	beqz	a1,1066c <__truncdfsf2+0x130>
   10568:	c8068693          	add	a3,a3,-896
   1056c:	0fe00593          	li	a1,254
   10570:	06d5d463          	bge	a1,a3,105d8 <__truncdfsf2+0x9c>
   10574:	2a080263          	beqz	a6,10818 <__truncdfsf2+0x2dc>
   10578:	00300793          	li	a5,3
   1057c:	04f81063          	bne	a6,a5,105bc <__truncdfsf2+0x80>
   10580:	2a070c63          	beqz	a4,10838 <__truncdfsf2+0x2fc>
   10584:	fff00793          	li	a5,-1
   10588:	00500613          	li	a2,5
   1058c:	0fe00693          	li	a3,254
   10590:	040005b7          	lui	a1,0x4000
   10594:	00b7f5b3          	and	a1,a5,a1
   10598:	08058863          	beqz	a1,10628 <__truncdfsf2+0xec>
   1059c:	00168693          	add	a3,a3,1
   105a0:	0ff00593          	li	a1,255
   105a4:	20b68863          	beq	a3,a1,107b4 <__truncdfsf2+0x278>
   105a8:	fc0005b7          	lui	a1,0xfc000
   105ac:	fff58593          	add	a1,a1,-1 # fffffffffbffffff <__BSS_END__+0xfffffffffbfda47f>
   105b0:	00f5f7b3          	and	a5,a1,a5
   105b4:	0037d793          	srl	a5,a5,0x3
   105b8:	13c0006f          	j	106f4 <__truncdfsf2+0x1b8>
   105bc:	00200793          	li	a5,2
   105c0:	00f81463          	bne	a6,a5,105c8 <__truncdfsf2+0x8c>
   105c4:	24071463          	bnez	a4,1080c <__truncdfsf2+0x2d0>
   105c8:	fff00793          	li	a5,-1
   105cc:	0fe00693          	li	a3,254
   105d0:	00500613          	li	a2,5
   105d4:	fbdff06f          	j	10590 <__truncdfsf2+0x54>
   105d8:	06d04663          	bgtz	a3,10644 <__truncdfsf2+0x108>
   105dc:	fe900613          	li	a2,-23
   105e0:	08c6ca63          	blt	a3,a2,10674 <__truncdfsf2+0x138>
   105e4:	00100613          	li	a2,1
   105e8:	03761613          	sll	a2,a2,0x37
   105ec:	00c7e7b3          	or	a5,a5,a2
   105f0:	01e00613          	li	a2,30
   105f4:	40d6063b          	subw	a2,a2,a3
   105f8:	0226869b          	addw	a3,a3,34
   105fc:	00c7d633          	srl	a2,a5,a2
   10600:	00d797b3          	sll	a5,a5,a3
   10604:	00f037b3          	snez	a5,a5
   10608:	00f667b3          	or	a5,a2,a5
   1060c:	00179693          	sll	a3,a5,0x1
   10610:	0076f613          	and	a2,a3,7
   10614:	06061463          	bnez	a2,1067c <__truncdfsf2+0x140>
   10618:	0077f613          	and	a2,a5,7
   1061c:	00000693          	li	a3,0
   10620:	00100593          	li	a1,1
   10624:	06061e63          	bnez	a2,106a0 <__truncdfsf2+0x164>
   10628:	0ff00593          	li	a1,255
   1062c:	0037d793          	srl	a5,a5,0x3
   10630:	0cb69263          	bne	a3,a1,106f4 <__truncdfsf2+0x1b8>
   10634:	0c078063          	beqz	a5,106f4 <__truncdfsf2+0x1b8>
   10638:	004007b7          	lui	a5,0x400
   1063c:	00000713          	li	a4,0
   10640:	0b40006f          	j	106f4 <__truncdfsf2+0x1b8>
   10644:	02661613          	sll	a2,a2,0x26
   10648:	00c03633          	snez	a2,a2
   1064c:	01d7d793          	srl	a5,a5,0x1d
   10650:	00c7e7b3          	or	a5,a5,a2
   10654:	0077f613          	and	a2,a5,7
   10658:	00000593          	li	a1,0
   1065c:	04061263          	bnez	a2,106a0 <__truncdfsf2+0x164>
   10660:	0037d793          	srl	a5,a5,0x3
   10664:	00000613          	li	a2,0
   10668:	08c0006f          	j	106f4 <__truncdfsf2+0x1b8>
   1066c:	06069063          	bnez	a3,106cc <__truncdfsf2+0x190>
   10670:	18078863          	beqz	a5,10800 <__truncdfsf2+0x2c4>
   10674:	00100793          	li	a5,1
   10678:	00200693          	li	a3,2
   1067c:	00200593          	li	a1,2
   10680:	0077f613          	and	a2,a5,7
   10684:	0eb80463          	beq	a6,a1,1076c <__truncdfsf2+0x230>
   10688:	00300593          	li	a1,3
   1068c:	0ab80863          	beq	a6,a1,1073c <__truncdfsf2+0x200>
   10690:	08080463          	beqz	a6,10718 <__truncdfsf2+0x1dc>
   10694:	00000693          	li	a3,0
   10698:	00100593          	li	a1,1
   1069c:	08060c63          	beqz	a2,10734 <__truncdfsf2+0x1f8>
   106a0:	00200613          	li	a2,2
   106a4:	0ec80c63          	beq	a6,a2,1079c <__truncdfsf2+0x260>
   106a8:	00300613          	li	a2,3
   106ac:	0cc80e63          	beq	a6,a2,10788 <__truncdfsf2+0x24c>
   106b0:	0e081c63          	bnez	a6,107a8 <__truncdfsf2+0x26c>
   106b4:	00f7f613          	and	a2,a5,15
   106b8:	00400513          	li	a0,4
   106bc:	0aa61c63          	bne	a2,a0,10774 <__truncdfsf2+0x238>
   106c0:	00100613          	li	a2,1
   106c4:	f60582e3          	beqz	a1,10628 <__truncdfsf2+0xec>
   106c8:	06c0006f          	j	10734 <__truncdfsf2+0x1f8>
   106cc:	14078e63          	beqz	a5,10828 <__truncdfsf2+0x2ec>
   106d0:	7ff00713          	li	a4,2047
   106d4:	00000613          	li	a2,0
   106d8:	00e69863          	bne	a3,a4,106e8 <__truncdfsf2+0x1ac>
   106dc:	0367d793          	srl	a5,a5,0x36
   106e0:	0017c793          	xor	a5,a5,1
   106e4:	00479613          	sll	a2,a5,0x4
   106e8:	00000713          	li	a4,0
   106ec:	0ff00693          	li	a3,255
   106f0:	004007b7          	lui	a5,0x400
   106f4:	0ff6f693          	zext.b	a3,a3
   106f8:	02979793          	sll	a5,a5,0x29
   106fc:	0176969b          	sllw	a3,a3,0x17
   10700:	0297d793          	srl	a5,a5,0x29
   10704:	00d7e7b3          	or	a5,a5,a3
   10708:	01f7171b          	sllw	a4,a4,0x1f
   1070c:	00f76733          	or	a4,a4,a5
   10710:	0e060a63          	beqz	a2,10804 <__truncdfsf2+0x2c8>
   10714:	0d40006f          	j	107e8 <__truncdfsf2+0x2ac>
   10718:	00f6f513          	and	a0,a3,15
   1071c:	00400593          	li	a1,4
   10720:	00468693          	add	a3,a3,4
   10724:	02b51063          	bne	a0,a1,10744 <__truncdfsf2+0x208>
   10728:	00000693          	li	a3,0
   1072c:	00100593          	li	a1,1
   10730:	f6061ce3          	bnez	a2,106a8 <__truncdfsf2+0x16c>
   10734:	00300613          	li	a2,3
   10738:	ef1ff06f          	j	10628 <__truncdfsf2+0xec>
   1073c:	f4071ce3          	bnez	a4,10694 <__truncdfsf2+0x158>
   10740:	00868693          	add	a3,a3,8
   10744:	080005b7          	lui	a1,0x8000
   10748:	00b6f533          	and	a0,a3,a1
   1074c:	00153593          	seqz	a1,a0
   10750:	00000693          	li	a3,0
   10754:	f40616e3          	bnez	a2,106a0 <__truncdfsf2+0x164>
   10758:	00300613          	li	a2,3
   1075c:	ec0506e3          	beqz	a0,10628 <__truncdfsf2+0xec>
   10760:	0037d793          	srl	a5,a5,0x3
   10764:	00100613          	li	a2,1
   10768:	f8dff06f          	j	106f4 <__truncdfsf2+0x1b8>
   1076c:	fc071ae3          	bnez	a4,10740 <__truncdfsf2+0x204>
   10770:	f25ff06f          	j	10694 <__truncdfsf2+0x158>
   10774:	00478793          	add	a5,a5,4 # 400004 <__BSS_END__+0x3da484>
   10778:	00100613          	li	a2,1
   1077c:	e0058ae3          	beqz	a1,10590 <__truncdfsf2+0x54>
   10780:	0025e613          	or	a2,a1,2
   10784:	e0dff06f          	j	10590 <__truncdfsf2+0x54>
   10788:	00070c63          	beqz	a4,107a0 <__truncdfsf2+0x264>
   1078c:	00100613          	li	a2,1
   10790:	e00580e3          	beqz	a1,10590 <__truncdfsf2+0x54>
   10794:	00100593          	li	a1,1
   10798:	fe9ff06f          	j	10780 <__truncdfsf2+0x244>
   1079c:	fc070ee3          	beqz	a4,10778 <__truncdfsf2+0x23c>
   107a0:	00878793          	add	a5,a5,8
   107a4:	fd5ff06f          	j	10778 <__truncdfsf2+0x23c>
   107a8:	00100613          	li	a2,1
   107ac:	fc059ae3          	bnez	a1,10780 <__truncdfsf2+0x244>
   107b0:	de1ff06f          	j	10590 <__truncdfsf2+0x54>
   107b4:	00566613          	or	a2,a2,5
   107b8:	02080c63          	beqz	a6,107f0 <__truncdfsf2+0x2b4>
   107bc:	00300793          	li	a5,3
   107c0:	00f81c63          	bne	a6,a5,107d8 <__truncdfsf2+0x29c>
   107c4:	02070663          	beqz	a4,107f0 <__truncdfsf2+0x2b4>
   107c8:	01f7179b          	sllw	a5,a4,0x1f
   107cc:	7f800737          	lui	a4,0x7f800
   107d0:	fff7071b          	addw	a4,a4,-1 # 7f7fffff <__BSS_END__+0x7f7da47f>
   107d4:	0240006f          	j	107f8 <__truncdfsf2+0x2bc>
   107d8:	00200793          	li	a5,2
   107dc:	fef816e3          	bne	a6,a5,107c8 <__truncdfsf2+0x28c>
   107e0:	00071863          	bnez	a4,107f0 <__truncdfsf2+0x2b4>
   107e4:	7401a703          	lw	a4,1856(gp) # 25ac0 <mask+0x18>
   107e8:	00162073          	csrs	fflags,a2
   107ec:	0180006f          	j	10804 <__truncdfsf2+0x2c8>
   107f0:	01f7171b          	sllw	a4,a4,0x1f
   107f4:	7f8007b7          	lui	a5,0x7f800
   107f8:	00f76733          	or	a4,a4,a5
   107fc:	fedff06f          	j	107e8 <__truncdfsf2+0x2ac>
   10800:	01f7171b          	sllw	a4,a4,0x1f
   10804:	f0070553          	fmv.w.x	fa0,a4
   10808:	00008067          	ret
   1080c:	ff800737          	lui	a4,0xff800
   10810:	00500613          	li	a2,5
   10814:	fd5ff06f          	j	107e8 <__truncdfsf2+0x2ac>
   10818:	01f7171b          	sllw	a4,a4,0x1f
   1081c:	7f8007b7          	lui	a5,0x7f800
   10820:	00f76733          	or	a4,a4,a5
   10824:	fedff06f          	j	10810 <__truncdfsf2+0x2d4>
   10828:	01f7171b          	sllw	a4,a4,0x1f
   1082c:	7f8007b7          	lui	a5,0x7f800
   10830:	00f76733          	or	a4,a4,a5
   10834:	fd1ff06f          	j	10804 <__truncdfsf2+0x2c8>
   10838:	7f800737          	lui	a4,0x7f800
   1083c:	fd5ff06f          	j	10810 <__truncdfsf2+0x2d4>

0000000000010840 <__clzdi2>:
   10840:	03855793          	srl	a5,a0,0x38
   10844:	04079063          	bnez	a5,10884 <__clzdi2+0x44>
   10848:	03800793          	li	a5,56
   1084c:	ff878793          	add	a5,a5,-8 # 7f7ffff8 <__BSS_END__+0x7f7da478>
   10850:	00078863          	beqz	a5,10860 <__clzdi2+0x20>
   10854:	00f55733          	srl	a4,a0,a5
   10858:	0ff77713          	zext.b	a4,a4
   1085c:	fe0708e3          	beqz	a4,1084c <__clzdi2+0xc>
   10860:	00023737          	lui	a4,0x23
   10864:	04000693          	li	a3,64
   10868:	40f686b3          	sub	a3,a3,a5
   1086c:	00f55533          	srl	a0,a0,a5
   10870:	a4870793          	add	a5,a4,-1464 # 22a48 <__clz_tab>
   10874:	00a787b3          	add	a5,a5,a0
   10878:	0007c503          	lbu	a0,0(a5)
   1087c:	40a6853b          	subw	a0,a3,a0
   10880:	00008067          	ret
   10884:	03800793          	li	a5,56
   10888:	fd9ff06f          	j	10860 <__clzdi2+0x20>

000000000001088c <__libc_init_array>:
   1088c:	fe010113          	add	sp,sp,-32
   10890:	00813823          	sd	s0,16(sp)
   10894:	000257b7          	lui	a5,0x25
   10898:	00025437          	lui	s0,0x25
   1089c:	01213023          	sd	s2,0(sp)
   108a0:	96878793          	add	a5,a5,-1688 # 24968 <__init_array_start>
   108a4:	96840713          	add	a4,s0,-1688 # 24968 <__init_array_start>
   108a8:	00113c23          	sd	ra,24(sp)
   108ac:	00913423          	sd	s1,8(sp)
   108b0:	40e78933          	sub	s2,a5,a4
   108b4:	02e78263          	beq	a5,a4,108d8 <__libc_init_array+0x4c>
   108b8:	40395913          	sra	s2,s2,0x3
   108bc:	96840413          	add	s0,s0,-1688
   108c0:	00000493          	li	s1,0
   108c4:	00043783          	ld	a5,0(s0)
   108c8:	00148493          	add	s1,s1,1
   108cc:	00840413          	add	s0,s0,8
   108d0:	000780e7          	jalr	a5
   108d4:	ff24e8e3          	bltu	s1,s2,108c4 <__libc_init_array+0x38>
   108d8:	00025437          	lui	s0,0x25
   108dc:	000257b7          	lui	a5,0x25
   108e0:	97878793          	add	a5,a5,-1672 # 24978 <__do_global_dtors_aux_fini_array_entry>
   108e4:	96840713          	add	a4,s0,-1688 # 24968 <__init_array_start>
   108e8:	40e78933          	sub	s2,a5,a4
   108ec:	40395913          	sra	s2,s2,0x3
   108f0:	02e78063          	beq	a5,a4,10910 <__libc_init_array+0x84>
   108f4:	96840413          	add	s0,s0,-1688
   108f8:	00000493          	li	s1,0
   108fc:	00043783          	ld	a5,0(s0)
   10900:	00148493          	add	s1,s1,1
   10904:	00840413          	add	s0,s0,8
   10908:	000780e7          	jalr	a5
   1090c:	ff24e8e3          	bltu	s1,s2,108fc <__libc_init_array+0x70>
   10910:	01813083          	ld	ra,24(sp)
   10914:	01013403          	ld	s0,16(sp)
   10918:	00813483          	ld	s1,8(sp)
   1091c:	00013903          	ld	s2,0(sp)
   10920:	02010113          	add	sp,sp,32
   10924:	00008067          	ret

0000000000010928 <memset>:
   10928:	00f00313          	li	t1,15
   1092c:	00050713          	mv	a4,a0
   10930:	02c37a63          	bgeu	t1,a2,10964 <memset+0x3c>
   10934:	00f77793          	and	a5,a4,15
   10938:	0a079063          	bnez	a5,109d8 <memset+0xb0>
   1093c:	06059e63          	bnez	a1,109b8 <memset+0x90>
   10940:	ff067693          	and	a3,a2,-16
   10944:	00f67613          	and	a2,a2,15
   10948:	00e686b3          	add	a3,a3,a4
   1094c:	00b73023          	sd	a1,0(a4)
   10950:	00b73423          	sd	a1,8(a4)
   10954:	01070713          	add	a4,a4,16
   10958:	fed76ae3          	bltu	a4,a3,1094c <memset+0x24>
   1095c:	00061463          	bnez	a2,10964 <memset+0x3c>
   10960:	00008067          	ret
   10964:	40c306b3          	sub	a3,t1,a2
   10968:	00269693          	sll	a3,a3,0x2
   1096c:	00000297          	auipc	t0,0x0
   10970:	005686b3          	add	a3,a3,t0
   10974:	00c68067          	jr	12(a3)
   10978:	00b70723          	sb	a1,14(a4)
   1097c:	00b706a3          	sb	a1,13(a4)
   10980:	00b70623          	sb	a1,12(a4)
   10984:	00b705a3          	sb	a1,11(a4)
   10988:	00b70523          	sb	a1,10(a4)
   1098c:	00b704a3          	sb	a1,9(a4)
   10990:	00b70423          	sb	a1,8(a4)
   10994:	00b703a3          	sb	a1,7(a4)
   10998:	00b70323          	sb	a1,6(a4)
   1099c:	00b702a3          	sb	a1,5(a4)
   109a0:	00b70223          	sb	a1,4(a4)
   109a4:	00b701a3          	sb	a1,3(a4)
   109a8:	00b70123          	sb	a1,2(a4)
   109ac:	00b700a3          	sb	a1,1(a4)
   109b0:	00b70023          	sb	a1,0(a4)
   109b4:	00008067          	ret
   109b8:	0ff5f593          	zext.b	a1,a1
   109bc:	00859693          	sll	a3,a1,0x8
   109c0:	00d5e5b3          	or	a1,a1,a3
   109c4:	01059693          	sll	a3,a1,0x10
   109c8:	00d5e5b3          	or	a1,a1,a3
   109cc:	02059693          	sll	a3,a1,0x20
   109d0:	00d5e5b3          	or	a1,a1,a3
   109d4:	f6dff06f          	j	10940 <memset+0x18>
   109d8:	00279693          	sll	a3,a5,0x2
   109dc:	00000297          	auipc	t0,0x0
   109e0:	005686b3          	add	a3,a3,t0
   109e4:	00008293          	mv	t0,ra
   109e8:	f98680e7          	jalr	-104(a3)
   109ec:	00028093          	mv	ra,t0
   109f0:	ff078793          	add	a5,a5,-16
   109f4:	40f70733          	sub	a4,a4,a5
   109f8:	00f60633          	add	a2,a2,a5
   109fc:	f6c374e3          	bgeu	t1,a2,10964 <memset+0x3c>
   10a00:	f3dff06f          	j	1093c <memset+0x14>

0000000000010a04 <_printf_r>:
   10a04:	fb010113          	add	sp,sp,-80
   10a08:	02c13023          	sd	a2,32(sp)
   10a0c:	02d13423          	sd	a3,40(sp)
   10a10:	02e13823          	sd	a4,48(sp)
   10a14:	02f13c23          	sd	a5,56(sp)
   10a18:	05013023          	sd	a6,64(sp)
   10a1c:	05113423          	sd	a7,72(sp)
   10a20:	00058613          	mv	a2,a1
   10a24:	01053583          	ld	a1,16(a0)
   10a28:	02010693          	add	a3,sp,32
   10a2c:	00113c23          	sd	ra,24(sp)
   10a30:	00d13423          	sd	a3,8(sp)
   10a34:	05c000ef          	jal	10a90 <_vfprintf_r>
   10a38:	01813083          	ld	ra,24(sp)
   10a3c:	05010113          	add	sp,sp,80
   10a40:	00008067          	ret

0000000000010a44 <printf>:
   10a44:	7581b303          	ld	t1,1880(gp) # 25ad8 <_impure_ptr>
   10a48:	fa010113          	add	sp,sp,-96
   10a4c:	02c13823          	sd	a2,48(sp)
   10a50:	02d13c23          	sd	a3,56(sp)
   10a54:	02b13423          	sd	a1,40(sp)
   10a58:	04e13023          	sd	a4,64(sp)
   10a5c:	04f13423          	sd	a5,72(sp)
   10a60:	05013823          	sd	a6,80(sp)
   10a64:	05113c23          	sd	a7,88(sp)
   10a68:	01033583          	ld	a1,16(t1) # 101e8 <main+0x4>
   10a6c:	02810693          	add	a3,sp,40
   10a70:	00050613          	mv	a2,a0
   10a74:	00030513          	mv	a0,t1
   10a78:	00113c23          	sd	ra,24(sp)
   10a7c:	00d13423          	sd	a3,8(sp)
   10a80:	010000ef          	jal	10a90 <_vfprintf_r>
   10a84:	01813083          	ld	ra,24(sp)
   10a88:	06010113          	add	sp,sp,96
   10a8c:	00008067          	ret

0000000000010a90 <_vfprintf_r>:
   10a90:	d9010113          	add	sp,sp,-624
   10a94:	26113423          	sd	ra,616(sp)
   10a98:	26813023          	sd	s0,608(sp)
   10a9c:	25213823          	sd	s2,592(sp)
   10aa0:	00b13023          	sd	a1,0(sp)
   10aa4:	00060913          	mv	s2,a2
   10aa8:	02d13023          	sd	a3,32(sp)
   10aac:	24913c23          	sd	s1,600(sp)
   10ab0:	25313423          	sd	s3,584(sp)
   10ab4:	25413023          	sd	s4,576(sp)
   10ab8:	23513c23          	sd	s5,568(sp)
   10abc:	23613823          	sd	s6,560(sp)
   10ac0:	23713423          	sd	s7,552(sp)
   10ac4:	23813023          	sd	s8,544(sp)
   10ac8:	21913c23          	sd	s9,536(sp)
   10acc:	21a13823          	sd	s10,528(sp)
   10ad0:	21b13423          	sd	s11,520(sp)
   10ad4:	00050413          	mv	s0,a0
   10ad8:	04a13823          	sd	a0,80(sp)
   10adc:	22c060ef          	jal	16d08 <_localeconv_r>
   10ae0:	00053783          	ld	a5,0(a0)
   10ae4:	00078513          	mv	a0,a5
   10ae8:	06f13023          	sd	a5,96(sp)
   10aec:	6b8080ef          	jal	191a4 <strlen>
   10af0:	04a13c23          	sd	a0,88(sp)
   10af4:	0e013823          	sd	zero,240(sp)
   10af8:	0e013c23          	sd	zero,248(sp)
   10afc:	00040663          	beqz	s0,10b08 <_vfprintf_r+0x78>
   10b00:	05042703          	lw	a4,80(s0)
   10b04:	5e070a63          	beqz	a4,110f8 <_vfprintf_r+0x668>
   10b08:	00013783          	ld	a5,0(sp)
   10b0c:	01079703          	lh	a4,16(a5)
   10b10:	03271693          	sll	a3,a4,0x32
   10b14:	0206c663          	bltz	a3,10b40 <_vfprintf_r+0xb0>
   10b18:	0ac7a683          	lw	a3,172(a5)
   10b1c:	00002637          	lui	a2,0x2
   10b20:	00c76733          	or	a4,a4,a2
   10b24:	ffffe637          	lui	a2,0xffffe
   10b28:	0107171b          	sllw	a4,a4,0x10
   10b2c:	fff60613          	add	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd847f>
   10b30:	4107571b          	sraw	a4,a4,0x10
   10b34:	00c6f6b3          	and	a3,a3,a2
   10b38:	00e79823          	sh	a4,16(a5)
   10b3c:	0ad7a623          	sw	a3,172(a5)
   10b40:	00877693          	and	a3,a4,8
   10b44:	32068263          	beqz	a3,10e68 <_vfprintf_r+0x3d8>
   10b48:	00013783          	ld	a5,0(sp)
   10b4c:	0187b683          	ld	a3,24(a5)
   10b50:	30068c63          	beqz	a3,10e68 <_vfprintf_r+0x3d8>
   10b54:	01a77713          	and	a4,a4,26
   10b58:	00a00693          	li	a3,10
   10b5c:	32d70a63          	beq	a4,a3,10e90 <_vfprintf_r+0x400>
   10b60:	18010793          	add	a5,sp,384
   10b64:	00023737          	lui	a4,0x23
   10b68:	00078313          	mv	t1,a5
   10b6c:	10f13023          	sd	a5,256(sp)
   10b70:	00090b13          	mv	s6,s2
   10b74:	cf070793          	add	a5,a4,-784 # 22cf0 <__clz_tab+0x2a8>
   10b78:	00023737          	lui	a4,0x23
   10b7c:	02f13423          	sd	a5,40(sp)
   10b80:	ef870793          	add	a5,a4,-264 # 22ef8 <zeroes.0>
   10b84:	000b4703          	lbu	a4,0(s6)
   10b88:	10013823          	sd	zero,272(sp)
   10b8c:	10012423          	sw	zero,264(sp)
   10b90:	02013c23          	sd	zero,56(sp)
   10b94:	06013423          	sd	zero,104(sp)
   10b98:	06013823          	sd	zero,112(sp)
   10b9c:	08013023          	sd	zero,128(sp)
   10ba0:	08013423          	sd	zero,136(sp)
   10ba4:	06013c23          	sd	zero,120(sp)
   10ba8:	00013823          	sd	zero,16(sp)
   10bac:	00f13423          	sd	a5,8(sp)
   10bb0:	05013983          	ld	s3,80(sp)
   10bb4:	00030413          	mv	s0,t1
   10bb8:	24070063          	beqz	a4,10df8 <_vfprintf_r+0x368>
   10bbc:	000b0493          	mv	s1,s6
   10bc0:	02500693          	li	a3,37
   10bc4:	2ed70a63          	beq	a4,a3,10eb8 <_vfprintf_r+0x428>
   10bc8:	0014c703          	lbu	a4,1(s1)
   10bcc:	00148493          	add	s1,s1,1
   10bd0:	fe071ae3          	bnez	a4,10bc4 <_vfprintf_r+0x134>
   10bd4:	4164893b          	subw	s2,s1,s6
   10bd8:	22090063          	beqz	s2,10df8 <_vfprintf_r+0x368>
   10bdc:	11013b83          	ld	s7,272(sp)
   10be0:	10812683          	lw	a3,264(sp)
   10be4:	01643023          	sd	s6,0(s0)
   10be8:	012b8733          	add	a4,s7,s2
   10bec:	0016861b          	addw	a2,a3,1
   10bf0:	01243423          	sd	s2,8(s0)
   10bf4:	10e13823          	sd	a4,272(sp)
   10bf8:	10c12423          	sw	a2,264(sp)
   10bfc:	00700713          	li	a4,7
   10c00:	01040413          	add	s0,s0,16
   10c04:	2cc74263          	blt	a4,a2,10ec8 <_vfprintf_r+0x438>
   10c08:	01013783          	ld	a5,16(sp)
   10c0c:	0004c703          	lbu	a4,0(s1)
   10c10:	012787bb          	addw	a5,a5,s2
   10c14:	00f13823          	sd	a5,16(sp)
   10c18:	1e070063          	beqz	a4,10df8 <_vfprintf_r+0x368>
   10c1c:	fff00313          	li	t1,-1
   10c20:	0014ce03          	lbu	t3,1(s1)
   10c24:	0c0107a3          	sb	zero,207(sp)
   10c28:	00148493          	add	s1,s1,1
   10c2c:	00000a13          	li	s4,0
   10c30:	00000913          	li	s2,0
   10c34:	05a00b93          	li	s7,90
   10c38:	00030a93          	mv	s5,t1
   10c3c:	00148493          	add	s1,s1,1
   10c40:	000e0d1b          	sext.w	s10,t3
   10c44:	fe0d079b          	addw	a5,s10,-32
   10c48:	0007871b          	sext.w	a4,a5
   10c4c:	04ebec63          	bltu	s7,a4,10ca4 <_vfprintf_r+0x214>
   10c50:	02079713          	sll	a4,a5,0x20
   10c54:	01e75793          	srl	a5,a4,0x1e
   10c58:	02813703          	ld	a4,40(sp)
   10c5c:	00e787b3          	add	a5,a5,a4
   10c60:	0007a783          	lw	a5,0(a5)
   10c64:	00078067          	jr	a5
   10c68:	00000a13          	li	s4,0
   10c6c:	00900693          	li	a3,9
   10c70:	0004c703          	lbu	a4,0(s1)
   10c74:	002a179b          	sllw	a5,s4,0x2
   10c78:	01478a3b          	addw	s4,a5,s4
   10c7c:	fd0d0d1b          	addw	s10,s10,-48
   10c80:	001a1a1b          	sllw	s4,s4,0x1
   10c84:	fd07079b          	addw	a5,a4,-48
   10c88:	014d0a3b          	addw	s4,s10,s4
   10c8c:	00148493          	add	s1,s1,1
   10c90:	00070d1b          	sext.w	s10,a4
   10c94:	fcf6fee3          	bgeu	a3,a5,10c70 <_vfprintf_r+0x1e0>
   10c98:	fe0d079b          	addw	a5,s10,-32
   10c9c:	0007871b          	sext.w	a4,a5
   10ca0:	faebf8e3          	bgeu	s7,a4,10c50 <_vfprintf_r+0x1c0>
   10ca4:	140d0a63          	beqz	s10,10df8 <_vfprintf_r+0x368>
   10ca8:	11a10c23          	sb	s10,280(sp)
   10cac:	0c0107a3          	sb	zero,207(sp)
   10cb0:	00100c13          	li	s8,1
   10cb4:	00100d93          	li	s11,1
   10cb8:	11810b13          	add	s6,sp,280
   10cbc:	00013c23          	sd	zero,24(sp)
   10cc0:	00000313          	li	t1,0
   10cc4:	04013423          	sd	zero,72(sp)
   10cc8:	04013023          	sd	zero,64(sp)
   10ccc:	02013823          	sd	zero,48(sp)
   10cd0:	00297c93          	and	s9,s2,2
   10cd4:	000c8463          	beqz	s9,10cdc <_vfprintf_r+0x24c>
   10cd8:	002c0c1b          	addw	s8,s8,2
   10cdc:	08497a93          	and	s5,s2,132
   10ce0:	000a9663          	bnez	s5,10cec <_vfprintf_r+0x25c>
   10ce4:	418a073b          	subw	a4,s4,s8
   10ce8:	34e04ee3          	bgtz	a4,11844 <_vfprintf_r+0xdb4>
   10cec:	0cf14703          	lbu	a4,207(sp)
   10cf0:	11013b83          	ld	s7,272(sp)
   10cf4:	02070c63          	beqz	a4,10d2c <_vfprintf_r+0x29c>
   10cf8:	10812603          	lw	a2,264(sp)
   10cfc:	0cf10593          	add	a1,sp,207
   10d00:	00b43023          	sd	a1,0(s0)
   10d04:	0016061b          	addw	a2,a2,1
   10d08:	00100593          	li	a1,1
   10d0c:	001b8b93          	add	s7,s7,1
   10d10:	00b43423          	sd	a1,8(s0)
   10d14:	10c12423          	sw	a2,264(sp)
   10d18:	0006059b          	sext.w	a1,a2
   10d1c:	11713823          	sd	s7,272(sp)
   10d20:	00700613          	li	a2,7
   10d24:	01040413          	add	s0,s0,16
   10d28:	2ab64463          	blt	a2,a1,10fd0 <_vfprintf_r+0x540>
   10d2c:	020c8c63          	beqz	s9,10d64 <_vfprintf_r+0x2d4>
   10d30:	10812603          	lw	a2,264(sp)
   10d34:	00200593          	li	a1,2
   10d38:	002b8b93          	add	s7,s7,2
   10d3c:	0016061b          	addw	a2,a2,1
   10d40:	0d010793          	add	a5,sp,208
   10d44:	00b43423          	sd	a1,8(s0)
   10d48:	00f43023          	sd	a5,0(s0)
   10d4c:	0006059b          	sext.w	a1,a2
   10d50:	10c12423          	sw	a2,264(sp)
   10d54:	11713823          	sd	s7,272(sp)
   10d58:	00700613          	li	a2,7
   10d5c:	01040413          	add	s0,s0,16
   10d60:	40b642e3          	blt	a2,a1,11964 <_vfprintf_r+0xed4>
   10d64:	08000613          	li	a2,128
   10d68:	0eca84e3          	beq	s5,a2,11650 <_vfprintf_r+0xbc0>
   10d6c:	41b30cbb          	subw	s9,t1,s11
   10d70:	1d9044e3          	bgtz	s9,11738 <_vfprintf_r+0xca8>
   10d74:	10097613          	and	a2,s2,256
   10d78:	70061c63          	bnez	a2,11490 <_vfprintf_r+0xa00>
   10d7c:	10812603          	lw	a2,264(sp)
   10d80:	017d8733          	add	a4,s11,s7
   10d84:	01643023          	sd	s6,0(s0)
   10d88:	0016069b          	addw	a3,a2,1
   10d8c:	01b43423          	sd	s11,8(s0)
   10d90:	10e13823          	sd	a4,272(sp)
   10d94:	10d12423          	sw	a3,264(sp)
   10d98:	00700793          	li	a5,7
   10d9c:	32d7ce63          	blt	a5,a3,110d8 <_vfprintf_r+0x648>
   10da0:	01040413          	add	s0,s0,16
   10da4:	00497913          	and	s2,s2,4
   10da8:	00090663          	beqz	s2,10db4 <_vfprintf_r+0x324>
   10dac:	418a093b          	subw	s2,s4,s8
   10db0:	3d204ee3          	bgtz	s2,1198c <_vfprintf_r+0xefc>
   10db4:	000a0793          	mv	a5,s4
   10db8:	018a5463          	bge	s4,s8,10dc0 <_vfprintf_r+0x330>
   10dbc:	000c0793          	mv	a5,s8
   10dc0:	01013683          	ld	a3,16(sp)
   10dc4:	00d787bb          	addw	a5,a5,a3
   10dc8:	00f13823          	sd	a5,16(sp)
   10dcc:	240718e3          	bnez	a4,1181c <_vfprintf_r+0xd8c>
   10dd0:	01813783          	ld	a5,24(sp)
   10dd4:	10012423          	sw	zero,264(sp)
   10dd8:	00078863          	beqz	a5,10de8 <_vfprintf_r+0x358>
   10ddc:	01813583          	ld	a1,24(sp)
   10de0:	00098513          	mv	a0,s3
   10de4:	62d020ef          	jal	13c10 <_free_r>
   10de8:	18010413          	add	s0,sp,384
   10dec:	00048b13          	mv	s6,s1
   10df0:	000b4703          	lbu	a4,0(s6)
   10df4:	dc0714e3          	bnez	a4,10bbc <_vfprintf_r+0x12c>
   10df8:	11013783          	ld	a5,272(sp)
   10dfc:	00078463          	beqz	a5,10e04 <_vfprintf_r+0x374>
   10e00:	1cd0106f          	j	127cc <_vfprintf_r+0x1d3c>
   10e04:	00013783          	ld	a5,0(sp)
   10e08:	0107d783          	lhu	a5,16(a5)
   10e0c:	0407f793          	and	a5,a5,64
   10e10:	00078463          	beqz	a5,10e18 <_vfprintf_r+0x388>
   10e14:	6fd0106f          	j	12d10 <_vfprintf_r+0x2280>
   10e18:	26813083          	ld	ra,616(sp)
   10e1c:	26013403          	ld	s0,608(sp)
   10e20:	01013503          	ld	a0,16(sp)
   10e24:	25813483          	ld	s1,600(sp)
   10e28:	25013903          	ld	s2,592(sp)
   10e2c:	24813983          	ld	s3,584(sp)
   10e30:	24013a03          	ld	s4,576(sp)
   10e34:	23813a83          	ld	s5,568(sp)
   10e38:	23013b03          	ld	s6,560(sp)
   10e3c:	22813b83          	ld	s7,552(sp)
   10e40:	22013c03          	ld	s8,544(sp)
   10e44:	21813c83          	ld	s9,536(sp)
   10e48:	21013d03          	ld	s10,528(sp)
   10e4c:	20813d83          	ld	s11,520(sp)
   10e50:	27010113          	add	sp,sp,624
   10e54:	00008067          	ret
   10e58:	01096913          	or	s2,s2,16
   10e5c:	0004ce03          	lbu	t3,0(s1)
   10e60:	0009091b          	sext.w	s2,s2
   10e64:	dd9ff06f          	j	10c3c <_vfprintf_r+0x1ac>
   10e68:	00013583          	ld	a1,0(sp)
   10e6c:	05013503          	ld	a0,80(sp)
   10e70:	2f8020ef          	jal	13168 <__swsetup_r>
   10e74:	00050463          	beqz	a0,10e7c <_vfprintf_r+0x3ec>
   10e78:	6990106f          	j	12d10 <_vfprintf_r+0x2280>
   10e7c:	00013783          	ld	a5,0(sp)
   10e80:	00a00693          	li	a3,10
   10e84:	01079703          	lh	a4,16(a5)
   10e88:	01a77713          	and	a4,a4,26
   10e8c:	ccd71ae3          	bne	a4,a3,10b60 <_vfprintf_r+0xd0>
   10e90:	00013783          	ld	a5,0(sp)
   10e94:	01279703          	lh	a4,18(a5)
   10e98:	cc0744e3          	bltz	a4,10b60 <_vfprintf_r+0xd0>
   10e9c:	02013683          	ld	a3,32(sp)
   10ea0:	05013503          	ld	a0,80(sp)
   10ea4:	00090613          	mv	a2,s2
   10ea8:	00078593          	mv	a1,a5
   10eac:	1f0020ef          	jal	1309c <__sbprintf>
   10eb0:	00a13823          	sd	a0,16(sp)
   10eb4:	f65ff06f          	j	10e18 <_vfprintf_r+0x388>
   10eb8:	4164893b          	subw	s2,s1,s6
   10ebc:	d20910e3          	bnez	s2,10bdc <_vfprintf_r+0x14c>
   10ec0:	0004c703          	lbu	a4,0(s1)
   10ec4:	d55ff06f          	j	10c18 <_vfprintf_r+0x188>
   10ec8:	00013583          	ld	a1,0(sp)
   10ecc:	10010613          	add	a2,sp,256
   10ed0:	00098513          	mv	a0,s3
   10ed4:	2e10a0ef          	jal	1b9b4 <__sprint_r>
   10ed8:	f20516e3          	bnez	a0,10e04 <_vfprintf_r+0x374>
   10edc:	18010413          	add	s0,sp,384
   10ee0:	d29ff06f          	j	10c08 <_vfprintf_r+0x178>
   10ee4:	00897713          	and	a4,s2,8
   10ee8:	000a8313          	mv	t1,s5
   10eec:	6e071ce3          	bnez	a4,11de4 <_vfprintf_r+0x1354>
   10ef0:	02013783          	ld	a5,32(sp)
   10ef4:	01513c23          	sd	s5,24(sp)
   10ef8:	0007b503          	ld	a0,0(a5)
   10efc:	00878a93          	add	s5,a5,8
   10f00:	03513023          	sd	s5,32(sp)
   10f04:	65c110ef          	jal	22560 <__extenddftf2>
   10f08:	01813303          	ld	t1,24(sp)
   10f0c:	00050713          	mv	a4,a0
   10f10:	0f010513          	add	a0,sp,240
   10f14:	00613c23          	sd	t1,24(sp)
   10f18:	0ee13823          	sd	a4,240(sp)
   10f1c:	0eb13c23          	sd	a1,248(sp)
   10f20:	579050ef          	jal	16c98 <_ldcheck>
   10f24:	0ca12c23          	sw	a0,216(sp)
   10f28:	00200713          	li	a4,2
   10f2c:	01813303          	ld	t1,24(sp)
   10f30:	00e51463          	bne	a0,a4,10f38 <_vfprintf_r+0x4a8>
   10f34:	2280106f          	j	1215c <_vfprintf_r+0x16cc>
   10f38:	00100713          	li	a4,1
   10f3c:	00e51463          	bne	a0,a4,10f44 <_vfprintf_r+0x4b4>
   10f40:	3600106f          	j	122a0 <_vfprintf_r+0x1810>
   10f44:	06100713          	li	a4,97
   10f48:	00ed1463          	bne	s10,a4,10f50 <_vfprintf_r+0x4c0>
   10f4c:	4850106f          	j	12bd0 <_vfprintf_r+0x2140>
   10f50:	04100713          	li	a4,65
   10f54:	00ed1463          	bne	s10,a4,10f5c <_vfprintf_r+0x4cc>
   10f58:	0c50106f          	j	1281c <_vfprintf_r+0x1d8c>
   10f5c:	fff00713          	li	a4,-1
   10f60:	00e31463          	bne	t1,a4,10f68 <_vfprintf_r+0x4d8>
   10f64:	7cd0106f          	j	12f30 <_vfprintf_r+0x24a0>
   10f68:	fdfd7713          	and	a4,s10,-33
   10f6c:	04700693          	li	a3,71
   10f70:	00d71463          	bne	a4,a3,10f78 <_vfprintf_r+0x4e8>
   10f74:	7ad0106f          	j	12f20 <_vfprintf_r+0x2490>
   10f78:	10096713          	or	a4,s2,256
   10f7c:	0f813c83          	ld	s9,248(sp)
   10f80:	0007079b          	sext.w	a5,a4
   10f84:	08f13823          	sd	a5,144(sp)
   10f88:	05213023          	sd	s2,64(sp)
   10f8c:	0f013c03          	ld	s8,240(sp)
   10f90:	000cd463          	bgez	s9,10f98 <_vfprintf_r+0x508>
   10f94:	3f10106f          	j	12b84 <_vfprintf_r+0x20f4>
   10f98:	08013c23          	sd	zero,152(sp)
   10f9c:	00013c23          	sd	zero,24(sp)
   10fa0:	fbfd071b          	addw	a4,s10,-65
   10fa4:	0007061b          	sext.w	a2,a4
   10fa8:	02500693          	li	a3,37
   10fac:	00c6f463          	bgeu	a3,a2,10fb4 <_vfprintf_r+0x524>
   10fb0:	5bc0106f          	j	1256c <_vfprintf_r+0x1adc>
   10fb4:	02071693          	sll	a3,a4,0x20
   10fb8:	01e6d713          	srl	a4,a3,0x1e
   10fbc:	000236b7          	lui	a3,0x23
   10fc0:	e5c68693          	add	a3,a3,-420 # 22e5c <__clz_tab+0x414>
   10fc4:	00d70733          	add	a4,a4,a3
   10fc8:	00072703          	lw	a4,0(a4)
   10fcc:	00070067          	jr	a4
   10fd0:	00013583          	ld	a1,0(sp)
   10fd4:	10010613          	add	a2,sp,256
   10fd8:	00098513          	mv	a0,s3
   10fdc:	08613823          	sd	t1,144(sp)
   10fe0:	1d50a0ef          	jal	1b9b4 <__sprint_r>
   10fe4:	040516e3          	bnez	a0,11830 <_vfprintf_r+0xda0>
   10fe8:	11013b83          	ld	s7,272(sp)
   10fec:	09013303          	ld	t1,144(sp)
   10ff0:	18010413          	add	s0,sp,384
   10ff4:	d39ff06f          	j	10d2c <_vfprintf_r+0x29c>
   10ff8:	03813783          	ld	a5,56(sp)
   10ffc:	00100693          	li	a3,1
   11000:	01040c93          	add	s9,s0,16
   11004:	3cf6d2e3          	bge	a3,a5,11bc8 <_vfprintf_r+0x1138>
   11008:	10812603          	lw	a2,264(sp)
   1100c:	00100693          	li	a3,1
   11010:	001b8713          	add	a4,s7,1
   11014:	0016061b          	addw	a2,a2,1
   11018:	00d43423          	sd	a3,8(s0)
   1101c:	10c12423          	sw	a2,264(sp)
   11020:	0006069b          	sext.w	a3,a2
   11024:	01643023          	sd	s6,0(s0)
   11028:	10e13823          	sd	a4,272(sp)
   1102c:	00700613          	li	a2,7
   11030:	78d642e3          	blt	a2,a3,11fb4 <_vfprintf_r+0x1524>
   11034:	05813783          	ld	a5,88(sp)
   11038:	0016841b          	addw	s0,a3,1
   1103c:	10812423          	sw	s0,264(sp)
   11040:	00e78d33          	add	s10,a5,a4
   11044:	06013703          	ld	a4,96(sp)
   11048:	00fcb423          	sd	a5,8(s9)
   1104c:	11a13823          	sd	s10,272(sp)
   11050:	00ecb023          	sd	a4,0(s9)
   11054:	00700713          	li	a4,7
   11058:	010c8c93          	add	s9,s9,16
   1105c:	76874ee3          	blt	a4,s0,11fd8 <_vfprintf_r+0x1548>
   11060:	0f013503          	ld	a0,240(sp)
   11064:	0f813583          	ld	a1,248(sp)
   11068:	00000613          	li	a2,0
   1106c:	00000693          	li	a3,0
   11070:	39d0f0ef          	jal	20c0c <__eqtf2>
   11074:	03813783          	ld	a5,56(sp)
   11078:	fff78d9b          	addw	s11,a5,-1
   1107c:	3a0500e3          	beqz	a0,11c1c <_vfprintf_r+0x118c>
   11080:	001b0793          	add	a5,s6,1
   11084:	0014041b          	addw	s0,s0,1
   11088:	01bd0d33          	add	s10,s10,s11
   1108c:	00fcb023          	sd	a5,0(s9)
   11090:	01bcb423          	sd	s11,8(s9)
   11094:	11a13823          	sd	s10,272(sp)
   11098:	10812423          	sw	s0,264(sp)
   1109c:	00700793          	li	a5,7
   110a0:	3487cce3          	blt	a5,s0,11bf8 <_vfprintf_r+0x1168>
   110a4:	010c8c93          	add	s9,s9,16
   110a8:	07013683          	ld	a3,112(sp)
   110ac:	0014041b          	addw	s0,s0,1
   110b0:	0e010793          	add	a5,sp,224
   110b4:	01a68733          	add	a4,a3,s10
   110b8:	00fcb023          	sd	a5,0(s9)
   110bc:	00dcb423          	sd	a3,8(s9)
   110c0:	10812423          	sw	s0,264(sp)
   110c4:	0004069b          	sext.w	a3,s0
   110c8:	10e13823          	sd	a4,272(sp)
   110cc:	00700793          	li	a5,7
   110d0:	010c8413          	add	s0,s9,16
   110d4:	ccd7d8e3          	bge	a5,a3,10da4 <_vfprintf_r+0x314>
   110d8:	00013583          	ld	a1,0(sp)
   110dc:	10010613          	add	a2,sp,256
   110e0:	00098513          	mv	a0,s3
   110e4:	0d10a0ef          	jal	1b9b4 <__sprint_r>
   110e8:	74051463          	bnez	a0,11830 <_vfprintf_r+0xda0>
   110ec:	11013703          	ld	a4,272(sp)
   110f0:	18010413          	add	s0,sp,384
   110f4:	cb1ff06f          	j	10da4 <_vfprintf_r+0x314>
   110f8:	05013503          	ld	a0,80(sp)
   110fc:	13d020ef          	jal	13a38 <__sinit>
   11100:	a09ff06f          	j	10b08 <_vfprintf_r+0x78>
   11104:	02013703          	ld	a4,32(sp)
   11108:	0c0107a3          	sb	zero,207(sp)
   1110c:	00100c13          	li	s8,1
   11110:	00072783          	lw	a5,0(a4)
   11114:	00870713          	add	a4,a4,8
   11118:	02e13023          	sd	a4,32(sp)
   1111c:	10f10c23          	sb	a5,280(sp)
   11120:	00100d93          	li	s11,1
   11124:	11810b13          	add	s6,sp,280
   11128:	b95ff06f          	j	10cbc <_vfprintf_r+0x22c>
   1112c:	02013783          	ld	a5,32(sp)
   11130:	0c0107a3          	sb	zero,207(sp)
   11134:	000a8313          	mv	t1,s5
   11138:	0007bb03          	ld	s6,0(a5)
   1113c:	00878a93          	add	s5,a5,8
   11140:	5c0b02e3          	beqz	s6,11f04 <_vfprintf_r+0x1474>
   11144:	fff00713          	li	a4,-1
   11148:	00e31463          	bne	t1,a4,11150 <_vfprintf_r+0x6c0>
   1114c:	0f40106f          	j	12240 <_vfprintf_r+0x17b0>
   11150:	00030613          	mv	a2,t1
   11154:	00000593          	li	a1,0
   11158:	000b0513          	mv	a0,s6
   1115c:	02613023          	sd	t1,32(sp)
   11160:	76c060ef          	jal	178cc <memchr>
   11164:	00a13c23          	sd	a0,24(sp)
   11168:	02013303          	ld	t1,32(sp)
   1116c:	00051463          	bnez	a0,11174 <_vfprintf_r+0x6e4>
   11170:	2ed0106f          	j	12c5c <_vfprintf_r+0x21cc>
   11174:	01813783          	ld	a5,24(sp)
   11178:	41678dbb          	subw	s11,a5,s6
   1117c:	0cf14703          	lbu	a4,207(sp)
   11180:	fffdc813          	not	a6,s11
   11184:	43f85813          	sra	a6,a6,0x3f
   11188:	03513023          	sd	s5,32(sp)
   1118c:	00013c23          	sd	zero,24(sp)
   11190:	04013423          	sd	zero,72(sp)
   11194:	04013023          	sd	zero,64(sp)
   11198:	02013823          	sd	zero,48(sp)
   1119c:	01b87c33          	and	s8,a6,s11
   111a0:	00000313          	li	t1,0
   111a4:	b20706e3          	beqz	a4,10cd0 <_vfprintf_r+0x240>
   111a8:	001c0c1b          	addw	s8,s8,1
   111ac:	b25ff06f          	j	10cd0 <_vfprintf_r+0x240>
   111b0:	02013783          	ld	a5,32(sp)
   111b4:	0007aa03          	lw	s4,0(a5)
   111b8:	00878793          	add	a5,a5,8
   111bc:	3a0a5ae3          	bgez	s4,11d70 <_vfprintf_r+0x12e0>
   111c0:	41400a3b          	negw	s4,s4
   111c4:	02f13023          	sd	a5,32(sp)
   111c8:	00496913          	or	s2,s2,4
   111cc:	0004ce03          	lbu	t3,0(s1)
   111d0:	0009091b          	sext.w	s2,s2
   111d4:	a69ff06f          	j	10c3c <_vfprintf_r+0x1ac>
   111d8:	02b00793          	li	a5,43
   111dc:	0004ce03          	lbu	t3,0(s1)
   111e0:	0cf107a3          	sb	a5,207(sp)
   111e4:	a59ff06f          	j	10c3c <_vfprintf_r+0x1ac>
   111e8:	08096913          	or	s2,s2,128
   111ec:	0004ce03          	lbu	t3,0(s1)
   111f0:	0009091b          	sext.w	s2,s2
   111f4:	a49ff06f          	j	10c3c <_vfprintf_r+0x1ac>
   111f8:	0004cd03          	lbu	s10,0(s1)
   111fc:	02a00693          	li	a3,42
   11200:	00148793          	add	a5,s1,1
   11204:	00dd1463          	bne	s10,a3,1120c <_vfprintf_r+0x77c>
   11208:	6310106f          	j	13038 <_vfprintf_r+0x25a8>
   1120c:	fd0d071b          	addw	a4,s10,-48
   11210:	00900613          	li	a2,9
   11214:	00078493          	mv	s1,a5
   11218:	00000a93          	li	s5,0
   1121c:	00900693          	li	a3,9
   11220:	a2e662e3          	bltu	a2,a4,10c44 <_vfprintf_r+0x1b4>
   11224:	0004cd03          	lbu	s10,0(s1)
   11228:	002a979b          	sllw	a5,s5,0x2
   1122c:	0157833b          	addw	t1,a5,s5
   11230:	0013131b          	sllw	t1,t1,0x1
   11234:	00e30abb          	addw	s5,t1,a4
   11238:	fd0d071b          	addw	a4,s10,-48
   1123c:	00148493          	add	s1,s1,1
   11240:	fee6f2e3          	bgeu	a3,a4,11224 <_vfprintf_r+0x794>
   11244:	a01ff06f          	j	10c44 <_vfprintf_r+0x1b4>
   11248:	00098513          	mv	a0,s3
   1124c:	2bd050ef          	jal	16d08 <_localeconv_r>
   11250:	00853783          	ld	a5,8(a0)
   11254:	00078513          	mv	a0,a5
   11258:	06f13c23          	sd	a5,120(sp)
   1125c:	749070ef          	jal	191a4 <strlen>
   11260:	00050793          	mv	a5,a0
   11264:	00098513          	mv	a0,s3
   11268:	00078c13          	mv	s8,a5
   1126c:	08f13423          	sd	a5,136(sp)
   11270:	299050ef          	jal	16d08 <_localeconv_r>
   11274:	01053783          	ld	a5,16(a0)
   11278:	0004ce03          	lbu	t3,0(s1)
   1127c:	08f13023          	sd	a5,128(sp)
   11280:	9a0c0ee3          	beqz	s8,10c3c <_vfprintf_r+0x1ac>
   11284:	9a078ce3          	beqz	a5,10c3c <_vfprintf_r+0x1ac>
   11288:	0007c783          	lbu	a5,0(a5)
   1128c:	9a0788e3          	beqz	a5,10c3c <_vfprintf_r+0x1ac>
   11290:	40096913          	or	s2,s2,1024
   11294:	0009091b          	sext.w	s2,s2
   11298:	9a5ff06f          	j	10c3c <_vfprintf_r+0x1ac>
   1129c:	00196913          	or	s2,s2,1
   112a0:	0004ce03          	lbu	t3,0(s1)
   112a4:	0009091b          	sext.w	s2,s2
   112a8:	995ff06f          	j	10c3c <_vfprintf_r+0x1ac>
   112ac:	0cf14783          	lbu	a5,207(sp)
   112b0:	0004ce03          	lbu	t3,0(s1)
   112b4:	980794e3          	bnez	a5,10c3c <_vfprintf_r+0x1ac>
   112b8:	02000793          	li	a5,32
   112bc:	0cf107a3          	sb	a5,207(sp)
   112c0:	97dff06f          	j	10c3c <_vfprintf_r+0x1ac>
   112c4:	01096c93          	or	s9,s2,16
   112c8:	000a8313          	mv	t1,s5
   112cc:	000c8c9b          	sext.w	s9,s9
   112d0:	02013683          	ld	a3,32(sp)
   112d4:	020cf793          	and	a5,s9,32
   112d8:	00868713          	add	a4,a3,8
   112dc:	240780e3          	beqz	a5,11d1c <_vfprintf_r+0x128c>
   112e0:	0006bb83          	ld	s7,0(a3)
   112e4:	00100793          	li	a5,1
   112e8:	02e13023          	sd	a4,32(sp)
   112ec:	00000713          	li	a4,0
   112f0:	0ce107a3          	sb	a4,207(sp)
   112f4:	fff00713          	li	a4,-1
   112f8:	2ae30863          	beq	t1,a4,115a8 <_vfprintf_r+0xb18>
   112fc:	f7fcf913          	and	s2,s9,-129
   11300:	0009091b          	sext.w	s2,s2
   11304:	2a0b9063          	bnez	s7,115a4 <_vfprintf_r+0xb14>
   11308:	2e031e63          	bnez	t1,11604 <_vfprintf_r+0xb74>
   1130c:	22079ee3          	bnez	a5,11d48 <_vfprintf_r+0x12b8>
   11310:	001cfd93          	and	s11,s9,1
   11314:	17c10b13          	add	s6,sp,380
   11318:	260d92e3          	bnez	s11,11d7c <_vfprintf_r+0x12ec>
   1131c:	0cf14703          	lbu	a4,207(sp)
   11320:	000d8813          	mv	a6,s11
   11324:	006dd463          	bge	s11,t1,1132c <_vfprintf_r+0x89c>
   11328:	00030813          	mv	a6,t1
   1132c:	00013c23          	sd	zero,24(sp)
   11330:	04013423          	sd	zero,72(sp)
   11334:	04013023          	sd	zero,64(sp)
   11338:	02013823          	sd	zero,48(sp)
   1133c:	00080c1b          	sext.w	s8,a6
   11340:	e60714e3          	bnez	a4,111a8 <_vfprintf_r+0x718>
   11344:	98dff06f          	j	10cd0 <_vfprintf_r+0x240>
   11348:	00896913          	or	s2,s2,8
   1134c:	0004ce03          	lbu	t3,0(s1)
   11350:	0009091b          	sext.w	s2,s2
   11354:	8e9ff06f          	j	10c3c <_vfprintf_r+0x1ac>
   11358:	01096913          	or	s2,s2,16
   1135c:	000a8313          	mv	t1,s5
   11360:	0009091b          	sext.w	s2,s2
   11364:	02013683          	ld	a3,32(sp)
   11368:	02097793          	and	a5,s2,32
   1136c:	00868713          	add	a4,a3,8
   11370:	140784e3          	beqz	a5,11cb8 <_vfprintf_r+0x1228>
   11374:	0006b783          	ld	a5,0(a3)
   11378:	00078b93          	mv	s7,a5
   1137c:	1607c2e3          	bltz	a5,11ce0 <_vfprintf_r+0x1250>
   11380:	fff00793          	li	a5,-1
   11384:	5af30c63          	beq	t1,a5,1193c <_vfprintf_r+0xeac>
   11388:	f7f97c93          	and	s9,s2,-129
   1138c:	000c8c9b          	sext.w	s9,s9
   11390:	5c0b92e3          	bnez	s7,12154 <_vfprintf_r+0x16c4>
   11394:	00030463          	beqz	t1,1139c <_vfprintf_r+0x90c>
   11398:	3810106f          	j	12f18 <_vfprintf_r+0x2488>
   1139c:	00000d93          	li	s11,0
   113a0:	02e13023          	sd	a4,32(sp)
   113a4:	000c8913          	mv	s2,s9
   113a8:	17c10b13          	add	s6,sp,380
   113ac:	f71ff06f          	j	1131c <_vfprintf_r+0x88c>
   113b0:	01096913          	or	s2,s2,16
   113b4:	000a8313          	mv	t1,s5
   113b8:	0009091b          	sext.w	s2,s2
   113bc:	02013683          	ld	a3,32(sp)
   113c0:	02097793          	and	a5,s2,32
   113c4:	00868713          	add	a4,a3,8
   113c8:	120788e3          	beqz	a5,11cf8 <_vfprintf_r+0x1268>
   113cc:	0006bb83          	ld	s7,0(a3)
   113d0:	bff97c93          	and	s9,s2,-1025
   113d4:	000c8c9b          	sext.w	s9,s9
   113d8:	02e13023          	sd	a4,32(sp)
   113dc:	00000793          	li	a5,0
   113e0:	f0dff06f          	j	112ec <_vfprintf_r+0x85c>
   113e4:	02096913          	or	s2,s2,32
   113e8:	0004ce03          	lbu	t3,0(s1)
   113ec:	0009091b          	sext.w	s2,s2
   113f0:	84dff06f          	j	10c3c <_vfprintf_r+0x1ac>
   113f4:	02013703          	ld	a4,32(sp)
   113f8:	02097793          	and	a5,s2,32
   113fc:	00073703          	ld	a4,0(a4)
   11400:	1a078ee3          	beqz	a5,11dbc <_vfprintf_r+0x132c>
   11404:	01013783          	ld	a5,16(sp)
   11408:	00f73023          	sd	a5,0(a4)
   1140c:	02013783          	ld	a5,32(sp)
   11410:	00048b13          	mv	s6,s1
   11414:	00878793          	add	a5,a5,8
   11418:	02f13023          	sd	a5,32(sp)
   1141c:	9d5ff06f          	j	10df0 <_vfprintf_r+0x360>
   11420:	0004ce03          	lbu	t3,0(s1)
   11424:	06c00793          	li	a5,108
   11428:	2cfe04e3          	beq	t3,a5,11ef0 <_vfprintf_r+0x1460>
   1142c:	01096913          	or	s2,s2,16
   11430:	0009091b          	sext.w	s2,s2
   11434:	809ff06f          	j	10c3c <_vfprintf_r+0x1ac>
   11438:	0004ce03          	lbu	t3,0(s1)
   1143c:	06800793          	li	a5,104
   11440:	28fe0ae3          	beq	t3,a5,11ed4 <_vfprintf_r+0x1444>
   11444:	04096913          	or	s2,s2,64
   11448:	0009091b          	sext.w	s2,s2
   1144c:	ff0ff06f          	j	10c3c <_vfprintf_r+0x1ac>
   11450:	02013703          	ld	a4,32(sp)
   11454:	ffff87b7          	lui	a5,0xffff8
   11458:	8307c793          	xor	a5,a5,-2000
   1145c:	0cf11823          	sh	a5,208(sp)
   11460:	00870793          	add	a5,a4,8
   11464:	02f13023          	sd	a5,32(sp)
   11468:	000237b7          	lui	a5,0x23
   1146c:	b8078793          	add	a5,a5,-1152 # 22b80 <__clz_tab+0x138>
   11470:	00296c93          	or	s9,s2,2
   11474:	06f13423          	sd	a5,104(sp)
   11478:	00073b83          	ld	s7,0(a4)
   1147c:	000a8313          	mv	t1,s5
   11480:	000c8c9b          	sext.w	s9,s9
   11484:	00200793          	li	a5,2
   11488:	07800d13          	li	s10,120
   1148c:	e61ff06f          	j	112ec <_vfprintf_r+0x85c>
   11490:	06500693          	li	a3,101
   11494:	b7a6d2e3          	bge	a3,s10,10ff8 <_vfprintf_r+0x568>
   11498:	0f013503          	ld	a0,240(sp)
   1149c:	0f813583          	ld	a1,248(sp)
   114a0:	00000613          	li	a2,0
   114a4:	00000693          	li	a3,0
   114a8:	7640f0ef          	jal	20c0c <__eqtf2>
   114ac:	58051863          	bnez	a0,11a3c <_vfprintf_r+0xfac>
   114b0:	10812783          	lw	a5,264(sp)
   114b4:	000236b7          	lui	a3,0x23
   114b8:	ba068693          	add	a3,a3,-1120 # 22ba0 <__clz_tab+0x158>
   114bc:	0017879b          	addw	a5,a5,1
   114c0:	00d43023          	sd	a3,0(s0)
   114c4:	001b8b93          	add	s7,s7,1
   114c8:	00100693          	li	a3,1
   114cc:	00d43423          	sd	a3,8(s0)
   114d0:	10f12423          	sw	a5,264(sp)
   114d4:	0007869b          	sext.w	a3,a5
   114d8:	11713823          	sd	s7,272(sp)
   114dc:	00700793          	li	a5,7
   114e0:	01040413          	add	s0,s0,16
   114e4:	42d7c4e3          	blt	a5,a3,1210c <_vfprintf_r+0x167c>
   114e8:	0d812783          	lw	a5,216(sp)
   114ec:	03813703          	ld	a4,56(sp)
   114f0:	06e7d2e3          	bge	a5,a4,11d54 <_vfprintf_r+0x12c4>
   114f4:	05813683          	ld	a3,88(sp)
   114f8:	10812783          	lw	a5,264(sp)
   114fc:	06013603          	ld	a2,96(sp)
   11500:	01768733          	add	a4,a3,s7
   11504:	0017879b          	addw	a5,a5,1
   11508:	00d43423          	sd	a3,8(s0)
   1150c:	00c43023          	sd	a2,0(s0)
   11510:	0007869b          	sext.w	a3,a5
   11514:	10f12423          	sw	a5,264(sp)
   11518:	10e13823          	sd	a4,272(sp)
   1151c:	00700793          	li	a5,7
   11520:	01040413          	add	s0,s0,16
   11524:	18d7c8e3          	blt	a5,a3,11eb4 <_vfprintf_r+0x1424>
   11528:	03813783          	ld	a5,56(sp)
   1152c:	fff78c9b          	addw	s9,a5,-1
   11530:	87905ae3          	blez	s9,10da4 <_vfprintf_r+0x314>
   11534:	00023f37          	lui	t5,0x23
   11538:	01000693          	li	a3,16
   1153c:	10812783          	lw	a5,264(sp)
   11540:	ef8f0b93          	add	s7,t5,-264 # 22ef8 <zeroes.0>
   11544:	3f96d4e3          	bge	a3,s9,1212c <_vfprintf_r+0x169c>
   11548:	00013a83          	ld	s5,0(sp)
   1154c:	01000d13          	li	s10,16
   11550:	00700d93          	li	s11,7
   11554:	00c0006f          	j	11560 <_vfprintf_r+0xad0>
   11558:	ff0c8c9b          	addw	s9,s9,-16
   1155c:	3d9d58e3          	bge	s10,s9,1212c <_vfprintf_r+0x169c>
   11560:	0017879b          	addw	a5,a5,1
   11564:	01070713          	add	a4,a4,16
   11568:	01743023          	sd	s7,0(s0)
   1156c:	01a43423          	sd	s10,8(s0)
   11570:	10e13823          	sd	a4,272(sp)
   11574:	10f12423          	sw	a5,264(sp)
   11578:	01040413          	add	s0,s0,16
   1157c:	fcfddee3          	bge	s11,a5,11558 <_vfprintf_r+0xac8>
   11580:	10010613          	add	a2,sp,256
   11584:	000a8593          	mv	a1,s5
   11588:	00098513          	mv	a0,s3
   1158c:	4280a0ef          	jal	1b9b4 <__sprint_r>
   11590:	2a051063          	bnez	a0,11830 <_vfprintf_r+0xda0>
   11594:	11013703          	ld	a4,272(sp)
   11598:	10812783          	lw	a5,264(sp)
   1159c:	18010413          	add	s0,sp,384
   115a0:	fb9ff06f          	j	11558 <_vfprintf_r+0xac8>
   115a4:	00090c93          	mv	s9,s2
   115a8:	00100713          	li	a4,1
   115ac:	38e78c63          	beq	a5,a4,11944 <_vfprintf_r+0xeb4>
   115b0:	00200713          	li	a4,2
   115b4:	06e78463          	beq	a5,a4,1161c <_vfprintf_r+0xb8c>
   115b8:	17c10a93          	add	s5,sp,380
   115bc:	000a8b13          	mv	s6,s5
   115c0:	007bf713          	and	a4,s7,7
   115c4:	03070713          	add	a4,a4,48
   115c8:	feeb0fa3          	sb	a4,-1(s6)
   115cc:	003bdb93          	srl	s7,s7,0x3
   115d0:	000b0613          	mv	a2,s6
   115d4:	fffb0b13          	add	s6,s6,-1
   115d8:	fe0b94e3          	bnez	s7,115c0 <_vfprintf_r+0xb30>
   115dc:	001cf593          	and	a1,s9,1
   115e0:	06058263          	beqz	a1,11644 <_vfprintf_r+0xbb4>
   115e4:	03000593          	li	a1,48
   115e8:	04b70e63          	beq	a4,a1,11644 <_vfprintf_r+0xbb4>
   115ec:	ffe60613          	add	a2,a2,-2
   115f0:	febb0fa3          	sb	a1,-1(s6)
   115f4:	40ca8dbb          	subw	s11,s5,a2
   115f8:	000c8913          	mv	s2,s9
   115fc:	00060b13          	mv	s6,a2
   11600:	d1dff06f          	j	1131c <_vfprintf_r+0x88c>
   11604:	00100713          	li	a4,1
   11608:	00e79463          	bne	a5,a4,11610 <_vfprintf_r+0xb80>
   1160c:	6fc0106f          	j	12d08 <_vfprintf_r+0x2278>
   11610:	00200713          	li	a4,2
   11614:	00090c93          	mv	s9,s2
   11618:	fae790e3          	bne	a5,a4,115b8 <_vfprintf_r+0xb28>
   1161c:	06813703          	ld	a4,104(sp)
   11620:	17c10a93          	add	s5,sp,380
   11624:	000a8b13          	mv	s6,s5
   11628:	00fbf793          	and	a5,s7,15
   1162c:	00f707b3          	add	a5,a4,a5
   11630:	0007c783          	lbu	a5,0(a5)
   11634:	004bdb93          	srl	s7,s7,0x4
   11638:	fffb0b13          	add	s6,s6,-1
   1163c:	00fb0023          	sb	a5,0(s6)
   11640:	fe0b94e3          	bnez	s7,11628 <_vfprintf_r+0xb98>
   11644:	416a8dbb          	subw	s11,s5,s6
   11648:	000c8913          	mv	s2,s9
   1164c:	cd1ff06f          	j	1131c <_vfprintf_r+0x88c>
   11650:	418a0abb          	subw	s5,s4,s8
   11654:	f1505c63          	blez	s5,10d6c <_vfprintf_r+0x2dc>
   11658:	00023f37          	lui	t5,0x23
   1165c:	01000593          	li	a1,16
   11660:	000b8713          	mv	a4,s7
   11664:	10812603          	lw	a2,264(sp)
   11668:	ef8f0b93          	add	s7,t5,-264 # 22ef8 <zeroes.0>
   1166c:	0955de63          	bge	a1,s5,11708 <_vfprintf_r+0xc78>
   11670:	08913823          	sd	s1,144(sp)
   11674:	01000f93          	li	t6,16
   11678:	000a8493          	mv	s1,s5
   1167c:	00700c93          	li	s9,7
   11680:	000a0a93          	mv	s5,s4
   11684:	00090a13          	mv	s4,s2
   11688:	000b8913          	mv	s2,s7
   1168c:	000b0b93          	mv	s7,s6
   11690:	00030b13          	mv	s6,t1
   11694:	00c0006f          	j	116a0 <_vfprintf_r+0xc10>
   11698:	ff04849b          	addw	s1,s1,-16
   1169c:	049fd863          	bge	t6,s1,116ec <_vfprintf_r+0xc5c>
   116a0:	0016061b          	addw	a2,a2,1
   116a4:	01070713          	add	a4,a4,16
   116a8:	01243023          	sd	s2,0(s0)
   116ac:	01f43423          	sd	t6,8(s0)
   116b0:	10e13823          	sd	a4,272(sp)
   116b4:	10c12423          	sw	a2,264(sp)
   116b8:	01040413          	add	s0,s0,16
   116bc:	fcccdee3          	bge	s9,a2,11698 <_vfprintf_r+0xc08>
   116c0:	00013583          	ld	a1,0(sp)
   116c4:	10010613          	add	a2,sp,256
   116c8:	00098513          	mv	a0,s3
   116cc:	2e80a0ef          	jal	1b9b4 <__sprint_r>
   116d0:	16051063          	bnez	a0,11830 <_vfprintf_r+0xda0>
   116d4:	01000f93          	li	t6,16
   116d8:	ff04849b          	addw	s1,s1,-16
   116dc:	11013703          	ld	a4,272(sp)
   116e0:	10812603          	lw	a2,264(sp)
   116e4:	18010413          	add	s0,sp,384
   116e8:	fa9fcce3          	blt	t6,s1,116a0 <_vfprintf_r+0xc10>
   116ec:	000b0313          	mv	t1,s6
   116f0:	000b8b13          	mv	s6,s7
   116f4:	00090b93          	mv	s7,s2
   116f8:	000a0913          	mv	s2,s4
   116fc:	000a8a13          	mv	s4,s5
   11700:	00048a93          	mv	s5,s1
   11704:	09013483          	ld	s1,144(sp)
   11708:	0016059b          	addw	a1,a2,1
   1170c:	00ea8733          	add	a4,s5,a4
   11710:	01743023          	sd	s7,0(s0)
   11714:	01543423          	sd	s5,8(s0)
   11718:	10e13823          	sd	a4,272(sp)
   1171c:	10b12423          	sw	a1,264(sp)
   11720:	00700613          	li	a2,7
   11724:	6eb64863          	blt	a2,a1,11e14 <_vfprintf_r+0x1384>
   11728:	41b30cbb          	subw	s9,t1,s11
   1172c:	01040413          	add	s0,s0,16
   11730:	00070b93          	mv	s7,a4
   11734:	e5905063          	blez	s9,10d74 <_vfprintf_r+0x2e4>
   11738:	00023f37          	lui	t5,0x23
   1173c:	01000593          	li	a1,16
   11740:	000b8713          	mv	a4,s7
   11744:	10812603          	lw	a2,264(sp)
   11748:	ef8f0b93          	add	s7,t5,-264 # 22ef8 <zeroes.0>
   1174c:	0b95d263          	bge	a1,s9,117f0 <_vfprintf_r+0xd60>
   11750:	00813b83          	ld	s7,8(sp)
   11754:	01000893          	li	a7,16
   11758:	00700a93          	li	s5,7
   1175c:	000b8793          	mv	a5,s7
   11760:	000b0b93          	mv	s7,s6
   11764:	000a0b13          	mv	s6,s4
   11768:	00090a13          	mv	s4,s2
   1176c:	00048913          	mv	s2,s1
   11770:	000c8493          	mv	s1,s9
   11774:	00078c93          	mv	s9,a5
   11778:	00c0006f          	j	11784 <_vfprintf_r+0xcf4>
   1177c:	ff04849b          	addw	s1,s1,-16
   11780:	0498da63          	bge	a7,s1,117d4 <_vfprintf_r+0xd44>
   11784:	00813683          	ld	a3,8(sp)
   11788:	0016061b          	addw	a2,a2,1
   1178c:	01070713          	add	a4,a4,16
   11790:	00d43023          	sd	a3,0(s0)
   11794:	01143423          	sd	a7,8(s0)
   11798:	10e13823          	sd	a4,272(sp)
   1179c:	10c12423          	sw	a2,264(sp)
   117a0:	01040413          	add	s0,s0,16
   117a4:	fccadce3          	bge	s5,a2,1177c <_vfprintf_r+0xcec>
   117a8:	00013583          	ld	a1,0(sp)
   117ac:	10010613          	add	a2,sp,256
   117b0:	00098513          	mv	a0,s3
   117b4:	2000a0ef          	jal	1b9b4 <__sprint_r>
   117b8:	06051c63          	bnez	a0,11830 <_vfprintf_r+0xda0>
   117bc:	01000893          	li	a7,16
   117c0:	ff04849b          	addw	s1,s1,-16
   117c4:	11013703          	ld	a4,272(sp)
   117c8:	10812603          	lw	a2,264(sp)
   117cc:	18010413          	add	s0,sp,384
   117d0:	fa98cae3          	blt	a7,s1,11784 <_vfprintf_r+0xcf4>
   117d4:	000c8793          	mv	a5,s9
   117d8:	00048c93          	mv	s9,s1
   117dc:	00090493          	mv	s1,s2
   117e0:	000a0913          	mv	s2,s4
   117e4:	000b0a13          	mv	s4,s6
   117e8:	000b8b13          	mv	s6,s7
   117ec:	00078b93          	mv	s7,a5
   117f0:	0016059b          	addw	a1,a2,1
   117f4:	00ec8733          	add	a4,s9,a4
   117f8:	01743023          	sd	s7,0(s0)
   117fc:	01943423          	sd	s9,8(s0)
   11800:	10e13823          	sd	a4,272(sp)
   11804:	10b12423          	sw	a1,264(sp)
   11808:	00700613          	li	a2,7
   1180c:	48b64663          	blt	a2,a1,11c98 <_vfprintf_r+0x1208>
   11810:	01040413          	add	s0,s0,16
   11814:	00070b93          	mv	s7,a4
   11818:	d5cff06f          	j	10d74 <_vfprintf_r+0x2e4>
   1181c:	00013583          	ld	a1,0(sp)
   11820:	10010613          	add	a2,sp,256
   11824:	00098513          	mv	a0,s3
   11828:	18c0a0ef          	jal	1b9b4 <__sprint_r>
   1182c:	da050263          	beqz	a0,10dd0 <_vfprintf_r+0x340>
   11830:	01813583          	ld	a1,24(sp)
   11834:	dc058863          	beqz	a1,10e04 <_vfprintf_r+0x374>
   11838:	05013503          	ld	a0,80(sp)
   1183c:	3d4020ef          	jal	13c10 <_free_r>
   11840:	dc4ff06f          	j	10e04 <_vfprintf_r+0x374>
   11844:	000238b7          	lui	a7,0x23
   11848:	01000513          	li	a0,16
   1184c:	11013583          	ld	a1,272(sp)
   11850:	10812603          	lw	a2,264(sp)
   11854:	f0888b93          	add	s7,a7,-248 # 22f08 <blanks.1>
   11858:	08e55c63          	bge	a0,a4,118f0 <_vfprintf_r+0xe60>
   1185c:	08913823          	sd	s1,144(sp)
   11860:	00040793          	mv	a5,s0
   11864:	000b8493          	mv	s1,s7
   11868:	01000f13          	li	t5,16
   1186c:	000b0b93          	mv	s7,s6
   11870:	00700393          	li	t2,7
   11874:	00070413          	mv	s0,a4
   11878:	00030b13          	mv	s6,t1
   1187c:	00c0006f          	j	11888 <_vfprintf_r+0xdf8>
   11880:	ff04041b          	addw	s0,s0,-16
   11884:	048f5a63          	bge	t5,s0,118d8 <_vfprintf_r+0xe48>
   11888:	0016061b          	addw	a2,a2,1
   1188c:	01058593          	add	a1,a1,16 # 8000010 <__BSS_END__+0x7fda490>
   11890:	0097b023          	sd	s1,0(a5)
   11894:	01e7b423          	sd	t5,8(a5)
   11898:	10b13823          	sd	a1,272(sp)
   1189c:	10c12423          	sw	a2,264(sp)
   118a0:	01078793          	add	a5,a5,16
   118a4:	fcc3dee3          	bge	t2,a2,11880 <_vfprintf_r+0xdf0>
   118a8:	00013583          	ld	a1,0(sp)
   118ac:	10010613          	add	a2,sp,256
   118b0:	00098513          	mv	a0,s3
   118b4:	1000a0ef          	jal	1b9b4 <__sprint_r>
   118b8:	f6051ce3          	bnez	a0,11830 <_vfprintf_r+0xda0>
   118bc:	01000f13          	li	t5,16
   118c0:	ff04041b          	addw	s0,s0,-16
   118c4:	11013583          	ld	a1,272(sp)
   118c8:	10812603          	lw	a2,264(sp)
   118cc:	18010793          	add	a5,sp,384
   118d0:	00700393          	li	t2,7
   118d4:	fa8f4ae3          	blt	t5,s0,11888 <_vfprintf_r+0xdf8>
   118d8:	000b0313          	mv	t1,s6
   118dc:	000b8b13          	mv	s6,s7
   118e0:	00048b93          	mv	s7,s1
   118e4:	09013483          	ld	s1,144(sp)
   118e8:	00040713          	mv	a4,s0
   118ec:	00078413          	mv	s0,a5
   118f0:	00b705b3          	add	a1,a4,a1
   118f4:	0016061b          	addw	a2,a2,1
   118f8:	00e43423          	sd	a4,8(s0)
   118fc:	01743023          	sd	s7,0(s0)
   11900:	10b13823          	sd	a1,272(sp)
   11904:	10c12423          	sw	a2,264(sp)
   11908:	0006059b          	sext.w	a1,a2
   1190c:	00700713          	li	a4,7
   11910:	01040413          	add	s0,s0,16
   11914:	bcb75c63          	bge	a4,a1,10cec <_vfprintf_r+0x25c>
   11918:	00013583          	ld	a1,0(sp)
   1191c:	10010613          	add	a2,sp,256
   11920:	00098513          	mv	a0,s3
   11924:	08613823          	sd	t1,144(sp)
   11928:	08c0a0ef          	jal	1b9b4 <__sprint_r>
   1192c:	f00512e3          	bnez	a0,11830 <_vfprintf_r+0xda0>
   11930:	09013303          	ld	t1,144(sp)
   11934:	18010413          	add	s0,sp,384
   11938:	bb4ff06f          	j	10cec <_vfprintf_r+0x25c>
   1193c:	00090c93          	mv	s9,s2
   11940:	02e13023          	sd	a4,32(sp)
   11944:	00900793          	li	a5,9
   11948:	6b77ea63          	bltu	a5,s7,11ffc <_vfprintf_r+0x156c>
   1194c:	030b8b9b          	addw	s7,s7,48
   11950:	17710da3          	sb	s7,379(sp)
   11954:	000c8913          	mv	s2,s9
   11958:	00100d93          	li	s11,1
   1195c:	17b10b13          	add	s6,sp,379
   11960:	9bdff06f          	j	1131c <_vfprintf_r+0x88c>
   11964:	00013583          	ld	a1,0(sp)
   11968:	10010613          	add	a2,sp,256
   1196c:	00098513          	mv	a0,s3
   11970:	08613823          	sd	t1,144(sp)
   11974:	0400a0ef          	jal	1b9b4 <__sprint_r>
   11978:	ea051ce3          	bnez	a0,11830 <_vfprintf_r+0xda0>
   1197c:	11013b83          	ld	s7,272(sp)
   11980:	09013303          	ld	t1,144(sp)
   11984:	18010413          	add	s0,sp,384
   11988:	bdcff06f          	j	10d64 <_vfprintf_r+0x2d4>
   1198c:	000238b7          	lui	a7,0x23
   11990:	01000693          	li	a3,16
   11994:	10812783          	lw	a5,264(sp)
   11998:	f0888b93          	add	s7,a7,-248 # 22f08 <blanks.1>
   1199c:	0726d263          	bge	a3,s2,11a00 <_vfprintf_r+0xf70>
   119a0:	00013a83          	ld	s5,0(sp)
   119a4:	01000c93          	li	s9,16
   119a8:	00700d13          	li	s10,7
   119ac:	00c0006f          	j	119b8 <_vfprintf_r+0xf28>
   119b0:	ff09091b          	addw	s2,s2,-16
   119b4:	052cd663          	bge	s9,s2,11a00 <_vfprintf_r+0xf70>
   119b8:	0017879b          	addw	a5,a5,1
   119bc:	01070713          	add	a4,a4,16
   119c0:	01743023          	sd	s7,0(s0)
   119c4:	01943423          	sd	s9,8(s0)
   119c8:	10e13823          	sd	a4,272(sp)
   119cc:	10f12423          	sw	a5,264(sp)
   119d0:	01040413          	add	s0,s0,16
   119d4:	fcfd5ee3          	bge	s10,a5,119b0 <_vfprintf_r+0xf20>
   119d8:	10010613          	add	a2,sp,256
   119dc:	000a8593          	mv	a1,s5
   119e0:	00098513          	mv	a0,s3
   119e4:	7d1090ef          	jal	1b9b4 <__sprint_r>
   119e8:	e40514e3          	bnez	a0,11830 <_vfprintf_r+0xda0>
   119ec:	ff09091b          	addw	s2,s2,-16
   119f0:	11013703          	ld	a4,272(sp)
   119f4:	10812783          	lw	a5,264(sp)
   119f8:	18010413          	add	s0,sp,384
   119fc:	fb2ccee3          	blt	s9,s2,119b8 <_vfprintf_r+0xf28>
   11a00:	0017869b          	addw	a3,a5,1
   11a04:	01270733          	add	a4,a4,s2
   11a08:	01743023          	sd	s7,0(s0)
   11a0c:	01243423          	sd	s2,8(s0)
   11a10:	10e13823          	sd	a4,272(sp)
   11a14:	10d12423          	sw	a3,264(sp)
   11a18:	00700793          	li	a5,7
   11a1c:	b8d7dc63          	bge	a5,a3,10db4 <_vfprintf_r+0x324>
   11a20:	00013583          	ld	a1,0(sp)
   11a24:	10010613          	add	a2,sp,256
   11a28:	00098513          	mv	a0,s3
   11a2c:	789090ef          	jal	1b9b4 <__sprint_r>
   11a30:	e00510e3          	bnez	a0,11830 <_vfprintf_r+0xda0>
   11a34:	11013703          	ld	a4,272(sp)
   11a38:	b7cff06f          	j	10db4 <_vfprintf_r+0x324>
   11a3c:	0d812603          	lw	a2,216(sp)
   11a40:	62c05663          	blez	a2,1206c <_vfprintf_r+0x15dc>
   11a44:	03813783          	ld	a5,56(sp)
   11a48:	03013703          	ld	a4,48(sp)
   11a4c:	00fb0ab3          	add	s5,s6,a5
   11a50:	00070693          	mv	a3,a4
   11a54:	3ae7c863          	blt	a5,a4,11e04 <_vfprintf_r+0x1374>
   11a58:	00068d1b          	sext.w	s10,a3
   11a5c:	03a05663          	blez	s10,11a88 <_vfprintf_r+0xff8>
   11a60:	10812603          	lw	a2,264(sp)
   11a64:	01ab8bb3          	add	s7,s7,s10
   11a68:	01643023          	sd	s6,0(s0)
   11a6c:	0016059b          	addw	a1,a2,1
   11a70:	01a43423          	sd	s10,8(s0)
   11a74:	11713823          	sd	s7,272(sp)
   11a78:	10b12423          	sw	a1,264(sp)
   11a7c:	00700613          	li	a2,7
   11a80:	01040413          	add	s0,s0,16
   11a84:	4cb640e3          	blt	a2,a1,12744 <_vfprintf_r+0x1cb4>
   11a88:	fffd4613          	not	a2,s10
   11a8c:	03013783          	ld	a5,48(sp)
   11a90:	43f65613          	sra	a2,a2,0x3f
   11a94:	00cd76b3          	and	a3,s10,a2
   11a98:	40d78d3b          	subw	s10,a5,a3
   11a9c:	49a04663          	bgtz	s10,11f28 <_vfprintf_r+0x1498>
   11aa0:	03013783          	ld	a5,48(sp)
   11aa4:	40097693          	and	a3,s2,1024
   11aa8:	00fb0b33          	add	s6,s6,a5
   11aac:	040690e3          	bnez	a3,122ec <_vfprintf_r+0x185c>
   11ab0:	0d812683          	lw	a3,216(sp)
   11ab4:	03813783          	ld	a5,56(sp)
   11ab8:	00f6c663          	blt	a3,a5,11ac4 <_vfprintf_r+0x1034>
   11abc:	00197613          	and	a2,s2,1
   11ac0:	4a0606e3          	beqz	a2,1276c <_vfprintf_r+0x1cdc>
   11ac4:	10812603          	lw	a2,264(sp)
   11ac8:	05813783          	ld	a5,88(sp)
   11acc:	06013583          	ld	a1,96(sp)
   11ad0:	01040413          	add	s0,s0,16
   11ad4:	01778733          	add	a4,a5,s7
   11ad8:	feb43823          	sd	a1,-16(s0)
   11adc:	0016059b          	addw	a1,a2,1
   11ae0:	fef43c23          	sd	a5,-8(s0)
   11ae4:	10e13823          	sd	a4,272(sp)
   11ae8:	10b12423          	sw	a1,264(sp)
   11aec:	00700613          	li	a2,7
   11af0:	00b65463          	bge	a2,a1,11af8 <_vfprintf_r+0x1068>
   11af4:	0f40106f          	j	12be8 <_vfprintf_r+0x2158>
   11af8:	03813783          	ld	a5,56(sp)
   11afc:	416a8cb3          	sub	s9,s5,s6
   11b00:	000c859b          	sext.w	a1,s9
   11b04:	40d7863b          	subw	a2,a5,a3
   11b08:	00b65463          	bge	a2,a1,11b10 <_vfprintf_r+0x1080>
   11b0c:	00060c93          	mv	s9,a2
   11b10:	000c8c9b          	sext.w	s9,s9
   11b14:	03905863          	blez	s9,11b44 <_vfprintf_r+0x10b4>
   11b18:	10812683          	lw	a3,264(sp)
   11b1c:	01970733          	add	a4,a4,s9
   11b20:	01643023          	sd	s6,0(s0)
   11b24:	0016869b          	addw	a3,a3,1
   11b28:	01943423          	sd	s9,8(s0)
   11b2c:	10e13823          	sd	a4,272(sp)
   11b30:	10d12423          	sw	a3,264(sp)
   11b34:	00700793          	li	a5,7
   11b38:	01040413          	add	s0,s0,16
   11b3c:	00d7d463          	bge	a5,a3,11b44 <_vfprintf_r+0x10b4>
   11b40:	1480106f          	j	12c88 <_vfprintf_r+0x21f8>
   11b44:	fffcc793          	not	a5,s9
   11b48:	43f7d793          	sra	a5,a5,0x3f
   11b4c:	00fcfcb3          	and	s9,s9,a5
   11b50:	41960cbb          	subw	s9,a2,s9
   11b54:	a5905863          	blez	s9,10da4 <_vfprintf_r+0x314>
   11b58:	00023f37          	lui	t5,0x23
   11b5c:	01000693          	li	a3,16
   11b60:	10812783          	lw	a5,264(sp)
   11b64:	ef8f0b93          	add	s7,t5,-264 # 22ef8 <zeroes.0>
   11b68:	5d96d263          	bge	a3,s9,1212c <_vfprintf_r+0x169c>
   11b6c:	00013a83          	ld	s5,0(sp)
   11b70:	01000d13          	li	s10,16
   11b74:	00700d93          	li	s11,7
   11b78:	00c0006f          	j	11b84 <_vfprintf_r+0x10f4>
   11b7c:	ff0c8c9b          	addw	s9,s9,-16
   11b80:	5b9d5663          	bge	s10,s9,1212c <_vfprintf_r+0x169c>
   11b84:	0017879b          	addw	a5,a5,1
   11b88:	01070713          	add	a4,a4,16
   11b8c:	01743023          	sd	s7,0(s0)
   11b90:	01a43423          	sd	s10,8(s0)
   11b94:	10e13823          	sd	a4,272(sp)
   11b98:	10f12423          	sw	a5,264(sp)
   11b9c:	01040413          	add	s0,s0,16
   11ba0:	fcfddee3          	bge	s11,a5,11b7c <_vfprintf_r+0x10ec>
   11ba4:	10010613          	add	a2,sp,256
   11ba8:	000a8593          	mv	a1,s5
   11bac:	00098513          	mv	a0,s3
   11bb0:	605090ef          	jal	1b9b4 <__sprint_r>
   11bb4:	c6051ee3          	bnez	a0,11830 <_vfprintf_r+0xda0>
   11bb8:	11013703          	ld	a4,272(sp)
   11bbc:	10812783          	lw	a5,264(sp)
   11bc0:	18010413          	add	s0,sp,384
   11bc4:	fb9ff06f          	j	11b7c <_vfprintf_r+0x10ec>
   11bc8:	00197613          	and	a2,s2,1
   11bcc:	c2061e63          	bnez	a2,11008 <_vfprintf_r+0x578>
   11bd0:	10812603          	lw	a2,264(sp)
   11bd4:	001b8d13          	add	s10,s7,1
   11bd8:	01643023          	sd	s6,0(s0)
   11bdc:	0016079b          	addw	a5,a2,1
   11be0:	00d43423          	sd	a3,8(s0)
   11be4:	10f12423          	sw	a5,264(sp)
   11be8:	0007841b          	sext.w	s0,a5
   11bec:	11a13823          	sd	s10,272(sp)
   11bf0:	00700793          	li	a5,7
   11bf4:	ca87da63          	bge	a5,s0,110a8 <_vfprintf_r+0x618>
   11bf8:	00013583          	ld	a1,0(sp)
   11bfc:	10010613          	add	a2,sp,256
   11c00:	00098513          	mv	a0,s3
   11c04:	5b1090ef          	jal	1b9b4 <__sprint_r>
   11c08:	c20514e3          	bnez	a0,11830 <_vfprintf_r+0xda0>
   11c0c:	11013d03          	ld	s10,272(sp)
   11c10:	10812403          	lw	s0,264(sp)
   11c14:	18010c93          	add	s9,sp,384
   11c18:	c90ff06f          	j	110a8 <_vfprintf_r+0x618>
   11c1c:	03813703          	ld	a4,56(sp)
   11c20:	00100793          	li	a5,1
   11c24:	c8e7d263          	bge	a5,a4,110a8 <_vfprintf_r+0x618>
   11c28:	00023f37          	lui	t5,0x23
   11c2c:	01100793          	li	a5,17
   11c30:	ef8f0b93          	add	s7,t5,-264 # 22ef8 <zeroes.0>
   11c34:	5ee7d263          	bge	a5,a4,12218 <_vfprintf_r+0x1788>
   11c38:	00013a83          	ld	s5,0(sp)
   11c3c:	01000713          	li	a4,16
   11c40:	00700b13          	li	s6,7
   11c44:	00c0006f          	j	11c50 <_vfprintf_r+0x11c0>
   11c48:	ff0d8d9b          	addw	s11,s11,-16
   11c4c:	5db75663          	bge	a4,s11,12218 <_vfprintf_r+0x1788>
   11c50:	0014041b          	addw	s0,s0,1
   11c54:	010d0d13          	add	s10,s10,16
   11c58:	017cb023          	sd	s7,0(s9)
   11c5c:	00ecb423          	sd	a4,8(s9)
   11c60:	11a13823          	sd	s10,272(sp)
   11c64:	10812423          	sw	s0,264(sp)
   11c68:	010c8c93          	add	s9,s9,16
   11c6c:	fc8b5ee3          	bge	s6,s0,11c48 <_vfprintf_r+0x11b8>
   11c70:	10010613          	add	a2,sp,256
   11c74:	000a8593          	mv	a1,s5
   11c78:	00098513          	mv	a0,s3
   11c7c:	539090ef          	jal	1b9b4 <__sprint_r>
   11c80:	ba0518e3          	bnez	a0,11830 <_vfprintf_r+0xda0>
   11c84:	11013d03          	ld	s10,272(sp)
   11c88:	10812403          	lw	s0,264(sp)
   11c8c:	18010c93          	add	s9,sp,384
   11c90:	01000713          	li	a4,16
   11c94:	fb5ff06f          	j	11c48 <_vfprintf_r+0x11b8>
   11c98:	00013583          	ld	a1,0(sp)
   11c9c:	10010613          	add	a2,sp,256
   11ca0:	00098513          	mv	a0,s3
   11ca4:	511090ef          	jal	1b9b4 <__sprint_r>
   11ca8:	b80514e3          	bnez	a0,11830 <_vfprintf_r+0xda0>
   11cac:	11013b83          	ld	s7,272(sp)
   11cb0:	18010413          	add	s0,sp,384
   11cb4:	8c0ff06f          	j	10d74 <_vfprintf_r+0x2e4>
   11cb8:	01097793          	and	a5,s2,16
   11cbc:	0e079863          	bnez	a5,11dac <_vfprintf_r+0x131c>
   11cc0:	02013683          	ld	a3,32(sp)
   11cc4:	04097793          	and	a5,s2,64
   11cc8:	0006ab83          	lw	s7,0(a3)
   11ccc:	58078263          	beqz	a5,12250 <_vfprintf_r+0x17c0>
   11cd0:	010b9b9b          	sllw	s7,s7,0x10
   11cd4:	410bdb9b          	sraw	s7,s7,0x10
   11cd8:	000b8793          	mv	a5,s7
   11cdc:	ea07d263          	bgez	a5,11380 <_vfprintf_r+0x8f0>
   11ce0:	02e13023          	sd	a4,32(sp)
   11ce4:	41700bb3          	neg	s7,s7
   11ce8:	00090c93          	mv	s9,s2
   11cec:	02d00713          	li	a4,45
   11cf0:	00100793          	li	a5,1
   11cf4:	dfcff06f          	j	112f0 <_vfprintf_r+0x860>
   11cf8:	01097793          	and	a5,s2,16
   11cfc:	0a079263          	bnez	a5,11da0 <_vfprintf_r+0x1310>
   11d00:	02013683          	ld	a3,32(sp)
   11d04:	04097793          	and	a5,s2,64
   11d08:	0006ab83          	lw	s7,0(a3)
   11d0c:	56078a63          	beqz	a5,12280 <_vfprintf_r+0x17f0>
   11d10:	030b9b93          	sll	s7,s7,0x30
   11d14:	030bdb93          	srl	s7,s7,0x30
   11d18:	eb8ff06f          	j	113d0 <_vfprintf_r+0x940>
   11d1c:	010cf793          	and	a5,s9,16
   11d20:	06079663          	bnez	a5,11d8c <_vfprintf_r+0x12fc>
   11d24:	02013683          	ld	a3,32(sp)
   11d28:	040cf793          	and	a5,s9,64
   11d2c:	0006ab83          	lw	s7,0(a3)
   11d30:	52078c63          	beqz	a5,12268 <_vfprintf_r+0x17d8>
   11d34:	030b9b93          	sll	s7,s7,0x30
   11d38:	030bdb93          	srl	s7,s7,0x30
   11d3c:	02e13023          	sd	a4,32(sp)
   11d40:	00100793          	li	a5,1
   11d44:	da8ff06f          	j	112ec <_vfprintf_r+0x85c>
   11d48:	00000d93          	li	s11,0
   11d4c:	17c10b13          	add	s6,sp,380
   11d50:	dccff06f          	j	1131c <_vfprintf_r+0x88c>
   11d54:	00197793          	and	a5,s2,1
   11d58:	000b8713          	mv	a4,s7
   11d5c:	00079463          	bnez	a5,11d64 <_vfprintf_r+0x12d4>
   11d60:	844ff06f          	j	10da4 <_vfprintf_r+0x314>
   11d64:	f90ff06f          	j	114f4 <_vfprintf_r+0xa64>
   11d68:	000a8313          	mv	t1,s5
   11d6c:	df8ff06f          	j	11364 <_vfprintf_r+0x8d4>
   11d70:	0004ce03          	lbu	t3,0(s1)
   11d74:	02f13023          	sd	a5,32(sp)
   11d78:	ec5fe06f          	j	10c3c <_vfprintf_r+0x1ac>
   11d7c:	03000793          	li	a5,48
   11d80:	16f10da3          	sb	a5,379(sp)
   11d84:	17b10b13          	add	s6,sp,379
   11d88:	d94ff06f          	j	1131c <_vfprintf_r+0x88c>
   11d8c:	02013783          	ld	a5,32(sp)
   11d90:	02e13023          	sd	a4,32(sp)
   11d94:	0007bb83          	ld	s7,0(a5)
   11d98:	00100793          	li	a5,1
   11d9c:	d50ff06f          	j	112ec <_vfprintf_r+0x85c>
   11da0:	02013783          	ld	a5,32(sp)
   11da4:	0007bb83          	ld	s7,0(a5)
   11da8:	e28ff06f          	j	113d0 <_vfprintf_r+0x940>
   11dac:	02013783          	ld	a5,32(sp)
   11db0:	0007b783          	ld	a5,0(a5)
   11db4:	00078b93          	mv	s7,a5
   11db8:	dc4ff06f          	j	1137c <_vfprintf_r+0x8ec>
   11dbc:	01097793          	and	a5,s2,16
   11dc0:	e4079263          	bnez	a5,11404 <_vfprintf_r+0x974>
   11dc4:	04097793          	and	a5,s2,64
   11dc8:	1c0798e3          	bnez	a5,12798 <_vfprintf_r+0x1d08>
   11dcc:	20097913          	and	s2,s2,512
   11dd0:	01013783          	ld	a5,16(sp)
   11dd4:	00091463          	bnez	s2,11ddc <_vfprintf_r+0x134c>
   11dd8:	1380106f          	j	12f10 <_vfprintf_r+0x2480>
   11ddc:	00f70023          	sb	a5,0(a4)
   11de0:	e2cff06f          	j	1140c <_vfprintf_r+0x97c>
   11de4:	02013783          	ld	a5,32(sp)
   11de8:	00f78a93          	add	s5,a5,15
   11dec:	ff0afa93          	and	s5,s5,-16
   11df0:	010a8793          	add	a5,s5,16
   11df4:	000ab703          	ld	a4,0(s5)
   11df8:	008ab583          	ld	a1,8(s5)
   11dfc:	02f13023          	sd	a5,32(sp)
   11e00:	910ff06f          	j	10f10 <_vfprintf_r+0x480>
   11e04:	00078693          	mv	a3,a5
   11e08:	00068d1b          	sext.w	s10,a3
   11e0c:	c5a04ae3          	bgtz	s10,11a60 <_vfprintf_r+0xfd0>
   11e10:	c79ff06f          	j	11a88 <_vfprintf_r+0xff8>
   11e14:	00013583          	ld	a1,0(sp)
   11e18:	10010613          	add	a2,sp,256
   11e1c:	00098513          	mv	a0,s3
   11e20:	08613823          	sd	t1,144(sp)
   11e24:	391090ef          	jal	1b9b4 <__sprint_r>
   11e28:	a00514e3          	bnez	a0,11830 <_vfprintf_r+0xda0>
   11e2c:	11013b83          	ld	s7,272(sp)
   11e30:	09013303          	ld	t1,144(sp)
   11e34:	18010413          	add	s0,sp,384
   11e38:	f35fe06f          	j	10d6c <_vfprintf_r+0x2dc>
   11e3c:	000237b7          	lui	a5,0x23
   11e40:	b6878793          	add	a5,a5,-1176 # 22b68 <__clz_tab+0x120>
   11e44:	000a8313          	mv	t1,s5
   11e48:	06f13423          	sd	a5,104(sp)
   11e4c:	02013683          	ld	a3,32(sp)
   11e50:	02097793          	and	a5,s2,32
   11e54:	00868713          	add	a4,a3,8
   11e58:	14078463          	beqz	a5,11fa0 <_vfprintf_r+0x1510>
   11e5c:	0006bb83          	ld	s7,0(a3)
   11e60:	00197793          	and	a5,s2,1
   11e64:	00078e63          	beqz	a5,11e80 <_vfprintf_r+0x13f0>
   11e68:	000b8c63          	beqz	s7,11e80 <_vfprintf_r+0x13f0>
   11e6c:	00296913          	or	s2,s2,2
   11e70:	03000793          	li	a5,48
   11e74:	0cf10823          	sb	a5,208(sp)
   11e78:	0da108a3          	sb	s10,209(sp)
   11e7c:	0009091b          	sext.w	s2,s2
   11e80:	bff97c93          	and	s9,s2,-1025
   11e84:	000c8c9b          	sext.w	s9,s9
   11e88:	02e13023          	sd	a4,32(sp)
   11e8c:	00200793          	li	a5,2
   11e90:	c5cff06f          	j	112ec <_vfprintf_r+0x85c>
   11e94:	000a8313          	mv	t1,s5
   11e98:	00090c93          	mv	s9,s2
   11e9c:	c34ff06f          	j	112d0 <_vfprintf_r+0x840>
   11ea0:	000237b7          	lui	a5,0x23
   11ea4:	b8078793          	add	a5,a5,-1152 # 22b80 <__clz_tab+0x138>
   11ea8:	000a8313          	mv	t1,s5
   11eac:	06f13423          	sd	a5,104(sp)
   11eb0:	f9dff06f          	j	11e4c <_vfprintf_r+0x13bc>
   11eb4:	00013583          	ld	a1,0(sp)
   11eb8:	10010613          	add	a2,sp,256
   11ebc:	00098513          	mv	a0,s3
   11ec0:	2f5090ef          	jal	1b9b4 <__sprint_r>
   11ec4:	960516e3          	bnez	a0,11830 <_vfprintf_r+0xda0>
   11ec8:	11013703          	ld	a4,272(sp)
   11ecc:	18010413          	add	s0,sp,384
   11ed0:	e58ff06f          	j	11528 <_vfprintf_r+0xa98>
   11ed4:	20096913          	or	s2,s2,512
   11ed8:	0014ce03          	lbu	t3,1(s1)
   11edc:	0009091b          	sext.w	s2,s2
   11ee0:	00148493          	add	s1,s1,1
   11ee4:	d59fe06f          	j	10c3c <_vfprintf_r+0x1ac>
   11ee8:	000a8313          	mv	t1,s5
   11eec:	cd0ff06f          	j	113bc <_vfprintf_r+0x92c>
   11ef0:	02096913          	or	s2,s2,32
   11ef4:	0014ce03          	lbu	t3,1(s1)
   11ef8:	0009091b          	sext.w	s2,s2
   11efc:	00148493          	add	s1,s1,1
   11f00:	d3dfe06f          	j	10c3c <_vfprintf_r+0x1ac>
   11f04:	00600793          	li	a5,6
   11f08:	00030693          	mv	a3,t1
   11f0c:	0467ece3          	bltu	a5,t1,12764 <_vfprintf_r+0x1cd4>
   11f10:	00068d9b          	sext.w	s11,a3
   11f14:	000237b7          	lui	a5,0x23
   11f18:	000d8c13          	mv	s8,s11
   11f1c:	03513023          	sd	s5,32(sp)
   11f20:	b9878b13          	add	s6,a5,-1128 # 22b98 <__clz_tab+0x150>
   11f24:	d99fe06f          	j	10cbc <_vfprintf_r+0x22c>
   11f28:	00023f37          	lui	t5,0x23
   11f2c:	01000593          	li	a1,16
   11f30:	000b8713          	mv	a4,s7
   11f34:	10812603          	lw	a2,264(sp)
   11f38:	ef8f0b93          	add	s7,t5,-264 # 22ef8 <zeroes.0>
   11f3c:	39a5d263          	bge	a1,s10,122c0 <_vfprintf_r+0x1830>
   11f40:	00013c83          	ld	s9,0(sp)
   11f44:	01000893          	li	a7,16
   11f48:	00700d93          	li	s11,7
   11f4c:	00c0006f          	j	11f58 <_vfprintf_r+0x14c8>
   11f50:	ff0d0d1b          	addw	s10,s10,-16
   11f54:	37a8d663          	bge	a7,s10,122c0 <_vfprintf_r+0x1830>
   11f58:	0016061b          	addw	a2,a2,1
   11f5c:	01070713          	add	a4,a4,16
   11f60:	01743023          	sd	s7,0(s0)
   11f64:	01143423          	sd	a7,8(s0)
   11f68:	10e13823          	sd	a4,272(sp)
   11f6c:	10c12423          	sw	a2,264(sp)
   11f70:	01040413          	add	s0,s0,16
   11f74:	fccddee3          	bge	s11,a2,11f50 <_vfprintf_r+0x14c0>
   11f78:	10010613          	add	a2,sp,256
   11f7c:	000c8593          	mv	a1,s9
   11f80:	00098513          	mv	a0,s3
   11f84:	231090ef          	jal	1b9b4 <__sprint_r>
   11f88:	8a0514e3          	bnez	a0,11830 <_vfprintf_r+0xda0>
   11f8c:	11013703          	ld	a4,272(sp)
   11f90:	10812603          	lw	a2,264(sp)
   11f94:	18010413          	add	s0,sp,384
   11f98:	01000893          	li	a7,16
   11f9c:	fb5ff06f          	j	11f50 <_vfprintf_r+0x14c0>
   11fa0:	01097793          	and	a5,s2,16
   11fa4:	14078663          	beqz	a5,120f0 <_vfprintf_r+0x1660>
   11fa8:	02013783          	ld	a5,32(sp)
   11fac:	0007bb83          	ld	s7,0(a5)
   11fb0:	eb1ff06f          	j	11e60 <_vfprintf_r+0x13d0>
   11fb4:	00013583          	ld	a1,0(sp)
   11fb8:	10010613          	add	a2,sp,256
   11fbc:	00098513          	mv	a0,s3
   11fc0:	1f5090ef          	jal	1b9b4 <__sprint_r>
   11fc4:	860516e3          	bnez	a0,11830 <_vfprintf_r+0xda0>
   11fc8:	11013703          	ld	a4,272(sp)
   11fcc:	10812683          	lw	a3,264(sp)
   11fd0:	18010c93          	add	s9,sp,384
   11fd4:	860ff06f          	j	11034 <_vfprintf_r+0x5a4>
   11fd8:	00013583          	ld	a1,0(sp)
   11fdc:	10010613          	add	a2,sp,256
   11fe0:	00098513          	mv	a0,s3
   11fe4:	1d1090ef          	jal	1b9b4 <__sprint_r>
   11fe8:	840514e3          	bnez	a0,11830 <_vfprintf_r+0xda0>
   11fec:	11013d03          	ld	s10,272(sp)
   11ff0:	10812403          	lw	s0,264(sp)
   11ff4:	18010c93          	add	s9,sp,384
   11ff8:	868ff06f          	j	11060 <_vfprintf_r+0x5d0>
   11ffc:	17c10a93          	add	s5,sp,380
   12000:	08013803          	ld	a6,128(sp)
   12004:	400cf793          	and	a5,s9,1024
   12008:	00000693          	li	a3,0
   1200c:	000a8593          	mv	a1,s5
   12010:	00a00913          	li	s2,10
   12014:	00900d93          	li	s11,9
   12018:	0ff00c13          	li	s8,255
   1201c:	0140006f          	j	12030 <_vfprintf_r+0x15a0>
   12020:	032bd733          	divu	a4,s7,s2
   12024:	037dfa63          	bgeu	s11,s7,12058 <_vfprintf_r+0x15c8>
   12028:	00070b93          	mv	s7,a4
   1202c:	000b0593          	mv	a1,s6
   12030:	fff58b13          	add	s6,a1,-1
   12034:	0016869b          	addw	a3,a3,1
   12038:	032bf733          	remu	a4,s7,s2
   1203c:	0307071b          	addw	a4,a4,48
   12040:	fee58fa3          	sb	a4,-1(a1)
   12044:	fc078ee3          	beqz	a5,12020 <_vfprintf_r+0x1590>
   12048:	00084703          	lbu	a4,0(a6)
   1204c:	fce69ae3          	bne	a3,a4,12020 <_vfprintf_r+0x1590>
   12050:	fd8708e3          	beq	a4,s8,12020 <_vfprintf_r+0x1590>
   12054:	497dee63          	bltu	s11,s7,124f0 <_vfprintf_r+0x1a60>
   12058:	02d13c23          	sd	a3,56(sp)
   1205c:	09013023          	sd	a6,128(sp)
   12060:	416a8dbb          	subw	s11,s5,s6
   12064:	000c8913          	mv	s2,s9
   12068:	ab4ff06f          	j	1131c <_vfprintf_r+0x88c>
   1206c:	10812683          	lw	a3,264(sp)
   12070:	000235b7          	lui	a1,0x23
   12074:	ba058593          	add	a1,a1,-1120 # 22ba0 <__clz_tab+0x158>
   12078:	0016869b          	addw	a3,a3,1
   1207c:	00b43023          	sd	a1,0(s0)
   12080:	001b8713          	add	a4,s7,1
   12084:	00100593          	li	a1,1
   12088:	00b43423          	sd	a1,8(s0)
   1208c:	10d12423          	sw	a3,264(sp)
   12090:	0006859b          	sext.w	a1,a3
   12094:	10e13823          	sd	a4,272(sp)
   12098:	00700693          	li	a3,7
   1209c:	01040413          	add	s0,s0,16
   120a0:	48b6ce63          	blt	a3,a1,1253c <_vfprintf_r+0x1aac>
   120a4:	10061a63          	bnez	a2,121b8 <_vfprintf_r+0x1728>
   120a8:	03813783          	ld	a5,56(sp)
   120ac:	00197693          	and	a3,s2,1
   120b0:	00d7e6b3          	or	a3,a5,a3
   120b4:	00069463          	bnez	a3,120bc <_vfprintf_r+0x162c>
   120b8:	cedfe06f          	j	10da4 <_vfprintf_r+0x314>
   120bc:	10812603          	lw	a2,264(sp)
   120c0:	05813783          	ld	a5,88(sp)
   120c4:	06013683          	ld	a3,96(sp)
   120c8:	00e78733          	add	a4,a5,a4
   120cc:	00d43023          	sd	a3,0(s0)
   120d0:	0016069b          	addw	a3,a2,1
   120d4:	00f43423          	sd	a5,8(s0)
   120d8:	10e13823          	sd	a4,272(sp)
   120dc:	10d12423          	sw	a3,264(sp)
   120e0:	00700613          	li	a2,7
   120e4:	70d64663          	blt	a2,a3,127f0 <_vfprintf_r+0x1d60>
   120e8:	01040413          	add	s0,s0,16
   120ec:	1000006f          	j	121ec <_vfprintf_r+0x175c>
   120f0:	02013683          	ld	a3,32(sp)
   120f4:	04097793          	and	a5,s2,64
   120f8:	0006ab83          	lw	s7,0(a3)
   120fc:	18078a63          	beqz	a5,12290 <_vfprintf_r+0x1800>
   12100:	030b9b93          	sll	s7,s7,0x30
   12104:	030bdb93          	srl	s7,s7,0x30
   12108:	d59ff06f          	j	11e60 <_vfprintf_r+0x13d0>
   1210c:	00013583          	ld	a1,0(sp)
   12110:	10010613          	add	a2,sp,256
   12114:	00098513          	mv	a0,s3
   12118:	09d090ef          	jal	1b9b4 <__sprint_r>
   1211c:	f0051a63          	bnez	a0,11830 <_vfprintf_r+0xda0>
   12120:	11013b83          	ld	s7,272(sp)
   12124:	18010413          	add	s0,sp,384
   12128:	bc0ff06f          	j	114e8 <_vfprintf_r+0xa58>
   1212c:	0017869b          	addw	a3,a5,1
   12130:	01743023          	sd	s7,0(s0)
   12134:	01943423          	sd	s9,8(s0)
   12138:	01970733          	add	a4,a4,s9
   1213c:	10e13823          	sd	a4,272(sp)
   12140:	10d12423          	sw	a3,264(sp)
   12144:	00700793          	li	a5,7
   12148:	00d7c463          	blt	a5,a3,12150 <_vfprintf_r+0x16c0>
   1214c:	c55fe06f          	j	10da0 <_vfprintf_r+0x310>
   12150:	f89fe06f          	j	110d8 <_vfprintf_r+0x648>
   12154:	02e13023          	sd	a4,32(sp)
   12158:	fecff06f          	j	11944 <_vfprintf_r+0xeb4>
   1215c:	0f013503          	ld	a0,240(sp)
   12160:	0f813583          	ld	a1,248(sp)
   12164:	00000613          	li	a2,0
   12168:	00000693          	li	a3,0
   1216c:	4810e0ef          	jal	20dec <__letf2>
   12170:	260544e3          	bltz	a0,12bd8 <_vfprintf_r+0x2148>
   12174:	0cf14703          	lbu	a4,207(sp)
   12178:	04700793          	li	a5,71
   1217c:	3fa7d263          	bge	a5,s10,12560 <_vfprintf_r+0x1ad0>
   12180:	000237b7          	lui	a5,0x23
   12184:	b5078b13          	add	s6,a5,-1200 # 22b50 <__clz_tab+0x108>
   12188:	f7f97913          	and	s2,s2,-129
   1218c:	00013c23          	sd	zero,24(sp)
   12190:	04013423          	sd	zero,72(sp)
   12194:	04013023          	sd	zero,64(sp)
   12198:	02013823          	sd	zero,48(sp)
   1219c:	0009091b          	sext.w	s2,s2
   121a0:	00300c13          	li	s8,3
   121a4:	00300d93          	li	s11,3
   121a8:	00000313          	li	t1,0
   121ac:	00070463          	beqz	a4,121b4 <_vfprintf_r+0x1724>
   121b0:	ff9fe06f          	j	111a8 <_vfprintf_r+0x718>
   121b4:	b1dfe06f          	j	10cd0 <_vfprintf_r+0x240>
   121b8:	10812583          	lw	a1,264(sp)
   121bc:	05813783          	ld	a5,88(sp)
   121c0:	06013683          	ld	a3,96(sp)
   121c4:	01040413          	add	s0,s0,16
   121c8:	00e78733          	add	a4,a5,a4
   121cc:	fed43823          	sd	a3,-16(s0)
   121d0:	0015869b          	addw	a3,a1,1
   121d4:	fef43c23          	sd	a5,-8(s0)
   121d8:	10e13823          	sd	a4,272(sp)
   121dc:	10d12423          	sw	a3,264(sp)
   121e0:	00700593          	li	a1,7
   121e4:	60d5c663          	blt	a1,a3,127f0 <_vfprintf_r+0x1d60>
   121e8:	360648e3          	bltz	a2,12d58 <_vfprintf_r+0x22c8>
   121ec:	03813783          	ld	a5,56(sp)
   121f0:	0016861b          	addw	a2,a3,1
   121f4:	01643023          	sd	s6,0(s0)
   121f8:	00e78733          	add	a4,a5,a4
   121fc:	00f43423          	sd	a5,8(s0)
   12200:	10e13823          	sd	a4,272(sp)
   12204:	10c12423          	sw	a2,264(sp)
   12208:	00700793          	li	a5,7
   1220c:	00c7c463          	blt	a5,a2,12214 <_vfprintf_r+0x1784>
   12210:	b91fe06f          	j	10da0 <_vfprintf_r+0x310>
   12214:	ec5fe06f          	j	110d8 <_vfprintf_r+0x648>
   12218:	0014041b          	addw	s0,s0,1
   1221c:	01bd0d33          	add	s10,s10,s11
   12220:	017cb023          	sd	s7,0(s9)
   12224:	01bcb423          	sd	s11,8(s9)
   12228:	11a13823          	sd	s10,272(sp)
   1222c:	10812423          	sw	s0,264(sp)
   12230:	00700793          	li	a5,7
   12234:	0087c463          	blt	a5,s0,1223c <_vfprintf_r+0x17ac>
   12238:	e6dfe06f          	j	110a4 <_vfprintf_r+0x614>
   1223c:	9bdff06f          	j	11bf8 <_vfprintf_r+0x1168>
   12240:	000b0513          	mv	a0,s6
   12244:	761060ef          	jal	191a4 <strlen>
   12248:	00050d9b          	sext.w	s11,a0
   1224c:	f31fe06f          	j	1117c <_vfprintf_r+0x6ec>
   12250:	20097793          	and	a5,s2,512
   12254:	56078263          	beqz	a5,127b8 <_vfprintf_r+0x1d28>
   12258:	018b9b9b          	sllw	s7,s7,0x18
   1225c:	418bdb9b          	sraw	s7,s7,0x18
   12260:	000b8793          	mv	a5,s7
   12264:	918ff06f          	j	1137c <_vfprintf_r+0x8ec>
   12268:	200cf793          	and	a5,s9,512
   1226c:	52078c63          	beqz	a5,127a4 <_vfprintf_r+0x1d14>
   12270:	0ffbfb93          	zext.b	s7,s7
   12274:	02e13023          	sd	a4,32(sp)
   12278:	00100793          	li	a5,1
   1227c:	870ff06f          	j	112ec <_vfprintf_r+0x85c>
   12280:	20097793          	and	a5,s2,512
   12284:	52078e63          	beqz	a5,127c0 <_vfprintf_r+0x1d30>
   12288:	0ffbfb93          	zext.b	s7,s7
   1228c:	944ff06f          	j	113d0 <_vfprintf_r+0x940>
   12290:	20097793          	and	a5,s2,512
   12294:	4e078c63          	beqz	a5,1278c <_vfprintf_r+0x1cfc>
   12298:	0ffbfb93          	zext.b	s7,s7
   1229c:	bc5ff06f          	j	11e60 <_vfprintf_r+0x13d0>
   122a0:	0f813783          	ld	a5,248(sp)
   122a4:	5207ce63          	bltz	a5,127e0 <_vfprintf_r+0x1d50>
   122a8:	0cf14703          	lbu	a4,207(sp)
   122ac:	04700793          	li	a5,71
   122b0:	21a7d4e3          	bge	a5,s10,12cb8 <_vfprintf_r+0x2228>
   122b4:	000237b7          	lui	a5,0x23
   122b8:	b6078b13          	add	s6,a5,-1184 # 22b60 <__clz_tab+0x118>
   122bc:	ecdff06f          	j	12188 <_vfprintf_r+0x16f8>
   122c0:	0016059b          	addw	a1,a2,1
   122c4:	00ed0733          	add	a4,s10,a4
   122c8:	01743023          	sd	s7,0(s0)
   122cc:	01a43423          	sd	s10,8(s0)
   122d0:	10e13823          	sd	a4,272(sp)
   122d4:	10b12423          	sw	a1,264(sp)
   122d8:	00700693          	li	a3,7
   122dc:	74b6ca63          	blt	a3,a1,12a30 <_vfprintf_r+0x1fa0>
   122e0:	01040413          	add	s0,s0,16
   122e4:	00070b93          	mv	s7,a4
   122e8:	fb8ff06f          	j	11aa0 <_vfprintf_r+0x1010>
   122ec:	08913823          	sd	s1,144(sp)
   122f0:	04013483          	ld	s1,64(sp)
   122f4:	00023e37          	lui	t3,0x23
   122f8:	0b413023          	sd	s4,160(sp)
   122fc:	05813023          	sd	s8,64(sp)
   12300:	09213c23          	sd	s2,152(sp)
   12304:	000b8713          	mv	a4,s7
   12308:	08013a03          	ld	s4,128(sp)
   1230c:	04813c03          	ld	s8,72(sp)
   12310:	00013c83          	ld	s9,0(sp)
   12314:	08813b83          	ld	s7,136(sp)
   12318:	00700313          	li	t1,7
   1231c:	01000d13          	li	s10,16
   12320:	ef8e0d93          	add	s11,t3,-264 # 22ef8 <zeroes.0>
   12324:	08048e63          	beqz	s1,123c0 <_vfprintf_r+0x1930>
   12328:	160c0663          	beqz	s8,12494 <_vfprintf_r+0x1a04>
   1232c:	fffc0c1b          	addw	s8,s8,-1
   12330:	10812783          	lw	a5,264(sp)
   12334:	07813683          	ld	a3,120(sp)
   12338:	01770733          	add	a4,a4,s7
   1233c:	01743423          	sd	s7,8(s0)
   12340:	00d43023          	sd	a3,0(s0)
   12344:	0017869b          	addw	a3,a5,1
   12348:	10e13823          	sd	a4,272(sp)
   1234c:	10d12423          	sw	a3,264(sp)
   12350:	01040413          	add	s0,s0,16
   12354:	14d34663          	blt	t1,a3,124a0 <_vfprintf_r+0x1a10>
   12358:	000a4603          	lbu	a2,0(s4)
   1235c:	416a87b3          	sub	a5,s5,s6
   12360:	0007859b          	sext.w	a1,a5
   12364:	0006069b          	sext.w	a3,a2
   12368:	00b65463          	bge	a2,a1,12370 <_vfprintf_r+0x18e0>
   1236c:	00068793          	mv	a5,a3
   12370:	0007891b          	sext.w	s2,a5
   12374:	03205863          	blez	s2,123a4 <_vfprintf_r+0x1914>
   12378:	10812683          	lw	a3,264(sp)
   1237c:	01270733          	add	a4,a4,s2
   12380:	01643023          	sd	s6,0(s0)
   12384:	0016861b          	addw	a2,a3,1
   12388:	01243423          	sd	s2,8(s0)
   1238c:	10e13823          	sd	a4,272(sp)
   12390:	10c12423          	sw	a2,264(sp)
   12394:	12c34863          	blt	t1,a2,124c4 <_vfprintf_r+0x1a34>
   12398:	000a4603          	lbu	a2,0(s4)
   1239c:	01040413          	add	s0,s0,16
   123a0:	0006069b          	sext.w	a3,a2
   123a4:	fff94593          	not	a1,s2
   123a8:	43f5d593          	sra	a1,a1,0x3f
   123ac:	00b977b3          	and	a5,s2,a1
   123b0:	40f6893b          	subw	s2,a3,a5
   123b4:	03204a63          	bgtz	s2,123e8 <_vfprintf_r+0x1958>
   123b8:	00cb0b33          	add	s6,s6,a2
   123bc:	f60496e3          	bnez	s1,12328 <_vfprintf_r+0x1898>
   123c0:	f60c16e3          	bnez	s8,1232c <_vfprintf_r+0x189c>
   123c4:	09413023          	sd	s4,128(sp)
   123c8:	09013483          	ld	s1,144(sp)
   123cc:	09813903          	ld	s2,152(sp)
   123d0:	0a013a03          	ld	s4,160(sp)
   123d4:	04013c03          	ld	s8,64(sp)
   123d8:	00070b93          	mv	s7,a4
   123dc:	ed6afa63          	bgeu	s5,s6,11ab0 <_vfprintf_r+0x1020>
   123e0:	000a8b13          	mv	s6,s5
   123e4:	eccff06f          	j	11ab0 <_vfprintf_r+0x1020>
   123e8:	000235b7          	lui	a1,0x23
   123ec:	10812783          	lw	a5,264(sp)
   123f0:	ef858593          	add	a1,a1,-264 # 22ef8 <zeroes.0>
   123f4:	072d5a63          	bge	s10,s2,12468 <_vfprintf_r+0x19d8>
   123f8:	02913823          	sd	s1,48(sp)
   123fc:	00090493          	mv	s1,s2
   12400:	000d8913          	mv	s2,s11
   12404:	00c0006f          	j	12410 <_vfprintf_r+0x1980>
   12408:	ff04849b          	addw	s1,s1,-16
   1240c:	049d5863          	bge	s10,s1,1245c <_vfprintf_r+0x19cc>
   12410:	0017879b          	addw	a5,a5,1
   12414:	01070713          	add	a4,a4,16
   12418:	01b43023          	sd	s11,0(s0)
   1241c:	01a43423          	sd	s10,8(s0)
   12420:	10e13823          	sd	a4,272(sp)
   12424:	10f12423          	sw	a5,264(sp)
   12428:	01040413          	add	s0,s0,16
   1242c:	fcf35ee3          	bge	t1,a5,12408 <_vfprintf_r+0x1978>
   12430:	10010613          	add	a2,sp,256
   12434:	000c8593          	mv	a1,s9
   12438:	00098513          	mv	a0,s3
   1243c:	578090ef          	jal	1b9b4 <__sprint_r>
   12440:	be051863          	bnez	a0,11830 <_vfprintf_r+0xda0>
   12444:	ff04849b          	addw	s1,s1,-16
   12448:	11013703          	ld	a4,272(sp)
   1244c:	10812783          	lw	a5,264(sp)
   12450:	18010413          	add	s0,sp,384
   12454:	00700313          	li	t1,7
   12458:	fa9d4ce3          	blt	s10,s1,12410 <_vfprintf_r+0x1980>
   1245c:	00090593          	mv	a1,s2
   12460:	00048913          	mv	s2,s1
   12464:	03013483          	ld	s1,48(sp)
   12468:	0017869b          	addw	a3,a5,1
   1246c:	00e90733          	add	a4,s2,a4
   12470:	00b43023          	sd	a1,0(s0)
   12474:	01243423          	sd	s2,8(s0)
   12478:	10e13823          	sd	a4,272(sp)
   1247c:	10d12423          	sw	a3,264(sp)
   12480:	72d34063          	blt	t1,a3,12ba0 <_vfprintf_r+0x2110>
   12484:	000a4603          	lbu	a2,0(s4)
   12488:	01040413          	add	s0,s0,16
   1248c:	00cb0b33          	add	s6,s6,a2
   12490:	f2dff06f          	j	123bc <_vfprintf_r+0x192c>
   12494:	fffa0a13          	add	s4,s4,-1
   12498:	fff4849b          	addw	s1,s1,-1
   1249c:	e95ff06f          	j	12330 <_vfprintf_r+0x18a0>
   124a0:	10010613          	add	a2,sp,256
   124a4:	000c8593          	mv	a1,s9
   124a8:	00098513          	mv	a0,s3
   124ac:	508090ef          	jal	1b9b4 <__sprint_r>
   124b0:	b8051063          	bnez	a0,11830 <_vfprintf_r+0xda0>
   124b4:	11013703          	ld	a4,272(sp)
   124b8:	18010413          	add	s0,sp,384
   124bc:	00700313          	li	t1,7
   124c0:	e99ff06f          	j	12358 <_vfprintf_r+0x18c8>
   124c4:	10010613          	add	a2,sp,256
   124c8:	000c8593          	mv	a1,s9
   124cc:	00098513          	mv	a0,s3
   124d0:	4e4090ef          	jal	1b9b4 <__sprint_r>
   124d4:	b4051e63          	bnez	a0,11830 <_vfprintf_r+0xda0>
   124d8:	000a4603          	lbu	a2,0(s4)
   124dc:	11013703          	ld	a4,272(sp)
   124e0:	18010413          	add	s0,sp,384
   124e4:	0006069b          	sext.w	a3,a2
   124e8:	00700313          	li	t1,7
   124ec:	eb9ff06f          	j	123a4 <_vfprintf_r+0x1914>
   124f0:	02f13c23          	sd	a5,56(sp)
   124f4:	08813783          	ld	a5,136(sp)
   124f8:	07813583          	ld	a1,120(sp)
   124fc:	02613823          	sd	t1,48(sp)
   12500:	40fb0b33          	sub	s6,s6,a5
   12504:	00078613          	mv	a2,a5
   12508:	000b0513          	mv	a0,s6
   1250c:	01013c23          	sd	a6,24(sp)
   12510:	55d060ef          	jal	1926c <strncpy>
   12514:	01813803          	ld	a6,24(sp)
   12518:	00a00713          	li	a4,10
   1251c:	02ebd733          	divu	a4,s7,a4
   12520:	00184683          	lbu	a3,1(a6)
   12524:	03013303          	ld	t1,48(sp)
   12528:	03813783          	ld	a5,56(sp)
   1252c:	00d036b3          	snez	a3,a3
   12530:	00d80833          	add	a6,a6,a3
   12534:	00000693          	li	a3,0
   12538:	af1ff06f          	j	12028 <_vfprintf_r+0x1598>
   1253c:	00013583          	ld	a1,0(sp)
   12540:	10010613          	add	a2,sp,256
   12544:	00098513          	mv	a0,s3
   12548:	46c090ef          	jal	1b9b4 <__sprint_r>
   1254c:	ae051263          	bnez	a0,11830 <_vfprintf_r+0xda0>
   12550:	0d812603          	lw	a2,216(sp)
   12554:	11013703          	ld	a4,272(sp)
   12558:	18010413          	add	s0,sp,384
   1255c:	b49ff06f          	j	120a4 <_vfprintf_r+0x1614>
   12560:	000237b7          	lui	a5,0x23
   12564:	b4878b13          	add	s6,a5,-1208 # 22b48 <__clz_tab+0x100>
   12568:	c21ff06f          	j	12188 <_vfprintf_r+0x16f8>
   1256c:	00030913          	mv	s2,t1
   12570:	00200693          	li	a3,2
   12574:	00090713          	mv	a4,s2
   12578:	0e810893          	add	a7,sp,232
   1257c:	0dc10813          	add	a6,sp,220
   12580:	0d810793          	add	a5,sp,216
   12584:	000c0593          	mv	a1,s8
   12588:	000c8613          	mv	a2,s9
   1258c:	00098513          	mv	a0,s3
   12590:	02613823          	sd	t1,48(sp)
   12594:	440030ef          	jal	159d4 <_ldtoa_r>
   12598:	06700713          	li	a4,103
   1259c:	03013303          	ld	t1,48(sp)
   125a0:	00050b13          	mv	s6,a0
   125a4:	5ced0463          	beq	s10,a4,12b6c <_vfprintf_r+0x20dc>
   125a8:	04700713          	li	a4,71
   125ac:	5ced0063          	beq	s10,a4,12b6c <_vfprintf_r+0x20dc>
   125b0:	fdfd7d93          	and	s11,s10,-33
   125b4:	04600713          	li	a4,70
   125b8:	01250ab3          	add	s5,a0,s2
   125bc:	64ed8a63          	beq	s11,a4,12c10 <_vfprintf_r+0x2180>
   125c0:	000c0513          	mv	a0,s8
   125c4:	00000613          	li	a2,0
   125c8:	00000693          	li	a3,0
   125cc:	000c8593          	mv	a1,s9
   125d0:	02613823          	sd	t1,48(sp)
   125d4:	6380e0ef          	jal	20c0c <__eqtf2>
   125d8:	03013303          	ld	t1,48(sp)
   125dc:	000a8c13          	mv	s8,s5
   125e0:	02050263          	beqz	a0,12604 <_vfprintf_r+0x1b74>
   125e4:	0e813c03          	ld	s8,232(sp)
   125e8:	015c7e63          	bgeu	s8,s5,12604 <_vfprintf_r+0x1b74>
   125ec:	03000693          	li	a3,48
   125f0:	001c0793          	add	a5,s8,1
   125f4:	0ef13423          	sd	a5,232(sp)
   125f8:	00dc0023          	sb	a3,0(s8)
   125fc:	0e813c03          	ld	s8,232(sp)
   12600:	ff5c68e3          	bltu	s8,s5,125f0 <_vfprintf_r+0x1b60>
   12604:	416c07bb          	subw	a5,s8,s6
   12608:	02f13c23          	sd	a5,56(sp)
   1260c:	0d812603          	lw	a2,216(sp)
   12610:	04700713          	li	a4,71
   12614:	02c13823          	sd	a2,48(sp)
   12618:	4ced8263          	beq	s11,a4,12adc <_vfprintf_r+0x204c>
   1261c:	04600713          	li	a4,70
   12620:	6aed8263          	beq	s11,a4,12cc4 <_vfprintf_r+0x2234>
   12624:	fff6071b          	addw	a4,a2,-1
   12628:	0ce12c23          	sw	a4,216(sp)
   1262c:	06100693          	li	a3,97
   12630:	1add08e3          	beq	s10,a3,12fe0 <_vfprintf_r+0x2550>
   12634:	04100593          	li	a1,65
   12638:	05000693          	li	a3,80
   1263c:	4abd1e63          	bne	s10,a1,12af8 <_vfprintf_r+0x2068>
   12640:	00100593          	li	a1,1
   12644:	0ed10023          	sb	a3,224(sp)
   12648:	02b00693          	li	a3,43
   1264c:	00075863          	bgez	a4,1265c <_vfprintf_r+0x1bcc>
   12650:	00100713          	li	a4,1
   12654:	40c7073b          	subw	a4,a4,a2
   12658:	02d00693          	li	a3,45
   1265c:	0ed100a3          	sb	a3,225(sp)
   12660:	00900693          	li	a3,9
   12664:	02e6dae3          	bge	a3,a4,12e98 <_vfprintf_r+0x2408>
   12668:	0ef10813          	add	a6,sp,239
   1266c:	00080893          	mv	a7,a6
   12670:	00a00313          	li	t1,10
   12674:	06300f13          	li	t5,99
   12678:	026767bb          	remw	a5,a4,t1
   1267c:	00088613          	mv	a2,a7
   12680:	00070693          	mv	a3,a4
   12684:	fff88893          	add	a7,a7,-1
   12688:	0307879b          	addw	a5,a5,48
   1268c:	fef60fa3          	sb	a5,-1(a2)
   12690:	0267473b          	divw	a4,a4,t1
   12694:	fedf42e3          	blt	t5,a3,12678 <_vfprintf_r+0x1be8>
   12698:	0307051b          	addw	a0,a4,48
   1269c:	fea88fa3          	sb	a0,-1(a7)
   126a0:	ffe60713          	add	a4,a2,-2
   126a4:	150772e3          	bgeu	a4,a6,12fe8 <_vfprintf_r+0x2558>
   126a8:	0e210693          	add	a3,sp,226
   126ac:	00074783          	lbu	a5,0(a4)
   126b0:	00170713          	add	a4,a4,1
   126b4:	00168693          	add	a3,a3,1
   126b8:	fef68fa3          	sb	a5,-1(a3)
   126bc:	ff0718e3          	bne	a4,a6,126ac <_vfprintf_r+0x1c1c>
   126c0:	0f110713          	add	a4,sp,241
   126c4:	0e210793          	add	a5,sp,226
   126c8:	40c70733          	sub	a4,a4,a2
   126cc:	00e78733          	add	a4,a5,a4
   126d0:	0e010693          	add	a3,sp,224
   126d4:	40d707bb          	subw	a5,a4,a3
   126d8:	06f13823          	sd	a5,112(sp)
   126dc:	07013703          	ld	a4,112(sp)
   126e0:	03813783          	ld	a5,56(sp)
   126e4:	00100613          	li	a2,1
   126e8:	00e78dbb          	addw	s11,a5,a4
   126ec:	000d8713          	mv	a4,s11
   126f0:	7cf65c63          	bge	a2,a5,12ec8 <_vfprintf_r+0x2438>
   126f4:	05813783          	ld	a5,88(sp)
   126f8:	00f70dbb          	addw	s11,a4,a5
   126fc:	04013783          	ld	a5,64(sp)
   12700:	fffdc813          	not	a6,s11
   12704:	43f85813          	sra	a6,a6,0x3f
   12708:	bff7f913          	and	s2,a5,-1025
   1270c:	0009091b          	sext.w	s2,s2
   12710:	010df833          	and	a6,s11,a6
   12714:	10096913          	or	s2,s2,256
   12718:	00080c1b          	sext.w	s8,a6
   1271c:	04013423          	sd	zero,72(sp)
   12720:	04013023          	sd	zero,64(sp)
   12724:	02013823          	sd	zero,48(sp)
   12728:	09813783          	ld	a5,152(sp)
   1272c:	3c078c63          	beqz	a5,12b04 <_vfprintf_r+0x2074>
   12730:	02d00713          	li	a4,45
   12734:	0ce107a3          	sb	a4,207(sp)
   12738:	00000313          	li	t1,0
   1273c:	001c0c1b          	addw	s8,s8,1
   12740:	d90fe06f          	j	10cd0 <_vfprintf_r+0x240>
   12744:	00013583          	ld	a1,0(sp)
   12748:	10010613          	add	a2,sp,256
   1274c:	00098513          	mv	a0,s3
   12750:	264090ef          	jal	1b9b4 <__sprint_r>
   12754:	8c051e63          	bnez	a0,11830 <_vfprintf_r+0xda0>
   12758:	11013b83          	ld	s7,272(sp)
   1275c:	18010413          	add	s0,sp,384
   12760:	b28ff06f          	j	11a88 <_vfprintf_r+0xff8>
   12764:	00600693          	li	a3,6
   12768:	fa8ff06f          	j	11f10 <_vfprintf_r+0x1480>
   1276c:	416a8cb3          	sub	s9,s5,s6
   12770:	40d7863b          	subw	a2,a5,a3
   12774:	000c879b          	sext.w	a5,s9
   12778:	000b8713          	mv	a4,s7
   1277c:	00f65463          	bge	a2,a5,12784 <_vfprintf_r+0x1cf4>
   12780:	00060c93          	mv	s9,a2
   12784:	000c8c9b          	sext.w	s9,s9
   12788:	bbcff06f          	j	11b44 <_vfprintf_r+0x10b4>
   1278c:	020b9b93          	sll	s7,s7,0x20
   12790:	020bdb93          	srl	s7,s7,0x20
   12794:	eccff06f          	j	11e60 <_vfprintf_r+0x13d0>
   12798:	01013783          	ld	a5,16(sp)
   1279c:	00f71023          	sh	a5,0(a4)
   127a0:	c6dfe06f          	j	1140c <_vfprintf_r+0x97c>
   127a4:	020b9b93          	sll	s7,s7,0x20
   127a8:	020bdb93          	srl	s7,s7,0x20
   127ac:	02e13023          	sd	a4,32(sp)
   127b0:	00100793          	li	a5,1
   127b4:	b39fe06f          	j	112ec <_vfprintf_r+0x85c>
   127b8:	000b8793          	mv	a5,s7
   127bc:	bc1fe06f          	j	1137c <_vfprintf_r+0x8ec>
   127c0:	020b9b93          	sll	s7,s7,0x20
   127c4:	020bdb93          	srl	s7,s7,0x20
   127c8:	c09fe06f          	j	113d0 <_vfprintf_r+0x940>
   127cc:	00013583          	ld	a1,0(sp)
   127d0:	05013503          	ld	a0,80(sp)
   127d4:	10010613          	add	a2,sp,256
   127d8:	1dc090ef          	jal	1b9b4 <__sprint_r>
   127dc:	e28fe06f          	j	10e04 <_vfprintf_r+0x374>
   127e0:	02d00793          	li	a5,45
   127e4:	0cf107a3          	sb	a5,207(sp)
   127e8:	02d00713          	li	a4,45
   127ec:	ac1ff06f          	j	122ac <_vfprintf_r+0x181c>
   127f0:	00013583          	ld	a1,0(sp)
   127f4:	10010613          	add	a2,sp,256
   127f8:	00098513          	mv	a0,s3
   127fc:	1b8090ef          	jal	1b9b4 <__sprint_r>
   12800:	00050463          	beqz	a0,12808 <_vfprintf_r+0x1d78>
   12804:	82cff06f          	j	11830 <_vfprintf_r+0xda0>
   12808:	0d812603          	lw	a2,216(sp)
   1280c:	11013703          	ld	a4,272(sp)
   12810:	10812683          	lw	a3,264(sp)
   12814:	18010413          	add	s0,sp,384
   12818:	9d1ff06f          	j	121e8 <_vfprintf_r+0x1758>
   1281c:	05800713          	li	a4,88
   12820:	00296793          	or	a5,s2,2
   12824:	03000693          	li	a3,48
   12828:	0007879b          	sext.w	a5,a5
   1282c:	0ce108a3          	sb	a4,209(sp)
   12830:	0cd10823          	sb	a3,208(sp)
   12834:	06300713          	li	a4,99
   12838:	04f13023          	sd	a5,64(sp)
   1283c:	00013c23          	sd	zero,24(sp)
   12840:	11810b13          	add	s6,sp,280
   12844:	5c674663          	blt	a4,t1,12e10 <_vfprintf_r+0x2380>
   12848:	10296913          	or	s2,s2,258
   1284c:	0f813c83          	ld	s9,248(sp)
   12850:	0009079b          	sext.w	a5,s2
   12854:	08f13823          	sd	a5,144(sp)
   12858:	08013c23          	sd	zero,152(sp)
   1285c:	0f013c03          	ld	s8,240(sp)
   12860:	320cc463          	bltz	s9,12b88 <_vfprintf_r+0x20f8>
   12864:	06100713          	li	a4,97
   12868:	00ed0463          	beq	s10,a4,12870 <_vfprintf_r+0x1de0>
   1286c:	f34fe06f          	j	10fa0 <_vfprintf_r+0x510>
   12870:	000c8593          	mv	a1,s9
   12874:	000c0513          	mv	a0,s8
   12878:	02613823          	sd	t1,48(sp)
   1287c:	5fd0f0ef          	jal	22678 <__trunctfdf2>
   12880:	0d810593          	add	a1,sp,216
   12884:	400060ef          	jal	18c84 <frexp>
   12888:	4d90f0ef          	jal	22560 <__extenddftf2>
   1288c:	00023737          	lui	a4,0x23
   12890:	f2873683          	ld	a3,-216(a4) # 22f28 <blanks.1+0x20>
   12894:	00000613          	li	a2,0
   12898:	6600e0ef          	jal	20ef8 <__multf3>
   1289c:	00000613          	li	a2,0
   128a0:	00000693          	li	a3,0
   128a4:	00050d93          	mv	s11,a0
   128a8:	00058913          	mv	s2,a1
   128ac:	3600e0ef          	jal	20c0c <__eqtf2>
   128b0:	03013303          	ld	t1,48(sp)
   128b4:	00051663          	bnez	a0,128c0 <_vfprintf_r+0x1e30>
   128b8:	00100713          	li	a4,1
   128bc:	0ce12c23          	sw	a4,216(sp)
   128c0:	00023737          	lui	a4,0x23
   128c4:	b8070793          	add	a5,a4,-1152 # 22b80 <__clz_tab+0x138>
   128c8:	02f13c23          	sd	a5,56(sp)
   128cc:	000236b7          	lui	a3,0x23
   128d0:	f386b783          	ld	a5,-200(a3) # 22f38 <blanks.1+0x30>
   128d4:	02031713          	sll	a4,t1,0x20
   128d8:	02075713          	srl	a4,a4,0x20
   128dc:	00170713          	add	a4,a4,1
   128e0:	02f13823          	sd	a5,48(sp)
   128e4:	0003061b          	sext.w	a2,t1
   128e8:	00eb07b3          	add	a5,s6,a4
   128ec:	0b413023          	sd	s4,160(sp)
   128f0:	0a813823          	sd	s0,176(sp)
   128f4:	00098b93          	mv	s7,s3
   128f8:	03813403          	ld	s0,56(sp)
   128fc:	04913423          	sd	s1,72(sp)
   12900:	0ac13c23          	sd	a2,184(sp)
   12904:	0a613423          	sd	t1,168(sp)
   12908:	000b0a13          	mv	s4,s6
   1290c:	00078993          	mv	s3,a5
   12910:	000b0c93          	mv	s9,s6
   12914:	0140006f          	j	12928 <_vfprintf_r+0x1e98>
   12918:	00000613          	li	a2,0
   1291c:	00000693          	li	a3,0
   12920:	2ec0e0ef          	jal	20c0c <__eqtf2>
   12924:	5a050a63          	beqz	a0,12ed8 <_vfprintf_r+0x2448>
   12928:	03013683          	ld	a3,48(sp)
   1292c:	00000613          	li	a2,0
   12930:	000d8513          	mv	a0,s11
   12934:	00090593          	mv	a1,s2
   12938:	5c00e0ef          	jal	20ef8 <__multf3>
   1293c:	00058493          	mv	s1,a1
   12940:	00050913          	mv	s2,a0
   12944:	2c10f0ef          	jal	22404 <__fixtfsi>
   12948:	00050c1b          	sext.w	s8,a0
   1294c:	000c0513          	mv	a0,s8
   12950:	3890f0ef          	jal	224d8 <__floatsitf>
   12954:	00058693          	mv	a3,a1
   12958:	00050613          	mv	a2,a0
   1295c:	00048593          	mv	a1,s1
   12960:	00090513          	mv	a0,s2
   12964:	6190e0ef          	jal	2177c <__subtf3>
   12968:	01840733          	add	a4,s0,s8
   1296c:	00074683          	lbu	a3,0(a4)
   12970:	000a0493          	mv	s1,s4
   12974:	001a0a13          	add	s4,s4,1
   12978:	feda0fa3          	sb	a3,-1(s4)
   1297c:	00050a93          	mv	s5,a0
   12980:	00050d93          	mv	s11,a0
   12984:	00058913          	mv	s2,a1
   12988:	f94998e3          	bne	s3,s4,12918 <_vfprintf_r+0x1e88>
   1298c:	02913823          	sd	s1,48(sp)
   12990:	000a0a93          	mv	s5,s4
   12994:	0a813303          	ld	t1,168(sp)
   12998:	0b013403          	ld	s0,176(sp)
   1299c:	04813483          	ld	s1,72(sp)
   129a0:	0a013a03          	ld	s4,160(sp)
   129a4:	000b8993          	mv	s3,s7
   129a8:	000c8b13          	mv	s6,s9
   129ac:	00050b93          	mv	s7,a0
   129b0:	00058c93          	mv	s9,a1
   129b4:	fff00d93          	li	s11,-1
   129b8:	000236b7          	lui	a3,0x23
   129bc:	f486b903          	ld	s2,-184(a3) # 22f48 <blanks.1+0x40>
   129c0:	00000613          	li	a2,0
   129c4:	000b8513          	mv	a0,s7
   129c8:	00090693          	mv	a3,s2
   129cc:	000c8593          	mv	a1,s9
   129d0:	04613423          	sd	t1,72(sp)
   129d4:	30c0e0ef          	jal	20ce0 <__getf2>
   129d8:	04813303          	ld	t1,72(sp)
   129dc:	44a04c63          	bgtz	a0,12e34 <_vfprintf_r+0x23a4>
   129e0:	00000613          	li	a2,0
   129e4:	00090693          	mv	a3,s2
   129e8:	000b8513          	mv	a0,s7
   129ec:	000c8593          	mv	a1,s9
   129f0:	21c0e0ef          	jal	20c0c <__eqtf2>
   129f4:	04813303          	ld	t1,72(sp)
   129f8:	00051663          	bnez	a0,12a04 <_vfprintf_r+0x1f74>
   129fc:	001c7c13          	and	s8,s8,1
   12a00:	420c1a63          	bnez	s8,12e34 <_vfprintf_r+0x23a4>
   12a04:	001d8c1b          	addw	s8,s11,1
   12a08:	018a8c33          	add	s8,s5,s8
   12a0c:	03000693          	li	a3,48
   12a10:	460dc863          	bltz	s11,12e80 <_vfprintf_r+0x23f0>
   12a14:	001a8a93          	add	s5,s5,1
   12a18:	feda8fa3          	sb	a3,-1(s5)
   12a1c:	ff5c1ce3          	bne	s8,s5,12a14 <_vfprintf_r+0x1f84>
   12a20:	416c07bb          	subw	a5,s8,s6
   12a24:	02f13c23          	sd	a5,56(sp)
   12a28:	fdfd7d93          	and	s11,s10,-33
   12a2c:	be1ff06f          	j	1260c <_vfprintf_r+0x1b7c>
   12a30:	00013583          	ld	a1,0(sp)
   12a34:	10010613          	add	a2,sp,256
   12a38:	00098513          	mv	a0,s3
   12a3c:	779080ef          	jal	1b9b4 <__sprint_r>
   12a40:	00050463          	beqz	a0,12a48 <_vfprintf_r+0x1fb8>
   12a44:	dedfe06f          	j	11830 <_vfprintf_r+0xda0>
   12a48:	11013b83          	ld	s7,272(sp)
   12a4c:	18010413          	add	s0,sp,384
   12a50:	850ff06f          	j	11aa0 <_vfprintf_r+0x1010>
   12a54:	0013091b          	addw	s2,t1,1
   12a58:	00200693          	li	a3,2
   12a5c:	b19ff06f          	j	12574 <_vfprintf_r+0x1ae4>
   12a60:	00030913          	mv	s2,t1
   12a64:	00300693          	li	a3,3
   12a68:	b0dff06f          	j	12574 <_vfprintf_r+0x1ae4>
   12a6c:	000c8593          	mv	a1,s9
   12a70:	000c0513          	mv	a0,s8
   12a74:	02613823          	sd	t1,48(sp)
   12a78:	4010f0ef          	jal	22678 <__trunctfdf2>
   12a7c:	0d810593          	add	a1,sp,216
   12a80:	204060ef          	jal	18c84 <frexp>
   12a84:	2dd0f0ef          	jal	22560 <__extenddftf2>
   12a88:	00023737          	lui	a4,0x23
   12a8c:	f2873683          	ld	a3,-216(a4) # 22f28 <blanks.1+0x20>
   12a90:	00000613          	li	a2,0
   12a94:	4640e0ef          	jal	20ef8 <__multf3>
   12a98:	00000613          	li	a2,0
   12a9c:	00000693          	li	a3,0
   12aa0:	00050d93          	mv	s11,a0
   12aa4:	00058913          	mv	s2,a1
   12aa8:	1640e0ef          	jal	20c0c <__eqtf2>
   12aac:	03013303          	ld	t1,48(sp)
   12ab0:	00051663          	bnez	a0,12abc <_vfprintf_r+0x202c>
   12ab4:	00100713          	li	a4,1
   12ab8:	0ce12c23          	sw	a4,216(sp)
   12abc:	00023737          	lui	a4,0x23
   12ac0:	b6870793          	add	a5,a4,-1176 # 22b68 <__clz_tab+0x120>
   12ac4:	02f13c23          	sd	a5,56(sp)
   12ac8:	e05ff06f          	j	128cc <_vfprintf_r+0x1e3c>
   12acc:	0e813c03          	ld	s8,232(sp)
   12ad0:	0d812603          	lw	a2,216(sp)
   12ad4:	416c07bb          	subw	a5,s8,s6
   12ad8:	02f13c23          	sd	a5,56(sp)
   12adc:	ffd00713          	li	a4,-3
   12ae0:	02c13823          	sd	a2,48(sp)
   12ae4:	00e64463          	blt	a2,a4,12aec <_vfprintf_r+0x205c>
   12ae8:	02c35863          	bge	t1,a2,12b18 <_vfprintf_r+0x2088>
   12aec:	fff6071b          	addw	a4,a2,-1
   12af0:	ffed0d1b          	addw	s10,s10,-2
   12af4:	0ce12c23          	sw	a4,216(sp)
   12af8:	0ffd7693          	zext.b	a3,s10
   12afc:	00000593          	li	a1,0
   12b00:	b45ff06f          	j	12644 <_vfprintf_r+0x1bb4>
   12b04:	0cf14703          	lbu	a4,207(sp)
   12b08:	00000313          	li	t1,0
   12b0c:	00070463          	beqz	a4,12b14 <_vfprintf_r+0x2084>
   12b10:	e98fe06f          	j	111a8 <_vfprintf_r+0x718>
   12b14:	9bcfe06f          	j	10cd0 <_vfprintf_r+0x240>
   12b18:	03813783          	ld	a5,56(sp)
   12b1c:	20f64063          	blt	a2,a5,12d1c <_vfprintf_r+0x228c>
   12b20:	04013783          	ld	a5,64(sp)
   12b24:	00060d93          	mv	s11,a2
   12b28:	0017f713          	and	a4,a5,1
   12b2c:	00070663          	beqz	a4,12b38 <_vfprintf_r+0x20a8>
   12b30:	05813783          	ld	a5,88(sp)
   12b34:	00c78dbb          	addw	s11,a5,a2
   12b38:	04013783          	ld	a5,64(sp)
   12b3c:	4007f713          	and	a4,a5,1024
   12b40:	00070463          	beqz	a4,12b48 <_vfprintf_r+0x20b8>
   12b44:	3ec04a63          	bgtz	a2,12f38 <_vfprintf_r+0x24a8>
   12b48:	fffdc813          	not	a6,s11
   12b4c:	43f85813          	sra	a6,a6,0x3f
   12b50:	09013903          	ld	s2,144(sp)
   12b54:	010df833          	and	a6,s11,a6
   12b58:	00080c1b          	sext.w	s8,a6
   12b5c:	06700d13          	li	s10,103
   12b60:	04013423          	sd	zero,72(sp)
   12b64:	04013023          	sd	zero,64(sp)
   12b68:	bc1ff06f          	j	12728 <_vfprintf_r+0x1c98>
   12b6c:	04013783          	ld	a5,64(sp)
   12b70:	0017f713          	and	a4,a5,1
   12b74:	f4070ce3          	beqz	a4,12acc <_vfprintf_r+0x203c>
   12b78:	012b0ab3          	add	s5,s6,s2
   12b7c:	04700d93          	li	s11,71
   12b80:	a41ff06f          	j	125c0 <_vfprintf_r+0x1b30>
   12b84:	00013c23          	sd	zero,24(sp)
   12b88:	fff00713          	li	a4,-1
   12b8c:	03f71713          	sll	a4,a4,0x3f
   12b90:	02d00793          	li	a5,45
   12b94:	00ecccb3          	xor	s9,s9,a4
   12b98:	08f13c23          	sd	a5,152(sp)
   12b9c:	cc9ff06f          	j	12864 <_vfprintf_r+0x1dd4>
   12ba0:	10010613          	add	a2,sp,256
   12ba4:	000c8593          	mv	a1,s9
   12ba8:	00098513          	mv	a0,s3
   12bac:	609080ef          	jal	1b9b4 <__sprint_r>
   12bb0:	00050463          	beqz	a0,12bb8 <_vfprintf_r+0x2128>
   12bb4:	c7dfe06f          	j	11830 <_vfprintf_r+0xda0>
   12bb8:	000a4603          	lbu	a2,0(s4)
   12bbc:	11013703          	ld	a4,272(sp)
   12bc0:	18010413          	add	s0,sp,384
   12bc4:	00700313          	li	t1,7
   12bc8:	00cb0b33          	add	s6,s6,a2
   12bcc:	ff0ff06f          	j	123bc <_vfprintf_r+0x192c>
   12bd0:	07800713          	li	a4,120
   12bd4:	c4dff06f          	j	12820 <_vfprintf_r+0x1d90>
   12bd8:	02d00793          	li	a5,45
   12bdc:	0cf107a3          	sb	a5,207(sp)
   12be0:	02d00713          	li	a4,45
   12be4:	d94ff06f          	j	12178 <_vfprintf_r+0x16e8>
   12be8:	00013583          	ld	a1,0(sp)
   12bec:	10010613          	add	a2,sp,256
   12bf0:	00098513          	mv	a0,s3
   12bf4:	5c1080ef          	jal	1b9b4 <__sprint_r>
   12bf8:	00050463          	beqz	a0,12c00 <_vfprintf_r+0x2170>
   12bfc:	c35fe06f          	j	11830 <_vfprintf_r+0xda0>
   12c00:	0d812683          	lw	a3,216(sp)
   12c04:	11013703          	ld	a4,272(sp)
   12c08:	18010413          	add	s0,sp,384
   12c0c:	eedfe06f          	j	11af8 <_vfprintf_r+0x1068>
   12c10:	00054683          	lbu	a3,0(a0)
   12c14:	03000713          	li	a4,48
   12c18:	00e68863          	beq	a3,a4,12c28 <_vfprintf_r+0x2198>
   12c1c:	0d812683          	lw	a3,216(sp)
   12c20:	00da8ab3          	add	s5,s5,a3
   12c24:	99dff06f          	j	125c0 <_vfprintf_r+0x1b30>
   12c28:	00000613          	li	a2,0
   12c2c:	00000693          	li	a3,0
   12c30:	000c0513          	mv	a0,s8
   12c34:	000c8593          	mv	a1,s9
   12c38:	02613823          	sd	t1,48(sp)
   12c3c:	7d10d0ef          	jal	20c0c <__eqtf2>
   12c40:	03013303          	ld	t1,48(sp)
   12c44:	fc050ce3          	beqz	a0,12c1c <_vfprintf_r+0x218c>
   12c48:	00100713          	li	a4,1
   12c4c:	412706bb          	subw	a3,a4,s2
   12c50:	0cd12c23          	sw	a3,216(sp)
   12c54:	00da8ab3          	add	s5,s5,a3
   12c58:	969ff06f          	j	125c0 <_vfprintf_r+0x1b30>
   12c5c:	0cf14703          	lbu	a4,207(sp)
   12c60:	03513023          	sd	s5,32(sp)
   12c64:	04013423          	sd	zero,72(sp)
   12c68:	04013023          	sd	zero,64(sp)
   12c6c:	02013823          	sd	zero,48(sp)
   12c70:	00030c13          	mv	s8,t1
   12c74:	00030d93          	mv	s11,t1
   12c78:	00000313          	li	t1,0
   12c7c:	00070463          	beqz	a4,12c84 <_vfprintf_r+0x21f4>
   12c80:	d28fe06f          	j	111a8 <_vfprintf_r+0x718>
   12c84:	84cfe06f          	j	10cd0 <_vfprintf_r+0x240>
   12c88:	00013583          	ld	a1,0(sp)
   12c8c:	10010613          	add	a2,sp,256
   12c90:	00098513          	mv	a0,s3
   12c94:	521080ef          	jal	1b9b4 <__sprint_r>
   12c98:	00050463          	beqz	a0,12ca0 <_vfprintf_r+0x2210>
   12c9c:	b95fe06f          	j	11830 <_vfprintf_r+0xda0>
   12ca0:	0d812603          	lw	a2,216(sp)
   12ca4:	03813783          	ld	a5,56(sp)
   12ca8:	11013703          	ld	a4,272(sp)
   12cac:	18010413          	add	s0,sp,384
   12cb0:	40c7863b          	subw	a2,a5,a2
   12cb4:	e91fe06f          	j	11b44 <_vfprintf_r+0x10b4>
   12cb8:	000237b7          	lui	a5,0x23
   12cbc:	b5878b13          	add	s6,a5,-1192 # 22b58 <__clz_tab+0x110>
   12cc0:	cc8ff06f          	j	12188 <_vfprintf_r+0x16f8>
   12cc4:	04013783          	ld	a5,64(sp)
   12cc8:	0017f713          	and	a4,a5,1
   12ccc:	03013783          	ld	a5,48(sp)
   12cd0:	00e36733          	or	a4,t1,a4
   12cd4:	32f05063          	blez	a5,12ff4 <_vfprintf_r+0x2564>
   12cd8:	2e071a63          	bnez	a4,12fcc <_vfprintf_r+0x253c>
   12cdc:	03013d83          	ld	s11,48(sp)
   12ce0:	06600d13          	li	s10,102
   12ce4:	04013783          	ld	a5,64(sp)
   12ce8:	4007f713          	and	a4,a5,1024
   12cec:	24071863          	bnez	a4,12f3c <_vfprintf_r+0x24ac>
   12cf0:	fffdc813          	not	a6,s11
   12cf4:	43f85813          	sra	a6,a6,0x3f
   12cf8:	010df833          	and	a6,s11,a6
   12cfc:	09013903          	ld	s2,144(sp)
   12d00:	00080c1b          	sext.w	s8,a6
   12d04:	e5dff06f          	j	12b60 <_vfprintf_r+0x20d0>
   12d08:	00090c93          	mv	s9,s2
   12d0c:	c41fe06f          	j	1194c <_vfprintf_r+0xebc>
   12d10:	fff00793          	li	a5,-1
   12d14:	00f13823          	sd	a5,16(sp)
   12d18:	900fe06f          	j	10e18 <_vfprintf_r+0x388>
   12d1c:	05813783          	ld	a5,88(sp)
   12d20:	03813703          	ld	a4,56(sp)
   12d24:	06700d13          	li	s10,103
   12d28:	00e78dbb          	addw	s11,a5,a4
   12d2c:	03013783          	ld	a5,48(sp)
   12d30:	faf04ae3          	bgtz	a5,12ce4 <_vfprintf_r+0x2254>
   12d34:	40fd873b          	subw	a4,s11,a5
   12d38:	0017071b          	addw	a4,a4,1
   12d3c:	00070d9b          	sext.w	s11,a4
   12d40:	fffdc613          	not	a2,s11
   12d44:	43f65613          	sra	a2,a2,0x3f
   12d48:	00c77733          	and	a4,a4,a2
   12d4c:	09013903          	ld	s2,144(sp)
   12d50:	00070c1b          	sext.w	s8,a4
   12d54:	e0dff06f          	j	12b60 <_vfprintf_r+0x20d0>
   12d58:	00023f37          	lui	t5,0x23
   12d5c:	ff000593          	li	a1,-16
   12d60:	40c00cbb          	negw	s9,a2
   12d64:	ef8f0b93          	add	s7,t5,-264 # 22ef8 <zeroes.0>
   12d68:	01000d13          	li	s10,16
   12d6c:	00700d93          	li	s11,7
   12d70:	00b64863          	blt	a2,a1,12d80 <_vfprintf_r+0x22f0>
   12d74:	0540006f          	j	12dc8 <_vfprintf_r+0x2338>
   12d78:	ff0c8c9b          	addw	s9,s9,-16
   12d7c:	059d5663          	bge	s10,s9,12dc8 <_vfprintf_r+0x2338>
   12d80:	0016869b          	addw	a3,a3,1
   12d84:	01070713          	add	a4,a4,16
   12d88:	01743023          	sd	s7,0(s0)
   12d8c:	01a43423          	sd	s10,8(s0)
   12d90:	10e13823          	sd	a4,272(sp)
   12d94:	10d12423          	sw	a3,264(sp)
   12d98:	01040413          	add	s0,s0,16
   12d9c:	fcdddee3          	bge	s11,a3,12d78 <_vfprintf_r+0x22e8>
   12da0:	00013583          	ld	a1,0(sp)
   12da4:	10010613          	add	a2,sp,256
   12da8:	00098513          	mv	a0,s3
   12dac:	409080ef          	jal	1b9b4 <__sprint_r>
   12db0:	00050463          	beqz	a0,12db8 <_vfprintf_r+0x2328>
   12db4:	a7dfe06f          	j	11830 <_vfprintf_r+0xda0>
   12db8:	11013703          	ld	a4,272(sp)
   12dbc:	10812683          	lw	a3,264(sp)
   12dc0:	18010413          	add	s0,sp,384
   12dc4:	fb5ff06f          	j	12d78 <_vfprintf_r+0x22e8>
   12dc8:	0016869b          	addw	a3,a3,1
   12dcc:	01970733          	add	a4,a4,s9
   12dd0:	01743023          	sd	s7,0(s0)
   12dd4:	01943423          	sd	s9,8(s0)
   12dd8:	10e13823          	sd	a4,272(sp)
   12ddc:	10d12423          	sw	a3,264(sp)
   12de0:	00700613          	li	a2,7
   12de4:	b0d65263          	bge	a2,a3,120e8 <_vfprintf_r+0x1658>
   12de8:	00013583          	ld	a1,0(sp)
   12dec:	10010613          	add	a2,sp,256
   12df0:	00098513          	mv	a0,s3
   12df4:	3c1080ef          	jal	1b9b4 <__sprint_r>
   12df8:	00050463          	beqz	a0,12e00 <_vfprintf_r+0x2370>
   12dfc:	a35fe06f          	j	11830 <_vfprintf_r+0xda0>
   12e00:	11013703          	ld	a4,272(sp)
   12e04:	10812683          	lw	a3,264(sp)
   12e08:	18010413          	add	s0,sp,384
   12e0c:	be0ff06f          	j	121ec <_vfprintf_r+0x175c>
   12e10:	0013059b          	addw	a1,t1,1
   12e14:	00098513          	mv	a0,s3
   12e18:	00613c23          	sd	t1,24(sp)
   12e1c:	264040ef          	jal	17080 <_malloc_r>
   12e20:	01813303          	ld	t1,24(sp)
   12e24:	00050b13          	mv	s6,a0
   12e28:	24050463          	beqz	a0,13070 <_vfprintf_r+0x25e0>
   12e2c:	00a13c23          	sd	a0,24(sp)
   12e30:	a19ff06f          	j	12848 <_vfprintf_r+0x1db8>
   12e34:	03013783          	ld	a5,48(sp)
   12e38:	000a8693          	mv	a3,s5
   12e3c:	0ef13423          	sd	a5,232(sp)
   12e40:	03813783          	ld	a5,56(sp)
   12e44:	fffac603          	lbu	a2,-1(s5)
   12e48:	00f7c583          	lbu	a1,15(a5)
   12e4c:	02c59063          	bne	a1,a2,12e6c <_vfprintf_r+0x23dc>
   12e50:	03000513          	li	a0,48
   12e54:	fea68fa3          	sb	a0,-1(a3)
   12e58:	0e813683          	ld	a3,232(sp)
   12e5c:	fff68793          	add	a5,a3,-1
   12e60:	0ef13423          	sd	a5,232(sp)
   12e64:	fff6c603          	lbu	a2,-1(a3)
   12e68:	fec586e3          	beq	a1,a2,12e54 <_vfprintf_r+0x23c4>
   12e6c:	0016059b          	addw	a1,a2,1
   12e70:	03900513          	li	a0,57
   12e74:	0ff5f593          	zext.b	a1,a1
   12e78:	00a60863          	beq	a2,a0,12e88 <_vfprintf_r+0x23f8>
   12e7c:	feb68fa3          	sb	a1,-1(a3)
   12e80:	000a8c13          	mv	s8,s5
   12e84:	b9dff06f          	j	12a20 <_vfprintf_r+0x1f90>
   12e88:	03813783          	ld	a5,56(sp)
   12e8c:	00a7c583          	lbu	a1,10(a5)
   12e90:	feb68fa3          	sb	a1,-1(a3)
   12e94:	fedff06f          	j	12e80 <_vfprintf_r+0x23f0>
   12e98:	0e210693          	add	a3,sp,226
   12e9c:	00059863          	bnez	a1,12eac <_vfprintf_r+0x241c>
   12ea0:	03000693          	li	a3,48
   12ea4:	0ed10123          	sb	a3,226(sp)
   12ea8:	0e310693          	add	a3,sp,227
   12eac:	20010793          	add	a5,sp,512
   12eb0:	40f68633          	sub	a2,a3,a5
   12eb4:	0307071b          	addw	a4,a4,48
   12eb8:	1216079b          	addw	a5,a2,289
   12ebc:	00e68023          	sb	a4,0(a3)
   12ec0:	06f13823          	sd	a5,112(sp)
   12ec4:	819ff06f          	j	126dc <_vfprintf_r+0x1c4c>
   12ec8:	04013783          	ld	a5,64(sp)
   12ecc:	0017f613          	and	a2,a5,1
   12ed0:	820606e3          	beqz	a2,126fc <_vfprintf_r+0x1c6c>
   12ed4:	821ff06f          	j	126f4 <_vfprintf_r+0x1c64>
   12ed8:	0b813603          	ld	a2,184(sp)
   12edc:	000c8b13          	mv	s6,s9
   12ee0:	000b8993          	mv	s3,s7
   12ee4:	00cb063b          	addw	a2,s6,a2
   12ee8:	000a8b93          	mv	s7,s5
   12eec:	000a0a93          	mv	s5,s4
   12ef0:	02913823          	sd	s1,48(sp)
   12ef4:	0a813303          	ld	t1,168(sp)
   12ef8:	0b013403          	ld	s0,176(sp)
   12efc:	04813483          	ld	s1,72(sp)
   12f00:	0a013a03          	ld	s4,160(sp)
   12f04:	00090c93          	mv	s9,s2
   12f08:	41560dbb          	subw	s11,a2,s5
   12f0c:	aadff06f          	j	129b8 <_vfprintf_r+0x1f28>
   12f10:	00f72023          	sw	a5,0(a4)
   12f14:	cf8fe06f          	j	1140c <_vfprintf_r+0x97c>
   12f18:	02e13023          	sd	a4,32(sp)
   12f1c:	a31fe06f          	j	1194c <_vfprintf_r+0xebc>
   12f20:	00030463          	beqz	t1,12f28 <_vfprintf_r+0x2498>
   12f24:	854fe06f          	j	10f78 <_vfprintf_r+0x4e8>
   12f28:	00100313          	li	t1,1
   12f2c:	84cfe06f          	j	10f78 <_vfprintf_r+0x4e8>
   12f30:	00600313          	li	t1,6
   12f34:	844fe06f          	j	10f78 <_vfprintf_r+0x4e8>
   12f38:	06700d13          	li	s10,103
   12f3c:	08013683          	ld	a3,128(sp)
   12f40:	0ff00613          	li	a2,255
   12f44:	0006c703          	lbu	a4,0(a3)
   12f48:	10c70e63          	beq	a4,a2,13064 <_vfprintf_r+0x25d4>
   12f4c:	03013783          	ld	a5,48(sp)
   12f50:	00000813          	li	a6,0
   12f54:	00000513          	li	a0,0
   12f58:	0ff00593          	li	a1,255
   12f5c:	0007061b          	sext.w	a2,a4
   12f60:	00f75e63          	bge	a4,a5,12f7c <_vfprintf_r+0x24ec>
   12f64:	0016c703          	lbu	a4,1(a3)
   12f68:	40c787bb          	subw	a5,a5,a2
   12f6c:	04070a63          	beqz	a4,12fc0 <_vfprintf_r+0x2530>
   12f70:	0015051b          	addw	a0,a0,1
   12f74:	00168693          	add	a3,a3,1
   12f78:	feb712e3          	bne	a4,a1,12f5c <_vfprintf_r+0x24cc>
   12f7c:	02f13823          	sd	a5,48(sp)
   12f80:	08d13023          	sd	a3,128(sp)
   12f84:	04a13023          	sd	a0,64(sp)
   12f88:	05013423          	sd	a6,72(sp)
   12f8c:	04813783          	ld	a5,72(sp)
   12f90:	04013703          	ld	a4,64(sp)
   12f94:	09013903          	ld	s2,144(sp)
   12f98:	00e7873b          	addw	a4,a5,a4
   12f9c:	08813783          	ld	a5,136(sp)
   12fa0:	02f7073b          	mulw	a4,a4,a5
   12fa4:	01b7073b          	addw	a4,a4,s11
   12fa8:	00070d9b          	sext.w	s11,a4
   12fac:	fffdc613          	not	a2,s11
   12fb0:	43f65613          	sra	a2,a2,0x3f
   12fb4:	00c77733          	and	a4,a4,a2
   12fb8:	00070c1b          	sext.w	s8,a4
   12fbc:	f6cff06f          	j	12728 <_vfprintf_r+0x1c98>
   12fc0:	0006c703          	lbu	a4,0(a3)
   12fc4:	0018081b          	addw	a6,a6,1
   12fc8:	fb1ff06f          	j	12f78 <_vfprintf_r+0x24e8>
   12fcc:	05813703          	ld	a4,88(sp)
   12fd0:	06600d13          	li	s10,102
   12fd4:	00f706bb          	addw	a3,a4,a5
   12fd8:	00668dbb          	addw	s11,a3,t1
   12fdc:	d09ff06f          	j	12ce4 <_vfprintf_r+0x2254>
   12fe0:	07000693          	li	a3,112
   12fe4:	e5cff06f          	j	12640 <_vfprintf_r+0x1bb0>
   12fe8:	00200793          	li	a5,2
   12fec:	06f13823          	sd	a5,112(sp)
   12ff0:	eecff06f          	j	126dc <_vfprintf_r+0x1c4c>
   12ff4:	00071c63          	bnez	a4,1300c <_vfprintf_r+0x257c>
   12ff8:	09013903          	ld	s2,144(sp)
   12ffc:	00100c13          	li	s8,1
   13000:	06600d13          	li	s10,102
   13004:	00100d93          	li	s11,1
   13008:	b59ff06f          	j	12b60 <_vfprintf_r+0x20d0>
   1300c:	05813783          	ld	a5,88(sp)
   13010:	09013903          	ld	s2,144(sp)
   13014:	06600d13          	li	s10,102
   13018:	0017871b          	addw	a4,a5,1
   1301c:	0067073b          	addw	a4,a4,t1
   13020:	00070d9b          	sext.w	s11,a4
   13024:	fffdc613          	not	a2,s11
   13028:	43f65613          	sra	a2,a2,0x3f
   1302c:	00c77733          	and	a4,a4,a2
   13030:	00070c1b          	sext.w	s8,a4
   13034:	b2dff06f          	j	12b60 <_vfprintf_r+0x20d0>
   13038:	02013683          	ld	a3,32(sp)
   1303c:	0006a703          	lw	a4,0(a3)
   13040:	00868693          	add	a3,a3,8
   13044:	00070313          	mv	t1,a4
   13048:	00075463          	bgez	a4,13050 <_vfprintf_r+0x25c0>
   1304c:	fff00313          	li	t1,-1
   13050:	0014ce03          	lbu	t3,1(s1)
   13054:	00030a9b          	sext.w	s5,t1
   13058:	02d13023          	sd	a3,32(sp)
   1305c:	00078493          	mv	s1,a5
   13060:	bddfd06f          	j	10c3c <_vfprintf_r+0x1ac>
   13064:	04013423          	sd	zero,72(sp)
   13068:	04013023          	sd	zero,64(sp)
   1306c:	f21ff06f          	j	12f8c <_vfprintf_r+0x24fc>
   13070:	00013703          	ld	a4,0(sp)
   13074:	01075783          	lhu	a5,16(a4)
   13078:	0407e793          	or	a5,a5,64
   1307c:	00f71823          	sh	a5,16(a4)
   13080:	d85fd06f          	j	10e04 <_vfprintf_r+0x374>

0000000000013084 <vfprintf>:
   13084:	00050793          	mv	a5,a0
   13088:	7581b503          	ld	a0,1880(gp) # 25ad8 <_impure_ptr>
   1308c:	00060693          	mv	a3,a2
   13090:	00058613          	mv	a2,a1
   13094:	00078593          	mv	a1,a5
   13098:	9f9fd06f          	j	10a90 <_vfprintf_r>

000000000001309c <__sbprintf>:
   1309c:	01059783          	lh	a5,16(a1)
   130a0:	0125d703          	lhu	a4,18(a1)
   130a4:	0ac5a303          	lw	t1,172(a1)
   130a8:	ffd7f793          	and	a5,a5,-3
   130ac:	0107979b          	sllw	a5,a5,0x10
   130b0:	0305b883          	ld	a7,48(a1)
   130b4:	0405b803          	ld	a6,64(a1)
   130b8:	0107171b          	sllw	a4,a4,0x10
   130bc:	0107d79b          	srlw	a5,a5,0x10
   130c0:	b3010113          	add	sp,sp,-1232
   130c4:	00e7e7b3          	or	a5,a5,a4
   130c8:	4c813023          	sd	s0,1216(sp)
   130cc:	40000713          	li	a4,1024
   130d0:	00f12823          	sw	a5,16(sp)
   130d4:	00058413          	mv	s0,a1
   130d8:	0b010793          	add	a5,sp,176
   130dc:	00010593          	mv	a1,sp
   130e0:	4a913c23          	sd	s1,1208(sp)
   130e4:	4b213823          	sd	s2,1200(sp)
   130e8:	4c113423          	sd	ra,1224(sp)
   130ec:	00050913          	mv	s2,a0
   130f0:	0a612623          	sw	t1,172(sp)
   130f4:	03113823          	sd	a7,48(sp)
   130f8:	05013023          	sd	a6,64(sp)
   130fc:	00f13023          	sd	a5,0(sp)
   13100:	00f13c23          	sd	a5,24(sp)
   13104:	00e12623          	sw	a4,12(sp)
   13108:	02e12023          	sw	a4,32(sp)
   1310c:	02012423          	sw	zero,40(sp)
   13110:	981fd0ef          	jal	10a90 <_vfprintf_r>
   13114:	00050493          	mv	s1,a0
   13118:	02055c63          	bgez	a0,13150 <__sbprintf+0xb4>
   1311c:	01015783          	lhu	a5,16(sp)
   13120:	0407f793          	and	a5,a5,64
   13124:	00078863          	beqz	a5,13134 <__sbprintf+0x98>
   13128:	01045783          	lhu	a5,16(s0)
   1312c:	0407e793          	or	a5,a5,64
   13130:	00f41823          	sh	a5,16(s0)
   13134:	4c813083          	ld	ra,1224(sp)
   13138:	4c013403          	ld	s0,1216(sp)
   1313c:	4b013903          	ld	s2,1200(sp)
   13140:	00048513          	mv	a0,s1
   13144:	4b813483          	ld	s1,1208(sp)
   13148:	4d010113          	add	sp,sp,1232
   1314c:	00008067          	ret
   13150:	00010593          	mv	a1,sp
   13154:	00090513          	mv	a0,s2
   13158:	4c4000ef          	jal	1361c <_fflush_r>
   1315c:	fc0500e3          	beqz	a0,1311c <__sbprintf+0x80>
   13160:	fff00493          	li	s1,-1
   13164:	fb9ff06f          	j	1311c <__sbprintf+0x80>

0000000000013168 <__swsetup_r>:
   13168:	7581b783          	ld	a5,1880(gp) # 25ad8 <_impure_ptr>
   1316c:	fe010113          	add	sp,sp,-32
   13170:	00813823          	sd	s0,16(sp)
   13174:	00913423          	sd	s1,8(sp)
   13178:	00113c23          	sd	ra,24(sp)
   1317c:	00050493          	mv	s1,a0
   13180:	00058413          	mv	s0,a1
   13184:	00078663          	beqz	a5,13190 <__swsetup_r+0x28>
   13188:	0507a703          	lw	a4,80(a5)
   1318c:	08070063          	beqz	a4,1320c <__swsetup_r+0xa4>
   13190:	01041783          	lh	a5,16(s0)
   13194:	0087f713          	and	a4,a5,8
   13198:	08070463          	beqz	a4,13220 <__swsetup_r+0xb8>
   1319c:	01843703          	ld	a4,24(s0)
   131a0:	0a070063          	beqz	a4,13240 <__swsetup_r+0xd8>
   131a4:	0017f693          	and	a3,a5,1
   131a8:	02068863          	beqz	a3,131d8 <__swsetup_r+0x70>
   131ac:	02042683          	lw	a3,32(s0)
   131b0:	00042623          	sw	zero,12(s0)
   131b4:	00000513          	li	a0,0
   131b8:	40d006bb          	negw	a3,a3
   131bc:	02d42423          	sw	a3,40(s0)
   131c0:	02070a63          	beqz	a4,131f4 <__swsetup_r+0x8c>
   131c4:	01813083          	ld	ra,24(sp)
   131c8:	01013403          	ld	s0,16(sp)
   131cc:	00813483          	ld	s1,8(sp)
   131d0:	02010113          	add	sp,sp,32
   131d4:	00008067          	ret
   131d8:	0027f693          	and	a3,a5,2
   131dc:	00000613          	li	a2,0
   131e0:	00069463          	bnez	a3,131e8 <__swsetup_r+0x80>
   131e4:	02042603          	lw	a2,32(s0)
   131e8:	00c42623          	sw	a2,12(s0)
   131ec:	00000513          	li	a0,0
   131f0:	fc071ae3          	bnez	a4,131c4 <__swsetup_r+0x5c>
   131f4:	0807f713          	and	a4,a5,128
   131f8:	fc0706e3          	beqz	a4,131c4 <__swsetup_r+0x5c>
   131fc:	0407e793          	or	a5,a5,64
   13200:	00f41823          	sh	a5,16(s0)
   13204:	fff00513          	li	a0,-1
   13208:	fbdff06f          	j	131c4 <__swsetup_r+0x5c>
   1320c:	00078513          	mv	a0,a5
   13210:	029000ef          	jal	13a38 <__sinit>
   13214:	01041783          	lh	a5,16(s0)
   13218:	0087f713          	and	a4,a5,8
   1321c:	f80710e3          	bnez	a4,1319c <__swsetup_r+0x34>
   13220:	0107f713          	and	a4,a5,16
   13224:	06070a63          	beqz	a4,13298 <__swsetup_r+0x130>
   13228:	0047f713          	and	a4,a5,4
   1322c:	02071c63          	bnez	a4,13264 <__swsetup_r+0xfc>
   13230:	01843703          	ld	a4,24(s0)
   13234:	0087e793          	or	a5,a5,8
   13238:	00f41823          	sh	a5,16(s0)
   1323c:	f60714e3          	bnez	a4,131a4 <__swsetup_r+0x3c>
   13240:	2807f693          	and	a3,a5,640
   13244:	20000613          	li	a2,512
   13248:	f4c68ee3          	beq	a3,a2,131a4 <__swsetup_r+0x3c>
   1324c:	00040593          	mv	a1,s0
   13250:	00048513          	mv	a0,s1
   13254:	3c5030ef          	jal	16e18 <__smakebuf_r>
   13258:	01041783          	lh	a5,16(s0)
   1325c:	01843703          	ld	a4,24(s0)
   13260:	f45ff06f          	j	131a4 <__swsetup_r+0x3c>
   13264:	05843583          	ld	a1,88(s0)
   13268:	00058e63          	beqz	a1,13284 <__swsetup_r+0x11c>
   1326c:	07440713          	add	a4,s0,116
   13270:	00e58863          	beq	a1,a4,13280 <__swsetup_r+0x118>
   13274:	00048513          	mv	a0,s1
   13278:	199000ef          	jal	13c10 <_free_r>
   1327c:	01041783          	lh	a5,16(s0)
   13280:	04043c23          	sd	zero,88(s0)
   13284:	01843703          	ld	a4,24(s0)
   13288:	fdb7f793          	and	a5,a5,-37
   1328c:	00042423          	sw	zero,8(s0)
   13290:	00e43023          	sd	a4,0(s0)
   13294:	fa1ff06f          	j	13234 <__swsetup_r+0xcc>
   13298:	00900713          	li	a4,9
   1329c:	00e4a023          	sw	a4,0(s1)
   132a0:	0407e793          	or	a5,a5,64
   132a4:	f5dff06f          	j	13200 <__swsetup_r+0x98>

00000000000132a8 <__call_exitprocs>:
   132a8:	fb010113          	add	sp,sp,-80
   132ac:	03413023          	sd	s4,32(sp)
   132b0:	7481ba03          	ld	s4,1864(gp) # 25ac8 <_global_impure_ptr>
   132b4:	03213823          	sd	s2,48(sp)
   132b8:	04113423          	sd	ra,72(sp)
   132bc:	1f8a3903          	ld	s2,504(s4)
   132c0:	04813023          	sd	s0,64(sp)
   132c4:	02913c23          	sd	s1,56(sp)
   132c8:	03313423          	sd	s3,40(sp)
   132cc:	01513c23          	sd	s5,24(sp)
   132d0:	01613823          	sd	s6,16(sp)
   132d4:	01713423          	sd	s7,8(sp)
   132d8:	01813023          	sd	s8,0(sp)
   132dc:	04090063          	beqz	s2,1331c <__call_exitprocs+0x74>
   132e0:	00050b13          	mv	s6,a0
   132e4:	00058b93          	mv	s7,a1
   132e8:	00100a93          	li	s5,1
   132ec:	fff00993          	li	s3,-1
   132f0:	00892483          	lw	s1,8(s2)
   132f4:	fff4841b          	addw	s0,s1,-1
   132f8:	02044263          	bltz	s0,1331c <__call_exitprocs+0x74>
   132fc:	00349493          	sll	s1,s1,0x3
   13300:	009904b3          	add	s1,s2,s1
   13304:	040b8463          	beqz	s7,1334c <__call_exitprocs+0xa4>
   13308:	2084b783          	ld	a5,520(s1)
   1330c:	05778063          	beq	a5,s7,1334c <__call_exitprocs+0xa4>
   13310:	fff4041b          	addw	s0,s0,-1
   13314:	ff848493          	add	s1,s1,-8
   13318:	ff3416e3          	bne	s0,s3,13304 <__call_exitprocs+0x5c>
   1331c:	04813083          	ld	ra,72(sp)
   13320:	04013403          	ld	s0,64(sp)
   13324:	03813483          	ld	s1,56(sp)
   13328:	03013903          	ld	s2,48(sp)
   1332c:	02813983          	ld	s3,40(sp)
   13330:	02013a03          	ld	s4,32(sp)
   13334:	01813a83          	ld	s5,24(sp)
   13338:	01013b03          	ld	s6,16(sp)
   1333c:	00813b83          	ld	s7,8(sp)
   13340:	00013c03          	ld	s8,0(sp)
   13344:	05010113          	add	sp,sp,80
   13348:	00008067          	ret
   1334c:	00892783          	lw	a5,8(s2)
   13350:	0084b703          	ld	a4,8(s1)
   13354:	fff7879b          	addw	a5,a5,-1
   13358:	06878263          	beq	a5,s0,133bc <__call_exitprocs+0x114>
   1335c:	0004b423          	sd	zero,8(s1)
   13360:	fa0708e3          	beqz	a4,13310 <__call_exitprocs+0x68>
   13364:	31092783          	lw	a5,784(s2)
   13368:	008a96bb          	sllw	a3,s5,s0
   1336c:	00892c03          	lw	s8,8(s2)
   13370:	00d7f7b3          	and	a5,a5,a3
   13374:	0007879b          	sext.w	a5,a5
   13378:	02079263          	bnez	a5,1339c <__call_exitprocs+0xf4>
   1337c:	000700e7          	jalr	a4
   13380:	00892703          	lw	a4,8(s2)
   13384:	1f8a3783          	ld	a5,504(s4)
   13388:	01871463          	bne	a4,s8,13390 <__call_exitprocs+0xe8>
   1338c:	f92782e3          	beq	a5,s2,13310 <__call_exitprocs+0x68>
   13390:	f80786e3          	beqz	a5,1331c <__call_exitprocs+0x74>
   13394:	00078913          	mv	s2,a5
   13398:	f59ff06f          	j	132f0 <__call_exitprocs+0x48>
   1339c:	31492783          	lw	a5,788(s2)
   133a0:	1084b583          	ld	a1,264(s1)
   133a4:	00d7f7b3          	and	a5,a5,a3
   133a8:	0007879b          	sext.w	a5,a5
   133ac:	00079c63          	bnez	a5,133c4 <__call_exitprocs+0x11c>
   133b0:	000b0513          	mv	a0,s6
   133b4:	000700e7          	jalr	a4
   133b8:	fc9ff06f          	j	13380 <__call_exitprocs+0xd8>
   133bc:	00892423          	sw	s0,8(s2)
   133c0:	fa1ff06f          	j	13360 <__call_exitprocs+0xb8>
   133c4:	00058513          	mv	a0,a1
   133c8:	000700e7          	jalr	a4
   133cc:	fb5ff06f          	j	13380 <__call_exitprocs+0xd8>

00000000000133d0 <__sflush_r>:
   133d0:	01059783          	lh	a5,16(a1)
   133d4:	fd010113          	add	sp,sp,-48
   133d8:	02813023          	sd	s0,32(sp)
   133dc:	01313423          	sd	s3,8(sp)
   133e0:	02113423          	sd	ra,40(sp)
   133e4:	00913c23          	sd	s1,24(sp)
   133e8:	01213823          	sd	s2,16(sp)
   133ec:	0087f713          	and	a4,a5,8
   133f0:	00058413          	mv	s0,a1
   133f4:	00050993          	mv	s3,a0
   133f8:	12071263          	bnez	a4,1351c <__sflush_r+0x14c>
   133fc:	00001737          	lui	a4,0x1
   13400:	80070713          	add	a4,a4,-2048 # 800 <exit-0xf8e8>
   13404:	0085a683          	lw	a3,8(a1)
   13408:	00e7e733          	or	a4,a5,a4
   1340c:	00e59823          	sh	a4,16(a1)
   13410:	18d05863          	blez	a3,135a0 <__sflush_r+0x1d0>
   13414:	04843803          	ld	a6,72(s0)
   13418:	0e080263          	beqz	a6,134fc <__sflush_r+0x12c>
   1341c:	00c7d793          	srl	a5,a5,0xc
   13420:	0009a483          	lw	s1,0(s3)
   13424:	0017f793          	and	a5,a5,1
   13428:	0009a023          	sw	zero,0(s3)
   1342c:	03043583          	ld	a1,48(s0)
   13430:	18079063          	bnez	a5,135b0 <__sflush_r+0x1e0>
   13434:	00000613          	li	a2,0
   13438:	00100693          	li	a3,1
   1343c:	00098513          	mv	a0,s3
   13440:	000800e7          	jalr	a6
   13444:	fff00793          	li	a5,-1
   13448:	00050613          	mv	a2,a0
   1344c:	1af50063          	beq	a0,a5,135ec <__sflush_r+0x21c>
   13450:	01041703          	lh	a4,16(s0)
   13454:	04843803          	ld	a6,72(s0)
   13458:	03043583          	ld	a1,48(s0)
   1345c:	00477713          	and	a4,a4,4
   13460:	00070e63          	beqz	a4,1347c <__sflush_r+0xac>
   13464:	00842703          	lw	a4,8(s0)
   13468:	05843783          	ld	a5,88(s0)
   1346c:	40e60633          	sub	a2,a2,a4
   13470:	00078663          	beqz	a5,1347c <__sflush_r+0xac>
   13474:	07042783          	lw	a5,112(s0)
   13478:	40f60633          	sub	a2,a2,a5
   1347c:	00000693          	li	a3,0
   13480:	00098513          	mv	a0,s3
   13484:	000800e7          	jalr	a6
   13488:	fff00793          	li	a5,-1
   1348c:	12f51663          	bne	a0,a5,135b8 <__sflush_r+0x1e8>
   13490:	0009a683          	lw	a3,0(s3)
   13494:	01d00793          	li	a5,29
   13498:	0cd7ee63          	bltu	a5,a3,13574 <__sflush_r+0x1a4>
   1349c:	dfc00737          	lui	a4,0xdfc00
   134a0:	ffe70713          	add	a4,a4,-2 # ffffffffdfbffffe <__BSS_END__+0xffffffffdfbda47e>
   134a4:	40d75733          	sra	a4,a4,a3
   134a8:	00177713          	and	a4,a4,1
   134ac:	01041783          	lh	a5,16(s0)
   134b0:	0c071463          	bnez	a4,13578 <__sflush_r+0x1a8>
   134b4:	01843603          	ld	a2,24(s0)
   134b8:	fffff737          	lui	a4,0xfffff
   134bc:	7ff70713          	add	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffd9c7f>
   134c0:	00e7f733          	and	a4,a5,a4
   134c4:	00c7d793          	srl	a5,a5,0xc
   134c8:	00e41823          	sh	a4,16(s0)
   134cc:	00042423          	sw	zero,8(s0)
   134d0:	00c43023          	sd	a2,0(s0)
   134d4:	0017f793          	and	a5,a5,1
   134d8:	12079c63          	bnez	a5,13610 <__sflush_r+0x240>
   134dc:	05843583          	ld	a1,88(s0)
   134e0:	0099a023          	sw	s1,0(s3)
   134e4:	00058c63          	beqz	a1,134fc <__sflush_r+0x12c>
   134e8:	07440793          	add	a5,s0,116
   134ec:	00f58663          	beq	a1,a5,134f8 <__sflush_r+0x128>
   134f0:	00098513          	mv	a0,s3
   134f4:	71c000ef          	jal	13c10 <_free_r>
   134f8:	04043c23          	sd	zero,88(s0)
   134fc:	00000513          	li	a0,0
   13500:	02813083          	ld	ra,40(sp)
   13504:	02013403          	ld	s0,32(sp)
   13508:	01813483          	ld	s1,24(sp)
   1350c:	01013903          	ld	s2,16(sp)
   13510:	00813983          	ld	s3,8(sp)
   13514:	03010113          	add	sp,sp,48
   13518:	00008067          	ret
   1351c:	0185b903          	ld	s2,24(a1)
   13520:	fc090ee3          	beqz	s2,134fc <__sflush_r+0x12c>
   13524:	0005b483          	ld	s1,0(a1)
   13528:	0037f793          	and	a5,a5,3
   1352c:	0125b023          	sd	s2,0(a1)
   13530:	412484bb          	subw	s1,s1,s2
   13534:	00000713          	li	a4,0
   13538:	00079463          	bnez	a5,13540 <__sflush_r+0x170>
   1353c:	0205a703          	lw	a4,32(a1)
   13540:	00e42623          	sw	a4,12(s0)
   13544:	00904863          	bgtz	s1,13554 <__sflush_r+0x184>
   13548:	fb5ff06f          	j	134fc <__sflush_r+0x12c>
   1354c:	00a90933          	add	s2,s2,a0
   13550:	fa9056e3          	blez	s1,134fc <__sflush_r+0x12c>
   13554:	04043783          	ld	a5,64(s0)
   13558:	03043583          	ld	a1,48(s0)
   1355c:	00048693          	mv	a3,s1
   13560:	00090613          	mv	a2,s2
   13564:	00098513          	mv	a0,s3
   13568:	000780e7          	jalr	a5
   1356c:	40a484bb          	subw	s1,s1,a0
   13570:	fca04ee3          	bgtz	a0,1354c <__sflush_r+0x17c>
   13574:	01041783          	lh	a5,16(s0)
   13578:	0407e793          	or	a5,a5,64
   1357c:	02813083          	ld	ra,40(sp)
   13580:	00f41823          	sh	a5,16(s0)
   13584:	02013403          	ld	s0,32(sp)
   13588:	01813483          	ld	s1,24(sp)
   1358c:	01013903          	ld	s2,16(sp)
   13590:	00813983          	ld	s3,8(sp)
   13594:	fff00513          	li	a0,-1
   13598:	03010113          	add	sp,sp,48
   1359c:	00008067          	ret
   135a0:	0705a683          	lw	a3,112(a1)
   135a4:	e6d048e3          	bgtz	a3,13414 <__sflush_r+0x44>
   135a8:	00000513          	li	a0,0
   135ac:	f55ff06f          	j	13500 <__sflush_r+0x130>
   135b0:	09043603          	ld	a2,144(s0)
   135b4:	ea9ff06f          	j	1345c <__sflush_r+0x8c>
   135b8:	01041783          	lh	a5,16(s0)
   135bc:	01843683          	ld	a3,24(s0)
   135c0:	fffff737          	lui	a4,0xfffff
   135c4:	7ff70713          	add	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffd9c7f>
   135c8:	00e7f733          	and	a4,a5,a4
   135cc:	00c7d793          	srl	a5,a5,0xc
   135d0:	00e41823          	sh	a4,16(s0)
   135d4:	00042423          	sw	zero,8(s0)
   135d8:	00d43023          	sd	a3,0(s0)
   135dc:	0017f793          	and	a5,a5,1
   135e0:	ee078ee3          	beqz	a5,134dc <__sflush_r+0x10c>
   135e4:	08a43823          	sd	a0,144(s0)
   135e8:	ef5ff06f          	j	134dc <__sflush_r+0x10c>
   135ec:	0009a783          	lw	a5,0(s3)
   135f0:	e60780e3          	beqz	a5,13450 <__sflush_r+0x80>
   135f4:	01d00713          	li	a4,29
   135f8:	00e78663          	beq	a5,a4,13604 <__sflush_r+0x234>
   135fc:	01600713          	li	a4,22
   13600:	f6e79ae3          	bne	a5,a4,13574 <__sflush_r+0x1a4>
   13604:	0099a023          	sw	s1,0(s3)
   13608:	00000513          	li	a0,0
   1360c:	ef5ff06f          	j	13500 <__sflush_r+0x130>
   13610:	ec0696e3          	bnez	a3,134dc <__sflush_r+0x10c>
   13614:	08a43823          	sd	a0,144(s0)
   13618:	ec5ff06f          	j	134dc <__sflush_r+0x10c>

000000000001361c <_fflush_r>:
   1361c:	fe010113          	add	sp,sp,-32
   13620:	00813823          	sd	s0,16(sp)
   13624:	00113c23          	sd	ra,24(sp)
   13628:	00050413          	mv	s0,a0
   1362c:	00050663          	beqz	a0,13638 <_fflush_r+0x1c>
   13630:	05052783          	lw	a5,80(a0)
   13634:	02078063          	beqz	a5,13654 <_fflush_r+0x38>
   13638:	01059783          	lh	a5,16(a1)
   1363c:	02079663          	bnez	a5,13668 <_fflush_r+0x4c>
   13640:	01813083          	ld	ra,24(sp)
   13644:	01013403          	ld	s0,16(sp)
   13648:	00000513          	li	a0,0
   1364c:	02010113          	add	sp,sp,32
   13650:	00008067          	ret
   13654:	00b13423          	sd	a1,8(sp)
   13658:	3e0000ef          	jal	13a38 <__sinit>
   1365c:	00813583          	ld	a1,8(sp)
   13660:	01059783          	lh	a5,16(a1)
   13664:	fc078ee3          	beqz	a5,13640 <_fflush_r+0x24>
   13668:	00040513          	mv	a0,s0
   1366c:	01013403          	ld	s0,16(sp)
   13670:	01813083          	ld	ra,24(sp)
   13674:	02010113          	add	sp,sp,32
   13678:	d59ff06f          	j	133d0 <__sflush_r>

000000000001367c <fflush>:
   1367c:	06050663          	beqz	a0,136e8 <fflush+0x6c>
   13680:	fe010113          	add	sp,sp,-32
   13684:	00813823          	sd	s0,16(sp)
   13688:	00050413          	mv	s0,a0
   1368c:	7581b503          	ld	a0,1880(gp) # 25ad8 <_impure_ptr>
   13690:	00113c23          	sd	ra,24(sp)
   13694:	00050663          	beqz	a0,136a0 <fflush+0x24>
   13698:	05052783          	lw	a5,80(a0)
   1369c:	02078a63          	beqz	a5,136d0 <fflush+0x54>
   136a0:	01041783          	lh	a5,16(s0)
   136a4:	00079c63          	bnez	a5,136bc <fflush+0x40>
   136a8:	01813083          	ld	ra,24(sp)
   136ac:	01013403          	ld	s0,16(sp)
   136b0:	00000513          	li	a0,0
   136b4:	02010113          	add	sp,sp,32
   136b8:	00008067          	ret
   136bc:	00040593          	mv	a1,s0
   136c0:	01013403          	ld	s0,16(sp)
   136c4:	01813083          	ld	ra,24(sp)
   136c8:	02010113          	add	sp,sp,32
   136cc:	d05ff06f          	j	133d0 <__sflush_r>
   136d0:	00a13423          	sd	a0,8(sp)
   136d4:	364000ef          	jal	13a38 <__sinit>
   136d8:	01041783          	lh	a5,16(s0)
   136dc:	00813503          	ld	a0,8(sp)
   136e0:	fc0784e3          	beqz	a5,136a8 <fflush+0x2c>
   136e4:	fd9ff06f          	j	136bc <fflush+0x40>
   136e8:	7481b503          	ld	a0,1864(gp) # 25ac8 <_global_impure_ptr>
   136ec:	000135b7          	lui	a1,0x13
   136f0:	61c58593          	add	a1,a1,1564 # 1361c <_fflush_r>
   136f4:	0f90006f          	j	13fec <_fwalk_reent>

00000000000136f8 <__fp_lock>:
   136f8:	00000513          	li	a0,0
   136fc:	00008067          	ret

0000000000013700 <_cleanup_r>:
   13700:	0001d5b7          	lui	a1,0x1d
   13704:	f8858593          	add	a1,a1,-120 # 1cf88 <_fclose_r>
   13708:	0e50006f          	j	13fec <_fwalk_reent>

000000000001370c <__fp_unlock>:
   1370c:	00000513          	li	a0,0
   13710:	00008067          	ret

0000000000013714 <__sinit.part.0>:
   13714:	fc010113          	add	sp,sp,-64
   13718:	000137b7          	lui	a5,0x13
   1371c:	02113c23          	sd	ra,56(sp)
   13720:	02813823          	sd	s0,48(sp)
   13724:	02913423          	sd	s1,40(sp)
   13728:	03213023          	sd	s2,32(sp)
   1372c:	01313c23          	sd	s3,24(sp)
   13730:	01413823          	sd	s4,16(sp)
   13734:	01513423          	sd	s5,8(sp)
   13738:	01613023          	sd	s6,0(sp)
   1373c:	00853403          	ld	s0,8(a0)
   13740:	70078793          	add	a5,a5,1792 # 13700 <_cleanup_r>
   13744:	04f53c23          	sd	a5,88(a0)
   13748:	53850713          	add	a4,a0,1336
   1374c:	00300793          	li	a5,3
   13750:	52e53823          	sd	a4,1328(a0)
   13754:	52f52423          	sw	a5,1320(a0)
   13758:	52053023          	sd	zero,1312(a0)
   1375c:	00400793          	li	a5,4
   13760:	00050913          	mv	s2,a0
   13764:	00f42823          	sw	a5,16(s0)
   13768:	00800613          	li	a2,8
   1376c:	00000593          	li	a1,0
   13770:	00043023          	sd	zero,0(s0)
   13774:	00043423          	sd	zero,8(s0)
   13778:	0a042623          	sw	zero,172(s0)
   1377c:	00043c23          	sd	zero,24(s0)
   13780:	02042023          	sw	zero,32(s0)
   13784:	02042423          	sw	zero,40(s0)
   13788:	0a440513          	add	a0,s0,164
   1378c:	99cfd0ef          	jal	10928 <memset>
   13790:	00019b37          	lui	s6,0x19
   13794:	01093483          	ld	s1,16(s2)
   13798:	00019ab7          	lui	s5,0x19
   1379c:	00019a37          	lui	s4,0x19
   137a0:	000199b7          	lui	s3,0x19
   137a4:	e30b0b13          	add	s6,s6,-464 # 18e30 <__sread>
   137a8:	e94a8a93          	add	s5,s5,-364 # 18e94 <__swrite>
   137ac:	f1ca0a13          	add	s4,s4,-228 # 18f1c <__sseek>
   137b0:	f9498993          	add	s3,s3,-108 # 18f94 <__sclose>
   137b4:	000107b7          	lui	a5,0x10
   137b8:	03643c23          	sd	s6,56(s0)
   137bc:	05543023          	sd	s5,64(s0)
   137c0:	05443423          	sd	s4,72(s0)
   137c4:	05343823          	sd	s3,80(s0)
   137c8:	02843823          	sd	s0,48(s0)
   137cc:	00978793          	add	a5,a5,9 # 10009 <exit-0xdf>
   137d0:	00f4a823          	sw	a5,16(s1)
   137d4:	00800613          	li	a2,8
   137d8:	00000593          	li	a1,0
   137dc:	0004b023          	sd	zero,0(s1)
   137e0:	0004b423          	sd	zero,8(s1)
   137e4:	0a04a623          	sw	zero,172(s1)
   137e8:	0004bc23          	sd	zero,24(s1)
   137ec:	0204a023          	sw	zero,32(s1)
   137f0:	0204a423          	sw	zero,40(s1)
   137f4:	0a448513          	add	a0,s1,164
   137f8:	930fd0ef          	jal	10928 <memset>
   137fc:	01893403          	ld	s0,24(s2)
   13800:	000207b7          	lui	a5,0x20
   13804:	0364bc23          	sd	s6,56(s1)
   13808:	0554b023          	sd	s5,64(s1)
   1380c:	0544b423          	sd	s4,72(s1)
   13810:	0534b823          	sd	s3,80(s1)
   13814:	0294b823          	sd	s1,48(s1)
   13818:	01278793          	add	a5,a5,18 # 20012 <_read+0x32>
   1381c:	00f42823          	sw	a5,16(s0)
   13820:	00043023          	sd	zero,0(s0)
   13824:	00043423          	sd	zero,8(s0)
   13828:	0a042623          	sw	zero,172(s0)
   1382c:	00043c23          	sd	zero,24(s0)
   13830:	02042023          	sw	zero,32(s0)
   13834:	02042423          	sw	zero,40(s0)
   13838:	0a440513          	add	a0,s0,164
   1383c:	00800613          	li	a2,8
   13840:	00000593          	li	a1,0
   13844:	8e4fd0ef          	jal	10928 <memset>
   13848:	03813083          	ld	ra,56(sp)
   1384c:	03643c23          	sd	s6,56(s0)
   13850:	05543023          	sd	s5,64(s0)
   13854:	05443423          	sd	s4,72(s0)
   13858:	05343823          	sd	s3,80(s0)
   1385c:	02843823          	sd	s0,48(s0)
   13860:	03013403          	ld	s0,48(sp)
   13864:	00100793          	li	a5,1
   13868:	04f92823          	sw	a5,80(s2)
   1386c:	02813483          	ld	s1,40(sp)
   13870:	02013903          	ld	s2,32(sp)
   13874:	01813983          	ld	s3,24(sp)
   13878:	01013a03          	ld	s4,16(sp)
   1387c:	00813a83          	ld	s5,8(sp)
   13880:	00013b03          	ld	s6,0(sp)
   13884:	04010113          	add	sp,sp,64
   13888:	00008067          	ret

000000000001388c <__sfmoreglue>:
   1388c:	fe010113          	add	sp,sp,-32
   13890:	00913423          	sd	s1,8(sp)
   13894:	0b000793          	li	a5,176
   13898:	fff5849b          	addw	s1,a1,-1
   1389c:	02f484b3          	mul	s1,s1,a5
   138a0:	01213023          	sd	s2,0(sp)
   138a4:	00058913          	mv	s2,a1
   138a8:	00813823          	sd	s0,16(sp)
   138ac:	00113c23          	sd	ra,24(sp)
   138b0:	0c848593          	add	a1,s1,200
   138b4:	7cc030ef          	jal	17080 <_malloc_r>
   138b8:	00050413          	mv	s0,a0
   138bc:	02050063          	beqz	a0,138dc <__sfmoreglue+0x50>
   138c0:	01850513          	add	a0,a0,24
   138c4:	00043023          	sd	zero,0(s0)
   138c8:	01242423          	sw	s2,8(s0)
   138cc:	00a43823          	sd	a0,16(s0)
   138d0:	0b048613          	add	a2,s1,176
   138d4:	00000593          	li	a1,0
   138d8:	850fd0ef          	jal	10928 <memset>
   138dc:	01813083          	ld	ra,24(sp)
   138e0:	00040513          	mv	a0,s0
   138e4:	01013403          	ld	s0,16(sp)
   138e8:	00813483          	ld	s1,8(sp)
   138ec:	00013903          	ld	s2,0(sp)
   138f0:	02010113          	add	sp,sp,32
   138f4:	00008067          	ret

00000000000138f8 <__sfp>:
   138f8:	fd010113          	add	sp,sp,-48
   138fc:	00913c23          	sd	s1,24(sp)
   13900:	7481b483          	ld	s1,1864(gp) # 25ac8 <_global_impure_ptr>
   13904:	01213823          	sd	s2,16(sp)
   13908:	02113423          	sd	ra,40(sp)
   1390c:	0504a783          	lw	a5,80(s1)
   13910:	02813023          	sd	s0,32(sp)
   13914:	01313423          	sd	s3,8(sp)
   13918:	00050913          	mv	s2,a0
   1391c:	0a078863          	beqz	a5,139cc <__sfp+0xd4>
   13920:	52048493          	add	s1,s1,1312
   13924:	0b000993          	li	s3,176
   13928:	0084a703          	lw	a4,8(s1)
   1392c:	0104b403          	ld	s0,16(s1)
   13930:	08e05663          	blez	a4,139bc <__sfp+0xc4>
   13934:	02071713          	sll	a4,a4,0x20
   13938:	02075713          	srl	a4,a4,0x20
   1393c:	03370733          	mul	a4,a4,s3
   13940:	00e40733          	add	a4,s0,a4
   13944:	00c0006f          	j	13950 <__sfp+0x58>
   13948:	0b040413          	add	s0,s0,176
   1394c:	06e40863          	beq	s0,a4,139bc <__sfp+0xc4>
   13950:	01041783          	lh	a5,16(s0)
   13954:	fe079ae3          	bnez	a5,13948 <__sfp+0x50>
   13958:	ffff07b7          	lui	a5,0xffff0
   1395c:	00178793          	add	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffca481>
   13960:	00f42823          	sw	a5,16(s0)
   13964:	0a042623          	sw	zero,172(s0)
   13968:	00043023          	sd	zero,0(s0)
   1396c:	00043423          	sd	zero,8(s0)
   13970:	00043c23          	sd	zero,24(s0)
   13974:	02042023          	sw	zero,32(s0)
   13978:	02042423          	sw	zero,40(s0)
   1397c:	00800613          	li	a2,8
   13980:	00000593          	li	a1,0
   13984:	0a440513          	add	a0,s0,164
   13988:	fa1fc0ef          	jal	10928 <memset>
   1398c:	04043c23          	sd	zero,88(s0)
   13990:	06042023          	sw	zero,96(s0)
   13994:	06043c23          	sd	zero,120(s0)
   13998:	08042023          	sw	zero,128(s0)
   1399c:	02813083          	ld	ra,40(sp)
   139a0:	00040513          	mv	a0,s0
   139a4:	02013403          	ld	s0,32(sp)
   139a8:	01813483          	ld	s1,24(sp)
   139ac:	01013903          	ld	s2,16(sp)
   139b0:	00813983          	ld	s3,8(sp)
   139b4:	03010113          	add	sp,sp,48
   139b8:	00008067          	ret
   139bc:	0004b403          	ld	s0,0(s1)
   139c0:	00040c63          	beqz	s0,139d8 <__sfp+0xe0>
   139c4:	00040493          	mv	s1,s0
   139c8:	f61ff06f          	j	13928 <__sfp+0x30>
   139cc:	00048513          	mv	a0,s1
   139d0:	d45ff0ef          	jal	13714 <__sinit.part.0>
   139d4:	f4dff06f          	j	13920 <__sfp+0x28>
   139d8:	2d800593          	li	a1,728
   139dc:	00090513          	mv	a0,s2
   139e0:	6a0030ef          	jal	17080 <_malloc_r>
   139e4:	00050413          	mv	s0,a0
   139e8:	02050863          	beqz	a0,13a18 <__sfp+0x120>
   139ec:	01850513          	add	a0,a0,24
   139f0:	00400793          	li	a5,4
   139f4:	00043023          	sd	zero,0(s0)
   139f8:	00f42423          	sw	a5,8(s0)
   139fc:	00a43823          	sd	a0,16(s0)
   13a00:	2c000613          	li	a2,704
   13a04:	00000593          	li	a1,0
   13a08:	f21fc0ef          	jal	10928 <memset>
   13a0c:	0084b023          	sd	s0,0(s1)
   13a10:	00040493          	mv	s1,s0
   13a14:	f15ff06f          	j	13928 <__sfp+0x30>
   13a18:	0004b023          	sd	zero,0(s1)
   13a1c:	00c00793          	li	a5,12
   13a20:	00f92023          	sw	a5,0(s2)
   13a24:	f79ff06f          	j	1399c <__sfp+0xa4>

0000000000013a28 <_cleanup>:
   13a28:	7481b503          	ld	a0,1864(gp) # 25ac8 <_global_impure_ptr>
   13a2c:	0001d5b7          	lui	a1,0x1d
   13a30:	f8858593          	add	a1,a1,-120 # 1cf88 <_fclose_r>
   13a34:	5b80006f          	j	13fec <_fwalk_reent>

0000000000013a38 <__sinit>:
   13a38:	05052783          	lw	a5,80(a0)
   13a3c:	00078463          	beqz	a5,13a44 <__sinit+0xc>
   13a40:	00008067          	ret
   13a44:	cd1ff06f          	j	13714 <__sinit.part.0>

0000000000013a48 <__sfp_lock_acquire>:
   13a48:	00008067          	ret

0000000000013a4c <__sfp_lock_release>:
   13a4c:	00008067          	ret

0000000000013a50 <__sinit_lock_acquire>:
   13a50:	00008067          	ret

0000000000013a54 <__sinit_lock_release>:
   13a54:	00008067          	ret

0000000000013a58 <__fp_lock_all>:
   13a58:	7581b503          	ld	a0,1880(gp) # 25ad8 <_impure_ptr>
   13a5c:	000135b7          	lui	a1,0x13
   13a60:	6f858593          	add	a1,a1,1784 # 136f8 <__fp_lock>
   13a64:	4cc0006f          	j	13f30 <_fwalk>

0000000000013a68 <__fp_unlock_all>:
   13a68:	7581b503          	ld	a0,1880(gp) # 25ad8 <_impure_ptr>
   13a6c:	000135b7          	lui	a1,0x13
   13a70:	70c58593          	add	a1,a1,1804 # 1370c <__fp_unlock>
   13a74:	4bc0006f          	j	13f30 <_fwalk>

0000000000013a78 <__libc_fini_array>:
   13a78:	fe010113          	add	sp,sp,-32
   13a7c:	00813823          	sd	s0,16(sp)
   13a80:	000257b7          	lui	a5,0x25
   13a84:	00025437          	lui	s0,0x25
   13a88:	97878793          	add	a5,a5,-1672 # 24978 <__do_global_dtors_aux_fini_array_entry>
   13a8c:	98040413          	add	s0,s0,-1664 # 24980 <impure_data>
   13a90:	40f40433          	sub	s0,s0,a5
   13a94:	00913423          	sd	s1,8(sp)
   13a98:	00113c23          	sd	ra,24(sp)
   13a9c:	40345493          	sra	s1,s0,0x3
   13aa0:	02048063          	beqz	s1,13ac0 <__libc_fini_array+0x48>
   13aa4:	ff840413          	add	s0,s0,-8
   13aa8:	00f40433          	add	s0,s0,a5
   13aac:	00043783          	ld	a5,0(s0)
   13ab0:	fff48493          	add	s1,s1,-1
   13ab4:	ff840413          	add	s0,s0,-8
   13ab8:	000780e7          	jalr	a5
   13abc:	fe0498e3          	bnez	s1,13aac <__libc_fini_array+0x34>
   13ac0:	01813083          	ld	ra,24(sp)
   13ac4:	01013403          	ld	s0,16(sp)
   13ac8:	00813483          	ld	s1,8(sp)
   13acc:	02010113          	add	sp,sp,32
   13ad0:	00008067          	ret

0000000000013ad4 <_malloc_trim_r>:
   13ad4:	fd010113          	add	sp,sp,-48
   13ad8:	01313423          	sd	s3,8(sp)
   13adc:	000259b7          	lui	s3,0x25
   13ae0:	02813023          	sd	s0,32(sp)
   13ae4:	00913c23          	sd	s1,24(sp)
   13ae8:	01213823          	sd	s2,16(sp)
   13aec:	01413023          	sd	s4,0(sp)
   13af0:	02113423          	sd	ra,40(sp)
   13af4:	00058a13          	mv	s4,a1
   13af8:	00050913          	mv	s2,a0
   13afc:	27098993          	add	s3,s3,624 # 25270 <__malloc_av_>
   13b00:	691030ef          	jal	17990 <__malloc_lock>
   13b04:	0109b703          	ld	a4,16(s3)
   13b08:	000017b7          	lui	a5,0x1
   13b0c:	fdf78413          	add	s0,a5,-33 # fdf <exit-0xf109>
   13b10:	00873483          	ld	s1,8(a4)
   13b14:	ffc4f493          	and	s1,s1,-4
   13b18:	00848433          	add	s0,s1,s0
   13b1c:	41440433          	sub	s0,s0,s4
   13b20:	00c45413          	srl	s0,s0,0xc
   13b24:	fff40413          	add	s0,s0,-1
   13b28:	00c41413          	sll	s0,s0,0xc
   13b2c:	00f44e63          	blt	s0,a5,13b48 <_malloc_trim_r+0x74>
   13b30:	00000593          	li	a1,0
   13b34:	00090513          	mv	a0,s2
   13b38:	0f0050ef          	jal	18c28 <_sbrk_r>
   13b3c:	0109b783          	ld	a5,16(s3)
   13b40:	009787b3          	add	a5,a5,s1
   13b44:	02f50863          	beq	a0,a5,13b74 <_malloc_trim_r+0xa0>
   13b48:	00090513          	mv	a0,s2
   13b4c:	649030ef          	jal	17994 <__malloc_unlock>
   13b50:	02813083          	ld	ra,40(sp)
   13b54:	02013403          	ld	s0,32(sp)
   13b58:	01813483          	ld	s1,24(sp)
   13b5c:	01013903          	ld	s2,16(sp)
   13b60:	00813983          	ld	s3,8(sp)
   13b64:	00013a03          	ld	s4,0(sp)
   13b68:	00000513          	li	a0,0
   13b6c:	03010113          	add	sp,sp,48
   13b70:	00008067          	ret
   13b74:	408005b3          	neg	a1,s0
   13b78:	00090513          	mv	a0,s2
   13b7c:	0ac050ef          	jal	18c28 <_sbrk_r>
   13b80:	fff00793          	li	a5,-1
   13b84:	04f50a63          	beq	a0,a5,13bd8 <_malloc_trim_r+0x104>
   13b88:	000267b7          	lui	a5,0x26
   13b8c:	b5878793          	add	a5,a5,-1192 # 25b58 <__malloc_current_mallinfo>
   13b90:	0007a703          	lw	a4,0(a5)
   13b94:	0109b683          	ld	a3,16(s3)
   13b98:	408484b3          	sub	s1,s1,s0
   13b9c:	0014e493          	or	s1,s1,1
   13ba0:	4087073b          	subw	a4,a4,s0
   13ba4:	00090513          	mv	a0,s2
   13ba8:	0096b423          	sd	s1,8(a3)
   13bac:	00e7a023          	sw	a4,0(a5)
   13bb0:	5e5030ef          	jal	17994 <__malloc_unlock>
   13bb4:	02813083          	ld	ra,40(sp)
   13bb8:	02013403          	ld	s0,32(sp)
   13bbc:	01813483          	ld	s1,24(sp)
   13bc0:	01013903          	ld	s2,16(sp)
   13bc4:	00813983          	ld	s3,8(sp)
   13bc8:	00013a03          	ld	s4,0(sp)
   13bcc:	00100513          	li	a0,1
   13bd0:	03010113          	add	sp,sp,48
   13bd4:	00008067          	ret
   13bd8:	00000593          	li	a1,0
   13bdc:	00090513          	mv	a0,s2
   13be0:	048050ef          	jal	18c28 <_sbrk_r>
   13be4:	0109b703          	ld	a4,16(s3)
   13be8:	01f00693          	li	a3,31
   13bec:	40e507b3          	sub	a5,a0,a4
   13bf0:	f4f6dce3          	bge	a3,a5,13b48 <_malloc_trim_r+0x74>
   13bf4:	7601b683          	ld	a3,1888(gp) # 25ae0 <__malloc_sbrk_base>
   13bf8:	0017e793          	or	a5,a5,1
   13bfc:	00f73423          	sd	a5,8(a4)
   13c00:	40d50533          	sub	a0,a0,a3
   13c04:	000266b7          	lui	a3,0x26
   13c08:	b4a6ac23          	sw	a0,-1192(a3) # 25b58 <__malloc_current_mallinfo>
   13c0c:	f3dff06f          	j	13b48 <_malloc_trim_r+0x74>

0000000000013c10 <_free_r>:
   13c10:	18058863          	beqz	a1,13da0 <_free_r+0x190>
   13c14:	fe010113          	add	sp,sp,-32
   13c18:	00813823          	sd	s0,16(sp)
   13c1c:	00913423          	sd	s1,8(sp)
   13c20:	00058413          	mv	s0,a1
   13c24:	00050493          	mv	s1,a0
   13c28:	00113c23          	sd	ra,24(sp)
   13c2c:	565030ef          	jal	17990 <__malloc_lock>
   13c30:	ff843503          	ld	a0,-8(s0)
   13c34:	ff040713          	add	a4,s0,-16
   13c38:	000255b7          	lui	a1,0x25
   13c3c:	ffe57793          	and	a5,a0,-2
   13c40:	00f70633          	add	a2,a4,a5
   13c44:	27058593          	add	a1,a1,624 # 25270 <__malloc_av_>
   13c48:	00863683          	ld	a3,8(a2)
   13c4c:	0105b803          	ld	a6,16(a1)
   13c50:	ffc6f693          	and	a3,a3,-4
   13c54:	1ac80863          	beq	a6,a2,13e04 <_free_r+0x1f4>
   13c58:	00d63423          	sd	a3,8(a2)
   13c5c:	00157513          	and	a0,a0,1
   13c60:	00d60833          	add	a6,a2,a3
   13c64:	0a051463          	bnez	a0,13d0c <_free_r+0xfc>
   13c68:	ff043303          	ld	t1,-16(s0)
   13c6c:	00883803          	ld	a6,8(a6)
   13c70:	00025537          	lui	a0,0x25
   13c74:	40670733          	sub	a4,a4,t1
   13c78:	01073883          	ld	a7,16(a4)
   13c7c:	28050513          	add	a0,a0,640 # 25280 <__malloc_av_+0x10>
   13c80:	006787b3          	add	a5,a5,t1
   13c84:	00187813          	and	a6,a6,1
   13c88:	14a88863          	beq	a7,a0,13dd8 <_free_r+0x1c8>
   13c8c:	01873303          	ld	t1,24(a4)
   13c90:	0068bc23          	sd	t1,24(a7)
   13c94:	01133823          	sd	a7,16(t1)
   13c98:	1a080c63          	beqz	a6,13e50 <_free_r+0x240>
   13c9c:	0017e693          	or	a3,a5,1
   13ca0:	00d73423          	sd	a3,8(a4)
   13ca4:	00f63023          	sd	a5,0(a2)
   13ca8:	1ff00693          	li	a3,511
   13cac:	08f6e063          	bltu	a3,a5,13d2c <_free_r+0x11c>
   13cb0:	0037d793          	srl	a5,a5,0x3
   13cb4:	0017869b          	addw	a3,a5,1
   13cb8:	0016969b          	sllw	a3,a3,0x1
   13cbc:	00369693          	sll	a3,a3,0x3
   13cc0:	0085b803          	ld	a6,8(a1)
   13cc4:	00d586b3          	add	a3,a1,a3
   13cc8:	0006b503          	ld	a0,0(a3)
   13ccc:	4027d61b          	sraw	a2,a5,0x2
   13cd0:	00100793          	li	a5,1
   13cd4:	00c797b3          	sll	a5,a5,a2
   13cd8:	0107e7b3          	or	a5,a5,a6
   13cdc:	ff068613          	add	a2,a3,-16
   13ce0:	00c73c23          	sd	a2,24(a4)
   13ce4:	00a73823          	sd	a0,16(a4)
   13ce8:	00f5b423          	sd	a5,8(a1)
   13cec:	00e6b023          	sd	a4,0(a3)
   13cf0:	00e53c23          	sd	a4,24(a0)
   13cf4:	01013403          	ld	s0,16(sp)
   13cf8:	01813083          	ld	ra,24(sp)
   13cfc:	00048513          	mv	a0,s1
   13d00:	00813483          	ld	s1,8(sp)
   13d04:	02010113          	add	sp,sp,32
   13d08:	48d0306f          	j	17994 <__malloc_unlock>
   13d0c:	00883503          	ld	a0,8(a6)
   13d10:	00157513          	and	a0,a0,1
   13d14:	08050863          	beqz	a0,13da4 <_free_r+0x194>
   13d18:	0017e693          	or	a3,a5,1
   13d1c:	fed43c23          	sd	a3,-8(s0)
   13d20:	00f63023          	sd	a5,0(a2)
   13d24:	1ff00693          	li	a3,511
   13d28:	f8f6f4e3          	bgeu	a3,a5,13cb0 <_free_r+0xa0>
   13d2c:	0097d693          	srl	a3,a5,0x9
   13d30:	00400613          	li	a2,4
   13d34:	12d66263          	bltu	a2,a3,13e58 <_free_r+0x248>
   13d38:	0067d693          	srl	a3,a5,0x6
   13d3c:	0396851b          	addw	a0,a3,57
   13d40:	0015151b          	sllw	a0,a0,0x1
   13d44:	0386861b          	addw	a2,a3,56
   13d48:	00351513          	sll	a0,a0,0x3
   13d4c:	00a58533          	add	a0,a1,a0
   13d50:	00053683          	ld	a3,0(a0)
   13d54:	ff050513          	add	a0,a0,-16
   13d58:	00d51863          	bne	a0,a3,13d68 <_free_r+0x158>
   13d5c:	15c0006f          	j	13eb8 <_free_r+0x2a8>
   13d60:	0106b683          	ld	a3,16(a3)
   13d64:	00d50863          	beq	a0,a3,13d74 <_free_r+0x164>
   13d68:	0086b603          	ld	a2,8(a3)
   13d6c:	ffc67613          	and	a2,a2,-4
   13d70:	fec7e8e3          	bltu	a5,a2,13d60 <_free_r+0x150>
   13d74:	0186b503          	ld	a0,24(a3)
   13d78:	00a73c23          	sd	a0,24(a4)
   13d7c:	00d73823          	sd	a3,16(a4)
   13d80:	01013403          	ld	s0,16(sp)
   13d84:	00e53823          	sd	a4,16(a0)
   13d88:	01813083          	ld	ra,24(sp)
   13d8c:	00048513          	mv	a0,s1
   13d90:	00813483          	ld	s1,8(sp)
   13d94:	00e6bc23          	sd	a4,24(a3)
   13d98:	02010113          	add	sp,sp,32
   13d9c:	3f90306f          	j	17994 <__malloc_unlock>
   13da0:	00008067          	ret
   13da4:	00025537          	lui	a0,0x25
   13da8:	00d787b3          	add	a5,a5,a3
   13dac:	28050513          	add	a0,a0,640 # 25280 <__malloc_av_+0x10>
   13db0:	01063683          	ld	a3,16(a2)
   13db4:	0ea68063          	beq	a3,a0,13e94 <_free_r+0x284>
   13db8:	01863803          	ld	a6,24(a2)
   13dbc:	0017e513          	or	a0,a5,1
   13dc0:	00f70633          	add	a2,a4,a5
   13dc4:	0106bc23          	sd	a6,24(a3)
   13dc8:	00d83823          	sd	a3,16(a6)
   13dcc:	00a73423          	sd	a0,8(a4)
   13dd0:	00f63023          	sd	a5,0(a2)
   13dd4:	ed5ff06f          	j	13ca8 <_free_r+0x98>
   13dd8:	14081463          	bnez	a6,13f20 <_free_r+0x310>
   13ddc:	01063583          	ld	a1,16(a2)
   13de0:	01863603          	ld	a2,24(a2)
   13de4:	00f686b3          	add	a3,a3,a5
   13de8:	0016e793          	or	a5,a3,1
   13dec:	00c5bc23          	sd	a2,24(a1)
   13df0:	00b63823          	sd	a1,16(a2)
   13df4:	00f73423          	sd	a5,8(a4)
   13df8:	00d70733          	add	a4,a4,a3
   13dfc:	00d73023          	sd	a3,0(a4)
   13e00:	ef5ff06f          	j	13cf4 <_free_r+0xe4>
   13e04:	00157513          	and	a0,a0,1
   13e08:	00d786b3          	add	a3,a5,a3
   13e0c:	02051063          	bnez	a0,13e2c <_free_r+0x21c>
   13e10:	ff043503          	ld	a0,-16(s0)
   13e14:	40a70733          	sub	a4,a4,a0
   13e18:	01873783          	ld	a5,24(a4)
   13e1c:	01073603          	ld	a2,16(a4)
   13e20:	00a686b3          	add	a3,a3,a0
   13e24:	00f63c23          	sd	a5,24(a2)
   13e28:	00c7b823          	sd	a2,16(a5)
   13e2c:	0016e613          	or	a2,a3,1
   13e30:	7681b783          	ld	a5,1896(gp) # 25ae8 <__malloc_trim_threshold>
   13e34:	00c73423          	sd	a2,8(a4)
   13e38:	00e5b823          	sd	a4,16(a1)
   13e3c:	eaf6ece3          	bltu	a3,a5,13cf4 <_free_r+0xe4>
   13e40:	7881b583          	ld	a1,1928(gp) # 25b08 <__malloc_top_pad>
   13e44:	00048513          	mv	a0,s1
   13e48:	c8dff0ef          	jal	13ad4 <_malloc_trim_r>
   13e4c:	ea9ff06f          	j	13cf4 <_free_r+0xe4>
   13e50:	00d787b3          	add	a5,a5,a3
   13e54:	f5dff06f          	j	13db0 <_free_r+0x1a0>
   13e58:	01400613          	li	a2,20
   13e5c:	02d67263          	bgeu	a2,a3,13e80 <_free_r+0x270>
   13e60:	05400613          	li	a2,84
   13e64:	06d66863          	bltu	a2,a3,13ed4 <_free_r+0x2c4>
   13e68:	00c7d693          	srl	a3,a5,0xc
   13e6c:	06f6851b          	addw	a0,a3,111
   13e70:	0015151b          	sllw	a0,a0,0x1
   13e74:	06e6861b          	addw	a2,a3,110
   13e78:	00351513          	sll	a0,a0,0x3
   13e7c:	ed1ff06f          	j	13d4c <_free_r+0x13c>
   13e80:	05c6851b          	addw	a0,a3,92
   13e84:	0015151b          	sllw	a0,a0,0x1
   13e88:	05b6861b          	addw	a2,a3,91
   13e8c:	00351513          	sll	a0,a0,0x3
   13e90:	ebdff06f          	j	13d4c <_free_r+0x13c>
   13e94:	02e5b423          	sd	a4,40(a1)
   13e98:	02e5b023          	sd	a4,32(a1)
   13e9c:	0017e693          	or	a3,a5,1
   13ea0:	00a73c23          	sd	a0,24(a4)
   13ea4:	00a73823          	sd	a0,16(a4)
   13ea8:	00d73423          	sd	a3,8(a4)
   13eac:	00f70733          	add	a4,a4,a5
   13eb0:	00f73023          	sd	a5,0(a4)
   13eb4:	e41ff06f          	j	13cf4 <_free_r+0xe4>
   13eb8:	0085b803          	ld	a6,8(a1)
   13ebc:	4026561b          	sraw	a2,a2,0x2
   13ec0:	00100793          	li	a5,1
   13ec4:	00c797b3          	sll	a5,a5,a2
   13ec8:	0107e7b3          	or	a5,a5,a6
   13ecc:	00f5b423          	sd	a5,8(a1)
   13ed0:	ea9ff06f          	j	13d78 <_free_r+0x168>
   13ed4:	15400613          	li	a2,340
   13ed8:	00d66e63          	bltu	a2,a3,13ef4 <_free_r+0x2e4>
   13edc:	00f7d693          	srl	a3,a5,0xf
   13ee0:	0786851b          	addw	a0,a3,120
   13ee4:	0015151b          	sllw	a0,a0,0x1
   13ee8:	0776861b          	addw	a2,a3,119
   13eec:	00351513          	sll	a0,a0,0x3
   13ef0:	e5dff06f          	j	13d4c <_free_r+0x13c>
   13ef4:	55400613          	li	a2,1364
   13ef8:	00d66e63          	bltu	a2,a3,13f14 <_free_r+0x304>
   13efc:	0127d693          	srl	a3,a5,0x12
   13f00:	07d6851b          	addw	a0,a3,125
   13f04:	0015151b          	sllw	a0,a0,0x1
   13f08:	07c6861b          	addw	a2,a3,124
   13f0c:	00351513          	sll	a0,a0,0x3
   13f10:	e3dff06f          	j	13d4c <_free_r+0x13c>
   13f14:	7f000513          	li	a0,2032
   13f18:	07e00613          	li	a2,126
   13f1c:	e31ff06f          	j	13d4c <_free_r+0x13c>
   13f20:	0017e693          	or	a3,a5,1
   13f24:	00d73423          	sd	a3,8(a4)
   13f28:	00f63023          	sd	a5,0(a2)
   13f2c:	dc9ff06f          	j	13cf4 <_free_r+0xe4>

0000000000013f30 <_fwalk>:
   13f30:	fb010113          	add	sp,sp,-80
   13f34:	03213823          	sd	s2,48(sp)
   13f38:	03313423          	sd	s3,40(sp)
   13f3c:	03413023          	sd	s4,32(sp)
   13f40:	01513c23          	sd	s5,24(sp)
   13f44:	01613823          	sd	s6,16(sp)
   13f48:	01713423          	sd	s7,8(sp)
   13f4c:	04113423          	sd	ra,72(sp)
   13f50:	04813023          	sd	s0,64(sp)
   13f54:	02913c23          	sd	s1,56(sp)
   13f58:	00058a93          	mv	s5,a1
   13f5c:	52050993          	add	s3,a0,1312
   13f60:	00000913          	li	s2,0
   13f64:	0b000b13          	li	s6,176
   13f68:	00100b93          	li	s7,1
   13f6c:	fff00a13          	li	s4,-1
   13f70:	0089a483          	lw	s1,8(s3)
   13f74:	0109b403          	ld	s0,16(s3)
   13f78:	02905e63          	blez	s1,13fb4 <_fwalk+0x84>
   13f7c:	02049493          	sll	s1,s1,0x20
   13f80:	0204d493          	srl	s1,s1,0x20
   13f84:	036484b3          	mul	s1,s1,s6
   13f88:	009404b3          	add	s1,s0,s1
   13f8c:	01045783          	lhu	a5,16(s0)
   13f90:	00fbfe63          	bgeu	s7,a5,13fac <_fwalk+0x7c>
   13f94:	01241783          	lh	a5,18(s0)
   13f98:	00040513          	mv	a0,s0
   13f9c:	01478863          	beq	a5,s4,13fac <_fwalk+0x7c>
   13fa0:	000a80e7          	jalr	s5
   13fa4:	01256933          	or	s2,a0,s2
   13fa8:	0009091b          	sext.w	s2,s2
   13fac:	0b040413          	add	s0,s0,176
   13fb0:	fc849ee3          	bne	s1,s0,13f8c <_fwalk+0x5c>
   13fb4:	0009b983          	ld	s3,0(s3)
   13fb8:	fa099ce3          	bnez	s3,13f70 <_fwalk+0x40>
   13fbc:	04813083          	ld	ra,72(sp)
   13fc0:	04013403          	ld	s0,64(sp)
   13fc4:	03813483          	ld	s1,56(sp)
   13fc8:	02813983          	ld	s3,40(sp)
   13fcc:	02013a03          	ld	s4,32(sp)
   13fd0:	01813a83          	ld	s5,24(sp)
   13fd4:	01013b03          	ld	s6,16(sp)
   13fd8:	00813b83          	ld	s7,8(sp)
   13fdc:	00090513          	mv	a0,s2
   13fe0:	03013903          	ld	s2,48(sp)
   13fe4:	05010113          	add	sp,sp,80
   13fe8:	00008067          	ret

0000000000013fec <_fwalk_reent>:
   13fec:	fb010113          	add	sp,sp,-80
   13ff0:	03213823          	sd	s2,48(sp)
   13ff4:	03313423          	sd	s3,40(sp)
   13ff8:	03413023          	sd	s4,32(sp)
   13ffc:	01513c23          	sd	s5,24(sp)
   14000:	01613823          	sd	s6,16(sp)
   14004:	01713423          	sd	s7,8(sp)
   14008:	01813023          	sd	s8,0(sp)
   1400c:	04113423          	sd	ra,72(sp)
   14010:	04813023          	sd	s0,64(sp)
   14014:	02913c23          	sd	s1,56(sp)
   14018:	00050993          	mv	s3,a0
   1401c:	00058b13          	mv	s6,a1
   14020:	52050a13          	add	s4,a0,1312
   14024:	00000913          	li	s2,0
   14028:	0b000b93          	li	s7,176
   1402c:	00100c13          	li	s8,1
   14030:	fff00a93          	li	s5,-1
   14034:	008a2483          	lw	s1,8(s4)
   14038:	010a3403          	ld	s0,16(s4)
   1403c:	04905063          	blez	s1,1407c <_fwalk_reent+0x90>
   14040:	02049493          	sll	s1,s1,0x20
   14044:	0204d493          	srl	s1,s1,0x20
   14048:	037484b3          	mul	s1,s1,s7
   1404c:	009404b3          	add	s1,s0,s1
   14050:	01045783          	lhu	a5,16(s0)
   14054:	02fc7063          	bgeu	s8,a5,14074 <_fwalk_reent+0x88>
   14058:	01241783          	lh	a5,18(s0)
   1405c:	00040593          	mv	a1,s0
   14060:	00098513          	mv	a0,s3
   14064:	01578863          	beq	a5,s5,14074 <_fwalk_reent+0x88>
   14068:	000b00e7          	jalr	s6
   1406c:	01256933          	or	s2,a0,s2
   14070:	0009091b          	sext.w	s2,s2
   14074:	0b040413          	add	s0,s0,176
   14078:	fc849ce3          	bne	s1,s0,14050 <_fwalk_reent+0x64>
   1407c:	000a3a03          	ld	s4,0(s4)
   14080:	fa0a1ae3          	bnez	s4,14034 <_fwalk_reent+0x48>
   14084:	04813083          	ld	ra,72(sp)
   14088:	04013403          	ld	s0,64(sp)
   1408c:	03813483          	ld	s1,56(sp)
   14090:	02813983          	ld	s3,40(sp)
   14094:	02013a03          	ld	s4,32(sp)
   14098:	01813a83          	ld	s5,24(sp)
   1409c:	01013b03          	ld	s6,16(sp)
   140a0:	00813b83          	ld	s7,8(sp)
   140a4:	00013c03          	ld	s8,0(sp)
   140a8:	00090513          	mv	a0,s2
   140ac:	03013903          	ld	s2,48(sp)
   140b0:	05010113          	add	sp,sp,80
   140b4:	00008067          	ret

00000000000140b8 <eshdn1>:
   140b8:	00450693          	add	a3,a0,4
   140bc:	00000713          	li	a4,0
   140c0:	01a50513          	add	a0,a0,26
   140c4:	ffff8837          	lui	a6,0xffff8
   140c8:	0006d783          	lhu	a5,0(a3)
   140cc:	0017f613          	and	a2,a5,1
   140d0:	00060463          	beqz	a2,140d8 <eshdn1+0x20>
   140d4:	00176713          	or	a4,a4,1
   140d8:	00277613          	and	a2,a4,2
   140dc:	0017d793          	srl	a5,a5,0x1
   140e0:	0017171b          	sllw	a4,a4,0x1
   140e4:	0107e5b3          	or	a1,a5,a6
   140e8:	00060663          	beqz	a2,140f4 <eshdn1+0x3c>
   140ec:	03059793          	sll	a5,a1,0x30
   140f0:	0307d793          	srl	a5,a5,0x30
   140f4:	00f69023          	sh	a5,0(a3)
   140f8:	03071713          	sll	a4,a4,0x30
   140fc:	00268693          	add	a3,a3,2
   14100:	03075713          	srl	a4,a4,0x30
   14104:	fcd512e3          	bne	a0,a3,140c8 <eshdn1+0x10>
   14108:	00008067          	ret

000000000001410c <eshup1>:
   1410c:	01850693          	add	a3,a0,24
   14110:	00000713          	li	a4,0
   14114:	00250513          	add	a0,a0,2
   14118:	0006d783          	lhu	a5,0(a3)
   1411c:	00f7d613          	srl	a2,a5,0xf
   14120:	0017979b          	sllw	a5,a5,0x1
   14124:	00060463          	beqz	a2,1412c <eshup1+0x20>
   14128:	00176713          	or	a4,a4,1
   1412c:	00277613          	and	a2,a4,2
   14130:	03079793          	sll	a5,a5,0x30
   14134:	0017171b          	sllw	a4,a4,0x1
   14138:	0307d793          	srl	a5,a5,0x30
   1413c:	00060463          	beqz	a2,14144 <eshup1+0x38>
   14140:	0017e793          	or	a5,a5,1
   14144:	00f69023          	sh	a5,0(a3)
   14148:	03071713          	sll	a4,a4,0x30
   1414c:	ffe68693          	add	a3,a3,-2
   14150:	03075713          	srl	a4,a4,0x30
   14154:	fcd512e3          	bne	a0,a3,14118 <eshup1+0xc>
   14158:	00008067          	ret

000000000001415c <m16m>:
   1415c:	fe010113          	add	sp,sp,-32
   14160:	00010e37          	lui	t3,0x10
   14164:	00011b23          	sh	zero,22(sp)
   14168:	00011c23          	sh	zero,24(sp)
   1416c:	01858593          	add	a1,a1,24
   14170:	01810793          	add	a5,sp,24
   14174:	00410813          	add	a6,sp,4
   14178:	fffe0e13          	add	t3,t3,-1 # ffff <exit-0xe9>
   1417c:	0005d703          	lhu	a4,0(a1)
   14180:	ffe78793          	add	a5,a5,-2
   14184:	ffe58593          	add	a1,a1,-2
   14188:	02070a63          	beqz	a4,141bc <m16m+0x60>
   1418c:	02a70733          	mul	a4,a4,a0
   14190:	0027d883          	lhu	a7,2(a5)
   14194:	0007d303          	lhu	t1,0(a5)
   14198:	01c776b3          	and	a3,a4,t3
   1419c:	011686b3          	add	a3,a3,a7
   141a0:	01075713          	srl	a4,a4,0x10
   141a4:	0106d893          	srl	a7,a3,0x10
   141a8:	00670733          	add	a4,a4,t1
   141ac:	01170733          	add	a4,a4,a7
   141b0:	00e79023          	sh	a4,0(a5)
   141b4:	00d79123          	sh	a3,2(a5)
   141b8:	01075713          	srl	a4,a4,0x10
   141bc:	fee79f23          	sh	a4,-2(a5)
   141c0:	fb079ee3          	bne	a5,a6,1417c <m16m+0x20>
   141c4:	00460613          	add	a2,a2,4
   141c8:	01a10693          	add	a3,sp,26
   141cc:	0007d703          	lhu	a4,0(a5)
   141d0:	00278793          	add	a5,a5,2
   141d4:	00260613          	add	a2,a2,2
   141d8:	fee61f23          	sh	a4,-2(a2)
   141dc:	fef698e3          	bne	a3,a5,141cc <m16m+0x70>
   141e0:	02010113          	add	sp,sp,32
   141e4:	00008067          	ret

00000000000141e8 <emovo.constprop.0>:
   141e8:	00055703          	lhu	a4,0(a0)
   141ec:	00255783          	lhu	a5,2(a0)
   141f0:	00070663          	beqz	a4,141fc <emovo.constprop.0+0x14>
   141f4:	00008737          	lui	a4,0x8
   141f8:	00e7e7b3          	or	a5,a5,a4
   141fc:	00f59923          	sh	a5,18(a1)
   14200:	00255703          	lhu	a4,2(a0)
   14204:	000087b7          	lui	a5,0x8
   14208:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   1420c:	02f70463          	beq	a4,a5,14234 <emovo.constprop.0+0x4c>
   14210:	00650793          	add	a5,a0,6
   14214:	01058593          	add	a1,a1,16
   14218:	01850513          	add	a0,a0,24
   1421c:	0007d703          	lhu	a4,0(a5)
   14220:	00278793          	add	a5,a5,2
   14224:	ffe58593          	add	a1,a1,-2
   14228:	00e59123          	sh	a4,2(a1)
   1422c:	fea798e3          	bne	a5,a0,1421c <emovo.constprop.0+0x34>
   14230:	00008067          	ret
   14234:	00650793          	add	a5,a0,6
   14238:	01a50513          	add	a0,a0,26
   1423c:	0007d703          	lhu	a4,0(a5)
   14240:	00278793          	add	a5,a5,2
   14244:	02071a63          	bnez	a4,14278 <emovo.constprop.0+0x90>
   14248:	fef51ae3          	bne	a0,a5,1423c <emovo.constprop.0+0x54>
   1424c:	01258713          	add	a4,a1,18
   14250:	00058793          	mv	a5,a1
   14254:	00278793          	add	a5,a5,2
   14258:	fe079f23          	sh	zero,-2(a5)
   1425c:	fee79ce3          	bne	a5,a4,14254 <emovo.constprop.0+0x6c>
   14260:	0125d783          	lhu	a5,18(a1)
   14264:	00008737          	lui	a4,0x8
   14268:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   1426c:	00e7e7b3          	or	a5,a5,a4
   14270:	00f59923          	sh	a5,18(a1)
   14274:	00008067          	ret
   14278:	01058713          	add	a4,a1,16
   1427c:	00058793          	mv	a5,a1
   14280:	00278793          	add	a5,a5,2
   14284:	fe079f23          	sh	zero,-2(a5)
   14288:	fee79ce3          	bne	a5,a4,14280 <emovo.constprop.0+0x98>
   1428c:	ffffc7b7          	lui	a5,0xffffc
   14290:	00f59823          	sh	a5,16(a1)
   14294:	ffff87b7          	lui	a5,0xffff8
   14298:	fff7c793          	not	a5,a5
   1429c:	00f59923          	sh	a5,18(a1)
   142a0:	00008067          	ret

00000000000142a4 <enormlz>:
   142a4:	00455783          	lhu	a5,4(a0)
   142a8:	fe010113          	add	sp,sp,-32
   142ac:	00913423          	sd	s1,8(sp)
   142b0:	00113c23          	sd	ra,24(sp)
   142b4:	00813823          	sd	s0,16(sp)
   142b8:	01213023          	sd	s2,0(sp)
   142bc:	00050493          	mv	s1,a0
   142c0:	0c079663          	bnez	a5,1438c <enormlz+0xe8>
   142c4:	00655783          	lhu	a5,6(a0)
   142c8:	00000413          	li	s0,0
   142cc:	00f7d713          	srl	a4,a5,0xf
   142d0:	0a071063          	bnez	a4,14370 <enormlz+0xcc>
   142d4:	01850693          	add	a3,a0,24
   142d8:	0a000613          	li	a2,160
   142dc:	02079663          	bnez	a5,14308 <enormlz+0x64>
   142e0:	00448793          	add	a5,s1,4
   142e4:	0027d703          	lhu	a4,2(a5) # ffffffffffff8002 <__BSS_END__+0xfffffffffffd2482>
   142e8:	00278793          	add	a5,a5,2
   142ec:	fee79f23          	sh	a4,-2(a5)
   142f0:	fed79ae3          	bne	a5,a3,142e4 <enormlz+0x40>
   142f4:	00049c23          	sh	zero,24(s1)
   142f8:	0104041b          	addw	s0,s0,16
   142fc:	06c40a63          	beq	s0,a2,14370 <enormlz+0xcc>
   14300:	0064d783          	lhu	a5,6(s1)
   14304:	fc078ee3          	beqz	a5,142e0 <enormlz+0x3c>
   14308:	0ff00713          	li	a4,255
   1430c:	04f76063          	bltu	a4,a5,1434c <enormlz+0xa8>
   14310:	01848813          	add	a6,s1,24
   14314:	00248593          	add	a1,s1,2
   14318:	0ff00513          	li	a0,255
   1431c:	00000793          	li	a5,0
   14320:	00080713          	mv	a4,a6
   14324:	00075683          	lhu	a3,0(a4)
   14328:	ffe70713          	add	a4,a4,-2
   1432c:	0086961b          	sllw	a2,a3,0x8
   14330:	00c7e7b3          	or	a5,a5,a2
   14334:	00f71123          	sh	a5,2(a4)
   14338:	0086d793          	srl	a5,a3,0x8
   1433c:	feb714e3          	bne	a4,a1,14324 <enormlz+0x80>
   14340:	0064d783          	lhu	a5,6(s1)
   14344:	0084041b          	addw	s0,s0,8
   14348:	fcf57ae3          	bgeu	a0,a5,1431c <enormlz+0x78>
   1434c:	0a000913          	li	s2,160
   14350:	0140006f          	j	14364 <enormlz+0xc0>
   14354:	0014041b          	addw	s0,s0,1
   14358:	db5ff0ef          	jal	1410c <eshup1>
   1435c:	00894a63          	blt	s2,s0,14370 <enormlz+0xcc>
   14360:	0064d783          	lhu	a5,6(s1)
   14364:	00f7d793          	srl	a5,a5,0xf
   14368:	00048513          	mv	a0,s1
   1436c:	fe0784e3          	beqz	a5,14354 <enormlz+0xb0>
   14370:	01813083          	ld	ra,24(sp)
   14374:	00040513          	mv	a0,s0
   14378:	01013403          	ld	s0,16(sp)
   1437c:	00813483          	ld	s1,8(sp)
   14380:	00013903          	ld	s2,0(sp)
   14384:	02010113          	add	sp,sp,32
   14388:	00008067          	ret
   1438c:	0ff00713          	li	a4,255
   14390:	00000413          	li	s0,0
   14394:	04f76063          	bltu	a4,a5,143d4 <enormlz+0x130>
   14398:	f6f00913          	li	s2,-145
   1439c:	0140006f          	j	143b0 <enormlz+0x10c>
   143a0:	fff4041b          	addw	s0,s0,-1
   143a4:	d15ff0ef          	jal	140b8 <eshdn1>
   143a8:	fd2404e3          	beq	s0,s2,14370 <enormlz+0xcc>
   143ac:	0044d783          	lhu	a5,4(s1)
   143b0:	00048513          	mv	a0,s1
   143b4:	fe0796e3          	bnez	a5,143a0 <enormlz+0xfc>
   143b8:	01813083          	ld	ra,24(sp)
   143bc:	00040513          	mv	a0,s0
   143c0:	01013403          	ld	s0,16(sp)
   143c4:	00813483          	ld	s1,8(sp)
   143c8:	00013903          	ld	s2,0(sp)
   143cc:	02010113          	add	sp,sp,32
   143d0:	00008067          	ret
   143d4:	00450713          	add	a4,a0,4
   143d8:	01a50593          	add	a1,a0,26
   143dc:	00000793          	li	a5,0
   143e0:	00075683          	lhu	a3,0(a4)
   143e4:	00270713          	add	a4,a4,2
   143e8:	0086d61b          	srlw	a2,a3,0x8
   143ec:	00c7e7b3          	or	a5,a5,a2
   143f0:	0086969b          	sllw	a3,a3,0x8
   143f4:	fef71f23          	sh	a5,-2(a4)
   143f8:	03069793          	sll	a5,a3,0x30
   143fc:	0307d793          	srl	a5,a5,0x30
   14400:	feb710e3          	bne	a4,a1,143e0 <enormlz+0x13c>
   14404:	0044d783          	lhu	a5,4(s1)
   14408:	ff800413          	li	s0,-8
   1440c:	f8dff06f          	j	14398 <enormlz+0xf4>

0000000000014410 <eshift.part.0>:
   14410:	fd010113          	add	sp,sp,-48
   14414:	02813023          	sd	s0,32(sp)
   14418:	00913c23          	sd	s1,24(sp)
   1441c:	02113423          	sd	ra,40(sp)
   14420:	01213823          	sd	s2,16(sp)
   14424:	01313423          	sd	s3,8(sp)
   14428:	00058493          	mv	s1,a1
   1442c:	00050413          	mv	s0,a0
   14430:	0a05c463          	bltz	a1,144d8 <eshift.part.0+0xc8>
   14434:	00f00793          	li	a5,15
   14438:	00058613          	mv	a2,a1
   1443c:	00450513          	add	a0,a0,4
   14440:	01840693          	add	a3,s0,24
   14444:	00f00593          	li	a1,15
   14448:	0297d463          	bge	a5,s1,14470 <eshift.part.0+0x60>
   1444c:	00050793          	mv	a5,a0
   14450:	0027d703          	lhu	a4,2(a5)
   14454:	00278793          	add	a5,a5,2
   14458:	fee79f23          	sh	a4,-2(a5)
   1445c:	fef69ae3          	bne	a3,a5,14450 <eshift.part.0+0x40>
   14460:	00041c23          	sh	zero,24(s0)
   14464:	ff06061b          	addw	a2,a2,-16
   14468:	fec5c2e3          	blt	a1,a2,1444c <eshift.part.0+0x3c>
   1446c:	00f4f493          	and	s1,s1,15
   14470:	00700793          	li	a5,7
   14474:	0297d863          	bge	a5,s1,144a4 <eshift.part.0+0x94>
   14478:	01840713          	add	a4,s0,24
   1447c:	00240593          	add	a1,s0,2
   14480:	00000793          	li	a5,0
   14484:	00075683          	lhu	a3,0(a4)
   14488:	ffe70713          	add	a4,a4,-2
   1448c:	0086961b          	sllw	a2,a3,0x8
   14490:	00c7e7b3          	or	a5,a5,a2
   14494:	00f71123          	sh	a5,2(a4)
   14498:	0086d793          	srl	a5,a3,0x8
   1449c:	feb714e3          	bne	a4,a1,14484 <eshift.part.0+0x74>
   144a0:	ff84849b          	addw	s1,s1,-8
   144a4:	00048a63          	beqz	s1,144b8 <eshift.part.0+0xa8>
   144a8:	fff4849b          	addw	s1,s1,-1
   144ac:	00040513          	mv	a0,s0
   144b0:	c5dff0ef          	jal	1410c <eshup1>
   144b4:	fe049ae3          	bnez	s1,144a8 <eshift.part.0+0x98>
   144b8:	00000513          	li	a0,0
   144bc:	02813083          	ld	ra,40(sp)
   144c0:	02013403          	ld	s0,32(sp)
   144c4:	01813483          	ld	s1,24(sp)
   144c8:	01013903          	ld	s2,16(sp)
   144cc:	00813983          	ld	s3,8(sp)
   144d0:	03010113          	add	sp,sp,48
   144d4:	00008067          	ret
   144d8:	ff100793          	li	a5,-15
   144dc:	40b0093b          	negw	s2,a1
   144e0:	00000993          	li	s3,0
   144e4:	01850593          	add	a1,a0,24
   144e8:	00450693          	add	a3,a0,4
   144ec:	00f00613          	li	a2,15
   144f0:	0cf4dc63          	bge	s1,a5,145c8 <eshift.part.0+0x1b8>
   144f4:	01845703          	lhu	a4,24(s0)
   144f8:	00058793          	mv	a5,a1
   144fc:	00e9e9b3          	or	s3,s3,a4
   14500:	ffe7d703          	lhu	a4,-2(a5)
   14504:	ffe78793          	add	a5,a5,-2
   14508:	00e79123          	sh	a4,2(a5)
   1450c:	fed79ae3          	bne	a5,a3,14500 <eshift.part.0+0xf0>
   14510:	00041223          	sh	zero,4(s0)
   14514:	ff09091b          	addw	s2,s2,-16
   14518:	fd264ee3          	blt	a2,s2,144f4 <eshift.part.0+0xe4>
   1451c:	ff000913          	li	s2,-16
   14520:	ff100713          	li	a4,-15
   14524:	4099093b          	subw	s2,s2,s1
   14528:	00000793          	li	a5,0
   1452c:	08e4c863          	blt	s1,a4,145bc <eshift.part.0+0x1ac>
   14530:	00f9093b          	addw	s2,s2,a5
   14534:	00700793          	li	a5,7
   14538:	0327de63          	bge	a5,s2,14574 <eshift.part.0+0x164>
   1453c:	01844783          	lbu	a5,24(s0)
   14540:	01a40593          	add	a1,s0,26
   14544:	00f9e9b3          	or	s3,s3,a5
   14548:	00000793          	li	a5,0
   1454c:	0006d703          	lhu	a4,0(a3)
   14550:	00268693          	add	a3,a3,2
   14554:	0087561b          	srlw	a2,a4,0x8
   14558:	00c7e7b3          	or	a5,a5,a2
   1455c:	0087171b          	sllw	a4,a4,0x8
   14560:	fef69f23          	sh	a5,-2(a3)
   14564:	03071793          	sll	a5,a4,0x30
   14568:	0307d793          	srl	a5,a5,0x30
   1456c:	feb690e3          	bne	a3,a1,1454c <eshift.part.0+0x13c>
   14570:	ff89091b          	addw	s2,s2,-8
   14574:	01303533          	snez	a0,s3
   14578:	f40902e3          	beqz	s2,144bc <eshift.part.0+0xac>
   1457c:	01845783          	lhu	a5,24(s0)
   14580:	fff9091b          	addw	s2,s2,-1
   14584:	00040513          	mv	a0,s0
   14588:	0017f793          	and	a5,a5,1
   1458c:	00f9e9b3          	or	s3,s3,a5
   14590:	b29ff0ef          	jal	140b8 <eshdn1>
   14594:	fe0914e3          	bnez	s2,1457c <eshift.part.0+0x16c>
   14598:	02813083          	ld	ra,40(sp)
   1459c:	02013403          	ld	s0,32(sp)
   145a0:	0009899b          	sext.w	s3,s3
   145a4:	01813483          	ld	s1,24(sp)
   145a8:	01013903          	ld	s2,16(sp)
   145ac:	01303533          	snez	a0,s3
   145b0:	00813983          	ld	s3,8(sp)
   145b4:	03010113          	add	sp,sp,48
   145b8:	00008067          	ret
   145bc:	ff097793          	and	a5,s2,-16
   145c0:	40f007bb          	negw	a5,a5
   145c4:	f6dff06f          	j	14530 <eshift.part.0+0x120>
   145c8:	ff900793          	li	a5,-7
   145cc:	f6f4c8e3          	blt	s1,a5,1453c <eshift.part.0+0x12c>
   145d0:	fadff06f          	j	1457c <eshift.part.0+0x16c>

00000000000145d4 <emovi>:
   145d4:	01255783          	lhu	a5,18(a0)
   145d8:	000086b7          	lui	a3,0x8
   145dc:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   145e0:	00f7d79b          	srlw	a5,a5,0xf
   145e4:	40f007bb          	negw	a5,a5
   145e8:	00f59023          	sh	a5,0(a1)
   145ec:	01255703          	lhu	a4,18(a0)
   145f0:	01050793          	add	a5,a0,16
   145f4:	00d77733          	and	a4,a4,a3
   145f8:	00e59123          	sh	a4,2(a1)
   145fc:	0007061b          	sext.w	a2,a4
   14600:	02d70663          	beq	a4,a3,1462c <emovi+0x58>
   14604:	00658713          	add	a4,a1,6
   14608:	00059223          	sh	zero,4(a1)
   1460c:	ffe50513          	add	a0,a0,-2
   14610:	0007d683          	lhu	a3,0(a5)
   14614:	ffe78793          	add	a5,a5,-2
   14618:	00270713          	add	a4,a4,2
   1461c:	fed71f23          	sh	a3,-2(a4)
   14620:	fea798e3          	bne	a5,a0,14610 <emovi+0x3c>
   14624:	00059c23          	sh	zero,24(a1)
   14628:	00008067          	ret
   1462c:	01255703          	lhu	a4,18(a0)
   14630:	00c77733          	and	a4,a4,a2
   14634:	00c71e63          	bne	a4,a2,14650 <emovi+0x7c>
   14638:	01250613          	add	a2,a0,18
   1463c:	00050713          	mv	a4,a0
   14640:	00075683          	lhu	a3,0(a4)
   14644:	00270713          	add	a4,a4,2
   14648:	02069063          	bnez	a3,14668 <emovi+0x94>
   1464c:	fec71ae3          	bne	a4,a2,14640 <emovi+0x6c>
   14650:	00458793          	add	a5,a1,4
   14654:	01a58593          	add	a1,a1,26
   14658:	00278793          	add	a5,a5,2
   1465c:	fe079f23          	sh	zero,-2(a5)
   14660:	feb79ce3          	bne	a5,a1,14658 <emovi+0x84>
   14664:	00008067          	ret
   14668:	00658713          	add	a4,a1,6
   1466c:	00059223          	sh	zero,4(a1)
   14670:	ffc50513          	add	a0,a0,-4
   14674:	0007d683          	lhu	a3,0(a5)
   14678:	ffe78793          	add	a5,a5,-2
   1467c:	00270713          	add	a4,a4,2
   14680:	fed71f23          	sh	a3,-2(a4)
   14684:	fef518e3          	bne	a0,a5,14674 <emovi+0xa0>
   14688:	00008067          	ret

000000000001468c <ecmp>:
   1468c:	01255783          	lhu	a5,18(a0)
   14690:	fb010113          	add	sp,sp,-80
   14694:	04813023          	sd	s0,64(sp)
   14698:	fff7c793          	not	a5,a5
   1469c:	04113423          	sd	ra,72(sp)
   146a0:	03179713          	sll	a4,a5,0x31
   146a4:	00058413          	mv	s0,a1
   146a8:	00071e63          	bnez	a4,146c4 <ecmp+0x38>
   146ac:	01250693          	add	a3,a0,18
   146b0:	00050793          	mv	a5,a0
   146b4:	0007d703          	lhu	a4,0(a5)
   146b8:	00278793          	add	a5,a5,2
   146bc:	08071c63          	bnez	a4,14754 <ecmp+0xc8>
   146c0:	fed79ae3          	bne	a5,a3,146b4 <ecmp+0x28>
   146c4:	01245783          	lhu	a5,18(s0)
   146c8:	fff7c793          	not	a5,a5
   146cc:	03179713          	sll	a4,a5,0x31
   146d0:	06070063          	beqz	a4,14730 <ecmp+0xa4>
   146d4:	00010593          	mv	a1,sp
   146d8:	efdff0ef          	jal	145d4 <emovi>
   146dc:	02010593          	add	a1,sp,32
   146e0:	00040513          	mv	a0,s0
   146e4:	ef1ff0ef          	jal	145d4 <emovi>
   146e8:	00015583          	lhu	a1,0(sp)
   146ec:	02015783          	lhu	a5,32(sp)
   146f0:	06b78c63          	beq	a5,a1,14768 <ecmp+0xdc>
   146f4:	00210793          	add	a5,sp,2
   146f8:	02210713          	add	a4,sp,34
   146fc:	01810613          	add	a2,sp,24
   14700:	0007d683          	lhu	a3,0(a5)
   14704:	00278793          	add	a5,a5,2
   14708:	0a069663          	bnez	a3,147b4 <ecmp+0x128>
   1470c:	00075683          	lhu	a3,0(a4)
   14710:	00270713          	add	a4,a4,2
   14714:	0a069063          	bnez	a3,147b4 <ecmp+0x128>
   14718:	fef614e3          	bne	a2,a5,14700 <ecmp+0x74>
   1471c:	00000513          	li	a0,0
   14720:	04813083          	ld	ra,72(sp)
   14724:	04013403          	ld	s0,64(sp)
   14728:	05010113          	add	sp,sp,80
   1472c:	00008067          	ret
   14730:	00040793          	mv	a5,s0
   14734:	0007d703          	lhu	a4,0(a5)
   14738:	01240693          	add	a3,s0,18
   1473c:	00278793          	add	a5,a5,2
   14740:	00071a63          	bnez	a4,14754 <ecmp+0xc8>
   14744:	f8d788e3          	beq	a5,a3,146d4 <ecmp+0x48>
   14748:	0007d703          	lhu	a4,0(a5)
   1474c:	00278793          	add	a5,a5,2
   14750:	fe070ae3          	beqz	a4,14744 <ecmp+0xb8>
   14754:	04813083          	ld	ra,72(sp)
   14758:	04013403          	ld	s0,64(sp)
   1475c:	ffe00513          	li	a0,-2
   14760:	05010113          	add	sp,sp,80
   14764:	00008067          	ret
   14768:	fff00513          	li	a0,-1
   1476c:	06058063          	beqz	a1,147cc <ecmp+0x140>
   14770:	00010793          	mv	a5,sp
   14774:	0007d603          	lhu	a2,0(a5)
   14778:	02015683          	lhu	a3,32(sp)
   1477c:	02010713          	add	a4,sp,32
   14780:	01810593          	add	a1,sp,24
   14784:	00278793          	add	a5,a5,2
   14788:	00270713          	add	a4,a4,2
   1478c:	00d61e63          	bne	a2,a3,147a8 <ecmp+0x11c>
   14790:	f8b786e3          	beq	a5,a1,1471c <ecmp+0x90>
   14794:	0007d603          	lhu	a2,0(a5)
   14798:	00075683          	lhu	a3,0(a4)
   1479c:	00278793          	add	a5,a5,2
   147a0:	00270713          	add	a4,a4,2
   147a4:	fed606e3          	beq	a2,a3,14790 <ecmp+0x104>
   147a8:	f6c6ece3          	bltu	a3,a2,14720 <ecmp+0x94>
   147ac:	40a0053b          	negw	a0,a0
   147b0:	f71ff06f          	j	14720 <ecmp+0x94>
   147b4:	02059063          	bnez	a1,147d4 <ecmp+0x148>
   147b8:	04813083          	ld	ra,72(sp)
   147bc:	04013403          	ld	s0,64(sp)
   147c0:	00100513          	li	a0,1
   147c4:	05010113          	add	sp,sp,80
   147c8:	00008067          	ret
   147cc:	00100513          	li	a0,1
   147d0:	fa1ff06f          	j	14770 <ecmp+0xe4>
   147d4:	fff00513          	li	a0,-1
   147d8:	f49ff06f          	j	14720 <ecmp+0x94>

00000000000147dc <emdnorm>:
   147dc:	fc010113          	add	sp,sp,-64
   147e0:	02813823          	sd	s0,48(sp)
   147e4:	02913423          	sd	s1,40(sp)
   147e8:	03213023          	sd	s2,32(sp)
   147ec:	01313c23          	sd	s3,24(sp)
   147f0:	01413823          	sd	s4,16(sp)
   147f4:	01513423          	sd	s5,8(sp)
   147f8:	00068913          	mv	s2,a3
   147fc:	00078413          	mv	s0,a5
   14800:	02113c23          	sd	ra,56(sp)
   14804:	00050493          	mv	s1,a0
   14808:	00058993          	mv	s3,a1
   1480c:	00060a13          	mv	s4,a2
   14810:	00070a93          	mv	s5,a4
   14814:	a91ff0ef          	jal	142a4 <enormlz>
   14818:	09000793          	li	a5,144
   1481c:	40a90933          	sub	s2,s2,a0
   14820:	18a7d863          	bge	a5,a0,149b0 <emdnorm+0x1d4>
   14824:	000087b7          	lui	a5,0x8
   14828:	ffe78793          	add	a5,a5,-2 # 7ffe <exit-0x80ea>
   1482c:	2d27da63          	bge	a5,s2,14b00 <emdnorm+0x324>
   14830:	220a8a63          	beqz	s5,14a64 <emdnorm+0x288>
   14834:	00442a83          	lw	s5,4(s0)
   14838:	00042783          	lw	a5,0(s0)
   1483c:	28fa8a63          	beq	s5,a5,14ad0 <emdnorm+0x2f4>
   14840:	01a40713          	add	a4,s0,26
   14844:	03440793          	add	a5,s0,52
   14848:	00270713          	add	a4,a4,2
   1484c:	fe071f23          	sh	zero,-2(a4)
   14850:	fee79ce3          	bne	a5,a4,14848 <emdnorm+0x6c>
   14854:	03800793          	li	a5,56
   14858:	38fa8863          	beq	s5,a5,14be8 <emdnorm+0x40c>
   1485c:	1b57da63          	bge	a5,s5,14a10 <emdnorm+0x234>
   14860:	04000793          	li	a5,64
   14864:	2afa8a63          	beq	s5,a5,14b18 <emdnorm+0x33c>
   14868:	07100793          	li	a5,113
   1486c:	3afa9c63          	bne	s5,a5,14c24 <emdnorm+0x448>
   14870:	400087b7          	lui	a5,0x40008
   14874:	00a00693          	li	a3,10
   14878:	ffff8737          	lui	a4,0xffff8
   1487c:	fff78793          	add	a5,a5,-1 # 40007fff <__BSS_END__+0x3ffe247f>
   14880:	00d42423          	sw	a3,8(s0)
   14884:	00f42a23          	sw	a5,20(s0)
   14888:	00e41c23          	sh	a4,24(s0)
   1488c:	00d42623          	sw	a3,12(s0)
   14890:	02e41723          	sh	a4,46(s0)
   14894:	01542023          	sw	s5,0(s0)
   14898:	23205063          	blez	s2,14ab8 <emdnorm+0x2dc>
   1489c:	0144d603          	lhu	a2,20(s1)
   148a0:	01448593          	add	a1,s1,20
   148a4:	00b00793          	li	a5,11
   148a8:	03161613          	sll	a2,a2,0x31
   148ac:	03165613          	srl	a2,a2,0x31
   148b0:	00c00713          	li	a4,12
   148b4:	40f7073b          	subw	a4,a4,a5
   148b8:	02071713          	sll	a4,a4,0x20
   148bc:	02075713          	srl	a4,a4,0x20
   148c0:	00f70733          	add	a4,a4,a5
   148c4:	00171713          	sll	a4,a4,0x1
   148c8:	00179793          	sll	a5,a5,0x1
   148cc:	00248693          	add	a3,s1,2
   148d0:	00f487b3          	add	a5,s1,a5
   148d4:	00d70733          	add	a4,a4,a3
   148d8:	0007d683          	lhu	a3,0(a5)
   148dc:	00068463          	beqz	a3,148e4 <emdnorm+0x108>
   148e0:	00166613          	or	a2,a2,1
   148e4:	00079023          	sh	zero,0(a5)
   148e8:	00278793          	add	a5,a5,2
   148ec:	fef716e3          	bne	a4,a5,148d8 <emdnorm+0xfc>
   148f0:	0005d703          	lhu	a4,0(a1)
   148f4:	01445683          	lhu	a3,20(s0)
   148f8:	fff6c693          	not	a3,a3
   148fc:	00d77733          	and	a4,a4,a3
   14900:	00e59023          	sh	a4,0(a1)
   14904:	01645783          	lhu	a5,22(s0)
   14908:	00c7f733          	and	a4,a5,a2
   1490c:	06070063          	beqz	a4,1496c <emdnorm+0x190>
   14910:	02c79263          	bne	a5,a2,14934 <emdnorm+0x158>
   14914:	2c099663          	bnez	s3,14be0 <emdnorm+0x404>
   14918:	00c42783          	lw	a5,12(s0)
   1491c:	01845703          	lhu	a4,24(s0)
   14920:	00179793          	sll	a5,a5,0x1
   14924:	00f487b3          	add	a5,s1,a5
   14928:	0007d783          	lhu	a5,0(a5)
   1492c:	00e7f7b3          	and	a5,a5,a4
   14930:	02078e63          	beqz	a5,1496c <emdnorm+0x190>
   14934:	03240793          	add	a5,s0,50
   14938:	01848613          	add	a2,s1,24
   1493c:	00248513          	add	a0,s1,2
   14940:	00000593          	li	a1,0
   14944:	0007d703          	lhu	a4,0(a5)
   14948:	00065683          	lhu	a3,0(a2)
   1494c:	ffe60613          	add	a2,a2,-2
   14950:	ffe78793          	add	a5,a5,-2
   14954:	00d70733          	add	a4,a4,a3
   14958:	00b70733          	add	a4,a4,a1
   1495c:	01075593          	srl	a1,a4,0x10
   14960:	00e61123          	sh	a4,2(a2)
   14964:	0015f593          	and	a1,a1,1
   14968:	fcc51ee3          	bne	a0,a2,14944 <emdnorm+0x168>
   1496c:	23205a63          	blez	s2,14ba0 <emdnorm+0x3c4>
   14970:	0044d783          	lhu	a5,4(s1)
   14974:	20079663          	bnez	a5,14b80 <emdnorm+0x3a4>
   14978:	000087b7          	lui	a5,0x8
   1497c:	00049c23          	sh	zero,24(s1)
   14980:	ffe78793          	add	a5,a5,-2 # 7ffe <exit-0x80ea>
   14984:	0f27c263          	blt	a5,s2,14a68 <emdnorm+0x28c>
   14988:	01249123          	sh	s2,2(s1)
   1498c:	03813083          	ld	ra,56(sp)
   14990:	03013403          	ld	s0,48(sp)
   14994:	02813483          	ld	s1,40(sp)
   14998:	02013903          	ld	s2,32(sp)
   1499c:	01813983          	ld	s3,24(sp)
   149a0:	01013a03          	ld	s4,16(sp)
   149a4:	00813a83          	ld	s5,8(sp)
   149a8:	04010113          	add	sp,sp,64
   149ac:	00008067          	ret
   149b0:	04094063          	bltz	s2,149f0 <emdnorm+0x214>
   149b4:	fc0a82e3          	beqz	s5,14978 <emdnorm+0x19c>
   149b8:	00442a83          	lw	s5,4(s0)
   149bc:	00042783          	lw	a5,0(s0)
   149c0:	e8fa90e3          	bne	s5,a5,14840 <emdnorm+0x64>
   149c4:	2d204263          	bgtz	s2,14c88 <emdnorm+0x4ac>
   149c8:	09000713          	li	a4,144
   149cc:	2ce79263          	bne	a5,a4,14c90 <emdnorm+0x4b4>
   149d0:	00842583          	lw	a1,8(s0)
   149d4:	01445683          	lhu	a3,20(s0)
   149d8:	09000a93          	li	s5,144
   149dc:	00159593          	sll	a1,a1,0x1
   149e0:	00b485b3          	add	a1,s1,a1
   149e4:	0005d703          	lhu	a4,0(a1)
   149e8:	00d77633          	and	a2,a4,a3
   149ec:	f0dff06f          	j	148f8 <emdnorm+0x11c>
   149f0:	f7000793          	li	a5,-144
   149f4:	16f95263          	bge	s2,a5,14b58 <emdnorm+0x37c>
   149f8:	00248793          	add	a5,s1,2
   149fc:	01a48493          	add	s1,s1,26
   14a00:	00278793          	add	a5,a5,2
   14a04:	fe079f23          	sh	zero,-2(a5)
   14a08:	fe979ce3          	bne	a5,s1,14a00 <emdnorm+0x224>
   14a0c:	f81ff06f          	j	1498c <emdnorm+0x1b0>
   14a10:	01800793          	li	a5,24
   14a14:	06fa8c63          	beq	s5,a5,14a8c <emdnorm+0x2b0>
   14a18:	03500793          	li	a5,53
   14a1c:	20fa9463          	bne	s5,a5,14c24 <emdnorm+0x448>
   14a20:	000017b7          	lui	a5,0x1
   14a24:	04000737          	lui	a4,0x4000
   14a28:	00600693          	li	a3,6
   14a2c:	80078793          	add	a5,a5,-2048 # 800 <exit-0xf8e8>
   14a30:	7ff70713          	add	a4,a4,2047 # 40007ff <__BSS_END__+0x3fdac7f>
   14a34:	00d42423          	sw	a3,8(s0)
   14a38:	00e42a23          	sw	a4,20(s0)
   14a3c:	00f41c23          	sh	a5,24(s0)
   14a40:	00d42623          	sw	a3,12(s0)
   14a44:	02f41323          	sh	a5,38(s0)
   14a48:	01542023          	sw	s5,0(s0)
   14a4c:	07205663          	blez	s2,14ab8 <emdnorm+0x2dc>
   14a50:	00c4d603          	lhu	a2,12(s1)
   14a54:	00c48593          	add	a1,s1,12
   14a58:	00700793          	li	a5,7
   14a5c:	7ff67613          	and	a2,a2,2047
   14a60:	e51ff06f          	j	148b0 <emdnorm+0xd4>
   14a64:	00049c23          	sh	zero,24(s1)
   14a68:	ffff87b7          	lui	a5,0xffff8
   14a6c:	fff7c793          	not	a5,a5
   14a70:	00f49123          	sh	a5,2(s1)
   14a74:	00448793          	add	a5,s1,4
   14a78:	01848493          	add	s1,s1,24
   14a7c:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd2480>
   14a80:	00278793          	add	a5,a5,2
   14a84:	fe979ce3          	bne	a5,s1,14a7c <emdnorm+0x2a0>
   14a88:	f05ff06f          	j	1498c <emdnorm+0x1b0>
   14a8c:	008007b7          	lui	a5,0x800
   14a90:	00400693          	li	a3,4
   14a94:	10000713          	li	a4,256
   14a98:	0ff78793          	add	a5,a5,255 # 8000ff <__BSS_END__+0x7da57f>
   14a9c:	00d42423          	sw	a3,8(s0)
   14aa0:	00f42a23          	sw	a5,20(s0)
   14aa4:	00e41c23          	sh	a4,24(s0)
   14aa8:	00d42623          	sw	a3,12(s0)
   14aac:	02e41123          	sh	a4,34(s0)
   14ab0:	01542023          	sw	s5,0(s0)
   14ab4:	1b204c63          	bgtz	s2,14c6c <emdnorm+0x490>
   14ab8:	0184d783          	lhu	a5,24(s1)
   14abc:	00048513          	mv	a0,s1
   14ac0:	0017f793          	and	a5,a5,1
   14ac4:	00f9e7b3          	or	a5,s3,a5
   14ac8:	0007899b          	sext.w	s3,a5
   14acc:	decff0ef          	jal	140b8 <eshdn1>
   14ad0:	00842783          	lw	a5,8(s0)
   14ad4:	01445683          	lhu	a3,20(s0)
   14ad8:	08f00513          	li	a0,143
   14adc:	00179593          	sll	a1,a5,0x1
   14ae0:	00b485b3          	add	a1,s1,a1
   14ae4:	0005d703          	lhu	a4,0(a1)
   14ae8:	00d77633          	and	a2,a4,a3
   14aec:	e15546e3          	blt	a0,s5,148f8 <emdnorm+0x11c>
   14af0:	0017879b          	addw	a5,a5,1
   14af4:	00c00513          	li	a0,12
   14af8:	daf55ce3          	bge	a0,a5,148b0 <emdnorm+0xd4>
   14afc:	dfdff06f          	j	148f8 <emdnorm+0x11c>
   14b00:	00248793          	add	a5,s1,2
   14b04:	01a48493          	add	s1,s1,26
   14b08:	00278793          	add	a5,a5,2
   14b0c:	fe079f23          	sh	zero,-2(a5)
   14b10:	fe979ce3          	bne	a5,s1,14b08 <emdnorm+0x32c>
   14b14:	e79ff06f          	j	1498c <emdnorm+0x1b0>
   14b18:	00700793          	li	a5,7
   14b1c:	00f42423          	sw	a5,8(s0)
   14b20:	800107b7          	lui	a5,0x80010
   14b24:	fff78793          	add	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffea47f>
   14b28:	00100713          	li	a4,1
   14b2c:	00f42a23          	sw	a5,20(s0)
   14b30:	00600793          	li	a5,6
   14b34:	00e41c23          	sh	a4,24(s0)
   14b38:	00f42623          	sw	a5,12(s0)
   14b3c:	02e41323          	sh	a4,38(s0)
   14b40:	01542023          	sw	s5,0(s0)
   14b44:	f7205ae3          	blez	s2,14ab8 <emdnorm+0x2dc>
   14b48:	00e4d603          	lhu	a2,14(s1)
   14b4c:	00e48593          	add	a1,s1,14
   14b50:	00800793          	li	a5,8
   14b54:	d5dff06f          	j	148b0 <emdnorm+0xd4>
   14b58:	0009059b          	sext.w	a1,s2
   14b5c:	00048513          	mv	a0,s1
   14b60:	8b1ff0ef          	jal	14410 <eshift.part.0>
   14b64:	0e050a63          	beqz	a0,14c58 <emdnorm+0x47c>
   14b68:	100a8a63          	beqz	s5,14c7c <emdnorm+0x4a0>
   14b6c:	00442a83          	lw	s5,4(s0)
   14b70:	00042783          	lw	a5,0(s0)
   14b74:	00100993          	li	s3,1
   14b78:	ccfa94e3          	bne	s5,a5,14840 <emdnorm+0x64>
   14b7c:	e4dff06f          	j	149c8 <emdnorm+0x1ec>
   14b80:	00048513          	mv	a0,s1
   14b84:	d34ff0ef          	jal	140b8 <eshdn1>
   14b88:	000087b7          	lui	a5,0x8
   14b8c:	00190913          	add	s2,s2,1
   14b90:	00049c23          	sh	zero,24(s1)
   14b94:	ffe78793          	add	a5,a5,-2 # 7ffe <exit-0x80ea>
   14b98:	ed27c8e3          	blt	a5,s2,14a68 <emdnorm+0x28c>
   14b9c:	dedff06f          	j	14988 <emdnorm+0x1ac>
   14ba0:	09000793          	li	a5,144
   14ba4:	02fa8263          	beq	s5,a5,14bc8 <emdnorm+0x3ec>
   14ba8:	00048513          	mv	a0,s1
   14bac:	d60ff0ef          	jal	1410c <eshup1>
   14bb0:	0044d783          	lhu	a5,4(s1)
   14bb4:	00079e63          	bnez	a5,14bd0 <emdnorm+0x3f4>
   14bb8:	00049c23          	sh	zero,24(s1)
   14bbc:	dc0956e3          	bgez	s2,14988 <emdnorm+0x1ac>
   14bc0:	00049123          	sh	zero,2(s1)
   14bc4:	dc9ff06f          	j	1498c <emdnorm+0x1b0>
   14bc8:	0044d783          	lhu	a5,4(s1)
   14bcc:	fe0786e3          	beqz	a5,14bb8 <emdnorm+0x3dc>
   14bd0:	00048513          	mv	a0,s1
   14bd4:	ce4ff0ef          	jal	140b8 <eshdn1>
   14bd8:	00190913          	add	s2,s2,1
   14bdc:	fddff06f          	j	14bb8 <emdnorm+0x3dc>
   14be0:	d40a0ae3          	beqz	s4,14934 <emdnorm+0x158>
   14be4:	d89ff06f          	j	1496c <emdnorm+0x190>
   14be8:	008007b7          	lui	a5,0x800
   14bec:	00600693          	li	a3,6
   14bf0:	10000713          	li	a4,256
   14bf4:	0ff78793          	add	a5,a5,255 # 8000ff <__BSS_END__+0x7da57f>
   14bf8:	00d42423          	sw	a3,8(s0)
   14bfc:	00f42a23          	sw	a5,20(s0)
   14c00:	00e41c23          	sh	a4,24(s0)
   14c04:	00d42623          	sw	a3,12(s0)
   14c08:	02e41323          	sh	a4,38(s0)
   14c0c:	01542023          	sw	s5,0(s0)
   14c10:	eb2054e3          	blez	s2,14ab8 <emdnorm+0x2dc>
   14c14:	00c4c603          	lbu	a2,12(s1)
   14c18:	00c48593          	add	a1,s1,12
   14c1c:	00700793          	li	a5,7
   14c20:	c91ff06f          	j	148b0 <emdnorm+0xd4>
   14c24:	00c00793          	li	a5,12
   14c28:	00f42423          	sw	a5,8(s0)
   14c2c:	800107b7          	lui	a5,0x80010
   14c30:	fff78793          	add	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffea47f>
   14c34:	00100713          	li	a4,1
   14c38:	00f42a23          	sw	a5,20(s0)
   14c3c:	00b00793          	li	a5,11
   14c40:	00f42623          	sw	a5,12(s0)
   14c44:	00e41c23          	sh	a4,24(s0)
   14c48:	02e41823          	sh	a4,48(s0)
   14c4c:	01542023          	sw	s5,0(s0)
   14c50:	000a8793          	mv	a5,s5
   14c54:	d71ff06f          	j	149c4 <emdnorm+0x1e8>
   14c58:	020a8263          	beqz	s5,14c7c <emdnorm+0x4a0>
   14c5c:	00442a83          	lw	s5,4(s0)
   14c60:	00042783          	lw	a5,0(s0)
   14c64:	bcfa9ee3          	bne	s5,a5,14840 <emdnorm+0x64>
   14c68:	d61ff06f          	j	149c8 <emdnorm+0x1ec>
   14c6c:	0084c603          	lbu	a2,8(s1)
   14c70:	00848593          	add	a1,s1,8
   14c74:	00500793          	li	a5,5
   14c78:	c39ff06f          	j	148b0 <emdnorm+0xd4>
   14c7c:	00049c23          	sh	zero,24(s1)
   14c80:	00049123          	sh	zero,2(s1)
   14c84:	d09ff06f          	j	1498c <emdnorm+0x1b0>
   14c88:	00078a93          	mv	s5,a5
   14c8c:	e45ff06f          	j	14ad0 <emdnorm+0x2f4>
   14c90:	00078a93          	mv	s5,a5
   14c94:	e25ff06f          	j	14ab8 <emdnorm+0x2dc>

0000000000014c98 <eiremain>:
   14c98:	fa010113          	add	sp,sp,-96
   14c9c:	05213023          	sd	s2,64(sp)
   14ca0:	03313c23          	sd	s3,56(sp)
   14ca4:	00058913          	mv	s2,a1
   14ca8:	00255983          	lhu	s3,2(a0)
   14cac:	04113c23          	sd	ra,88(sp)
   14cb0:	04813823          	sd	s0,80(sp)
   14cb4:	04913423          	sd	s1,72(sp)
   14cb8:	03413823          	sd	s4,48(sp)
   14cbc:	00060493          	mv	s1,a2
   14cc0:	01713c23          	sd	s7,24(sp)
   14cc4:	03513423          	sd	s5,40(sp)
   14cc8:	03613023          	sd	s6,32(sp)
   14ccc:	01813823          	sd	s8,16(sp)
   14cd0:	01913423          	sd	s9,8(sp)
   14cd4:	01a13023          	sd	s10,0(sp)
   14cd8:	00050b93          	mv	s7,a0
   14cdc:	dc8ff0ef          	jal	142a4 <enormlz>
   14ce0:	00295403          	lhu	s0,2(s2)
   14ce4:	00050793          	mv	a5,a0
   14ce8:	00090513          	mv	a0,s2
   14cec:	40f989b3          	sub	s3,s3,a5
   14cf0:	03448a13          	add	s4,s1,52
   14cf4:	db0ff0ef          	jal	142a4 <enormlz>
   14cf8:	40a40433          	sub	s0,s0,a0
   14cfc:	04e48713          	add	a4,s1,78
   14d00:	000a0793          	mv	a5,s4
   14d04:	00278793          	add	a5,a5,2
   14d08:	fe079f23          	sh	zero,-2(a5)
   14d0c:	fee79ce3          	bne	a5,a4,14d04 <eiremain+0x6c>
   14d10:	09344863          	blt	s0,s3,14da0 <eiremain+0x108>
   14d14:	004b8b13          	add	s6,s7,4
   14d18:	00490a93          	add	s5,s2,4
   14d1c:	01ab8c13          	add	s8,s7,26
   14d20:	00290d13          	add	s10,s2,2
   14d24:	000a8713          	mv	a4,s5
   14d28:	000b0793          	mv	a5,s6
   14d2c:	0007d603          	lhu	a2,0(a5)
   14d30:	00075683          	lhu	a3,0(a4)
   14d34:	00278793          	add	a5,a5,2
   14d38:	00270713          	add	a4,a4,2
   14d3c:	0ad61a63          	bne	a2,a3,14df0 <eiremain+0x158>
   14d40:	fefc16e3          	bne	s8,a5,14d2c <eiremain+0x94>
   14d44:	018b8613          	add	a2,s7,24
   14d48:	01890713          	add	a4,s2,24
   14d4c:	00000693          	li	a3,0
   14d50:	00075783          	lhu	a5,0(a4)
   14d54:	00065583          	lhu	a1,0(a2)
   14d58:	ffe70713          	add	a4,a4,-2
   14d5c:	ffe60613          	add	a2,a2,-2
   14d60:	40b787b3          	sub	a5,a5,a1
   14d64:	40d787b3          	sub	a5,a5,a3
   14d68:	0107d693          	srl	a3,a5,0x10
   14d6c:	00f71123          	sh	a5,2(a4)
   14d70:	0016f693          	and	a3,a3,1
   14d74:	fda71ee3          	bne	a4,s10,14d50 <eiremain+0xb8>
   14d78:	00100c93          	li	s9,1
   14d7c:	000a0513          	mv	a0,s4
   14d80:	b8cff0ef          	jal	1410c <eshup1>
   14d84:	04c4d783          	lhu	a5,76(s1)
   14d88:	fff40413          	add	s0,s0,-1
   14d8c:	00090513          	mv	a0,s2
   14d90:	00fce7b3          	or	a5,s9,a5
   14d94:	04f49623          	sh	a5,76(s1)
   14d98:	b74ff0ef          	jal	1410c <eshup1>
   14d9c:	f93454e3          	bge	s0,s3,14d24 <eiremain+0x8c>
   14da0:	00040693          	mv	a3,s0
   14da4:	05013403          	ld	s0,80(sp)
   14da8:	05813083          	ld	ra,88(sp)
   14dac:	03813983          	ld	s3,56(sp)
   14db0:	03013a03          	ld	s4,48(sp)
   14db4:	02813a83          	ld	s5,40(sp)
   14db8:	02013b03          	ld	s6,32(sp)
   14dbc:	01813b83          	ld	s7,24(sp)
   14dc0:	01013c03          	ld	s8,16(sp)
   14dc4:	00813c83          	ld	s9,8(sp)
   14dc8:	00013d03          	ld	s10,0(sp)
   14dcc:	00048793          	mv	a5,s1
   14dd0:	00090513          	mv	a0,s2
   14dd4:	04813483          	ld	s1,72(sp)
   14dd8:	04013903          	ld	s2,64(sp)
   14ddc:	00000713          	li	a4,0
   14de0:	00000613          	li	a2,0
   14de4:	00000593          	li	a1,0
   14de8:	06010113          	add	sp,sp,96
   14dec:	9f1ff06f          	j	147dc <emdnorm>
   14df0:	00000c93          	li	s9,0
   14df4:	f8c6e4e3          	bltu	a3,a2,14d7c <eiremain+0xe4>
   14df8:	f4dff06f          	j	14d44 <eiremain+0xac>

0000000000014dfc <e113toe.isra.0>:
   14dfc:	fd010113          	add	sp,sp,-48
   14e00:	02813023          	sd	s0,32(sp)
   14e04:	02113423          	sd	ra,40(sp)
   14e08:	00058413          	mv	s0,a1
   14e0c:	00010793          	mv	a5,sp
   14e10:	01a10713          	add	a4,sp,26
   14e14:	00278793          	add	a5,a5,2
   14e18:	fe079f23          	sh	zero,-2(a5)
   14e1c:	fee79ce3          	bne	a5,a4,14e14 <e113toe.isra.0+0x18>
   14e20:	00e55783          	lhu	a5,14(a0)
   14e24:	00008737          	lui	a4,0x8
   14e28:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   14e2c:	03079693          	sll	a3,a5,0x30
   14e30:	43f6d693          	sra	a3,a3,0x3f
   14e34:	00d11023          	sh	a3,0(sp)
   14e38:	00e7f6b3          	and	a3,a5,a4
   14e3c:	00068613          	mv	a2,a3
   14e40:	06e68063          	beq	a3,a4,14ea0 <e113toe.isra.0+0xa4>
   14e44:	00e50793          	add	a5,a0,14
   14e48:	00d11123          	sh	a3,2(sp)
   14e4c:	00610713          	add	a4,sp,6
   14e50:	ffe7d683          	lhu	a3,-2(a5)
   14e54:	ffe78793          	add	a5,a5,-2
   14e58:	00270713          	add	a4,a4,2
   14e5c:	fed71f23          	sh	a3,-2(a4)
   14e60:	fef518e3          	bne	a0,a5,14e50 <e113toe.isra.0+0x54>
   14e64:	02061263          	bnez	a2,14e88 <e113toe.isra.0+0x8c>
   14e68:	00011223          	sh	zero,4(sp)
   14e6c:	00040593          	mv	a1,s0
   14e70:	00010513          	mv	a0,sp
   14e74:	b74ff0ef          	jal	141e8 <emovo.constprop.0>
   14e78:	02813083          	ld	ra,40(sp)
   14e7c:	02013403          	ld	s0,32(sp)
   14e80:	03010113          	add	sp,sp,48
   14e84:	00008067          	ret
   14e88:	00100793          	li	a5,1
   14e8c:	fff00593          	li	a1,-1
   14e90:	00010513          	mv	a0,sp
   14e94:	00f11223          	sh	a5,4(sp)
   14e98:	d78ff0ef          	jal	14410 <eshift.part.0>
   14e9c:	fd1ff06f          	j	14e6c <e113toe.isra.0+0x70>
   14ea0:	00050793          	mv	a5,a0
   14ea4:	00e50693          	add	a3,a0,14
   14ea8:	0007d703          	lhu	a4,0(a5)
   14eac:	00278793          	add	a5,a5,2
   14eb0:	06071c63          	bnez	a4,14f28 <e113toe.isra.0+0x12c>
   14eb4:	fed79ae3          	bne	a5,a3,14ea8 <e113toe.isra.0+0xac>
   14eb8:	01440713          	add	a4,s0,20
   14ebc:	00040793          	mv	a5,s0
   14ec0:	00278793          	add	a5,a5,2
   14ec4:	fe079f23          	sh	zero,-2(a5)
   14ec8:	fee79ce3          	bne	a5,a4,14ec0 <e113toe.isra.0+0xc4>
   14ecc:	01240713          	add	a4,s0,18
   14ed0:	00040793          	mv	a5,s0
   14ed4:	00278793          	add	a5,a5,2
   14ed8:	fe079f23          	sh	zero,-2(a5)
   14edc:	fee79ce3          	bne	a5,a4,14ed4 <e113toe.isra.0+0xd8>
   14ee0:	01245783          	lhu	a5,18(s0)
   14ee4:	000086b7          	lui	a3,0x8
   14ee8:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   14eec:	00d7e7b3          	or	a5,a5,a3
   14ef0:	03079793          	sll	a5,a5,0x30
   14ef4:	0307d793          	srl	a5,a5,0x30
   14ef8:	00f41923          	sh	a5,18(s0)
   14efc:	00e51683          	lh	a3,14(a0)
   14f00:	f606dce3          	bgez	a3,14e78 <e113toe.isra.0+0x7c>
   14f04:	00040693          	mv	a3,s0
   14f08:	0006d603          	lhu	a2,0(a3)
   14f0c:	00268693          	add	a3,a3,2
   14f10:	f60614e3          	bnez	a2,14e78 <e113toe.isra.0+0x7c>
   14f14:	fee69ae3          	bne	a3,a4,14f08 <e113toe.isra.0+0x10c>
   14f18:	ffff8737          	lui	a4,0xffff8
   14f1c:	00e7c7b3          	xor	a5,a5,a4
   14f20:	00f41923          	sh	a5,18(s0)
   14f24:	f55ff06f          	j	14e78 <e113toe.isra.0+0x7c>
   14f28:	01040713          	add	a4,s0,16
   14f2c:	00040793          	mv	a5,s0
   14f30:	00278793          	add	a5,a5,2
   14f34:	fe079f23          	sh	zero,-2(a5)
   14f38:	fee79ce3          	bne	a5,a4,14f30 <e113toe.isra.0+0x134>
   14f3c:	ffffc7b7          	lui	a5,0xffffc
   14f40:	00f41823          	sh	a5,16(s0)
   14f44:	ffff87b7          	lui	a5,0xffff8
   14f48:	fff7c793          	not	a5,a5
   14f4c:	00f41923          	sh	a5,18(s0)
   14f50:	f29ff06f          	j	14e78 <e113toe.isra.0+0x7c>

0000000000014f54 <ediv>:
   14f54:	01255783          	lhu	a5,18(a0)
   14f58:	f1010113          	add	sp,sp,-240
   14f5c:	0e813023          	sd	s0,224(sp)
   14f60:	fff7c793          	not	a5,a5
   14f64:	0c913c23          	sd	s1,216(sp)
   14f68:	0d213823          	sd	s2,208(sp)
   14f6c:	0d313423          	sd	s3,200(sp)
   14f70:	0e113423          	sd	ra,232(sp)
   14f74:	0d413023          	sd	s4,192(sp)
   14f78:	0b513c23          	sd	s5,184(sp)
   14f7c:	0b613823          	sd	s6,176(sp)
   14f80:	0b713423          	sd	s7,168(sp)
   14f84:	0b813023          	sd	s8,160(sp)
   14f88:	09913c23          	sd	s9,152(sp)
   14f8c:	09a13823          	sd	s10,144(sp)
   14f90:	09b13423          	sd	s11,136(sp)
   14f94:	03179713          	sll	a4,a5,0x31
   14f98:	00050493          	mv	s1,a0
   14f9c:	00058993          	mv	s3,a1
   14fa0:	00060413          	mv	s0,a2
   14fa4:	00068913          	mv	s2,a3
   14fa8:	00071e63          	bnez	a4,14fc4 <ediv+0x70>
   14fac:	01250693          	add	a3,a0,18
   14fb0:	00050793          	mv	a5,a0
   14fb4:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd2480>
   14fb8:	00278793          	add	a5,a5,2
   14fbc:	0e071e63          	bnez	a4,150b8 <ediv+0x164>
   14fc0:	fed79ae3          	bne	a5,a3,14fb4 <ediv+0x60>
   14fc4:	0129d783          	lhu	a5,18(s3)
   14fc8:	fff7c793          	not	a5,a5
   14fcc:	03179713          	sll	a4,a5,0x31
   14fd0:	00071e63          	bnez	a4,14fec <ediv+0x98>
   14fd4:	01298693          	add	a3,s3,18
   14fd8:	00098793          	mv	a5,s3
   14fdc:	0007d703          	lhu	a4,0(a5)
   14fe0:	00278793          	add	a5,a5,2
   14fe4:	0e071863          	bnez	a4,150d4 <ediv+0x180>
   14fe8:	fed79ae3          	bne	a5,a3,14fdc <ediv+0x88>
   14fec:	00023a37          	lui	s4,0x23
   14ff0:	1a0a0593          	add	a1,s4,416 # 231a0 <ezero>
   14ff4:	00048513          	mv	a0,s1
   14ff8:	e94ff0ef          	jal	1468c <ecmp>
   14ffc:	18050a63          	beqz	a0,15190 <ediv+0x23c>
   15000:	0124d603          	lhu	a2,18(s1)
   15004:	000087b7          	lui	a5,0x8
   15008:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   1500c:	00f67533          	and	a0,a2,a5
   15010:	0ef51063          	bne	a0,a5,150f0 <ediv+0x19c>
   15014:	01248693          	add	a3,s1,18
   15018:	00048793          	mv	a5,s1
   1501c:	0007d703          	lhu	a4,0(a5)
   15020:	00278793          	add	a5,a5,2
   15024:	0c071663          	bnez	a4,150f0 <ediv+0x19c>
   15028:	fed79ae3          	bne	a5,a3,1501c <ediv+0xc8>
   1502c:	0129d703          	lhu	a4,18(s3)
   15030:	fff74793          	not	a5,a4
   15034:	03179693          	sll	a3,a5,0x31
   15038:	14069263          	bnez	a3,1517c <ediv+0x228>
   1503c:	01298693          	add	a3,s3,18
   15040:	00098793          	mv	a5,s3
   15044:	0007d583          	lhu	a1,0(a5)
   15048:	00278793          	add	a5,a5,2
   1504c:	48059a63          	bnez	a1,154e0 <ediv+0x58c>
   15050:	fed79ae3          	bne	a5,a3,15044 <ediv+0xf0>
   15054:	01040713          	add	a4,s0,16
   15058:	00040793          	mv	a5,s0
   1505c:	00278793          	add	a5,a5,2
   15060:	fe079f23          	sh	zero,-2(a5)
   15064:	fee79ce3          	bne	a5,a4,1505c <ediv+0x108>
   15068:	ffffc7b7          	lui	a5,0xffffc
   1506c:	00f41823          	sh	a5,16(s0)
   15070:	ffff87b7          	lui	a5,0xffff8
   15074:	fff7c793          	not	a5,a5
   15078:	00f41923          	sh	a5,18(s0)
   1507c:	0e813083          	ld	ra,232(sp)
   15080:	0e013403          	ld	s0,224(sp)
   15084:	0d813483          	ld	s1,216(sp)
   15088:	0d013903          	ld	s2,208(sp)
   1508c:	0c813983          	ld	s3,200(sp)
   15090:	0c013a03          	ld	s4,192(sp)
   15094:	0b813a83          	ld	s5,184(sp)
   15098:	0b013b03          	ld	s6,176(sp)
   1509c:	0a813b83          	ld	s7,168(sp)
   150a0:	0a013c03          	ld	s8,160(sp)
   150a4:	09813c83          	ld	s9,152(sp)
   150a8:	09013d03          	ld	s10,144(sp)
   150ac:	08813d83          	ld	s11,136(sp)
   150b0:	0f010113          	add	sp,sp,240
   150b4:	00008067          	ret
   150b8:	01448713          	add	a4,s1,20
   150bc:	0004d783          	lhu	a5,0(s1)
   150c0:	00248493          	add	s1,s1,2
   150c4:	00240413          	add	s0,s0,2
   150c8:	fef41f23          	sh	a5,-2(s0)
   150cc:	fee498e3          	bne	s1,a4,150bc <ediv+0x168>
   150d0:	fadff06f          	j	1507c <ediv+0x128>
   150d4:	01440713          	add	a4,s0,20
   150d8:	0009d783          	lhu	a5,0(s3)
   150dc:	00240413          	add	s0,s0,2
   150e0:	00298993          	add	s3,s3,2
   150e4:	fef41f23          	sh	a5,-2(s0)
   150e8:	fee418e3          	bne	s0,a4,150d8 <ediv+0x184>
   150ec:	f91ff06f          	j	1507c <ediv+0x128>
   150f0:	0129d703          	lhu	a4,18(s3)
   150f4:	fff74793          	not	a5,a4
   150f8:	03179693          	sll	a3,a5,0x31
   150fc:	0a069463          	bnez	a3,151a4 <ediv+0x250>
   15100:	00000813          	li	a6,0
   15104:	01298693          	add	a3,s3,18
   15108:	00098793          	mv	a5,s3
   1510c:	0007d583          	lhu	a1,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd2480>
   15110:	00278793          	add	a5,a5,2
   15114:	06059263          	bnez	a1,15178 <ediv+0x224>
   15118:	fed79ae3          	bne	a5,a3,1510c <ediv+0x1b8>
   1511c:	000087b7          	lui	a5,0x8
   15120:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15124:	0cf50863          	beq	a0,a5,151f4 <ediv+0x2a0>
   15128:	00f65613          	srl	a2,a2,0xf
   1512c:	0009d783          	lhu	a5,0(s3)
   15130:	00298993          	add	s3,s3,2
   15134:	38079e63          	bnez	a5,154d0 <ediv+0x57c>
   15138:	fed99ae3          	bne	s3,a3,1512c <ediv+0x1d8>
   1513c:	00f75793          	srl	a5,a4,0xf
   15140:	00c7c7b3          	xor	a5,a5,a2
   15144:	00f7979b          	sllw	a5,a5,0xf
   15148:	00f41923          	sh	a5,18(s0)
   1514c:	01240713          	add	a4,s0,18
   15150:	00040793          	mv	a5,s0
   15154:	00278793          	add	a5,a5,2
   15158:	fe079f23          	sh	zero,-2(a5)
   1515c:	fee79ce3          	bne	a5,a4,15154 <ediv+0x200>
   15160:	01245783          	lhu	a5,18(s0)
   15164:	00008737          	lui	a4,0x8
   15168:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   1516c:	00e7e7b3          	or	a5,a5,a4
   15170:	00f41923          	sh	a5,18(s0)
   15174:	f09ff06f          	j	1507c <ediv+0x128>
   15178:	02080663          	beqz	a6,151a4 <ediv+0x250>
   1517c:	01440793          	add	a5,s0,20
   15180:	00240413          	add	s0,s0,2
   15184:	fe041f23          	sh	zero,-2(s0)
   15188:	fef41ce3          	bne	s0,a5,15180 <ediv+0x22c>
   1518c:	ef1ff06f          	j	1507c <ediv+0x128>
   15190:	1a0a0593          	add	a1,s4,416
   15194:	00098513          	mv	a0,s3
   15198:	cf4ff0ef          	jal	1468c <ecmp>
   1519c:	e60512e3          	bnez	a0,15000 <ediv+0xac>
   151a0:	eb5ff06f          	j	15054 <ediv+0x100>
   151a4:	02010593          	add	a1,sp,32
   151a8:	00048513          	mv	a0,s1
   151ac:	c28ff0ef          	jal	145d4 <emovi>
   151b0:	04010593          	add	a1,sp,64
   151b4:	00098513          	mv	a0,s3
   151b8:	c1cff0ef          	jal	145d4 <emovi>
   151bc:	04215b03          	lhu	s6,66(sp)
   151c0:	02215c03          	lhu	s8,34(sp)
   151c4:	040b1463          	bnez	s6,1520c <ediv+0x2b8>
   151c8:	04210793          	add	a5,sp,66
   151cc:	05810c93          	add	s9,sp,88
   151d0:	0007d703          	lhu	a4,0(a5)
   151d4:	00278793          	add	a5,a5,2
   151d8:	2c071863          	bnez	a4,154a8 <ediv+0x554>
   151dc:	fefc9ae3          	bne	s9,a5,151d0 <ediv+0x27c>
   151e0:	01440793          	add	a5,s0,20
   151e4:	00240413          	add	s0,s0,2
   151e8:	fe041f23          	sh	zero,-2(s0)
   151ec:	fef41ce3          	bne	s0,a5,151e4 <ediv+0x290>
   151f0:	e8dff06f          	j	1507c <ediv+0x128>
   151f4:	01248593          	add	a1,s1,18
   151f8:	0004d783          	lhu	a5,0(s1)
   151fc:	00248493          	add	s1,s1,2
   15200:	2c079c63          	bnez	a5,154d8 <ediv+0x584>
   15204:	feb49ae3          	bne	s1,a1,151f8 <ediv+0x2a4>
   15208:	f21ff06f          	j	15128 <ediv+0x1d4>
   1520c:	01613423          	sd	s6,8(sp)
   15210:	040c1663          	bnez	s8,1525c <ediv+0x308>
   15214:	02210793          	add	a5,sp,34
   15218:	03810693          	add	a3,sp,56
   1521c:	0007d703          	lhu	a4,0(a5)
   15220:	00278793          	add	a5,a5,2
   15224:	28071c63          	bnez	a4,154bc <ediv+0x568>
   15228:	fed79ae3          	bne	a5,a3,1521c <ediv+0x2c8>
   1522c:	02015683          	lhu	a3,32(sp)
   15230:	04015603          	lhu	a2,64(sp)
   15234:	01240713          	add	a4,s0,18
   15238:	00040793          	mv	a5,s0
   1523c:	40c686b3          	sub	a3,a3,a2
   15240:	00d036b3          	snez	a3,a3
   15244:	00f6969b          	sllw	a3,a3,0xf
   15248:	00d41923          	sh	a3,18(s0)
   1524c:	00278793          	add	a5,a5,2
   15250:	fe079f23          	sh	zero,-2(a5)
   15254:	fee79ce3          	bne	a5,a4,1524c <ediv+0x2f8>
   15258:	f09ff06f          	j	15160 <ediv+0x20c>
   1525c:	01813823          	sd	s8,16(sp)
   15260:	04012783          	lw	a5,64(sp)
   15264:	03890493          	add	s1,s2,56
   15268:	03490713          	add	a4,s2,52
   1526c:	02f92a23          	sw	a5,52(s2)
   15270:	00e13c23          	sd	a4,24(sp)
   15274:	04e90993          	add	s3,s2,78
   15278:	00048793          	mv	a5,s1
   1527c:	00278793          	add	a5,a5,2
   15280:	fe079f23          	sh	zero,-2(a5)
   15284:	ff379ce3          	bne	a5,s3,1527c <ediv+0x328>
   15288:	04010513          	add	a0,sp,64
   1528c:	e2dfe0ef          	jal	140b8 <eshdn1>
   15290:	02615b83          	lhu	s7,38(sp)
   15294:	00010a37          	lui	s4,0x10
   15298:	04210d13          	add	s10,sp,66
   1529c:	010b9a93          	sll	s5,s7,0x10
   152a0:	417a8ab3          	sub	s5,s5,s7
   152a4:	05810c93          	add	s9,sp,88
   152a8:	fffa0a13          	add	s4,s4,-1 # ffff <exit-0xe9>
   152ac:	07a10d93          	add	s11,sp,122
   152b0:	06210c13          	add	s8,sp,98
   152b4:	04415783          	lhu	a5,68(sp)
   152b8:	04615703          	lhu	a4,70(sp)
   152bc:	000a0b13          	mv	s6,s4
   152c0:	01079793          	sll	a5,a5,0x10
   152c4:	00e787b3          	add	a5,a5,a4
   152c8:	00fae863          	bltu	s5,a5,152d8 <ediv+0x384>
   152cc:	0377d7b3          	divu	a5,a5,s7
   152d0:	03079b13          	sll	s6,a5,0x30
   152d4:	030b5b13          	srl	s6,s6,0x30
   152d8:	06010613          	add	a2,sp,96
   152dc:	02010593          	add	a1,sp,32
   152e0:	000b0513          	mv	a0,s6
   152e4:	e79fe0ef          	jal	1415c <m16m>
   152e8:	04410713          	add	a4,sp,68
   152ec:	06410793          	add	a5,sp,100
   152f0:	0007d603          	lhu	a2,0(a5)
   152f4:	00075683          	lhu	a3,0(a4)
   152f8:	00278793          	add	a5,a5,2
   152fc:	00270713          	add	a4,a4,2
   15300:	0ed61a63          	bne	a2,a3,153f4 <ediv+0x4a0>
   15304:	ffb796e3          	bne	a5,s11,152f0 <ediv+0x39c>
   15308:	00000693          	li	a3,0
   1530c:	07810613          	add	a2,sp,120
   15310:	000c8793          	mv	a5,s9
   15314:	0007d703          	lhu	a4,0(a5)
   15318:	00065583          	lhu	a1,0(a2)
   1531c:	ffe78793          	add	a5,a5,-2
   15320:	ffe60613          	add	a2,a2,-2
   15324:	40b70733          	sub	a4,a4,a1
   15328:	40d70733          	sub	a4,a4,a3
   1532c:	01075693          	srl	a3,a4,0x10
   15330:	00e79123          	sh	a4,2(a5)
   15334:	0016f693          	and	a3,a3,1
   15338:	fda79ee3          	bne	a5,s10,15314 <ediv+0x3c0>
   1533c:	01649023          	sh	s6,0(s1)
   15340:	04410793          	add	a5,sp,68
   15344:	0027d703          	lhu	a4,2(a5)
   15348:	00278793          	add	a5,a5,2
   1534c:	fee79f23          	sh	a4,-2(a5)
   15350:	ff979ae3          	bne	a5,s9,15344 <ediv+0x3f0>
   15354:	04011c23          	sh	zero,88(sp)
   15358:	00248493          	add	s1,s1,2
   1535c:	f4999ce3          	bne	s3,s1,152b4 <ediv+0x360>
   15360:	00000713          	li	a4,0
   15364:	04410793          	add	a5,sp,68
   15368:	05a10693          	add	a3,sp,90
   1536c:	0007d603          	lhu	a2,0(a5)
   15370:	00278793          	add	a5,a5,2
   15374:	00c76733          	or	a4,a4,a2
   15378:	fed79ae3          	bne	a5,a3,1536c <ediv+0x418>
   1537c:	01813483          	ld	s1,24(sp)
   15380:	0007071b          	sext.w	a4,a4
   15384:	00e035b3          	snez	a1,a4
   15388:	04010793          	add	a5,sp,64
   1538c:	0004d703          	lhu	a4,0(s1)
   15390:	00278793          	add	a5,a5,2
   15394:	00248493          	add	s1,s1,2
   15398:	fee79f23          	sh	a4,-2(a5)
   1539c:	fed798e3          	bne	a5,a3,1538c <ediv+0x438>
   153a0:	00813783          	ld	a5,8(sp)
   153a4:	01013703          	ld	a4,16(sp)
   153a8:	000046b7          	lui	a3,0x4
   153ac:	fff68693          	add	a3,a3,-1 # 3fff <exit-0xc0e9>
   153b0:	40e78b33          	sub	s6,a5,a4
   153b4:	04010513          	add	a0,sp,64
   153b8:	00090793          	mv	a5,s2
   153bc:	04000713          	li	a4,64
   153c0:	00db06b3          	add	a3,s6,a3
   153c4:	00000613          	li	a2,0
   153c8:	c14ff0ef          	jal	147dc <emdnorm>
   153cc:	04015703          	lhu	a4,64(sp)
   153d0:	02015783          	lhu	a5,32(sp)
   153d4:	00040593          	mv	a1,s0
   153d8:	04010513          	add	a0,sp,64
   153dc:	40e787b3          	sub	a5,a5,a4
   153e0:	00f037b3          	snez	a5,a5
   153e4:	40f007bb          	negw	a5,a5
   153e8:	04f11023          	sh	a5,64(sp)
   153ec:	dfdfe0ef          	jal	141e8 <emovo.constprop.0>
   153f0:	c8dff06f          	j	1507c <ediv+0x128>
   153f4:	f0c6fae3          	bgeu	a3,a2,15308 <ediv+0x3b4>
   153f8:	fffb079b          	addw	a5,s6,-1
   153fc:	03079313          	sll	t1,a5,0x30
   15400:	03035313          	srl	t1,t1,0x30
   15404:	00000693          	li	a3,0
   15408:	03810613          	add	a2,sp,56
   1540c:	07810713          	add	a4,sp,120
   15410:	00075783          	lhu	a5,0(a4)
   15414:	00065583          	lhu	a1,0(a2)
   15418:	ffe70713          	add	a4,a4,-2
   1541c:	ffe60613          	add	a2,a2,-2
   15420:	40b787b3          	sub	a5,a5,a1
   15424:	40d787b3          	sub	a5,a5,a3
   15428:	0107d693          	srl	a3,a5,0x10
   1542c:	00f71123          	sh	a5,2(a4)
   15430:	0016f693          	and	a3,a3,1
   15434:	fd871ee3          	bne	a4,s8,15410 <ediv+0x4bc>
   15438:	04410713          	add	a4,sp,68
   1543c:	06410793          	add	a5,sp,100
   15440:	0007d603          	lhu	a2,0(a5)
   15444:	00075683          	lhu	a3,0(a4)
   15448:	00278793          	add	a5,a5,2
   1544c:	00270713          	add	a4,a4,2
   15450:	00d61863          	bne	a2,a3,15460 <ediv+0x50c>
   15454:	ffb796e3          	bne	a5,s11,15440 <ediv+0x4ec>
   15458:	00030b13          	mv	s6,t1
   1545c:	eadff06f          	j	15308 <ediv+0x3b4>
   15460:	fec6fce3          	bgeu	a3,a2,15458 <ediv+0x504>
   15464:	ffeb051b          	addw	a0,s6,-2
   15468:	03051b13          	sll	s6,a0,0x30
   1546c:	030b5b13          	srl	s6,s6,0x30
   15470:	00000693          	li	a3,0
   15474:	03810613          	add	a2,sp,56
   15478:	07810713          	add	a4,sp,120
   1547c:	00075783          	lhu	a5,0(a4)
   15480:	00065583          	lhu	a1,0(a2)
   15484:	ffe70713          	add	a4,a4,-2
   15488:	ffe60613          	add	a2,a2,-2
   1548c:	40b787b3          	sub	a5,a5,a1
   15490:	40d787b3          	sub	a5,a5,a3
   15494:	0107d693          	srl	a3,a5,0x10
   15498:	00f71123          	sh	a5,2(a4)
   1549c:	0016f693          	and	a3,a3,1
   154a0:	fd871ee3          	bne	a4,s8,1547c <ediv+0x528>
   154a4:	e65ff06f          	j	15308 <ediv+0x3b4>
   154a8:	04010513          	add	a0,sp,64
   154ac:	df9fe0ef          	jal	142a4 <enormlz>
   154b0:	40a007b3          	neg	a5,a0
   154b4:	00f13423          	sd	a5,8(sp)
   154b8:	d59ff06f          	j	15210 <ediv+0x2bc>
   154bc:	02010513          	add	a0,sp,32
   154c0:	de5fe0ef          	jal	142a4 <enormlz>
   154c4:	40a007b3          	neg	a5,a0
   154c8:	00f13823          	sd	a5,16(sp)
   154cc:	d95ff06f          	j	15260 <ediv+0x30c>
   154d0:	00000793          	li	a5,0
   154d4:	c6dff06f          	j	15140 <ediv+0x1ec>
   154d8:	00000613          	li	a2,0
   154dc:	c51ff06f          	j	1512c <ediv+0x1d8>
   154e0:	00100813          	li	a6,1
   154e4:	c25ff06f          	j	15108 <ediv+0x1b4>

00000000000154e8 <emul>:
   154e8:	01255803          	lhu	a6,18(a0)
   154ec:	00008737          	lui	a4,0x8
   154f0:	f4010113          	add	sp,sp,-192
   154f4:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   154f8:	0a813823          	sd	s0,176(sp)
   154fc:	0a913423          	sd	s1,168(sp)
   15500:	0b213023          	sd	s2,160(sp)
   15504:	09513423          	sd	s5,136(sp)
   15508:	00050493          	mv	s1,a0
   1550c:	0a113c23          	sd	ra,184(sp)
   15510:	09313c23          	sd	s3,152(sp)
   15514:	09413823          	sd	s4,144(sp)
   15518:	09613023          	sd	s6,128(sp)
   1551c:	07713c23          	sd	s7,120(sp)
   15520:	07813823          	sd	s8,112(sp)
   15524:	07913423          	sd	s9,104(sp)
   15528:	07a13023          	sd	s10,96(sp)
   1552c:	00e87533          	and	a0,a6,a4
   15530:	00058913          	mv	s2,a1
   15534:	00060413          	mv	s0,a2
   15538:	00068a93          	mv	s5,a3
   1553c:	18e51663          	bne	a0,a4,156c8 <emul+0x1e0>
   15540:	01248993          	add	s3,s1,18
   15544:	00048713          	mv	a4,s1
   15548:	00075603          	lhu	a2,0(a4)
   1554c:	00270713          	add	a4,a4,2
   15550:	20061463          	bnez	a2,15758 <emul+0x270>
   15554:	ff371ae3          	bne	a4,s3,15548 <emul+0x60>
   15558:	01295603          	lhu	a2,18(s2)
   1555c:	fff64793          	not	a5,a2
   15560:	03179713          	sll	a4,a5,0x31
   15564:	16070863          	beqz	a4,156d4 <emul+0x1ec>
   15568:	00048793          	mv	a5,s1
   1556c:	0007d703          	lhu	a4,0(a5)
   15570:	00278793          	add	a5,a5,2
   15574:	28071063          	bnez	a4,157f4 <emul+0x30c>
   15578:	ff379ae3          	bne	a5,s3,1556c <emul+0x84>
   1557c:	000235b7          	lui	a1,0x23
   15580:	1a058593          	add	a1,a1,416 # 231a0 <ezero>
   15584:	00090513          	mv	a0,s2
   15588:	904ff0ef          	jal	1468c <ecmp>
   1558c:	28050e63          	beqz	a0,15828 <emul+0x340>
   15590:	01295603          	lhu	a2,18(s2)
   15594:	000085b7          	lui	a1,0x8
   15598:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   1559c:	00b67733          	and	a4,a2,a1
   155a0:	00070693          	mv	a3,a4
   155a4:	01290793          	add	a5,s2,18
   155a8:	40b71e63          	bne	a4,a1,159c4 <emul+0x4dc>
   155ac:	00090713          	mv	a4,s2
   155b0:	00075683          	lhu	a3,0(a4)
   155b4:	00270713          	add	a4,a4,2
   155b8:	20069263          	bnez	a3,157bc <emul+0x2d4>
   155bc:	fee79ae3          	bne	a5,a4,155b0 <emul+0xc8>
   155c0:	000235b7          	lui	a1,0x23
   155c4:	1a058593          	add	a1,a1,416 # 231a0 <ezero>
   155c8:	00048513          	mv	a0,s1
   155cc:	8c0ff0ef          	jal	1468c <ecmp>
   155d0:	24050c63          	beqz	a0,15828 <emul+0x340>
   155d4:	0124d803          	lhu	a6,18(s1)
   155d8:	01295603          	lhu	a2,18(s2)
   155dc:	000087b7          	lui	a5,0x8
   155e0:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   155e4:	00f87733          	and	a4,a6,a5
   155e8:	00f676b3          	and	a3,a2,a5
   155ec:	00070593          	mv	a1,a4
   155f0:	1ef70263          	beq	a4,a5,157d4 <emul+0x2ec>
   155f4:	00068713          	mv	a4,a3
   155f8:	00058693          	mv	a3,a1
   155fc:	000087b7          	lui	a5,0x8
   15600:	0007071b          	sext.w	a4,a4
   15604:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15608:	0ef71e63          	bne	a4,a5,15704 <emul+0x21c>
   1560c:	01290793          	add	a5,s2,18
   15610:	00090713          	mv	a4,s2
   15614:	00075583          	lhu	a1,0(a4)
   15618:	00270713          	add	a4,a4,2
   1561c:	0e059463          	bnez	a1,15704 <emul+0x21c>
   15620:	fee79ae3          	bne	a5,a4,15614 <emul+0x12c>
   15624:	000085b7          	lui	a1,0x8
   15628:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   1562c:	0006871b          	sext.w	a4,a3
   15630:	01248993          	add	s3,s1,18
   15634:	22b69063          	bne	a3,a1,15854 <emul+0x36c>
   15638:	0004d783          	lhu	a5,0(s1)
   1563c:	00248493          	add	s1,s1,2
   15640:	20079e63          	bnez	a5,1585c <emul+0x374>
   15644:	fe999ae3          	bne	s3,s1,15638 <emul+0x150>
   15648:	00f85813          	srl	a6,a6,0xf
   1564c:	000087b7          	lui	a5,0x8
   15650:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15654:	1af70e63          	beq	a4,a5,15810 <emul+0x328>
   15658:	00f65793          	srl	a5,a2,0xf
   1565c:	0107c7b3          	xor	a5,a5,a6
   15660:	00f7979b          	sllw	a5,a5,0xf
   15664:	00f41923          	sh	a5,18(s0)
   15668:	01240713          	add	a4,s0,18
   1566c:	00040793          	mv	a5,s0
   15670:	00278793          	add	a5,a5,2
   15674:	fe079f23          	sh	zero,-2(a5)
   15678:	fee79ce3          	bne	a5,a4,15670 <emul+0x188>
   1567c:	01245783          	lhu	a5,18(s0)
   15680:	00008737          	lui	a4,0x8
   15684:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   15688:	00e7e7b3          	or	a5,a5,a4
   1568c:	00f41923          	sh	a5,18(s0)
   15690:	0b813083          	ld	ra,184(sp)
   15694:	0b013403          	ld	s0,176(sp)
   15698:	0a813483          	ld	s1,168(sp)
   1569c:	0a013903          	ld	s2,160(sp)
   156a0:	09813983          	ld	s3,152(sp)
   156a4:	09013a03          	ld	s4,144(sp)
   156a8:	08813a83          	ld	s5,136(sp)
   156ac:	08013b03          	ld	s6,128(sp)
   156b0:	07813b83          	ld	s7,120(sp)
   156b4:	07013c03          	ld	s8,112(sp)
   156b8:	06813c83          	ld	s9,104(sp)
   156bc:	06013d03          	ld	s10,96(sp)
   156c0:	0c010113          	add	sp,sp,192
   156c4:	00008067          	ret
   156c8:	0125d603          	lhu	a2,18(a1)
   156cc:	00e677b3          	and	a5,a2,a4
   156d0:	02e79a63          	bne	a5,a4,15704 <emul+0x21c>
   156d4:	01290793          	add	a5,s2,18
   156d8:	00090713          	mv	a4,s2
   156dc:	00075683          	lhu	a3,0(a4)
   156e0:	00270713          	add	a4,a4,2
   156e4:	08069863          	bnez	a3,15774 <emul+0x28c>
   156e8:	fef71ae3          	bne	a4,a5,156dc <emul+0x1f4>
   156ec:	00008737          	lui	a4,0x8
   156f0:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   156f4:	01248993          	add	s3,s1,18
   156f8:	e6e508e3          	beq	a0,a4,15568 <emul+0x80>
   156fc:	00e676b3          	and	a3,a2,a4
   15700:	eae686e3          	beq	a3,a4,155ac <emul+0xc4>
   15704:	00048513          	mv	a0,s1
   15708:	00010593          	mv	a1,sp
   1570c:	ec9fe0ef          	jal	145d4 <emovi>
   15710:	00090513          	mv	a0,s2
   15714:	02010593          	add	a1,sp,32
   15718:	ebdfe0ef          	jal	145d4 <emovi>
   1571c:	00215903          	lhu	s2,2(sp)
   15720:	02215483          	lhu	s1,34(sp)
   15724:	06090663          	beqz	s2,15790 <emul+0x2a8>
   15728:	14049a63          	bnez	s1,1587c <emul+0x394>
   1572c:	02210793          	add	a5,sp,34
   15730:	03810693          	add	a3,sp,56
   15734:	0007d703          	lhu	a4,0(a5)
   15738:	00278793          	add	a5,a5,2
   1573c:	26071a63          	bnez	a4,159b0 <emul+0x4c8>
   15740:	fed79ae3          	bne	a5,a3,15734 <emul+0x24c>
   15744:	01440793          	add	a5,s0,20
   15748:	00240413          	add	s0,s0,2
   1574c:	fe041f23          	sh	zero,-2(s0)
   15750:	fe879ce3          	bne	a5,s0,15748 <emul+0x260>
   15754:	f3dff06f          	j	15690 <emul+0x1a8>
   15758:	01440713          	add	a4,s0,20
   1575c:	0004d783          	lhu	a5,0(s1)
   15760:	00240413          	add	s0,s0,2
   15764:	00248493          	add	s1,s1,2
   15768:	fef41f23          	sh	a5,-2(s0)
   1576c:	fee418e3          	bne	s0,a4,1575c <emul+0x274>
   15770:	f21ff06f          	j	15690 <emul+0x1a8>
   15774:	01490713          	add	a4,s2,20
   15778:	00095783          	lhu	a5,0(s2)
   1577c:	00290913          	add	s2,s2,2
   15780:	00240413          	add	s0,s0,2
   15784:	fef41f23          	sh	a5,-2(s0)
   15788:	ff2718e3          	bne	a4,s2,15778 <emul+0x290>
   1578c:	f05ff06f          	j	15690 <emul+0x1a8>
   15790:	00210793          	add	a5,sp,2
   15794:	01810693          	add	a3,sp,24
   15798:	0007d703          	lhu	a4,0(a5)
   1579c:	00278793          	add	a5,a5,2
   157a0:	20071063          	bnez	a4,159a0 <emul+0x4b8>
   157a4:	fef69ae3          	bne	a3,a5,15798 <emul+0x2b0>
   157a8:	01440793          	add	a5,s0,20
   157ac:	00240413          	add	s0,s0,2
   157b0:	fe041f23          	sh	zero,-2(s0)
   157b4:	fef41ce3          	bne	s0,a5,157ac <emul+0x2c4>
   157b8:	ed9ff06f          	j	15690 <emul+0x1a8>
   157bc:	0124d803          	lhu	a6,18(s1)
   157c0:	000085b7          	lui	a1,0x8
   157c4:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   157c8:	00b87733          	and	a4,a6,a1
   157cc:	00070693          	mv	a3,a4
   157d0:	e4b710e3          	bne	a4,a1,15610 <emul+0x128>
   157d4:	01248993          	add	s3,s1,18
   157d8:	00048793          	mv	a5,s1
   157dc:	0007d703          	lhu	a4,0(a5)
   157e0:	00278793          	add	a5,a5,2
   157e4:	08071463          	bnez	a4,1586c <emul+0x384>
   157e8:	fef99ae3          	bne	s3,a5,157dc <emul+0x2f4>
   157ec:	0006871b          	sext.w	a4,a3
   157f0:	e49ff06f          	j	15638 <emul+0x150>
   157f4:	000085b7          	lui	a1,0x8
   157f8:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   157fc:	00b67733          	and	a4,a2,a1
   15800:	00070693          	mv	a3,a4
   15804:	01290793          	add	a5,s2,18
   15808:	dab702e3          	beq	a4,a1,155ac <emul+0xc4>
   1580c:	fcdff06f          	j	157d8 <emul+0x2f0>
   15810:	01290793          	add	a5,s2,18
   15814:	00095703          	lhu	a4,0(s2)
   15818:	00290913          	add	s2,s2,2
   1581c:	04071463          	bnez	a4,15864 <emul+0x37c>
   15820:	fef91ae3          	bne	s2,a5,15814 <emul+0x32c>
   15824:	e35ff06f          	j	15658 <emul+0x170>
   15828:	01040713          	add	a4,s0,16
   1582c:	00040793          	mv	a5,s0
   15830:	00278793          	add	a5,a5,2
   15834:	fe079f23          	sh	zero,-2(a5)
   15838:	fef71ce3          	bne	a4,a5,15830 <emul+0x348>
   1583c:	ffffc7b7          	lui	a5,0xffffc
   15840:	00f41823          	sh	a5,16(s0)
   15844:	ffff87b7          	lui	a5,0xffff8
   15848:	fff7c793          	not	a5,a5
   1584c:	00f41923          	sh	a5,18(s0)
   15850:	e41ff06f          	j	15690 <emul+0x1a8>
   15854:	00f85813          	srl	a6,a6,0xf
   15858:	fbdff06f          	j	15814 <emul+0x32c>
   1585c:	00000813          	li	a6,0
   15860:	dedff06f          	j	1564c <emul+0x164>
   15864:	00000793          	li	a5,0
   15868:	df5ff06f          	j	1565c <emul+0x174>
   1586c:	00068713          	mv	a4,a3
   15870:	000086b7          	lui	a3,0x8
   15874:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   15878:	d85ff06f          	j	155fc <emul+0x114>
   1587c:	00048993          	mv	s3,s1
   15880:	02015783          	lhu	a5,32(sp)
   15884:	0104949b          	sllw	s1,s1,0x10
   15888:	038a8a13          	add	s4,s5,56
   1588c:	0097e7b3          	or	a5,a5,s1
   15890:	02faaa23          	sw	a5,52(s5)
   15894:	034a8493          	add	s1,s5,52
   15898:	000a0793          	mv	a5,s4
   1589c:	04ea8713          	add	a4,s5,78
   158a0:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd2480>
   158a4:	00278793          	add	a5,a5,2
   158a8:	fee79ce3          	bne	a5,a4,158a0 <emul+0x3b8>
   158ac:	04ca8c93          	add	s9,s5,76
   158b0:	00000c13          	li	s8,0
   158b4:	01810b13          	add	s6,sp,24
   158b8:	00410d13          	add	s10,sp,4
   158bc:	04210b93          	add	s7,sp,66
   158c0:	000b5503          	lhu	a0,0(s6)
   158c4:	ffeb0b13          	add	s6,s6,-2
   158c8:	08051a63          	bnez	a0,1595c <emul+0x474>
   158cc:	04cad783          	lhu	a5,76(s5)
   158d0:	000c8713          	mv	a4,s9
   158d4:	00fc6c33          	or	s8,s8,a5
   158d8:	ffe75603          	lhu	a2,-2(a4)
   158dc:	ffe70713          	add	a4,a4,-2
   158e0:	00c71123          	sh	a2,2(a4)
   158e4:	feea1ae3          	bne	s4,a4,158d8 <emul+0x3f0>
   158e8:	020a9c23          	sh	zero,56(s5)
   158ec:	fdab1ae3          	bne	s6,s10,158c0 <emul+0x3d8>
   158f0:	02010793          	add	a5,sp,32
   158f4:	03a10693          	add	a3,sp,58
   158f8:	0004d703          	lhu	a4,0(s1)
   158fc:	00278793          	add	a5,a5,2
   15900:	00248493          	add	s1,s1,2
   15904:	fee79f23          	sh	a4,-2(a5)
   15908:	fef698e3          	bne	a3,a5,158f8 <emul+0x410>
   1590c:	ffffc6b7          	lui	a3,0xffffc
   15910:	01390933          	add	s2,s2,s3
   15914:	00268693          	add	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd6482>
   15918:	000c0593          	mv	a1,s8
   1591c:	02010513          	add	a0,sp,32
   15920:	000a8793          	mv	a5,s5
   15924:	04000713          	li	a4,64
   15928:	00d906b3          	add	a3,s2,a3
   1592c:	00000613          	li	a2,0
   15930:	eadfe0ef          	jal	147dc <emdnorm>
   15934:	02015703          	lhu	a4,32(sp)
   15938:	00015783          	lhu	a5,0(sp)
   1593c:	00040593          	mv	a1,s0
   15940:	02010513          	add	a0,sp,32
   15944:	40e787b3          	sub	a5,a5,a4
   15948:	00f037b3          	snez	a5,a5
   1594c:	40f007bb          	negw	a5,a5
   15950:	02f11023          	sh	a5,32(sp)
   15954:	895fe0ef          	jal	141e8 <emovo.constprop.0>
   15958:	d39ff06f          	j	15690 <emul+0x1a8>
   1595c:	04010613          	add	a2,sp,64
   15960:	02010593          	add	a1,sp,32
   15964:	ff8fe0ef          	jal	1415c <m16m>
   15968:	000c8513          	mv	a0,s9
   1596c:	00000593          	li	a1,0
   15970:	05810613          	add	a2,sp,88
   15974:	00055783          	lhu	a5,0(a0)
   15978:	00065703          	lhu	a4,0(a2)
   1597c:	ffe50513          	add	a0,a0,-2
   15980:	ffe60613          	add	a2,a2,-2
   15984:	00f70733          	add	a4,a4,a5
   15988:	00b70733          	add	a4,a4,a1
   1598c:	01075593          	srl	a1,a4,0x10
   15990:	00e51123          	sh	a4,2(a0)
   15994:	0015f593          	and	a1,a1,1
   15998:	fd761ee3          	bne	a2,s7,15974 <emul+0x48c>
   1599c:	f31ff06f          	j	158cc <emul+0x3e4>
   159a0:	00010513          	mv	a0,sp
   159a4:	901fe0ef          	jal	142a4 <enormlz>
   159a8:	40a00933          	neg	s2,a0
   159ac:	d7dff06f          	j	15728 <emul+0x240>
   159b0:	02010513          	add	a0,sp,32
   159b4:	8f1fe0ef          	jal	142a4 <enormlz>
   159b8:	40a009b3          	neg	s3,a0
   159bc:	02215483          	lhu	s1,34(sp)
   159c0:	ec1ff06f          	j	15880 <emul+0x398>
   159c4:	0124d803          	lhu	a6,18(s1)
   159c8:	00b877b3          	and	a5,a6,a1
   159cc:	e0b786e3          	beq	a5,a1,157d8 <emul+0x2f0>
   159d0:	d35ff06f          	j	15704 <emul+0x21c>

00000000000159d4 <_ldtoa_r>:
   159d4:	d8010113          	add	sp,sp,-640
   159d8:	09100313          	li	t1,145
   159dc:	06c13c23          	sd	a2,120(sp)
   159e0:	06053e03          	ld	t3,96(a0)
   159e4:	02031613          	sll	a2,t1,0x20
   159e8:	fff60613          	add	a2,a2,-1
   159ec:	26813823          	sd	s0,624(sp)
   159f0:	27213023          	sd	s2,608(sp)
   159f4:	26113c23          	sd	ra,632(sp)
   159f8:	26913423          	sd	s1,616(sp)
   159fc:	25313c23          	sd	s3,600(sp)
   15a00:	25413823          	sd	s4,592(sp)
   15a04:	25513423          	sd	s5,584(sp)
   15a08:	25613023          	sd	s6,576(sp)
   15a0c:	23713c23          	sd	s7,568(sp)
   15a10:	23813823          	sd	s8,560(sp)
   15a14:	23913423          	sd	s9,552(sp)
   15a18:	23a13023          	sd	s10,544(sp)
   15a1c:	21b13c23          	sd	s11,536(sp)
   15a20:	06b13823          	sd	a1,112(sp)
   15a24:	1cc13023          	sd	a2,448(sp)
   15a28:	00d13423          	sd	a3,8(sp)
   15a2c:	00e13c23          	sd	a4,24(sp)
   15a30:	02f13023          	sd	a5,32(sp)
   15a34:	03113423          	sd	a7,40(sp)
   15a38:	00050913          	mv	s2,a0
   15a3c:	00080413          	mv	s0,a6
   15a40:	020e0863          	beqz	t3,15a70 <_ldtoa_r+0x9c>
   15a44:	06852783          	lw	a5,104(a0)
   15a48:	00100713          	li	a4,1
   15a4c:	000e0593          	mv	a1,t3
   15a50:	00f7173b          	sllw	a4,a4,a5
   15a54:	02079793          	sll	a5,a5,0x20
   15a58:	02071713          	sll	a4,a4,0x20
   15a5c:	0207d793          	srl	a5,a5,0x20
   15a60:	00e7e7b3          	or	a5,a5,a4
   15a64:	00fe3423          	sd	a5,8(t3)
   15a68:	7dd010ef          	jal	17a44 <_Bfree>
   15a6c:	06093023          	sd	zero,96(s2)
   15a70:	0a010593          	add	a1,sp,160
   15a74:	07010513          	add	a0,sp,112
   15a78:	b84ff0ef          	jal	14dfc <e113toe.isra.0>
   15a7c:	0b215683          	lhu	a3,178(sp)
   15a80:	000087b7          	lui	a5,0x8
   15a84:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15a88:	00f6f733          	and	a4,a3,a5
   15a8c:	02e13823          	sd	a4,48(sp)
   15a90:	46f70863          	beq	a4,a5,15f00 <_ldtoa_r+0x52c>
   15a94:	0106979b          	sllw	a5,a3,0x10
   15a98:	4107d79b          	sraw	a5,a5,0x10
   15a9c:	00813703          	ld	a4,8(sp)
   15aa0:	01f7d79b          	srlw	a5,a5,0x1f
   15aa4:	00f42023          	sw	a5,0(s0)
   15aa8:	00300793          	li	a5,3
   15aac:	12f70ae3          	beq	a4,a5,163e0 <_ldtoa_r+0xa0c>
   15ab0:	01400793          	li	a5,20
   15ab4:	00f13823          	sd	a5,16(sp)
   15ab8:	00813783          	ld	a5,8(sp)
   15abc:	140792e3          	bnez	a5,16400 <_ldtoa_r+0xa2c>
   15ac0:	0c010793          	add	a5,sp,192
   15ac4:	0a010713          	add	a4,sp,160
   15ac8:	0d410413          	add	s0,sp,212
   15acc:	00075683          	lhu	a3,0(a4)
   15ad0:	00278793          	add	a5,a5,2
   15ad4:	00270713          	add	a4,a4,2
   15ad8:	fed79f23          	sh	a3,-2(a5)
   15adc:	fe8798e3          	bne	a5,s0,15acc <_ldtoa_r+0xf8>
   15ae0:	0d215a83          	lhu	s5,210(sp)
   15ae4:	00000993          	li	s3,0
   15ae8:	00fad793          	srl	a5,s5,0xf
   15aec:	00078c63          	beqz	a5,15b04 <_ldtoa_r+0x130>
   15af0:	031a9f13          	sll	t5,s5,0x31
   15af4:	031f5a93          	srl	s5,t5,0x31
   15af8:	000107b7          	lui	a5,0x10
   15afc:	0d511923          	sh	s5,210(sp)
   15b00:	fff78993          	add	s3,a5,-1 # ffff <exit-0xe9>
   15b04:	00023bb7          	lui	s7,0x23
   15b08:	000234b7          	lui	s1,0x23
   15b0c:	0e010713          	add	a4,sp,224
   15b10:	188b8793          	add	a5,s7,392 # 23188 <eone>
   15b14:	19c48493          	add	s1,s1,412 # 2319c <eone+0x14>
   15b18:	0007d683          	lhu	a3,0(a5)
   15b1c:	00278793          	add	a5,a5,2
   15b20:	00270713          	add	a4,a4,2
   15b24:	fed71f23          	sh	a3,-2(a4)
   15b28:	fe9798e3          	bne	a5,s1,15b18 <_ldtoa_r+0x144>
   15b2c:	6a0a9c63          	bnez	s5,161e4 <_ldtoa_r+0x810>
   15b30:	0c010793          	add	a5,sp,192
   15b34:	0d210693          	add	a3,sp,210
   15b38:	0007d703          	lhu	a4,0(a5)
   15b3c:	6a071e63          	bnez	a4,161f8 <_ldtoa_r+0x824>
   15b40:	00278793          	add	a5,a5,2
   15b44:	fef69ae3          	bne	a3,a5,15b38 <_ldtoa_r+0x164>
   15b48:	00000413          	li	s0,0
   15b4c:	18010c13          	add	s8,sp,384
   15b50:	1c010b13          	add	s6,sp,448
   15b54:	12010a13          	add	s4,sp,288
   15b58:	13810d93          	add	s11,sp,312
   15b5c:	000a0593          	mv	a1,s4
   15b60:	0e010513          	add	a0,sp,224
   15b64:	a71fe0ef          	jal	145d4 <emovi>
   15b68:	000a0493          	mv	s1,s4
   15b6c:	0e010693          	add	a3,sp,224
   15b70:	000a0793          	mv	a5,s4
   15b74:	0007b703          	ld	a4,0(a5)
   15b78:	00878793          	add	a5,a5,8
   15b7c:	00868693          	add	a3,a3,8
   15b80:	fee6bc23          	sd	a4,-8(a3)
   15b84:	fefd98e3          	bne	s11,a5,15b74 <_ldtoa_r+0x1a0>
   15b88:	000a0593          	mv	a1,s4
   15b8c:	0c010513          	add	a0,sp,192
   15b90:	0e011c23          	sh	zero,248(sp)
   15b94:	a41fe0ef          	jal	145d4 <emovi>
   15b98:	0d810b93          	add	s7,sp,216
   15b9c:	0c010793          	add	a5,sp,192
   15ba0:	0004b703          	ld	a4,0(s1)
   15ba4:	00878793          	add	a5,a5,8
   15ba8:	00848493          	add	s1,s1,8
   15bac:	fee7bc23          	sd	a4,-8(a5)
   15bb0:	fefb98e3          	bne	s7,a5,15ba0 <_ldtoa_r+0x1cc>
   15bb4:	000b0613          	mv	a2,s6
   15bb8:	0c010593          	add	a1,sp,192
   15bbc:	0e010513          	add	a0,sp,224
   15bc0:	0c011c23          	sh	zero,216(sp)
   15bc4:	8d4ff0ef          	jal	14c98 <eiremain>
   15bc8:	20c15d83          	lhu	s11,524(sp)
   15bcc:	000234b7          	lui	s1,0x23
   15bd0:	0c210d13          	add	s10,sp,194
   15bd4:	10210c93          	add	s9,sp,258
   15bd8:	160d9063          	bnez	s11,15d38 <_ldtoa_r+0x364>
   15bdc:	1a048593          	add	a1,s1,416 # 231a0 <ezero>
   15be0:	0c010513          	add	a0,sp,192
   15be4:	aa9fe0ef          	jal	1468c <ecmp>
   15be8:	14050863          	beqz	a0,15d38 <_ldtoa_r+0x364>
   15bec:	00000713          	li	a4,0
   15bf0:	000b8693          	mv	a3,s7
   15bf4:	0006d783          	lhu	a5,0(a3)
   15bf8:	00f7d613          	srl	a2,a5,0xf
   15bfc:	00060463          	beqz	a2,15c04 <_ldtoa_r+0x230>
   15c00:	00176713          	or	a4,a4,1
   15c04:	0017979b          	sllw	a5,a5,0x1
   15c08:	03079793          	sll	a5,a5,0x30
   15c0c:	00277613          	and	a2,a4,2
   15c10:	0307d793          	srl	a5,a5,0x30
   15c14:	00060463          	beqz	a2,15c1c <_ldtoa_r+0x248>
   15c18:	0017e793          	or	a5,a5,1
   15c1c:	0017171b          	sllw	a4,a4,0x1
   15c20:	00f69023          	sh	a5,0(a3)
   15c24:	03071713          	sll	a4,a4,0x30
   15c28:	ffe68693          	add	a3,a3,-2
   15c2c:	03075713          	srl	a4,a4,0x30
   15c30:	fda692e3          	bne	a3,s10,15bf4 <_ldtoa_r+0x220>
   15c34:	10010713          	add	a4,sp,256
   15c38:	0c010793          	add	a5,sp,192
   15c3c:	0007b683          	ld	a3,0(a5)
   15c40:	00878793          	add	a5,a5,8
   15c44:	00870713          	add	a4,a4,8
   15c48:	fed73c23          	sd	a3,-8(a4)
   15c4c:	fefb98e3          	bne	s7,a5,15c3c <_ldtoa_r+0x268>
   15c50:	10011c23          	sh	zero,280(sp)
   15c54:	00000713          	li	a4,0
   15c58:	11810693          	add	a3,sp,280
   15c5c:	0006d783          	lhu	a5,0(a3)
   15c60:	00f7d613          	srl	a2,a5,0xf
   15c64:	00060463          	beqz	a2,15c6c <_ldtoa_r+0x298>
   15c68:	00176713          	or	a4,a4,1
   15c6c:	0017979b          	sllw	a5,a5,0x1
   15c70:	03079793          	sll	a5,a5,0x30
   15c74:	00277613          	and	a2,a4,2
   15c78:	0307d793          	srl	a5,a5,0x30
   15c7c:	00060463          	beqz	a2,15c84 <_ldtoa_r+0x2b0>
   15c80:	0017e793          	or	a5,a5,1
   15c84:	0017171b          	sllw	a4,a4,0x1
   15c88:	00f69023          	sh	a5,0(a3)
   15c8c:	03071713          	sll	a4,a4,0x30
   15c90:	ffe68693          	add	a3,a3,-2
   15c94:	03075713          	srl	a4,a4,0x30
   15c98:	fd9692e3          	bne	a3,s9,15c5c <_ldtoa_r+0x288>
   15c9c:	00000713          	li	a4,0
   15ca0:	11810693          	add	a3,sp,280
   15ca4:	0006d783          	lhu	a5,0(a3)
   15ca8:	00f7d613          	srl	a2,a5,0xf
   15cac:	00060463          	beqz	a2,15cb4 <_ldtoa_r+0x2e0>
   15cb0:	00176713          	or	a4,a4,1
   15cb4:	0017979b          	sllw	a5,a5,0x1
   15cb8:	03079793          	sll	a5,a5,0x30
   15cbc:	00277613          	and	a2,a4,2
   15cc0:	0307d793          	srl	a5,a5,0x30
   15cc4:	00060463          	beqz	a2,15ccc <_ldtoa_r+0x2f8>
   15cc8:	0017e793          	or	a5,a5,1
   15ccc:	0017171b          	sllw	a4,a4,0x1
   15cd0:	00f69023          	sh	a5,0(a3)
   15cd4:	03071713          	sll	a4,a4,0x30
   15cd8:	ffe68693          	add	a3,a3,-2
   15cdc:	03075713          	srl	a4,a4,0x30
   15ce0:	fd9692e3          	bne	a3,s9,15ca4 <_ldtoa_r+0x2d0>
   15ce4:	00000613          	li	a2,0
   15ce8:	000b8693          	mv	a3,s7
   15cec:	11810713          	add	a4,sp,280
   15cf0:	0006d583          	lhu	a1,0(a3)
   15cf4:	00075783          	lhu	a5,0(a4)
   15cf8:	ffe68693          	add	a3,a3,-2
   15cfc:	ffe70713          	add	a4,a4,-2
   15d00:	00b787b3          	add	a5,a5,a1
   15d04:	00c787b3          	add	a5,a5,a2
   15d08:	0107d613          	srl	a2,a5,0x10
   15d0c:	00f69123          	sh	a5,2(a3)
   15d10:	00167613          	and	a2,a2,1
   15d14:	fd971ee3          	bne	a4,s9,15cf0 <_ldtoa_r+0x31c>
   15d18:	000b0613          	mv	a2,s6
   15d1c:	0c010593          	add	a1,sp,192
   15d20:	0e010513          	add	a0,sp,224
   15d24:	f75fe0ef          	jal	14c98 <eiremain>
   15d28:	20c15783          	lhu	a5,524(sp)
   15d2c:	fff4041b          	addw	s0,s0,-1
   15d30:	ea0786e3          	beqz	a5,15bdc <_ldtoa_r+0x208>
   15d34:	00078d93          	mv	s11,a5
   15d38:	02000793          	li	a5,32
   15d3c:	00098463          	beqz	s3,15d44 <_ldtoa_r+0x370>
   15d40:	02d00793          	li	a5,45
   15d44:	00813703          	ld	a4,8(sp)
   15d48:	18f10023          	sb	a5,384(sp)
   15d4c:	00300693          	li	a3,3
   15d50:	01013783          	ld	a5,16(sp)
   15d54:	00d71463          	bne	a4,a3,15d5c <_ldtoa_r+0x388>
   15d58:	008787bb          	addw	a5,a5,s0
   15d5c:	02a00693          	li	a3,42
   15d60:	00078613          	mv	a2,a5
   15d64:	00f6d463          	bge	a3,a5,15d6c <_ldtoa_r+0x398>
   15d68:	02a00613          	li	a2,42
   15d6c:	00a00693          	li	a3,10
   15d70:	00060a1b          	sext.w	s4,a2
   15d74:	64dd8063          	beq	s11,a3,163b4 <_ldtoa_r+0x9e0>
   15d78:	030d8d9b          	addw	s11,s11,48
   15d7c:	02e00693          	li	a3,46
   15d80:	19b100a3          	sb	s11,385(sp)
   15d84:	18d10123          	sb	a3,386(sp)
   15d88:	2407c063          	bltz	a5,15fc8 <_ldtoa_r+0x5f4>
   15d8c:	18310a93          	add	s5,sp,387
   15d90:	00000993          	li	s3,0
   15d94:	10010c93          	add	s9,sp,256
   15d98:	11810d93          	add	s11,sp,280
   15d9c:	0c210d13          	add	s10,sp,194
   15da0:	10210493          	add	s1,sp,258
   15da4:	00000713          	li	a4,0
   15da8:	000b8693          	mv	a3,s7
   15dac:	0006d783          	lhu	a5,0(a3)
   15db0:	00f7d613          	srl	a2,a5,0xf
   15db4:	00060463          	beqz	a2,15dbc <_ldtoa_r+0x3e8>
   15db8:	00176713          	or	a4,a4,1
   15dbc:	0017979b          	sllw	a5,a5,0x1
   15dc0:	03079793          	sll	a5,a5,0x30
   15dc4:	00277613          	and	a2,a4,2
   15dc8:	0307d793          	srl	a5,a5,0x30
   15dcc:	00060463          	beqz	a2,15dd4 <_ldtoa_r+0x400>
   15dd0:	0017e793          	or	a5,a5,1
   15dd4:	0017171b          	sllw	a4,a4,0x1
   15dd8:	00f69023          	sh	a5,0(a3)
   15ddc:	03071713          	sll	a4,a4,0x30
   15de0:	ffe68693          	add	a3,a3,-2
   15de4:	03075713          	srl	a4,a4,0x30
   15de8:	fda692e3          	bne	a3,s10,15dac <_ldtoa_r+0x3d8>
   15dec:	000c8793          	mv	a5,s9
   15df0:	0c010713          	add	a4,sp,192
   15df4:	00073683          	ld	a3,0(a4)
   15df8:	00878793          	add	a5,a5,8
   15dfc:	00870713          	add	a4,a4,8
   15e00:	fed7bc23          	sd	a3,-8(a5)
   15e04:	fefd98e3          	bne	s11,a5,15df4 <_ldtoa_r+0x420>
   15e08:	10011c23          	sh	zero,280(sp)
   15e0c:	00000713          	li	a4,0
   15e10:	000d8693          	mv	a3,s11
   15e14:	0006d783          	lhu	a5,0(a3)
   15e18:	00f7d613          	srl	a2,a5,0xf
   15e1c:	00060463          	beqz	a2,15e24 <_ldtoa_r+0x450>
   15e20:	00176713          	or	a4,a4,1
   15e24:	0017979b          	sllw	a5,a5,0x1
   15e28:	03079793          	sll	a5,a5,0x30
   15e2c:	00277613          	and	a2,a4,2
   15e30:	0307d793          	srl	a5,a5,0x30
   15e34:	00060463          	beqz	a2,15e3c <_ldtoa_r+0x468>
   15e38:	0017e793          	or	a5,a5,1
   15e3c:	0017171b          	sllw	a4,a4,0x1
   15e40:	00f69023          	sh	a5,0(a3)
   15e44:	03071713          	sll	a4,a4,0x30
   15e48:	ffe68693          	add	a3,a3,-2
   15e4c:	03075713          	srl	a4,a4,0x30
   15e50:	fc9692e3          	bne	a3,s1,15e14 <_ldtoa_r+0x440>
   15e54:	00000713          	li	a4,0
   15e58:	000d8693          	mv	a3,s11
   15e5c:	0006d783          	lhu	a5,0(a3)
   15e60:	00f7d613          	srl	a2,a5,0xf
   15e64:	00060463          	beqz	a2,15e6c <_ldtoa_r+0x498>
   15e68:	00176713          	or	a4,a4,1
   15e6c:	0017979b          	sllw	a5,a5,0x1
   15e70:	03079793          	sll	a5,a5,0x30
   15e74:	00277613          	and	a2,a4,2
   15e78:	0307d793          	srl	a5,a5,0x30
   15e7c:	00060463          	beqz	a2,15e84 <_ldtoa_r+0x4b0>
   15e80:	0017e793          	or	a5,a5,1
   15e84:	0017171b          	sllw	a4,a4,0x1
   15e88:	00f69023          	sh	a5,0(a3)
   15e8c:	03071713          	sll	a4,a4,0x30
   15e90:	ffe68693          	add	a3,a3,-2
   15e94:	03075713          	srl	a4,a4,0x30
   15e98:	fc9692e3          	bne	a3,s1,15e5c <_ldtoa_r+0x488>
   15e9c:	00000613          	li	a2,0
   15ea0:	000b8693          	mv	a3,s7
   15ea4:	000d8713          	mv	a4,s11
   15ea8:	0006d583          	lhu	a1,0(a3)
   15eac:	00075783          	lhu	a5,0(a4)
   15eb0:	ffe68693          	add	a3,a3,-2
   15eb4:	ffe70713          	add	a4,a4,-2
   15eb8:	00b787b3          	add	a5,a5,a1
   15ebc:	00c787b3          	add	a5,a5,a2
   15ec0:	0107d613          	srl	a2,a5,0x10
   15ec4:	00f69123          	sh	a5,2(a3)
   15ec8:	00167613          	and	a2,a2,1
   15ecc:	fc971ee3          	bne	a4,s1,15ea8 <_ldtoa_r+0x4d4>
   15ed0:	0c010593          	add	a1,sp,192
   15ed4:	000b0613          	mv	a2,s6
   15ed8:	0e010513          	add	a0,sp,224
   15edc:	dbdfe0ef          	jal	14c98 <eiremain>
   15ee0:	20c15583          	lhu	a1,524(sp)
   15ee4:	001a8793          	add	a5,s5,1
   15ee8:	0019899b          	addw	s3,s3,1
   15eec:	0305871b          	addw	a4,a1,48
   15ef0:	fee78fa3          	sb	a4,-1(a5)
   15ef4:	0f3a4063          	blt	s4,s3,15fd4 <_ldtoa_r+0x600>
   15ef8:	00078a93          	mv	s5,a5
   15efc:	ea9ff06f          	j	15da4 <_ldtoa_r+0x3d0>
   15f00:	0a010793          	add	a5,sp,160
   15f04:	0b210613          	add	a2,sp,178
   15f08:	0007d703          	lhu	a4,0(a5)
   15f0c:	00278793          	add	a5,a5,2
   15f10:	7e071063          	bnez	a4,166f0 <_ldtoa_r+0xd1c>
   15f14:	fec79ae3          	bne	a5,a2,15f08 <_ldtoa_r+0x534>
   15f18:	00f6d693          	srl	a3,a3,0xf
   15f1c:	00813703          	ld	a4,8(sp)
   15f20:	00d42023          	sw	a3,0(s0)
   15f24:	00300793          	li	a5,3
   15f28:	7af70463          	beq	a4,a5,166d0 <_ldtoa_r+0xcfc>
   15f2c:	01400793          	li	a5,20
   15f30:	00f13823          	sd	a5,16(sp)
   15f34:	00070e63          	beqz	a4,15f50 <_ldtoa_r+0x57c>
   15f38:	01813783          	ld	a5,24(sp)
   15f3c:	fff78a1b          	addw	s4,a5,-1
   15f40:	02a00793          	li	a5,42
   15f44:	0147d463          	bge	a5,s4,15f4c <_ldtoa_r+0x578>
   15f48:	02a00a13          	li	s4,42
   15f4c:	01413823          	sd	s4,16(sp)
   15f50:	0a015703          	lhu	a4,160(sp)
   15f54:	0a010793          	add	a5,sp,160
   15f58:	0b210693          	add	a3,sp,178
   15f5c:	00278793          	add	a5,a5,2
   15f60:	00071a63          	bnez	a4,15f74 <_ldtoa_r+0x5a0>
   15f64:	b4d78ee3          	beq	a5,a3,15ac0 <_ldtoa_r+0xec>
   15f68:	0007d703          	lhu	a4,0(a5)
   15f6c:	00278793          	add	a5,a5,2
   15f70:	fe070ae3          	beqz	a4,15f64 <_ldtoa_r+0x590>
   15f74:	18010c13          	add	s8,sp,384
   15f78:	000235b7          	lui	a1,0x23
   15f7c:	c4058593          	add	a1,a1,-960 # 22c40 <__clz_tab+0x1f8>
   15f80:	000c0513          	mv	a0,s8
   15f84:	635020ef          	jal	18db8 <sprintf>
   15f88:	00002437          	lui	s0,0x2
   15f8c:	70f40413          	add	s0,s0,1807 # 270f <exit-0xd9d9>
   15f90:	09000793          	li	a5,144
   15f94:	1cf12223          	sw	a5,452(sp)
   15f98:	1c812823          	sw	s0,464(sp)
   15f9c:	0a010793          	add	a5,sp,160
   15fa0:	0b210613          	add	a2,sp,178
   15fa4:	0007d703          	lhu	a4,0(a5)
   15fa8:	00278793          	add	a5,a5,2
   15fac:	140710e3          	bnez	a4,168ec <_ldtoa_r+0xf18>
   15fb0:	fec79ae3          	bne	a5,a2,15fa4 <_ldtoa_r+0x5d0>
   15fb4:	02013703          	ld	a4,32(sp)
   15fb8:	000027b7          	lui	a5,0x2
   15fbc:	70f78793          	add	a5,a5,1807 # 270f <exit-0xd9d9>
   15fc0:	00f72023          	sw	a5,0(a4)
   15fc4:	0e00006f          	j	160a4 <_ldtoa_r+0x6d0>
   15fc8:	20c15583          	lhu	a1,524(sp)
   15fcc:	18210a93          	add	s5,sp,386
   15fd0:	18310793          	add	a5,sp,387
   15fd4:	00400693          	li	a3,4
   15fd8:	04b6d863          	bge	a3,a1,16028 <_ldtoa_r+0x654>
   15fdc:	00500693          	li	a3,5
   15fe0:	14d58ae3          	beq	a1,a3,16934 <_ldtoa_r+0xf60>
   15fe4:	ffe7c683          	lbu	a3,-2(a5)
   15fe8:	ffe78593          	add	a1,a5,-2
   15fec:	07f6f693          	and	a3,a3,127
   15ff0:	020a4663          	bltz	s4,1601c <_ldtoa_r+0x648>
   15ff4:	02e00793          	li	a5,46
   15ff8:	03800613          	li	a2,56
   15ffc:	03000513          	li	a0,48
   16000:	0cf688e3          	beq	a3,a5,168d0 <_ldtoa_r+0xefc>
   16004:	0cd670e3          	bgeu	a2,a3,168c4 <_ldtoa_r+0xef0>
   16008:	fff5c683          	lbu	a3,-1(a1)
   1600c:	00a58023          	sb	a0,0(a1)
   16010:	fff58593          	add	a1,a1,-1
   16014:	07f6f693          	and	a3,a3,127
   16018:	fe9ff06f          	j	16000 <_ldtoa_r+0x62c>
   1601c:	03100693          	li	a3,49
   16020:	fed78f23          	sb	a3,-2(a5)
   16024:	0014041b          	addw	s0,s0,1
   16028:	000235b7          	lui	a1,0x23
   1602c:	00040613          	mv	a2,s0
   16030:	bd058593          	add	a1,a1,-1072 # 22bd0 <__clz_tab+0x188>
   16034:	000a8513          	mv	a0,s5
   16038:	581020ef          	jal	18db8 <sprintf>
   1603c:	09000793          	li	a5,144
   16040:	03013703          	ld	a4,48(sp)
   16044:	1cf12223          	sw	a5,452(sp)
   16048:	000087b7          	lui	a5,0x8
   1604c:	1c812823          	sw	s0,464(sp)
   16050:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   16054:	f4f704e3          	beq	a4,a5,15f9c <_ldtoa_r+0x5c8>
   16058:	02013703          	ld	a4,32(sp)
   1605c:	18014683          	lbu	a3,384(sp)
   16060:	0014079b          	addw	a5,s0,1
   16064:	00f72023          	sw	a5,0(a4)
   16068:	66068063          	beqz	a3,166c8 <_ldtoa_r+0xcf4>
   1606c:	000c0793          	mv	a5,s8
   16070:	02e00613          	li	a2,46
   16074:	30c68a63          	beq	a3,a2,16388 <_ldtoa_r+0x9b4>
   16078:	0017c683          	lbu	a3,1(a5)
   1607c:	00178793          	add	a5,a5,1
   16080:	fe069ae3          	bnez	a3,16074 <_ldtoa_r+0x6a0>
   16084:	04500613          	li	a2,69
   16088:	00fc6663          	bltu	s8,a5,16094 <_ldtoa_r+0x6c0>
   1608c:	0140006f          	j	160a0 <_ldtoa_r+0x6cc>
   16090:	63878c63          	beq	a5,s8,166c8 <_ldtoa_r+0xcf4>
   16094:	fff7c703          	lbu	a4,-1(a5)
   16098:	fff78793          	add	a5,a5,-1
   1609c:	fec71ae3          	bne	a4,a2,16090 <_ldtoa_r+0x6bc>
   160a0:	00078023          	sb	zero,0(a5)
   160a4:	000c0793          	mv	a5,s8
   160a8:	02000613          	li	a2,32
   160ac:	02d00593          	li	a1,45
   160b0:	0007c703          	lbu	a4,0(a5)
   160b4:	00c70463          	beq	a4,a2,160bc <_ldtoa_r+0x6e8>
   160b8:	00b71663          	bne	a4,a1,160c4 <_ldtoa_r+0x6f0>
   160bc:	00178793          	add	a5,a5,1
   160c0:	ff1ff06f          	j	160b0 <_ldtoa_r+0x6dc>
   160c4:	000c0613          	mv	a2,s8
   160c8:	0007c703          	lbu	a4,0(a5)
   160cc:	00060493          	mv	s1,a2
   160d0:	00178793          	add	a5,a5,1
   160d4:	00e60023          	sb	a4,0(a2)
   160d8:	00160613          	add	a2,a2,1
   160dc:	fe0716e3          	bnez	a4,160c8 <_ldtoa_r+0x6f4>
   160e0:	00813703          	ld	a4,8(sp)
   160e4:	00200793          	li	a5,2
   160e8:	fff4c603          	lbu	a2,-1(s1)
   160ec:	28f70263          	beq	a4,a5,16370 <_ldtoa_r+0x99c>
   160f0:	01013703          	ld	a4,16(sp)
   160f4:	00070793          	mv	a5,a4
   160f8:	00875463          	bge	a4,s0,16100 <_ldtoa_r+0x72c>
   160fc:	00040793          	mv	a5,s0
   16100:	03000593          	li	a1,48
   16104:	0007869b          	sext.w	a3,a5
   16108:	02b61663          	bne	a2,a1,16134 <_ldtoa_r+0x760>
   1610c:	418487b3          	sub	a5,s1,s8
   16110:	02f6d263          	bge	a3,a5,16134 <_ldtoa_r+0x760>
   16114:	03000613          	li	a2,48
   16118:	00c0006f          	j	16124 <_ldtoa_r+0x750>
   1611c:	418487b3          	sub	a5,s1,s8
   16120:	00f6da63          	bge	a3,a5,16134 <_ldtoa_r+0x760>
   16124:	ffe4c783          	lbu	a5,-2(s1)
   16128:	fe048fa3          	sb	zero,-1(s1)
   1612c:	fff48493          	add	s1,s1,-1
   16130:	fec786e3          	beq	a5,a2,1611c <_ldtoa_r+0x748>
   16134:	00813703          	ld	a4,8(sp)
   16138:	00300793          	li	a5,3
   1613c:	1ef70863          	beq	a4,a5,1632c <_ldtoa_r+0x958>
   16140:	01813783          	ld	a5,24(sp)
   16144:	01f00613          	li	a2,31
   16148:	00100693          	li	a3,1
   1614c:	0097851b          	addw	a0,a5,9
   16150:	00400793          	li	a5,4
   16154:	20a67863          	bgeu	a2,a0,16364 <_ldtoa_r+0x990>
   16158:	0017979b          	sllw	a5,a5,0x1
   1615c:	01c78713          	add	a4,a5,28
   16160:	0006859b          	sext.w	a1,a3
   16164:	0016869b          	addw	a3,a3,1
   16168:	fee578e3          	bgeu	a0,a4,16158 <_ldtoa_r+0x784>
   1616c:	0005859b          	sext.w	a1,a1
   16170:	06b92423          	sw	a1,104(s2)
   16174:	00090513          	mv	a0,s2
   16178:	021010ef          	jal	17998 <_Balloc>
   1617c:	00050413          	mv	s0,a0
   16180:	1a050ee3          	beqz	a0,16b3c <_ldtoa_r+0x1168>
   16184:	06a93023          	sd	a0,96(s2)
   16188:	000c0593          	mv	a1,s8
   1618c:	73d020ef          	jal	190c8 <strcpy>
   16190:	02813703          	ld	a4,40(sp)
   16194:	00070863          	beqz	a4,161a4 <_ldtoa_r+0x7d0>
   16198:	418487b3          	sub	a5,s1,s8
   1619c:	00f407b3          	add	a5,s0,a5
   161a0:	00f73023          	sd	a5,0(a4)
   161a4:	27813083          	ld	ra,632(sp)
   161a8:	00040513          	mv	a0,s0
   161ac:	27013403          	ld	s0,624(sp)
   161b0:	26813483          	ld	s1,616(sp)
   161b4:	26013903          	ld	s2,608(sp)
   161b8:	25813983          	ld	s3,600(sp)
   161bc:	25013a03          	ld	s4,592(sp)
   161c0:	24813a83          	ld	s5,584(sp)
   161c4:	24013b03          	ld	s6,576(sp)
   161c8:	23813b83          	ld	s7,568(sp)
   161cc:	23013c03          	ld	s8,560(sp)
   161d0:	22813c83          	ld	s9,552(sp)
   161d4:	22013d03          	ld	s10,544(sp)
   161d8:	21813d83          	ld	s11,536(sp)
   161dc:	28010113          	add	sp,sp,640
   161e0:	00008067          	ret
   161e4:	000087b7          	lui	a5,0x8
   161e8:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   161ec:	6afa8663          	beq	s5,a5,16898 <_ldtoa_r+0xec4>
   161f0:	0d011783          	lh	a5,208(sp)
   161f4:	7207d463          	bgez	a5,1691c <_ldtoa_r+0xf48>
   161f8:	0c010593          	add	a1,sp,192
   161fc:	188b8513          	add	a0,s7,392
   16200:	c8cfe0ef          	jal	1468c <ecmp>
   16204:	940502e3          	beqz	a0,15b48 <_ldtoa_r+0x174>
   16208:	20054a63          	bltz	a0,1641c <_ldtoa_r+0xa48>
   1620c:	7a0a9063          	bnez	s5,169ac <_ldtoa_r+0xfd8>
   16210:	0d011783          	lh	a5,208(sp)
   16214:	00000413          	li	s0,0
   16218:	1c010b13          	add	s6,sp,448
   1621c:	0207c463          	bltz	a5,16244 <_ldtoa_r+0x870>
   16220:	00023d37          	lui	s10,0x23
   16224:	0c010613          	add	a2,sp,192
   16228:	000b0693          	mv	a3,s6
   1622c:	00060593          	mv	a1,a2
   16230:	170d0513          	add	a0,s10,368 # 23170 <etens+0xf0>
   16234:	ab4ff0ef          	jal	154e8 <emul>
   16238:	0d011783          	lh	a5,208(sp)
   1623c:	fff4041b          	addw	s0,s0,-1
   16240:	fe07d2e3          	bgez	a5,16224 <_ldtoa_r+0x850>
   16244:	12010a13          	add	s4,sp,288
   16248:	13810d93          	add	s11,sp,312
   1624c:	000a0793          	mv	a5,s4
   16250:	0c010713          	add	a4,sp,192
   16254:	13410613          	add	a2,sp,308
   16258:	00075683          	lhu	a3,0(a4)
   1625c:	00278793          	add	a5,a5,2
   16260:	00270713          	add	a4,a4,2
   16264:	fed79f23          	sh	a3,-2(a5)
   16268:	fec798e3          	bne	a5,a2,16258 <_ldtoa_r+0x884>
   1626c:	000237b7          	lui	a5,0x23
   16270:	0e010713          	add	a4,sp,224
   16274:	18878793          	add	a5,a5,392 # 23188 <eone>
   16278:	0007d683          	lhu	a3,0(a5)
   1627c:	00278793          	add	a5,a5,2
   16280:	00270713          	add	a4,a4,2
   16284:	fed71f23          	sh	a3,-2(a4)
   16288:	fe9798e3          	bne	a5,s1,16278 <_ldtoa_r+0x8a4>
   1628c:	00023d37          	lui	s10,0x23
   16290:	00023cb7          	lui	s9,0x23
   16294:	000237b7          	lui	a5,0x23
   16298:	fffff4b7          	lui	s1,0xfffff
   1629c:	080d0d13          	add	s10,s10,128 # 23080 <etens>
   162a0:	f78c8c93          	add	s9,s9,-136 # 22f78 <emtens>
   162a4:	06878a93          	add	s5,a5,104 # 23068 <emtens+0xf0>
   162a8:	00c0006f          	j	162b4 <_ldtoa_r+0x8e0>
   162ac:	014c8c93          	add	s9,s9,20
   162b0:	014d0d13          	add	s10,s10,20
   162b4:	000a0593          	mv	a1,s4
   162b8:	188b8513          	add	a0,s7,392
   162bc:	bd0fe0ef          	jal	1468c <ecmp>
   162c0:	04a05863          	blez	a0,16310 <_ldtoa_r+0x93c>
   162c4:	000a0593          	mv	a1,s4
   162c8:	000c8513          	mv	a0,s9
   162cc:	bc0fe0ef          	jal	1468c <ecmp>
   162d0:	02054863          	bltz	a0,16300 <_ldtoa_r+0x92c>
   162d4:	000b0693          	mv	a3,s6
   162d8:	000a0613          	mv	a2,s4
   162dc:	000a0593          	mv	a1,s4
   162e0:	000d0513          	mv	a0,s10
   162e4:	a04ff0ef          	jal	154e8 <emul>
   162e8:	0e010613          	add	a2,sp,224
   162ec:	000b0693          	mv	a3,s6
   162f0:	00060593          	mv	a1,a2
   162f4:	000d0513          	mv	a0,s10
   162f8:	9f0ff0ef          	jal	154e8 <emul>
   162fc:	0084843b          	addw	s0,s1,s0
   16300:	01f4d79b          	srlw	a5,s1,0x1f
   16304:	009787bb          	addw	a5,a5,s1
   16308:	4017d49b          	sraw	s1,a5,0x1
   1630c:	fb5c90e3          	bne	s9,s5,162ac <_ldtoa_r+0x8d8>
   16310:	0e010613          	add	a2,sp,224
   16314:	000b0693          	mv	a3,s6
   16318:	188b8593          	add	a1,s7,392
   1631c:	00060513          	mv	a0,a2
   16320:	c35fe0ef          	jal	14f54 <ediv>
   16324:	18010c13          	add	s8,sp,384
   16328:	835ff06f          	j	15b5c <_ldtoa_r+0x188>
   1632c:	01013783          	ld	a5,16(sp)
   16330:	0087843b          	addw	s0,a5,s0
   16334:	52044c63          	bltz	s0,1686c <_ldtoa_r+0xe98>
   16338:	02013783          	ld	a5,32(sp)
   1633c:	01813703          	ld	a4,24(sp)
   16340:	0007a783          	lw	a5,0(a5)
   16344:	00e787bb          	addw	a5,a5,a4
   16348:	00f13c23          	sd	a5,24(sp)
   1634c:	01813783          	ld	a5,24(sp)
   16350:	01f00613          	li	a2,31
   16354:	00100693          	li	a3,1
   16358:	0037851b          	addw	a0,a5,3
   1635c:	00400793          	li	a5,4
   16360:	dea66ce3          	bltu	a2,a0,16158 <_ldtoa_r+0x784>
   16364:	06092423          	sw	zero,104(s2)
   16368:	00000593          	li	a1,0
   1636c:	e09ff06f          	j	16174 <_ldtoa_r+0x7a0>
   16370:	03000793          	li	a5,48
   16374:	dcf616e3          	bne	a2,a5,16140 <_ldtoa_r+0x76c>
   16378:	418487b3          	sub	a5,s1,s8
   1637c:	00100693          	li	a3,1
   16380:	d8f6cae3          	blt	a3,a5,16114 <_ldtoa_r+0x740>
   16384:	dbdff06f          	j	16140 <_ldtoa_r+0x76c>
   16388:	0007c683          	lbu	a3,0(a5)
   1638c:	ce068ce3          	beqz	a3,16084 <_ldtoa_r+0x6b0>
   16390:	0017c703          	lbu	a4,1(a5)
   16394:	00178793          	add	a5,a5,1
   16398:	fee78fa3          	sb	a4,-1(a5)
   1639c:	ce0704e3          	beqz	a4,16084 <_ldtoa_r+0x6b0>
   163a0:	0017c703          	lbu	a4,1(a5)
   163a4:	00178793          	add	a5,a5,1
   163a8:	fee78fa3          	sb	a4,-1(a5)
   163ac:	fe0712e3          	bnez	a4,16390 <_ldtoa_r+0x9bc>
   163b0:	cd5ff06f          	j	16084 <_ldtoa_r+0x6b0>
   163b4:	03100693          	li	a3,49
   163b8:	18d100a3          	sb	a3,385(sp)
   163bc:	02e00693          	li	a3,46
   163c0:	18d10123          	sb	a3,386(sp)
   163c4:	0014041b          	addw	s0,s0,1
   163c8:	2ef05863          	blez	a5,166b8 <_ldtoa_r+0xce4>
   163cc:	03000793          	li	a5,48
   163d0:	18f101a3          	sb	a5,387(sp)
   163d4:	fffa0a1b          	addw	s4,s4,-1
   163d8:	18410a93          	add	s5,sp,388
   163dc:	9b5ff06f          	j	15d90 <_ldtoa_r+0x3bc>
   163e0:	01813703          	ld	a4,24(sp)
   163e4:	02a00793          	li	a5,42
   163e8:	00070a13          	mv	s4,a4
   163ec:	00e7d463          	bge	a5,a4,163f4 <_ldtoa_r+0xa20>
   163f0:	02a00a13          	li	s4,42
   163f4:	000a079b          	sext.w	a5,s4
   163f8:	00f13823          	sd	a5,16(sp)
   163fc:	ec4ff06f          	j	15ac0 <_ldtoa_r+0xec>
   16400:	01813783          	ld	a5,24(sp)
   16404:	fff78a1b          	addw	s4,a5,-1
   16408:	02a00793          	li	a5,42
   1640c:	0147d463          	bge	a5,s4,16414 <_ldtoa_r+0xa40>
   16410:	02a00a13          	li	s4,42
   16414:	01413823          	sd	s4,16(sp)
   16418:	ea8ff06f          	j	15ac0 <_ldtoa_r+0xec>
   1641c:	10010c93          	add	s9,sp,256
   16420:	000c8713          	mv	a4,s9
   16424:	0c010793          	add	a5,sp,192
   16428:	0007d683          	lhu	a3,0(a5)
   1642c:	00278793          	add	a5,a5,2
   16430:	00270713          	add	a4,a4,2
   16434:	fed71f23          	sh	a3,-2(a4)
   16438:	fe8798e3          	bne	a5,s0,16428 <_ldtoa_r+0xa54>
   1643c:	000047b7          	lui	a5,0x4
   16440:	08e78793          	add	a5,a5,142 # 408e <exit-0xc05a>
   16444:	10f11923          	sh	a5,274(sp)
   16448:	000237b7          	lui	a5,0x23
   1644c:	18478793          	add	a5,a5,388 # 23184 <etens+0x104>
   16450:	04f13423          	sd	a5,72(sp)
   16454:	000087b7          	lui	a5,0x8
   16458:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   1645c:	02f13c23          	sd	a5,56(sp)
   16460:	ffffc7b7          	lui	a5,0xffffc
   16464:	0027879b          	addw	a5,a5,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd6482>
   16468:	00023eb7          	lui	t4,0x23
   1646c:	04f12223          	sw	a5,68(sp)
   16470:	000237b7          	lui	a5,0x23
   16474:	00000413          	li	s0,0
   16478:	01000713          	li	a4,16
   1647c:	120e8e93          	add	t4,t4,288 # 23120 <etens+0xa0>
   16480:	f5078793          	add	a5,a5,-176 # 22f50 <bmask>
   16484:	05313c23          	sd	s3,88(sp)
   16488:	07213023          	sd	s2,96(sp)
   1648c:	18010c13          	add	s8,sp,384
   16490:	00040913          	mv	s2,s0
   16494:	1c010b13          	add	s6,sp,448
   16498:	12010a13          	add	s4,sp,288
   1649c:	0f210d93          	add	s11,sp,242
   164a0:	04f13823          	sd	a5,80(sp)
   164a4:	0f410d13          	add	s10,sp,244
   164a8:	000e8993          	mv	s3,t4
   164ac:	00070413          	mv	s0,a4
   164b0:	000b0693          	mv	a3,s6
   164b4:	0e010613          	add	a2,sp,224
   164b8:	000c8593          	mv	a1,s9
   164bc:	00098513          	mv	a0,s3
   164c0:	a95fe0ef          	jal	14f54 <ediv>
   164c4:	08810793          	add	a5,sp,136
   164c8:	0e010713          	add	a4,sp,224
   164cc:	09c10893          	add	a7,sp,156
   164d0:	00075683          	lhu	a3,0(a4)
   164d4:	00278793          	add	a5,a5,2
   164d8:	00270713          	add	a4,a4,2
   164dc:	fed79f23          	sh	a3,-2(a5)
   164e0:	ff1798e3          	bne	a5,a7,164d0 <_ldtoa_r+0xafc>
   164e4:	03813783          	ld	a5,56(sp)
   164e8:	09a15503          	lhu	a0,154(sp)
   164ec:	00f575b3          	and	a1,a0,a5
   164f0:	04412783          	lw	a5,68(sp)
   164f4:	00f587bb          	addw	a5,a1,a5
   164f8:	00078593          	mv	a1,a5
   164fc:	38f05263          	blez	a5,16880 <_ldtoa_r+0xeac>
   16500:	09000793          	li	a5,144
   16504:	40b7863b          	subw	a2,a5,a1
   16508:	000a0713          	mv	a4,s4
   1650c:	08810793          	add	a5,sp,136
   16510:	0007d683          	lhu	a3,0(a5)
   16514:	00278793          	add	a5,a5,2
   16518:	00270713          	add	a4,a4,2
   1651c:	fed71f23          	sh	a3,-2(a4)
   16520:	ff1798e3          	bne	a5,a7,16510 <_ldtoa_r+0xb3c>
   16524:	06c05663          	blez	a2,16590 <_ldtoa_r+0xbbc>
   16528:	00f00793          	li	a5,15
   1652c:	000a0713          	mv	a4,s4
   16530:	02c7de63          	bge	a5,a2,1656c <_ldtoa_r+0xb98>
   16534:	08000693          	li	a3,128
   16538:	40b686bb          	subw	a3,a3,a1
   1653c:	0046d69b          	srlw	a3,a3,0x4
   16540:	0016871b          	addw	a4,a3,1
   16544:	00171713          	sll	a4,a4,0x1
   16548:	00ea0733          	add	a4,s4,a4
   1654c:	000a0793          	mv	a5,s4
   16550:	00278793          	add	a5,a5,2
   16554:	fe079f23          	sh	zero,-2(a5)
   16558:	fee79ce3          	bne	a5,a4,16550 <_ldtoa_r+0xb7c>
   1655c:	08000613          	li	a2,128
   16560:	40b6063b          	subw	a2,a2,a1
   16564:	0046969b          	sllw	a3,a3,0x4
   16568:	40d6063b          	subw	a2,a2,a3
   1656c:	05013683          	ld	a3,80(sp)
   16570:	00161793          	sll	a5,a2,0x1
   16574:	00f687b3          	add	a5,a3,a5
   16578:	0007d783          	lhu	a5,0(a5)
   1657c:	00075683          	lhu	a3,0(a4)
   16580:	00f6f7b3          	and	a5,a3,a5
   16584:	00f71023          	sh	a5,0(a4)
   16588:	00f55513          	srl	a0,a0,0xf
   1658c:	16051663          	bnez	a0,166f8 <_ldtoa_r+0xd24>
   16590:	0e010793          	add	a5,sp,224
   16594:	000a0713          	mv	a4,s4
   16598:	0007d603          	lhu	a2,0(a5)
   1659c:	00075683          	lhu	a3,0(a4)
   165a0:	02d61863          	bne	a2,a3,165d0 <_ldtoa_r+0xbfc>
   165a4:	00278793          	add	a5,a5,2
   165a8:	00270713          	add	a4,a4,2
   165ac:	ffb796e3          	bne	a5,s11,16598 <_ldtoa_r+0xbc4>
   165b0:	000c8713          	mv	a4,s9
   165b4:	0e010793          	add	a5,sp,224
   165b8:	0007d683          	lhu	a3,0(a5)
   165bc:	00278793          	add	a5,a5,2
   165c0:	00270713          	add	a4,a4,2
   165c4:	fed71f23          	sh	a3,-2(a4)
   165c8:	ffa798e3          	bne	a5,s10,165b8 <_ldtoa_r+0xbe4>
   165cc:	0124093b          	addw	s2,s0,s2
   165d0:	04813783          	ld	a5,72(sp)
   165d4:	01498993          	add	s3,s3,20
   165d8:	00145413          	srl	s0,s0,0x1
   165dc:	ecf99ae3          	bne	s3,a5,164b0 <_ldtoa_r+0xadc>
   165e0:	11215683          	lhu	a3,274(sp)
   165e4:	ffffc7b7          	lui	a5,0xffffc
   165e8:	f727879b          	addw	a5,a5,-142 # ffffffffffffbf72 <__BSS_END__+0xfffffffffffd63f2>
   165ec:	00d787bb          	addw	a5,a5,a3
   165f0:	00090413          	mv	s0,s2
   165f4:	05813983          	ld	s3,88(sp)
   165f8:	06013903          	ld	s2,96(sp)
   165fc:	015787bb          	addw	a5,a5,s5
   16600:	10f11923          	sh	a5,274(sp)
   16604:	0c010693          	add	a3,sp,192
   16608:	000c8793          	mv	a5,s9
   1660c:	11410593          	add	a1,sp,276
   16610:	0007d703          	lhu	a4,0(a5)
   16614:	00278793          	add	a5,a5,2
   16618:	00268693          	add	a3,a3,2
   1661c:	fee69f23          	sh	a4,-2(a3)
   16620:	feb798e3          	bne	a5,a1,16610 <_ldtoa_r+0xc3c>
   16624:	000237b7          	lui	a5,0x23
   16628:	0e010693          	add	a3,sp,224
   1662c:	18878793          	add	a5,a5,392 # 23188 <eone>
   16630:	0007d703          	lhu	a4,0(a5)
   16634:	00278793          	add	a5,a5,2
   16638:	00268693          	add	a3,a3,2
   1663c:	fee69f23          	sh	a4,-2(a3)
   16640:	fe9798e3          	bne	a5,s1,16630 <_ldtoa_r+0xc5c>
   16644:	000234b7          	lui	s1,0x23
   16648:	00001bb7          	lui	s7,0x1
   1664c:	08048493          	add	s1,s1,128 # 23080 <etens>
   16650:	00023d37          	lui	s10,0x23
   16654:	0140006f          	j	16668 <_ldtoa_r+0xc94>
   16658:	170d0793          	add	a5,s10,368 # 23170 <etens+0xf0>
   1665c:	001bdb93          	srl	s7,s7,0x1
   16660:	24f48e63          	beq	s1,a5,168bc <_ldtoa_r+0xee8>
   16664:	01448493          	add	s1,s1,20
   16668:	000c8593          	mv	a1,s9
   1666c:	170d0513          	add	a0,s10,368
   16670:	81cfe0ef          	jal	1468c <ecmp>
   16674:	24a04463          	bgtz	a0,168bc <_ldtoa_r+0xee8>
   16678:	000c8593          	mv	a1,s9
   1667c:	00048513          	mv	a0,s1
   16680:	80cfe0ef          	jal	1468c <ecmp>
   16684:	fca04ae3          	bgtz	a0,16658 <_ldtoa_r+0xc84>
   16688:	000b0693          	mv	a3,s6
   1668c:	000c8613          	mv	a2,s9
   16690:	000c8593          	mv	a1,s9
   16694:	00048513          	mv	a0,s1
   16698:	8bdfe0ef          	jal	14f54 <ediv>
   1669c:	0e010613          	add	a2,sp,224
   166a0:	000b0693          	mv	a3,s6
   166a4:	00060593          	mv	a1,a2
   166a8:	00048513          	mv	a0,s1
   166ac:	e3dfe0ef          	jal	154e8 <emul>
   166b0:	008b843b          	addw	s0,s7,s0
   166b4:	fa5ff06f          	j	16658 <_ldtoa_r+0xc84>
   166b8:	18310a93          	add	s5,sp,387
   166bc:	00000a13          	li	s4,0
   166c0:	960794e3          	bnez	a5,16028 <_ldtoa_r+0x654>
   166c4:	eccff06f          	j	15d90 <_ldtoa_r+0x3bc>
   166c8:	000c0793          	mv	a5,s8
   166cc:	9d5ff06f          	j	160a0 <_ldtoa_r+0x6cc>
   166d0:	01813703          	ld	a4,24(sp)
   166d4:	02a00793          	li	a5,42
   166d8:	00070a13          	mv	s4,a4
   166dc:	00e7d463          	bge	a5,a4,166e4 <_ldtoa_r+0xd10>
   166e0:	02a00a13          	li	s4,42
   166e4:	000a079b          	sext.w	a5,s4
   166e8:	00f13823          	sd	a5,16(sp)
   166ec:	865ff06f          	j	15f50 <_ldtoa_r+0x57c>
   166f0:	00000693          	li	a3,0
   166f4:	829ff06f          	j	15f1c <_ldtoa_r+0x548>
   166f8:	08810793          	add	a5,sp,136
   166fc:	000a0713          	mv	a4,s4
   16700:	0140006f          	j	16714 <_ldtoa_r+0xd40>
   16704:	00278793          	add	a5,a5,2
   16708:	09a10693          	add	a3,sp,154
   1670c:	00270713          	add	a4,a4,2
   16710:	e8d780e3          	beq	a5,a3,16590 <_ldtoa_r+0xbbc>
   16714:	0007d603          	lhu	a2,0(a5)
   16718:	00075683          	lhu	a3,0(a4)
   1671c:	fed604e3          	beq	a2,a3,16704 <_ldtoa_r+0xd30>
   16720:	13215783          	lhu	a5,306(sp)
   16724:	fff7c793          	not	a5,a5
   16728:	03179713          	sll	a4,a5,0x31
   1672c:	38070c63          	beqz	a4,16ac4 <_ldtoa_r+0x10f0>
   16730:	14010593          	add	a1,sp,320
   16734:	188b8513          	add	a0,s7,392 # 1188 <exit-0xef60>
   16738:	e9dfd0ef          	jal	145d4 <emovi>
   1673c:	16010593          	add	a1,sp,352
   16740:	000a0513          	mv	a0,s4
   16744:	e91fd0ef          	jal	145d4 <emovi>
   16748:	14015783          	lhu	a5,320(sp)
   1674c:	16215703          	lhu	a4,354(sp)
   16750:	14215303          	lhu	t1,322(sp)
   16754:	fff7c793          	not	a5,a5
   16758:	14f11023          	sh	a5,320(sp)
   1675c:	40e305b3          	sub	a1,t1,a4
   16760:	00070693          	mv	a3,a4
   16764:	06b05e63          	blez	a1,167e0 <_ldtoa_r+0xe0c>
   16768:	16010593          	add	a1,sp,352
   1676c:	000c0693          	mv	a3,s8
   16770:	17810793          	add	a5,sp,376
   16774:	000c0513          	mv	a0,s8
   16778:	00058613          	mv	a2,a1
   1677c:	00063803          	ld	a6,0(a2)
   16780:	00860613          	add	a2,a2,8
   16784:	00850513          	add	a0,a0,8
   16788:	ff053c23          	sd	a6,-8(a0)
   1678c:	fec798e3          	bne	a5,a2,1677c <_ldtoa_r+0xda8>
   16790:	14010613          	add	a2,sp,320
   16794:	18011c23          	sh	zero,408(sp)
   16798:	15810513          	add	a0,sp,344
   1679c:	00060793          	mv	a5,a2
   167a0:	0007b803          	ld	a6,0(a5)
   167a4:	00878793          	add	a5,a5,8
   167a8:	00858593          	add	a1,a1,8
   167ac:	ff05bc23          	sd	a6,-8(a1)
   167b0:	fea798e3          	bne	a5,a0,167a0 <_ldtoa_r+0xdcc>
   167b4:	16011c23          	sh	zero,376(sp)
   167b8:	018c0793          	add	a5,s8,24
   167bc:	0006b583          	ld	a1,0(a3)
   167c0:	00868693          	add	a3,a3,8
   167c4:	00860613          	add	a2,a2,8
   167c8:	feb63c23          	sd	a1,-8(a2)
   167cc:	fef698e3          	bne	a3,a5,167bc <_ldtoa_r+0xde8>
   167d0:	16215683          	lhu	a3,354(sp)
   167d4:	406705b3          	sub	a1,a4,t1
   167d8:	14011c23          	sh	zero,344(sp)
   167dc:	00068713          	mv	a4,a3
   167e0:	30058a63          	beqz	a1,16af4 <_ldtoa_r+0x1120>
   167e4:	06d13423          	sd	a3,104(sp)
   167e8:	f6f00793          	li	a5,-145
   167ec:	06f5c863          	blt	a1,a5,1685c <_ldtoa_r+0xe88>
   167f0:	0005859b          	sext.w	a1,a1
   167f4:	14010513          	add	a0,sp,320
   167f8:	c19fd0ef          	jal	14410 <eshift.part.0>
   167fc:	06813683          	ld	a3,104(sp)
   16800:	00050593          	mv	a1,a0
   16804:	17810793          	add	a5,sp,376
   16808:	14015603          	lhu	a2,320(sp)
   1680c:	16015703          	lhu	a4,352(sp)
   16810:	44e60663          	beq	a2,a4,16c5c <_ldtoa_r+0x1288>
   16814:	00000713          	li	a4,0
   16818:	15810313          	add	t1,sp,344
   1681c:	16210513          	add	a0,sp,354
   16820:	0007d603          	lhu	a2,0(a5)
   16824:	00035803          	lhu	a6,0(t1)
   16828:	ffe78793          	add	a5,a5,-2
   1682c:	ffe30313          	add	t1,t1,-2
   16830:	41060633          	sub	a2,a2,a6
   16834:	40e60733          	sub	a4,a2,a4
   16838:	01075613          	srl	a2,a4,0x10
   1683c:	00e79123          	sh	a4,2(a5)
   16840:	00167713          	and	a4,a2,1
   16844:	fca79ee3          	bne	a5,a0,16820 <_ldtoa_r+0xe4c>
   16848:	00100613          	li	a2,1
   1684c:	000b0793          	mv	a5,s6
   16850:	04000713          	li	a4,64
   16854:	16010513          	add	a0,sp,352
   16858:	f85fd0ef          	jal	147dc <emdnorm>
   1685c:	000a0593          	mv	a1,s4
   16860:	16010513          	add	a0,sp,352
   16864:	985fd0ef          	jal	141e8 <emovo.constprop.0>
   16868:	d29ff06f          	j	16590 <_ldtoa_r+0xbbc>
   1686c:	02013783          	ld	a5,32(sp)
   16870:	18010023          	sb	zero,384(sp)
   16874:	000c0493          	mv	s1,s8
   16878:	0007a023          	sw	zero,0(a5)
   1687c:	ad1ff06f          	j	1634c <_ldtoa_r+0x978>
   16880:	000a0793          	mv	a5,s4
   16884:	00278793          	add	a5,a5,2
   16888:	13410713          	add	a4,sp,308
   1688c:	fe079f23          	sh	zero,-2(a5)
   16890:	fee79ae3          	bne	a5,a4,16884 <_ldtoa_r+0xeb0>
   16894:	cf5ff06f          	j	16588 <_ldtoa_r+0xbb4>
   16898:	18010c13          	add	s8,sp,384
   1689c:	0e098863          	beqz	s3,1698c <_ldtoa_r+0xfb8>
   168a0:	000235b7          	lui	a1,0x23
   168a4:	ba858593          	add	a1,a1,-1112 # 22ba8 <__clz_tab+0x160>
   168a8:	000c0513          	mv	a0,s8
   168ac:	50c020ef          	jal	18db8 <sprintf>
   168b0:	00002437          	lui	s0,0x2
   168b4:	70f40413          	add	s0,s0,1807 # 270f <exit-0xd9d9>
   168b8:	f84ff06f          	j	1603c <_ldtoa_r+0x668>
   168bc:	13810d93          	add	s11,sp,312
   168c0:	a9cff06f          	j	15b5c <_ldtoa_r+0x188>
   168c4:	0016869b          	addw	a3,a3,1
   168c8:	00d58023          	sb	a3,0(a1)
   168cc:	f5cff06f          	j	16028 <_ldtoa_r+0x654>
   168d0:	fff5c783          	lbu	a5,-1(a1)
   168d4:	03800693          	li	a3,56
   168d8:	0cf6f463          	bgeu	a3,a5,169a0 <_ldtoa_r+0xfcc>
   168dc:	03100793          	li	a5,49
   168e0:	0014041b          	addw	s0,s0,1
   168e4:	fef58fa3          	sb	a5,-1(a1)
   168e8:	f40ff06f          	j	16028 <_ldtoa_r+0x654>
   168ec:	0a010793          	add	a5,sp,160
   168f0:	0b210613          	add	a2,sp,178
   168f4:	0080006f          	j	168fc <_ldtoa_r+0xf28>
   168f8:	f6c78063          	beq	a5,a2,16058 <_ldtoa_r+0x684>
   168fc:	0007d703          	lhu	a4,0(a5)
   16900:	00278793          	add	a5,a5,2
   16904:	fe070ae3          	beqz	a4,168f8 <_ldtoa_r+0xf24>
   16908:	02013703          	ld	a4,32(sp)
   1690c:	000027b7          	lui	a5,0x2
   16910:	70f78793          	add	a5,a5,1807 # 270f <exit-0xd9d9>
   16914:	00f72023          	sw	a5,0(a4)
   16918:	f8cff06f          	j	160a4 <_ldtoa_r+0x6d0>
   1691c:	18010c13          	add	s8,sp,384
   16920:	000235b7          	lui	a1,0x23
   16924:	bc858593          	add	a1,a1,-1080 # 22bc8 <__clz_tab+0x180>
   16928:	000c0513          	mv	a0,s8
   1692c:	48c020ef          	jal	18db8 <sprintf>
   16930:	f81ff06f          	j	168b0 <_ldtoa_r+0xedc>
   16934:	0e010593          	add	a1,sp,224
   16938:	0c010513          	add	a0,sp,192
   1693c:	02f13c23          	sd	a5,56(sp)
   16940:	8a9fd0ef          	jal	141e8 <emovo.constprop.0>
   16944:	000235b7          	lui	a1,0x23
   16948:	1a058593          	add	a1,a1,416 # 231a0 <ezero>
   1694c:	0e010513          	add	a0,sp,224
   16950:	d3dfd0ef          	jal	1468c <ecmp>
   16954:	03813783          	ld	a5,56(sp)
   16958:	e8051663          	bnez	a0,15fe4 <_ldtoa_r+0x610>
   1695c:	ec0a4663          	bltz	s4,16028 <_ldtoa_r+0x654>
   16960:	ffe7c683          	lbu	a3,-2(a5)
   16964:	ffe78593          	add	a1,a5,-2
   16968:	fd268613          	add	a2,a3,-46
   1696c:	00163613          	seqz	a2,a2
   16970:	fff64613          	not	a2,a2
   16974:	00ca8633          	add	a2,s5,a2
   16978:	00064603          	lbu	a2,0(a2)
   1697c:	07f6f693          	and	a3,a3,127
   16980:	00167613          	and	a2,a2,1
   16984:	e6061863          	bnez	a2,15ff4 <_ldtoa_r+0x620>
   16988:	ea0ff06f          	j	16028 <_ldtoa_r+0x654>
   1698c:	000235b7          	lui	a1,0x23
   16990:	bb858593          	add	a1,a1,-1096 # 22bb8 <__clz_tab+0x170>
   16994:	000c0513          	mv	a0,s8
   16998:	420020ef          	jal	18db8 <sprintf>
   1699c:	f15ff06f          	j	168b0 <_ldtoa_r+0xedc>
   169a0:	0017879b          	addw	a5,a5,1
   169a4:	fef58fa3          	sb	a5,-1(a1)
   169a8:	e80ff06f          	j	16028 <_ldtoa_r+0x654>
   169ac:	12010a13          	add	s4,sp,288
   169b0:	000a0593          	mv	a1,s4
   169b4:	0c010513          	add	a0,sp,192
   169b8:	00004d37          	lui	s10,0x4
   169bc:	c19fd0ef          	jal	145d4 <emovi>
   169c0:	00000413          	li	s0,0
   169c4:	13810d93          	add	s11,sp,312
   169c8:	12210b13          	add	s6,sp,290
   169cc:	ffed0d13          	add	s10,s10,-2 # 3ffe <exit-0xc0ea>
   169d0:	11810c93          	add	s9,sp,280
   169d4:	13815783          	lhu	a5,312(sp)
   169d8:	0077f793          	and	a5,a5,7
   169dc:	0c079a63          	bnez	a5,16ab0 <_ldtoa_r+0x10dc>
   169e0:	10010a93          	add	s5,sp,256
   169e4:	000a0c13          	mv	s8,s4
   169e8:	000a8713          	mv	a4,s5
   169ec:	000a0793          	mv	a5,s4
   169f0:	0007b683          	ld	a3,0(a5)
   169f4:	00878793          	add	a5,a5,8
   169f8:	00870713          	add	a4,a4,8
   169fc:	fed73c23          	sd	a3,-8(a4)
   16a00:	ffb798e3          	bne	a5,s11,169f0 <_ldtoa_r+0x101c>
   16a04:	10010513          	add	a0,sp,256
   16a08:	10011c23          	sh	zero,280(sp)
   16a0c:	eacfd0ef          	jal	140b8 <eshdn1>
   16a10:	10010513          	add	a0,sp,256
   16a14:	ea4fd0ef          	jal	140b8 <eshdn1>
   16a18:	00000613          	li	a2,0
   16a1c:	11810693          	add	a3,sp,280
   16a20:	000d8713          	mv	a4,s11
   16a24:	0006d583          	lhu	a1,0(a3)
   16a28:	00075783          	lhu	a5,0(a4)
   16a2c:	ffe68693          	add	a3,a3,-2
   16a30:	ffe70713          	add	a4,a4,-2
   16a34:	00b787b3          	add	a5,a5,a1
   16a38:	00c787b3          	add	a5,a5,a2
   16a3c:	0107d613          	srl	a2,a5,0x10
   16a40:	00f69123          	sh	a5,2(a3)
   16a44:	00167613          	and	a2,a2,1
   16a48:	fd671ee3          	bne	a4,s6,16a24 <_ldtoa_r+0x1050>
   16a4c:	10215783          	lhu	a5,258(sp)
   16a50:	10415703          	lhu	a4,260(sp)
   16a54:	0037879b          	addw	a5,a5,3
   16a58:	10f11123          	sh	a5,258(sp)
   16a5c:	02070063          	beqz	a4,16a7c <_ldtoa_r+0x10a8>
   16a60:	10010513          	add	a0,sp,256
   16a64:	e54fd0ef          	jal	140b8 <eshdn1>
   16a68:	10215783          	lhu	a5,258(sp)
   16a6c:	10415703          	lhu	a4,260(sp)
   16a70:	0017879b          	addw	a5,a5,1
   16a74:	10f11123          	sh	a5,258(sp)
   16a78:	fe0714e3          	bnez	a4,16a60 <_ldtoa_r+0x108c>
   16a7c:	11815783          	lhu	a5,280(sp)
   16a80:	02079863          	bnez	a5,16ab0 <_ldtoa_r+0x10dc>
   16a84:	10215783          	lhu	a5,258(sp)
   16a88:	02fd6463          	bltu	s10,a5,16ab0 <_ldtoa_r+0x10dc>
   16a8c:	000ab783          	ld	a5,0(s5)
   16a90:	008a8a93          	add	s5,s5,8
   16a94:	008c0c13          	add	s8,s8,8
   16a98:	fefc3c23          	sd	a5,-8(s8)
   16a9c:	ff9a98e3          	bne	s5,s9,16a8c <_ldtoa_r+0x10b8>
   16aa0:	12011c23          	sh	zero,312(sp)
   16aa4:	fff4041b          	addw	s0,s0,-1
   16aa8:	fd500793          	li	a5,-43
   16aac:	f2f414e3          	bne	s0,a5,169d4 <_ldtoa_r+0x1000>
   16ab0:	0c010593          	add	a1,sp,192
   16ab4:	000a0513          	mv	a0,s4
   16ab8:	f30fd0ef          	jal	141e8 <emovo.constprop.0>
   16abc:	1c010b13          	add	s6,sp,448
   16ac0:	f8cff06f          	j	1624c <_ldtoa_r+0x878>
   16ac4:	000a0793          	mv	a5,s4
   16ac8:	13210713          	add	a4,sp,306
   16acc:	0007d683          	lhu	a3,0(a5)
   16ad0:	00278793          	add	a5,a5,2
   16ad4:	aa069ee3          	bnez	a3,16590 <_ldtoa_r+0xbbc>
   16ad8:	fee79ae3          	bne	a5,a4,16acc <_ldtoa_r+0x10f8>
   16adc:	000a0793          	mv	a5,s4
   16ae0:	0007d683          	lhu	a3,0(a5)
   16ae4:	00278793          	add	a5,a5,2
   16ae8:	c40694e3          	bnez	a3,16730 <_ldtoa_r+0xd5c>
   16aec:	fee79ae3          	bne	a5,a4,16ae0 <_ldtoa_r+0x110c>
   16af0:	aa1ff06f          	j	16590 <_ldtoa_r+0xbbc>
   16af4:	16410613          	add	a2,sp,356
   16af8:	14410793          	add	a5,sp,324
   16afc:	15a10313          	add	t1,sp,346
   16b00:	0007d503          	lhu	a0,0(a5)
   16b04:	00065583          	lhu	a1,0(a2)
   16b08:	00278793          	add	a5,a5,2
   16b0c:	00260613          	add	a2,a2,2
   16b10:	04b51663          	bne	a0,a1,16b5c <_ldtoa_r+0x1188>
   16b14:	fe6796e3          	bne	a5,t1,16b00 <_ldtoa_r+0x112c>
   16b18:	14015603          	lhu	a2,320(sp)
   16b1c:	16015783          	lhu	a5,352(sp)
   16b20:	0af60a63          	beq	a2,a5,16bd4 <_ldtoa_r+0x1200>
   16b24:	000a0793          	mv	a5,s4
   16b28:	13410713          	add	a4,sp,308
   16b2c:	00278793          	add	a5,a5,2
   16b30:	fe079f23          	sh	zero,-2(a5)
   16b34:	fee79ce3          	bne	a5,a4,16b2c <_ldtoa_r+0x1158>
   16b38:	a59ff06f          	j	16590 <_ldtoa_r+0xbbc>
   16b3c:	000236b7          	lui	a3,0x23
   16b40:	000015b7          	lui	a1,0x1
   16b44:	00023537          	lui	a0,0x23
   16b48:	bd868693          	add	a3,a3,-1064 # 22bd8 <__clz_tab+0x190>
   16b4c:	00000613          	li	a2,0
   16b50:	b6e58593          	add	a1,a1,-1170 # b6e <exit-0xf57a>
   16b54:	bf050513          	add	a0,a0,-1040 # 22bf0 <__clz_tab+0x1a8>
   16b58:	268060ef          	jal	1cdc0 <__assert_func>
   16b5c:	17810793          	add	a5,sp,376
   16b60:	06a5f663          	bgeu	a1,a0,16bcc <_ldtoa_r+0x11f8>
   16b64:	16010713          	add	a4,sp,352
   16b68:	000c0593          	mv	a1,s8
   16b6c:	17810793          	add	a5,sp,376
   16b70:	000c0513          	mv	a0,s8
   16b74:	00070613          	mv	a2,a4
   16b78:	00063803          	ld	a6,0(a2)
   16b7c:	00860613          	add	a2,a2,8
   16b80:	00850513          	add	a0,a0,8
   16b84:	ff053c23          	sd	a6,-8(a0)
   16b88:	fec798e3          	bne	a5,a2,16b78 <_ldtoa_r+0x11a4>
   16b8c:	14010613          	add	a2,sp,320
   16b90:	18011c23          	sh	zero,408(sp)
   16b94:	00060513          	mv	a0,a2
   16b98:	00053803          	ld	a6,0(a0)
   16b9c:	00870713          	add	a4,a4,8
   16ba0:	00850513          	add	a0,a0,8
   16ba4:	ff073c23          	sd	a6,-8(a4)
   16ba8:	fee798e3          	bne	a5,a4,16b98 <_ldtoa_r+0x11c4>
   16bac:	16011c23          	sh	zero,376(sp)
   16bb0:	15810713          	add	a4,sp,344
   16bb4:	0005b503          	ld	a0,0(a1)
   16bb8:	00860613          	add	a2,a2,8
   16bbc:	00858593          	add	a1,a1,8
   16bc0:	fea63c23          	sd	a0,-8(a2)
   16bc4:	fec718e3          	bne	a4,a2,16bb4 <_ldtoa_r+0x11e0>
   16bc8:	14011c23          	sh	zero,344(sp)
   16bcc:	00000593          	li	a1,0
   16bd0:	c39ff06f          	j	16808 <_ldtoa_r+0xe34>
   16bd4:	00068793          	mv	a5,a3
   16bd8:	00069663          	bnez	a3,16be4 <_ldtoa_r+0x1210>
   16bdc:	16611603          	lh	a2,358(sp)
   16be0:	02065263          	bgez	a2,16c04 <_ldtoa_r+0x1230>
   16be4:	16210613          	add	a2,sp,354
   16be8:	17810793          	add	a5,sp,376
   16bec:	00065583          	lhu	a1,0(a2)
   16bf0:	06059063          	bnez	a1,16c50 <_ldtoa_r+0x127c>
   16bf4:	00260613          	add	a2,a2,2
   16bf8:	fec79ae3          	bne	a5,a2,16bec <_ldtoa_r+0x1218>
   16bfc:	16e11123          	sh	a4,354(sp)
   16c00:	c5dff06f          	j	1685c <_ldtoa_r+0xe88>
   16c04:	17810693          	add	a3,sp,376
   16c08:	16210513          	add	a0,sp,354
   16c0c:	0006d703          	lhu	a4,0(a3)
   16c10:	00f75613          	srl	a2,a4,0xf
   16c14:	00060463          	beqz	a2,16c1c <_ldtoa_r+0x1248>
   16c18:	0017e793          	or	a5,a5,1
   16c1c:	0017171b          	sllw	a4,a4,0x1
   16c20:	03071713          	sll	a4,a4,0x30
   16c24:	0027f613          	and	a2,a5,2
   16c28:	03075713          	srl	a4,a4,0x30
   16c2c:	00060463          	beqz	a2,16c34 <_ldtoa_r+0x1260>
   16c30:	00176713          	or	a4,a4,1
   16c34:	0017979b          	sllw	a5,a5,0x1
   16c38:	00e69023          	sh	a4,0(a3)
   16c3c:	03079793          	sll	a5,a5,0x30
   16c40:	ffe68693          	add	a3,a3,-2
   16c44:	0307d793          	srl	a5,a5,0x30
   16c48:	fca692e3          	bne	a3,a0,16c0c <_ldtoa_r+0x1238>
   16c4c:	c11ff06f          	j	1685c <_ldtoa_r+0xe88>
   16c50:	00168713          	add	a4,a3,1
   16c54:	16e11123          	sh	a4,354(sp)
   16c58:	c05ff06f          	j	1685c <_ldtoa_r+0xe88>
   16c5c:	00000713          	li	a4,0
   16c60:	15810513          	add	a0,sp,344
   16c64:	14210313          	add	t1,sp,322
   16c68:	0007d803          	lhu	a6,0(a5)
   16c6c:	00055603          	lhu	a2,0(a0)
   16c70:	ffe78793          	add	a5,a5,-2
   16c74:	ffe50513          	add	a0,a0,-2
   16c78:	01060633          	add	a2,a2,a6
   16c7c:	00e60733          	add	a4,a2,a4
   16c80:	01075613          	srl	a2,a4,0x10
   16c84:	00e79123          	sh	a4,2(a5)
   16c88:	00167713          	and	a4,a2,1
   16c8c:	fc651ee3          	bne	a0,t1,16c68 <_ldtoa_r+0x1294>
   16c90:	00000613          	li	a2,0
   16c94:	bb9ff06f          	j	1684c <_ldtoa_r+0xe78>

0000000000016c98 <_ldcheck>:
   16c98:	00053703          	ld	a4,0(a0)
   16c9c:	00853783          	ld	a5,8(a0)
   16ca0:	fc010113          	add	sp,sp,-64
   16ca4:	00010513          	mv	a0,sp
   16ca8:	01010593          	add	a1,sp,16
   16cac:	00e13023          	sd	a4,0(sp)
   16cb0:	00f13423          	sd	a5,8(sp)
   16cb4:	02113c23          	sd	ra,56(sp)
   16cb8:	944fe0ef          	jal	14dfc <e113toe.isra.0>
   16cbc:	02215783          	lhu	a5,34(sp)
   16cc0:	00000513          	li	a0,0
   16cc4:	fff7c793          	not	a5,a5
   16cc8:	03179713          	sll	a4,a5,0x31
   16ccc:	02071063          	bnez	a4,16cec <_ldcheck+0x54>
   16cd0:	01010793          	add	a5,sp,16
   16cd4:	02210693          	add	a3,sp,34
   16cd8:	0007d703          	lhu	a4,0(a5)
   16cdc:	00278793          	add	a5,a5,2
   16ce0:	00071c63          	bnez	a4,16cf8 <_ldcheck+0x60>
   16ce4:	fed79ae3          	bne	a5,a3,16cd8 <_ldcheck+0x40>
   16ce8:	00200513          	li	a0,2
   16cec:	03813083          	ld	ra,56(sp)
   16cf0:	04010113          	add	sp,sp,64
   16cf4:	00008067          	ret
   16cf8:	00100513          	li	a0,1
   16cfc:	ff1ff06f          	j	16cec <_ldcheck+0x54>

0000000000016d00 <__localeconv_l>:
   16d00:	10050513          	add	a0,a0,256
   16d04:	00008067          	ret

0000000000016d08 <_localeconv_r>:
   16d08:	e4818513          	add	a0,gp,-440 # 251c8 <__global_locale+0x100>
   16d0c:	00008067          	ret

0000000000016d10 <localeconv>:
   16d10:	e4818513          	add	a0,gp,-440 # 251c8 <__global_locale+0x100>
   16d14:	00008067          	ret

0000000000016d18 <_setlocale_r>:
   16d18:	fe010113          	add	sp,sp,-32
   16d1c:	00113c23          	sd	ra,24(sp)
   16d20:	00813823          	sd	s0,16(sp)
   16d24:	00913423          	sd	s1,8(sp)
   16d28:	02060c63          	beqz	a2,16d60 <_setlocale_r+0x48>
   16d2c:	000235b7          	lui	a1,0x23
   16d30:	c5058593          	add	a1,a1,-944 # 22c50 <__clz_tab+0x208>
   16d34:	00060513          	mv	a0,a2
   16d38:	00060413          	mv	s0,a2
   16d3c:	260020ef          	jal	18f9c <strcmp>
   16d40:	000234b7          	lui	s1,0x23
   16d44:	02051263          	bnez	a0,16d68 <_setlocale_r+0x50>
   16d48:	c4848513          	add	a0,s1,-952 # 22c48 <__clz_tab+0x200>
   16d4c:	01813083          	ld	ra,24(sp)
   16d50:	01013403          	ld	s0,16(sp)
   16d54:	00813483          	ld	s1,8(sp)
   16d58:	02010113          	add	sp,sp,32
   16d5c:	00008067          	ret
   16d60:	000234b7          	lui	s1,0x23
   16d64:	fe5ff06f          	j	16d48 <_setlocale_r+0x30>
   16d68:	c4848593          	add	a1,s1,-952 # 22c48 <__clz_tab+0x200>
   16d6c:	00040513          	mv	a0,s0
   16d70:	22c020ef          	jal	18f9c <strcmp>
   16d74:	fc050ae3          	beqz	a0,16d48 <_setlocale_r+0x30>
   16d78:	000235b7          	lui	a1,0x23
   16d7c:	b7858593          	add	a1,a1,-1160 # 22b78 <__clz_tab+0x130>
   16d80:	00040513          	mv	a0,s0
   16d84:	218020ef          	jal	18f9c <strcmp>
   16d88:	fc0500e3          	beqz	a0,16d48 <_setlocale_r+0x30>
   16d8c:	00000513          	li	a0,0
   16d90:	fbdff06f          	j	16d4c <_setlocale_r+0x34>

0000000000016d94 <__locale_mb_cur_max>:
   16d94:	ea81c503          	lbu	a0,-344(gp) # 25228 <__global_locale+0x160>
   16d98:	00008067          	ret

0000000000016d9c <setlocale>:
   16d9c:	fe010113          	add	sp,sp,-32
   16da0:	00113c23          	sd	ra,24(sp)
   16da4:	00813823          	sd	s0,16(sp)
   16da8:	00913423          	sd	s1,8(sp)
   16dac:	02058c63          	beqz	a1,16de4 <setlocale+0x48>
   16db0:	00058413          	mv	s0,a1
   16db4:	000235b7          	lui	a1,0x23
   16db8:	c5058593          	add	a1,a1,-944 # 22c50 <__clz_tab+0x208>
   16dbc:	00040513          	mv	a0,s0
   16dc0:	1dc020ef          	jal	18f9c <strcmp>
   16dc4:	000234b7          	lui	s1,0x23
   16dc8:	02051263          	bnez	a0,16dec <setlocale+0x50>
   16dcc:	c4848513          	add	a0,s1,-952 # 22c48 <__clz_tab+0x200>
   16dd0:	01813083          	ld	ra,24(sp)
   16dd4:	01013403          	ld	s0,16(sp)
   16dd8:	00813483          	ld	s1,8(sp)
   16ddc:	02010113          	add	sp,sp,32
   16de0:	00008067          	ret
   16de4:	000234b7          	lui	s1,0x23
   16de8:	fe5ff06f          	j	16dcc <setlocale+0x30>
   16dec:	c4848593          	add	a1,s1,-952 # 22c48 <__clz_tab+0x200>
   16df0:	00040513          	mv	a0,s0
   16df4:	1a8020ef          	jal	18f9c <strcmp>
   16df8:	fc050ae3          	beqz	a0,16dcc <setlocale+0x30>
   16dfc:	000235b7          	lui	a1,0x23
   16e00:	b7858593          	add	a1,a1,-1160 # 22b78 <__clz_tab+0x130>
   16e04:	00040513          	mv	a0,s0
   16e08:	194020ef          	jal	18f9c <strcmp>
   16e0c:	fc0500e3          	beqz	a0,16dcc <setlocale+0x30>
   16e10:	00000513          	li	a0,0
   16e14:	fbdff06f          	j	16dd0 <setlocale+0x34>

0000000000016e18 <__smakebuf_r>:
   16e18:	01059783          	lh	a5,16(a1)
   16e1c:	f6010113          	add	sp,sp,-160
   16e20:	08813823          	sd	s0,144(sp)
   16e24:	08113c23          	sd	ra,152(sp)
   16e28:	08913423          	sd	s1,136(sp)
   16e2c:	09213023          	sd	s2,128(sp)
   16e30:	07313c23          	sd	s3,120(sp)
   16e34:	07413823          	sd	s4,112(sp)
   16e38:	0027f713          	and	a4,a5,2
   16e3c:	00058413          	mv	s0,a1
   16e40:	02070c63          	beqz	a4,16e78 <__smakebuf_r+0x60>
   16e44:	07758793          	add	a5,a1,119
   16e48:	00f5b023          	sd	a5,0(a1)
   16e4c:	00f5bc23          	sd	a5,24(a1)
   16e50:	00100793          	li	a5,1
   16e54:	02f5a023          	sw	a5,32(a1)
   16e58:	09813083          	ld	ra,152(sp)
   16e5c:	09013403          	ld	s0,144(sp)
   16e60:	08813483          	ld	s1,136(sp)
   16e64:	08013903          	ld	s2,128(sp)
   16e68:	07813983          	ld	s3,120(sp)
   16e6c:	07013a03          	ld	s4,112(sp)
   16e70:	0a010113          	add	sp,sp,160
   16e74:	00008067          	ret
   16e78:	01259583          	lh	a1,18(a1)
   16e7c:	00050493          	mv	s1,a0
   16e80:	0805cc63          	bltz	a1,16f18 <__smakebuf_r+0x100>
   16e84:	00810613          	add	a2,sp,8
   16e88:	43c060ef          	jal	1d2c4 <_fstat_r>
   16e8c:	08054463          	bltz	a0,16f14 <__smakebuf_r+0xfc>
   16e90:	00c12903          	lw	s2,12(sp)
   16e94:	0000f7b7          	lui	a5,0xf
   16e98:	000019b7          	lui	s3,0x1
   16e9c:	00f97933          	and	s2,s2,a5
   16ea0:	000027b7          	lui	a5,0x2
   16ea4:	40f90933          	sub	s2,s2,a5
   16ea8:	00193913          	seqz	s2,s2
   16eac:	40000a13          	li	s4,1024
   16eb0:	80098993          	add	s3,s3,-2048 # 800 <exit-0xf8e8>
   16eb4:	000a0593          	mv	a1,s4
   16eb8:	00048513          	mv	a0,s1
   16ebc:	1c4000ef          	jal	17080 <_malloc_r>
   16ec0:	01041783          	lh	a5,16(s0)
   16ec4:	06050e63          	beqz	a0,16f40 <__smakebuf_r+0x128>
   16ec8:	00013737          	lui	a4,0x13
   16ecc:	70070713          	add	a4,a4,1792 # 13700 <_cleanup_r>
   16ed0:	04e4bc23          	sd	a4,88(s1)
   16ed4:	0807e793          	or	a5,a5,128
   16ed8:	00f41823          	sh	a5,16(s0)
   16edc:	00a43023          	sd	a0,0(s0)
   16ee0:	00a43c23          	sd	a0,24(s0)
   16ee4:	03442023          	sw	s4,32(s0)
   16ee8:	08091863          	bnez	s2,16f78 <__smakebuf_r+0x160>
   16eec:	0137e7b3          	or	a5,a5,s3
   16ef0:	09813083          	ld	ra,152(sp)
   16ef4:	00f41823          	sh	a5,16(s0)
   16ef8:	09013403          	ld	s0,144(sp)
   16efc:	08813483          	ld	s1,136(sp)
   16f00:	08013903          	ld	s2,128(sp)
   16f04:	07813983          	ld	s3,120(sp)
   16f08:	07013a03          	ld	s4,112(sp)
   16f0c:	0a010113          	add	sp,sp,160
   16f10:	00008067          	ret
   16f14:	01041783          	lh	a5,16(s0)
   16f18:	0807f793          	and	a5,a5,128
   16f1c:	00000913          	li	s2,0
   16f20:	04078663          	beqz	a5,16f6c <__smakebuf_r+0x154>
   16f24:	04000a13          	li	s4,64
   16f28:	000a0593          	mv	a1,s4
   16f2c:	00048513          	mv	a0,s1
   16f30:	150000ef          	jal	17080 <_malloc_r>
   16f34:	01041783          	lh	a5,16(s0)
   16f38:	00000993          	li	s3,0
   16f3c:	f80516e3          	bnez	a0,16ec8 <__smakebuf_r+0xb0>
   16f40:	2007f713          	and	a4,a5,512
   16f44:	f0071ae3          	bnez	a4,16e58 <__smakebuf_r+0x40>
   16f48:	ffc7f793          	and	a5,a5,-4
   16f4c:	0027e793          	or	a5,a5,2
   16f50:	07740713          	add	a4,s0,119
   16f54:	00f41823          	sh	a5,16(s0)
   16f58:	00100793          	li	a5,1
   16f5c:	00e43023          	sd	a4,0(s0)
   16f60:	00e43c23          	sd	a4,24(s0)
   16f64:	02f42023          	sw	a5,32(s0)
   16f68:	ef1ff06f          	j	16e58 <__smakebuf_r+0x40>
   16f6c:	40000a13          	li	s4,1024
   16f70:	00000993          	li	s3,0
   16f74:	f41ff06f          	j	16eb4 <__smakebuf_r+0x9c>
   16f78:	01241583          	lh	a1,18(s0)
   16f7c:	00048513          	mv	a0,s1
   16f80:	051060ef          	jal	1d7d0 <_isatty_r>
   16f84:	00051663          	bnez	a0,16f90 <__smakebuf_r+0x178>
   16f88:	01041783          	lh	a5,16(s0)
   16f8c:	f61ff06f          	j	16eec <__smakebuf_r+0xd4>
   16f90:	01045783          	lhu	a5,16(s0)
   16f94:	ffc7f793          	and	a5,a5,-4
   16f98:	0017e793          	or	a5,a5,1
   16f9c:	0107979b          	sllw	a5,a5,0x10
   16fa0:	4107d79b          	sraw	a5,a5,0x10
   16fa4:	f49ff06f          	j	16eec <__smakebuf_r+0xd4>

0000000000016fa8 <__swhatbuf_r>:
   16fa8:	f7010113          	add	sp,sp,-144
   16fac:	08813023          	sd	s0,128(sp)
   16fb0:	00058413          	mv	s0,a1
   16fb4:	01259583          	lh	a1,18(a1)
   16fb8:	06913c23          	sd	s1,120(sp)
   16fbc:	07213823          	sd	s2,112(sp)
   16fc0:	08113423          	sd	ra,136(sp)
   16fc4:	00060493          	mv	s1,a2
   16fc8:	00068913          	mv	s2,a3
   16fcc:	0405ca63          	bltz	a1,17020 <__swhatbuf_r+0x78>
   16fd0:	00810613          	add	a2,sp,8
   16fd4:	2f0060ef          	jal	1d2c4 <_fstat_r>
   16fd8:	04054463          	bltz	a0,17020 <__swhatbuf_r+0x78>
   16fdc:	00c12783          	lw	a5,12(sp)
   16fe0:	0000f737          	lui	a4,0xf
   16fe4:	08813083          	ld	ra,136(sp)
   16fe8:	00e7f7b3          	and	a5,a5,a4
   16fec:	00002737          	lui	a4,0x2
   16ff0:	40e787b3          	sub	a5,a5,a4
   16ff4:	08013403          	ld	s0,128(sp)
   16ff8:	0017b793          	seqz	a5,a5
   16ffc:	00f92023          	sw	a5,0(s2)
   17000:	40000713          	li	a4,1024
   17004:	00e4b023          	sd	a4,0(s1)
   17008:	00001537          	lui	a0,0x1
   1700c:	07813483          	ld	s1,120(sp)
   17010:	07013903          	ld	s2,112(sp)
   17014:	80050513          	add	a0,a0,-2048 # 800 <exit-0xf8e8>
   17018:	09010113          	add	sp,sp,144
   1701c:	00008067          	ret
   17020:	01045783          	lhu	a5,16(s0)
   17024:	0807f793          	and	a5,a5,128
   17028:	02078863          	beqz	a5,17058 <__swhatbuf_r+0xb0>
   1702c:	08813083          	ld	ra,136(sp)
   17030:	08013403          	ld	s0,128(sp)
   17034:	00000793          	li	a5,0
   17038:	00f92023          	sw	a5,0(s2)
   1703c:	04000713          	li	a4,64
   17040:	00e4b023          	sd	a4,0(s1)
   17044:	07013903          	ld	s2,112(sp)
   17048:	07813483          	ld	s1,120(sp)
   1704c:	00000513          	li	a0,0
   17050:	09010113          	add	sp,sp,144
   17054:	00008067          	ret
   17058:	08813083          	ld	ra,136(sp)
   1705c:	08013403          	ld	s0,128(sp)
   17060:	00f92023          	sw	a5,0(s2)
   17064:	40000713          	li	a4,1024
   17068:	00e4b023          	sd	a4,0(s1)
   1706c:	07013903          	ld	s2,112(sp)
   17070:	07813483          	ld	s1,120(sp)
   17074:	00000513          	li	a0,0
   17078:	09010113          	add	sp,sp,144
   1707c:	00008067          	ret

0000000000017080 <_malloc_r>:
   17080:	fa010113          	add	sp,sp,-96
   17084:	04913423          	sd	s1,72(sp)
   17088:	05213023          	sd	s2,64(sp)
   1708c:	04113c23          	sd	ra,88(sp)
   17090:	04813823          	sd	s0,80(sp)
   17094:	03313c23          	sd	s3,56(sp)
   17098:	03413823          	sd	s4,48(sp)
   1709c:	03513423          	sd	s5,40(sp)
   170a0:	03613023          	sd	s6,32(sp)
   170a4:	01713c23          	sd	s7,24(sp)
   170a8:	01813823          	sd	s8,16(sp)
   170ac:	01913423          	sd	s9,8(sp)
   170b0:	01758493          	add	s1,a1,23
   170b4:	02e00793          	li	a5,46
   170b8:	00050913          	mv	s2,a0
   170bc:	0897ee63          	bltu	a5,s1,17158 <_malloc_r+0xd8>
   170c0:	02000793          	li	a5,32
   170c4:	24b7e063          	bltu	a5,a1,17304 <_malloc_r+0x284>
   170c8:	0c9000ef          	jal	17990 <__malloc_lock>
   170cc:	02000493          	li	s1,32
   170d0:	05000793          	li	a5,80
   170d4:	00400613          	li	a2,4
   170d8:	000259b7          	lui	s3,0x25
   170dc:	27098993          	add	s3,s3,624 # 25270 <__malloc_av_>
   170e0:	00f987b3          	add	a5,s3,a5
   170e4:	0087b403          	ld	s0,8(a5) # 2008 <exit-0xe0e0>
   170e8:	ff078713          	add	a4,a5,-16
   170ec:	32e40663          	beq	s0,a4,17418 <_malloc_r+0x398>
   170f0:	00843783          	ld	a5,8(s0)
   170f4:	01843683          	ld	a3,24(s0)
   170f8:	01043603          	ld	a2,16(s0)
   170fc:	ffc7f793          	and	a5,a5,-4
   17100:	00f407b3          	add	a5,s0,a5
   17104:	0087b703          	ld	a4,8(a5)
   17108:	00d63c23          	sd	a3,24(a2)
   1710c:	00c6b823          	sd	a2,16(a3)
   17110:	00176713          	or	a4,a4,1
   17114:	00090513          	mv	a0,s2
   17118:	00e7b423          	sd	a4,8(a5)
   1711c:	079000ef          	jal	17994 <__malloc_unlock>
   17120:	01040513          	add	a0,s0,16
   17124:	05813083          	ld	ra,88(sp)
   17128:	05013403          	ld	s0,80(sp)
   1712c:	04813483          	ld	s1,72(sp)
   17130:	04013903          	ld	s2,64(sp)
   17134:	03813983          	ld	s3,56(sp)
   17138:	03013a03          	ld	s4,48(sp)
   1713c:	02813a83          	ld	s5,40(sp)
   17140:	02013b03          	ld	s6,32(sp)
   17144:	01813b83          	ld	s7,24(sp)
   17148:	01013c03          	ld	s8,16(sp)
   1714c:	00813c83          	ld	s9,8(sp)
   17150:	06010113          	add	sp,sp,96
   17154:	00008067          	ret
   17158:	800007b7          	lui	a5,0x80000
   1715c:	ff04f493          	and	s1,s1,-16
   17160:	fff7c793          	not	a5,a5
   17164:	1a97e063          	bltu	a5,s1,17304 <_malloc_r+0x284>
   17168:	18b4ee63          	bltu	s1,a1,17304 <_malloc_r+0x284>
   1716c:	025000ef          	jal	17990 <__malloc_lock>
   17170:	1f700793          	li	a5,503
   17174:	3e97fe63          	bgeu	a5,s1,17570 <_malloc_r+0x4f0>
   17178:	0094d793          	srl	a5,s1,0x9
   1717c:	18078c63          	beqz	a5,17314 <_malloc_r+0x294>
   17180:	00400713          	li	a4,4
   17184:	30f76463          	bltu	a4,a5,1748c <_malloc_r+0x40c>
   17188:	0064d793          	srl	a5,s1,0x6
   1718c:	0397861b          	addw	a2,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffda4b9>
   17190:	0016169b          	sllw	a3,a2,0x1
   17194:	0387851b          	addw	a0,a5,56
   17198:	00369693          	sll	a3,a3,0x3
   1719c:	000259b7          	lui	s3,0x25
   171a0:	27098993          	add	s3,s3,624 # 25270 <__malloc_av_>
   171a4:	00d986b3          	add	a3,s3,a3
   171a8:	0086b403          	ld	s0,8(a3)
   171ac:	ff068693          	add	a3,a3,-16
   171b0:	02868663          	beq	a3,s0,171dc <_malloc_r+0x15c>
   171b4:	01f00593          	li	a1,31
   171b8:	0100006f          	j	171c8 <_malloc_r+0x148>
   171bc:	24075863          	bgez	a4,1740c <_malloc_r+0x38c>
   171c0:	01843403          	ld	s0,24(s0)
   171c4:	00868c63          	beq	a3,s0,171dc <_malloc_r+0x15c>
   171c8:	00843783          	ld	a5,8(s0)
   171cc:	ffc7f793          	and	a5,a5,-4
   171d0:	40978733          	sub	a4,a5,s1
   171d4:	fee5d4e3          	bge	a1,a4,171bc <_malloc_r+0x13c>
   171d8:	00050613          	mv	a2,a0
   171dc:	0209b403          	ld	s0,32(s3)
   171e0:	00025837          	lui	a6,0x25
   171e4:	28080813          	add	a6,a6,640 # 25280 <__malloc_av_+0x10>
   171e8:	21040e63          	beq	s0,a6,17404 <_malloc_r+0x384>
   171ec:	00843783          	ld	a5,8(s0)
   171f0:	01f00693          	li	a3,31
   171f4:	ffc7f793          	and	a5,a5,-4
   171f8:	40978733          	sub	a4,a5,s1
   171fc:	32e6cc63          	blt	a3,a4,17534 <_malloc_r+0x4b4>
   17200:	0309b423          	sd	a6,40(s3)
   17204:	0309b023          	sd	a6,32(s3)
   17208:	30075663          	bgez	a4,17514 <_malloc_r+0x494>
   1720c:	1ff00713          	li	a4,511
   17210:	0089b503          	ld	a0,8(s3)
   17214:	20f76a63          	bltu	a4,a5,17428 <_malloc_r+0x3a8>
   17218:	0037d793          	srl	a5,a5,0x3
   1721c:	0017871b          	addw	a4,a5,1
   17220:	0017171b          	sllw	a4,a4,0x1
   17224:	00371713          	sll	a4,a4,0x3
   17228:	00e98733          	add	a4,s3,a4
   1722c:	00073583          	ld	a1,0(a4) # 2000 <exit-0xe0e8>
   17230:	4027d79b          	sraw	a5,a5,0x2
   17234:	00100693          	li	a3,1
   17238:	00f697b3          	sll	a5,a3,a5
   1723c:	00f56533          	or	a0,a0,a5
   17240:	ff070793          	add	a5,a4,-16
   17244:	00f43c23          	sd	a5,24(s0)
   17248:	00b43823          	sd	a1,16(s0)
   1724c:	00a9b423          	sd	a0,8(s3)
   17250:	00873023          	sd	s0,0(a4)
   17254:	0085bc23          	sd	s0,24(a1)
   17258:	4026579b          	sraw	a5,a2,0x2
   1725c:	00100593          	li	a1,1
   17260:	00f595b3          	sll	a1,a1,a5
   17264:	0cb56063          	bltu	a0,a1,17324 <_malloc_r+0x2a4>
   17268:	00a5f7b3          	and	a5,a1,a0
   1726c:	02079463          	bnez	a5,17294 <_malloc_r+0x214>
   17270:	00159593          	sll	a1,a1,0x1
   17274:	ffc67613          	and	a2,a2,-4
   17278:	00a5f7b3          	and	a5,a1,a0
   1727c:	0046061b          	addw	a2,a2,4
   17280:	00079a63          	bnez	a5,17294 <_malloc_r+0x214>
   17284:	00159593          	sll	a1,a1,0x1
   17288:	00a5f7b3          	and	a5,a1,a0
   1728c:	0046061b          	addw	a2,a2,4
   17290:	fe078ae3          	beqz	a5,17284 <_malloc_r+0x204>
   17294:	01f00893          	li	a7,31
   17298:	0016031b          	addw	t1,a2,1
   1729c:	0013131b          	sllw	t1,t1,0x1
   172a0:	00331313          	sll	t1,t1,0x3
   172a4:	ff030313          	add	t1,t1,-16
   172a8:	00698333          	add	t1,s3,t1
   172ac:	00030513          	mv	a0,t1
   172b0:	01853783          	ld	a5,24(a0)
   172b4:	00060e13          	mv	t3,a2
   172b8:	1ef50e63          	beq	a0,a5,174b4 <_malloc_r+0x434>
   172bc:	0087b703          	ld	a4,8(a5)
   172c0:	00078413          	mv	s0,a5
   172c4:	0187b783          	ld	a5,24(a5)
   172c8:	ffc77713          	and	a4,a4,-4
   172cc:	409706b3          	sub	a3,a4,s1
   172d0:	1ed8ce63          	blt	a7,a3,174cc <_malloc_r+0x44c>
   172d4:	fe06c2e3          	bltz	a3,172b8 <_malloc_r+0x238>
   172d8:	00e40733          	add	a4,s0,a4
   172dc:	00873683          	ld	a3,8(a4)
   172e0:	01043603          	ld	a2,16(s0)
   172e4:	00090513          	mv	a0,s2
   172e8:	0016e693          	or	a3,a3,1
   172ec:	00d73423          	sd	a3,8(a4)
   172f0:	00f63c23          	sd	a5,24(a2)
   172f4:	00c7b823          	sd	a2,16(a5)
   172f8:	69c000ef          	jal	17994 <__malloc_unlock>
   172fc:	01040513          	add	a0,s0,16
   17300:	e25ff06f          	j	17124 <_malloc_r+0xa4>
   17304:	00c00793          	li	a5,12
   17308:	00f92023          	sw	a5,0(s2)
   1730c:	00000513          	li	a0,0
   17310:	e15ff06f          	j	17124 <_malloc_r+0xa4>
   17314:	40000693          	li	a3,1024
   17318:	04000613          	li	a2,64
   1731c:	03f00513          	li	a0,63
   17320:	e7dff06f          	j	1719c <_malloc_r+0x11c>
   17324:	0109b403          	ld	s0,16(s3)
   17328:	00843783          	ld	a5,8(s0)
   1732c:	ffc7fa93          	and	s5,a5,-4
   17330:	009ae863          	bltu	s5,s1,17340 <_malloc_r+0x2c0>
   17334:	409a8733          	sub	a4,s5,s1
   17338:	01f00793          	li	a5,31
   1733c:	0ae7c063          	blt	a5,a4,173dc <_malloc_r+0x35c>
   17340:	7881ba03          	ld	s4,1928(gp) # 25b08 <__malloc_top_pad>
   17344:	7601b703          	ld	a4,1888(gp) # 25ae0 <__malloc_sbrk_base>
   17348:	fff00793          	li	a5,-1
   1734c:	01540c33          	add	s8,s0,s5
   17350:	01448a33          	add	s4,s1,s4
   17354:	3cf70863          	beq	a4,a5,17724 <_malloc_r+0x6a4>
   17358:	000017b7          	lui	a5,0x1
   1735c:	01f78793          	add	a5,a5,31 # 101f <exit-0xf0c9>
   17360:	00fa0a33          	add	s4,s4,a5
   17364:	fffff7b7          	lui	a5,0xfffff
   17368:	00fa7a33          	and	s4,s4,a5
   1736c:	000a0593          	mv	a1,s4
   17370:	00090513          	mv	a0,s2
   17374:	0b5010ef          	jal	18c28 <_sbrk_r>
   17378:	fff00793          	li	a5,-1
   1737c:	00050b13          	mv	s6,a0
   17380:	22f50263          	beq	a0,a5,175a4 <_malloc_r+0x524>
   17384:	21856e63          	bltu	a0,s8,175a0 <_malloc_r+0x520>
   17388:	00026bb7          	lui	s7,0x26
   1738c:	b58b8b93          	add	s7,s7,-1192 # 25b58 <__malloc_current_mallinfo>
   17390:	000ba783          	lw	a5,0(s7)
   17394:	0147873b          	addw	a4,a5,s4
   17398:	00eba023          	sw	a4,0(s7)
   1739c:	00070693          	mv	a3,a4
   173a0:	2aac1663          	bne	s8,a0,1764c <_malloc_r+0x5cc>
   173a4:	03451793          	sll	a5,a0,0x34
   173a8:	2a079263          	bnez	a5,1764c <_malloc_r+0x5cc>
   173ac:	0109bb03          	ld	s6,16(s3)
   173b0:	014a87b3          	add	a5,s5,s4
   173b4:	0017e793          	or	a5,a5,1
   173b8:	00fb3423          	sd	a5,8(s6)
   173bc:	7801b603          	ld	a2,1920(gp) # 25b00 <__malloc_max_sbrked_mem>
   173c0:	00e67463          	bgeu	a2,a4,173c8 <_malloc_r+0x348>
   173c4:	78e1b023          	sd	a4,1920(gp) # 25b00 <__malloc_max_sbrked_mem>
   173c8:	7781b603          	ld	a2,1912(gp) # 25af8 <__malloc_max_total_mem>
   173cc:	00e67463          	bgeu	a2,a4,173d4 <_malloc_r+0x354>
   173d0:	76e1bc23          	sd	a4,1912(gp) # 25af8 <__malloc_max_total_mem>
   173d4:	000b0413          	mv	s0,s6
   173d8:	1d40006f          	j	175ac <_malloc_r+0x52c>
   173dc:	0014e793          	or	a5,s1,1
   173e0:	00f43423          	sd	a5,8(s0)
   173e4:	009404b3          	add	s1,s0,s1
   173e8:	0099b823          	sd	s1,16(s3)
   173ec:	00176713          	or	a4,a4,1
   173f0:	00090513          	mv	a0,s2
   173f4:	00e4b423          	sd	a4,8(s1)
   173f8:	59c000ef          	jal	17994 <__malloc_unlock>
   173fc:	01040513          	add	a0,s0,16
   17400:	d25ff06f          	j	17124 <_malloc_r+0xa4>
   17404:	0089b503          	ld	a0,8(s3)
   17408:	e51ff06f          	j	17258 <_malloc_r+0x1d8>
   1740c:	01843683          	ld	a3,24(s0)
   17410:	01043603          	ld	a2,16(s0)
   17414:	cedff06f          	j	17100 <_malloc_r+0x80>
   17418:	0187b403          	ld	s0,24(a5) # fffffffffffff018 <__BSS_END__+0xfffffffffffd9498>
   1741c:	0026061b          	addw	a2,a2,2
   17420:	da878ee3          	beq	a5,s0,171dc <_malloc_r+0x15c>
   17424:	ccdff06f          	j	170f0 <_malloc_r+0x70>
   17428:	0097d713          	srl	a4,a5,0x9
   1742c:	00400693          	li	a3,4
   17430:	14e6fc63          	bgeu	a3,a4,17588 <_malloc_r+0x508>
   17434:	01400693          	li	a3,20
   17438:	32e6ec63          	bltu	a3,a4,17770 <_malloc_r+0x6f0>
   1743c:	05c7059b          	addw	a1,a4,92
   17440:	0015959b          	sllw	a1,a1,0x1
   17444:	05b7069b          	addw	a3,a4,91
   17448:	00359593          	sll	a1,a1,0x3
   1744c:	00b985b3          	add	a1,s3,a1
   17450:	0005b703          	ld	a4,0(a1)
   17454:	ff058593          	add	a1,a1,-16
   17458:	00e59863          	bne	a1,a4,17468 <_malloc_r+0x3e8>
   1745c:	2d00006f          	j	1772c <_malloc_r+0x6ac>
   17460:	01073703          	ld	a4,16(a4)
   17464:	00e58863          	beq	a1,a4,17474 <_malloc_r+0x3f4>
   17468:	00873683          	ld	a3,8(a4)
   1746c:	ffc6f693          	and	a3,a3,-4
   17470:	fed7e8e3          	bltu	a5,a3,17460 <_malloc_r+0x3e0>
   17474:	01873583          	ld	a1,24(a4)
   17478:	00b43c23          	sd	a1,24(s0)
   1747c:	00e43823          	sd	a4,16(s0)
   17480:	0085b823          	sd	s0,16(a1)
   17484:	00873c23          	sd	s0,24(a4)
   17488:	dd1ff06f          	j	17258 <_malloc_r+0x1d8>
   1748c:	01400713          	li	a4,20
   17490:	14f77063          	bgeu	a4,a5,175d0 <_malloc_r+0x550>
   17494:	05400713          	li	a4,84
   17498:	2ef76c63          	bltu	a4,a5,17790 <_malloc_r+0x710>
   1749c:	00c4d793          	srl	a5,s1,0xc
   174a0:	06f7861b          	addw	a2,a5,111
   174a4:	0016169b          	sllw	a3,a2,0x1
   174a8:	06e7851b          	addw	a0,a5,110
   174ac:	00369693          	sll	a3,a3,0x3
   174b0:	cedff06f          	j	1719c <_malloc_r+0x11c>
   174b4:	001e0e1b          	addw	t3,t3,1
   174b8:	003e7793          	and	a5,t3,3
   174bc:	01050513          	add	a0,a0,16
   174c0:	12078863          	beqz	a5,175f0 <_malloc_r+0x570>
   174c4:	01853783          	ld	a5,24(a0)
   174c8:	df1ff06f          	j	172b8 <_malloc_r+0x238>
   174cc:	01043603          	ld	a2,16(s0)
   174d0:	0014e593          	or	a1,s1,1
   174d4:	00b43423          	sd	a1,8(s0)
   174d8:	00f63c23          	sd	a5,24(a2)
   174dc:	00c7b823          	sd	a2,16(a5)
   174e0:	009404b3          	add	s1,s0,s1
   174e4:	0299b423          	sd	s1,40(s3)
   174e8:	0299b023          	sd	s1,32(s3)
   174ec:	0016e793          	or	a5,a3,1
   174f0:	0104bc23          	sd	a6,24(s1)
   174f4:	0104b823          	sd	a6,16(s1)
   174f8:	00f4b423          	sd	a5,8(s1)
   174fc:	00e40733          	add	a4,s0,a4
   17500:	00090513          	mv	a0,s2
   17504:	00d73023          	sd	a3,0(a4)
   17508:	48c000ef          	jal	17994 <__malloc_unlock>
   1750c:	01040513          	add	a0,s0,16
   17510:	c15ff06f          	j	17124 <_malloc_r+0xa4>
   17514:	00f407b3          	add	a5,s0,a5
   17518:	0087b703          	ld	a4,8(a5)
   1751c:	00090513          	mv	a0,s2
   17520:	00176713          	or	a4,a4,1
   17524:	00e7b423          	sd	a4,8(a5)
   17528:	46c000ef          	jal	17994 <__malloc_unlock>
   1752c:	01040513          	add	a0,s0,16
   17530:	bf5ff06f          	j	17124 <_malloc_r+0xa4>
   17534:	0014e693          	or	a3,s1,1
   17538:	00d43423          	sd	a3,8(s0)
   1753c:	009404b3          	add	s1,s0,s1
   17540:	0299b423          	sd	s1,40(s3)
   17544:	0299b023          	sd	s1,32(s3)
   17548:	00176693          	or	a3,a4,1
   1754c:	0104bc23          	sd	a6,24(s1)
   17550:	0104b823          	sd	a6,16(s1)
   17554:	00d4b423          	sd	a3,8(s1)
   17558:	00f407b3          	add	a5,s0,a5
   1755c:	00090513          	mv	a0,s2
   17560:	00e7b023          	sd	a4,0(a5)
   17564:	430000ef          	jal	17994 <__malloc_unlock>
   17568:	01040513          	add	a0,s0,16
   1756c:	bb9ff06f          	j	17124 <_malloc_r+0xa4>
   17570:	0034d613          	srl	a2,s1,0x3
   17574:	0016079b          	addw	a5,a2,1
   17578:	0017979b          	sllw	a5,a5,0x1
   1757c:	0006061b          	sext.w	a2,a2
   17580:	00379793          	sll	a5,a5,0x3
   17584:	b55ff06f          	j	170d8 <_malloc_r+0x58>
   17588:	0067d713          	srl	a4,a5,0x6
   1758c:	0397059b          	addw	a1,a4,57
   17590:	0015959b          	sllw	a1,a1,0x1
   17594:	0387069b          	addw	a3,a4,56
   17598:	00359593          	sll	a1,a1,0x3
   1759c:	eb1ff06f          	j	1744c <_malloc_r+0x3cc>
   175a0:	09340c63          	beq	s0,s3,17638 <_malloc_r+0x5b8>
   175a4:	0109b403          	ld	s0,16(s3)
   175a8:	00843783          	ld	a5,8(s0)
   175ac:	ffc7f793          	and	a5,a5,-4
   175b0:	40978733          	sub	a4,a5,s1
   175b4:	0097e663          	bltu	a5,s1,175c0 <_malloc_r+0x540>
   175b8:	01f00793          	li	a5,31
   175bc:	e2e7c0e3          	blt	a5,a4,173dc <_malloc_r+0x35c>
   175c0:	00090513          	mv	a0,s2
   175c4:	3d0000ef          	jal	17994 <__malloc_unlock>
   175c8:	00000513          	li	a0,0
   175cc:	b59ff06f          	j	17124 <_malloc_r+0xa4>
   175d0:	05c7861b          	addw	a2,a5,92
   175d4:	0016169b          	sllw	a3,a2,0x1
   175d8:	05b7851b          	addw	a0,a5,91
   175dc:	00369693          	sll	a3,a3,0x3
   175e0:	bbdff06f          	j	1719c <_malloc_r+0x11c>
   175e4:	01033783          	ld	a5,16(t1)
   175e8:	fff6061b          	addw	a2,a2,-1
   175ec:	26679463          	bne	a5,t1,17854 <_malloc_r+0x7d4>
   175f0:	00367793          	and	a5,a2,3
   175f4:	ff030313          	add	t1,t1,-16
   175f8:	fe0796e3          	bnez	a5,175e4 <_malloc_r+0x564>
   175fc:	0089b703          	ld	a4,8(s3)
   17600:	fff5c793          	not	a5,a1
   17604:	00e7f7b3          	and	a5,a5,a4
   17608:	00f9b423          	sd	a5,8(s3)
   1760c:	00159593          	sll	a1,a1,0x1
   17610:	d0b7eae3          	bltu	a5,a1,17324 <_malloc_r+0x2a4>
   17614:	d00588e3          	beqz	a1,17324 <_malloc_r+0x2a4>
   17618:	00f5f733          	and	a4,a1,a5
   1761c:	00071a63          	bnez	a4,17630 <_malloc_r+0x5b0>
   17620:	00159593          	sll	a1,a1,0x1
   17624:	00f5f733          	and	a4,a1,a5
   17628:	004e0e1b          	addw	t3,t3,4
   1762c:	fe070ae3          	beqz	a4,17620 <_malloc_r+0x5a0>
   17630:	000e0613          	mv	a2,t3
   17634:	c65ff06f          	j	17298 <_malloc_r+0x218>
   17638:	00026bb7          	lui	s7,0x26
   1763c:	b58b8b93          	add	s7,s7,-1192 # 25b58 <__malloc_current_mallinfo>
   17640:	000ba783          	lw	a5,0(s7)
   17644:	014786bb          	addw	a3,a5,s4
   17648:	00dba023          	sw	a3,0(s7)
   1764c:	7601b703          	ld	a4,1888(gp) # 25ae0 <__malloc_sbrk_base>
   17650:	fff00793          	li	a5,-1
   17654:	14f70e63          	beq	a4,a5,177b0 <_malloc_r+0x730>
   17658:	418b07b3          	sub	a5,s6,s8
   1765c:	00d787bb          	addw	a5,a5,a3
   17660:	00fba023          	sw	a5,0(s7)
   17664:	00fb7c93          	and	s9,s6,15
   17668:	0c0c8e63          	beqz	s9,17744 <_malloc_r+0x6c4>
   1766c:	00001737          	lui	a4,0x1
   17670:	419b0b33          	sub	s6,s6,s9
   17674:	01070c13          	add	s8,a4,16 # 1010 <exit-0xf0d8>
   17678:	010b0b13          	add	s6,s6,16
   1767c:	419c0c33          	sub	s8,s8,s9
   17680:	014b0a33          	add	s4,s6,s4
   17684:	fff70713          	add	a4,a4,-1
   17688:	414c0c33          	sub	s8,s8,s4
   1768c:	00ec7c33          	and	s8,s8,a4
   17690:	000c0593          	mv	a1,s8
   17694:	00090513          	mv	a0,s2
   17698:	590010ef          	jal	18c28 <_sbrk_r>
   1769c:	fff00793          	li	a5,-1
   176a0:	16f50263          	beq	a0,a5,17804 <_malloc_r+0x784>
   176a4:	41650533          	sub	a0,a0,s6
   176a8:	000c069b          	sext.w	a3,s8
   176ac:	01850a33          	add	s4,a0,s8
   176b0:	000ba703          	lw	a4,0(s7)
   176b4:	0169b823          	sd	s6,16(s3)
   176b8:	001a6793          	or	a5,s4,1
   176bc:	00d7073b          	addw	a4,a4,a3
   176c0:	00eba023          	sw	a4,0(s7)
   176c4:	00fb3423          	sd	a5,8(s6)
   176c8:	cf340ae3          	beq	s0,s3,173bc <_malloc_r+0x33c>
   176cc:	01f00613          	li	a2,31
   176d0:	0f567463          	bgeu	a2,s5,177b8 <_malloc_r+0x738>
   176d4:	00843683          	ld	a3,8(s0)
   176d8:	fe8a8793          	add	a5,s5,-24
   176dc:	ff07f793          	and	a5,a5,-16
   176e0:	0016f693          	and	a3,a3,1
   176e4:	00f6e6b3          	or	a3,a3,a5
   176e8:	00d43423          	sd	a3,8(s0)
   176ec:	00900593          	li	a1,9
   176f0:	00f406b3          	add	a3,s0,a5
   176f4:	00b6b423          	sd	a1,8(a3)
   176f8:	00b6b823          	sd	a1,16(a3)
   176fc:	00f66663          	bltu	a2,a5,17708 <_malloc_r+0x688>
   17700:	008b3783          	ld	a5,8(s6)
   17704:	cb9ff06f          	j	173bc <_malloc_r+0x33c>
   17708:	01040593          	add	a1,s0,16
   1770c:	00090513          	mv	a0,s2
   17710:	d00fc0ef          	jal	13c10 <_free_r>
   17714:	0109bb03          	ld	s6,16(s3)
   17718:	000ba703          	lw	a4,0(s7)
   1771c:	008b3783          	ld	a5,8(s6)
   17720:	c9dff06f          	j	173bc <_malloc_r+0x33c>
   17724:	020a0a13          	add	s4,s4,32
   17728:	c45ff06f          	j	1736c <_malloc_r+0x2ec>
   1772c:	4026d69b          	sraw	a3,a3,0x2
   17730:	00100793          	li	a5,1
   17734:	00d797b3          	sll	a5,a5,a3
   17738:	00f56533          	or	a0,a0,a5
   1773c:	00a9b423          	sd	a0,8(s3)
   17740:	d39ff06f          	j	17478 <_malloc_r+0x3f8>
   17744:	014b0c33          	add	s8,s6,s4
   17748:	41800c33          	neg	s8,s8
   1774c:	034c1c13          	sll	s8,s8,0x34
   17750:	034c5c13          	srl	s8,s8,0x34
   17754:	000c0593          	mv	a1,s8
   17758:	00090513          	mv	a0,s2
   1775c:	4cc010ef          	jal	18c28 <_sbrk_r>
   17760:	fff00793          	li	a5,-1
   17764:	00000693          	li	a3,0
   17768:	f2f51ee3          	bne	a0,a5,176a4 <_malloc_r+0x624>
   1776c:	f45ff06f          	j	176b0 <_malloc_r+0x630>
   17770:	05400693          	li	a3,84
   17774:	04e6e863          	bltu	a3,a4,177c4 <_malloc_r+0x744>
   17778:	00c7d713          	srl	a4,a5,0xc
   1777c:	06f7059b          	addw	a1,a4,111
   17780:	0015959b          	sllw	a1,a1,0x1
   17784:	06e7069b          	addw	a3,a4,110
   17788:	00359593          	sll	a1,a1,0x3
   1778c:	cc1ff06f          	j	1744c <_malloc_r+0x3cc>
   17790:	15400713          	li	a4,340
   17794:	04f76863          	bltu	a4,a5,177e4 <_malloc_r+0x764>
   17798:	00f4d793          	srl	a5,s1,0xf
   1779c:	0787861b          	addw	a2,a5,120
   177a0:	0016169b          	sllw	a3,a2,0x1
   177a4:	0777851b          	addw	a0,a5,119
   177a8:	00369693          	sll	a3,a3,0x3
   177ac:	9f1ff06f          	j	1719c <_malloc_r+0x11c>
   177b0:	7761b023          	sd	s6,1888(gp) # 25ae0 <__malloc_sbrk_base>
   177b4:	eb1ff06f          	j	17664 <_malloc_r+0x5e4>
   177b8:	00100793          	li	a5,1
   177bc:	00fb3423          	sd	a5,8(s6)
   177c0:	e01ff06f          	j	175c0 <_malloc_r+0x540>
   177c4:	15400693          	li	a3,340
   177c8:	04e6e863          	bltu	a3,a4,17818 <_malloc_r+0x798>
   177cc:	00f7d713          	srl	a4,a5,0xf
   177d0:	0787059b          	addw	a1,a4,120
   177d4:	0015959b          	sllw	a1,a1,0x1
   177d8:	0777069b          	addw	a3,a4,119
   177dc:	00359593          	sll	a1,a1,0x3
   177e0:	c6dff06f          	j	1744c <_malloc_r+0x3cc>
   177e4:	55400713          	li	a4,1364
   177e8:	04f76863          	bltu	a4,a5,17838 <_malloc_r+0x7b8>
   177ec:	0124d793          	srl	a5,s1,0x12
   177f0:	07d7861b          	addw	a2,a5,125
   177f4:	0016169b          	sllw	a3,a2,0x1
   177f8:	07c7851b          	addw	a0,a5,124
   177fc:	00369693          	sll	a3,a3,0x3
   17800:	99dff06f          	j	1719c <_malloc_r+0x11c>
   17804:	ff0c8c93          	add	s9,s9,-16
   17808:	019a0a33          	add	s4,s4,s9
   1780c:	416a0a33          	sub	s4,s4,s6
   17810:	00000693          	li	a3,0
   17814:	e9dff06f          	j	176b0 <_malloc_r+0x630>
   17818:	55400693          	li	a3,1364
   1781c:	02e6e663          	bltu	a3,a4,17848 <_malloc_r+0x7c8>
   17820:	0127d713          	srl	a4,a5,0x12
   17824:	07d7059b          	addw	a1,a4,125
   17828:	0015959b          	sllw	a1,a1,0x1
   1782c:	07c7069b          	addw	a3,a4,124
   17830:	00359593          	sll	a1,a1,0x3
   17834:	c19ff06f          	j	1744c <_malloc_r+0x3cc>
   17838:	7f000693          	li	a3,2032
   1783c:	07f00613          	li	a2,127
   17840:	07e00513          	li	a0,126
   17844:	959ff06f          	j	1719c <_malloc_r+0x11c>
   17848:	7f000593          	li	a1,2032
   1784c:	07e00693          	li	a3,126
   17850:	bfdff06f          	j	1744c <_malloc_r+0x3cc>
   17854:	0089b783          	ld	a5,8(s3)
   17858:	db5ff06f          	j	1760c <_malloc_r+0x58c>

000000000001785c <_mbtowc_r>:
   1785c:	e301b783          	ld	a5,-464(gp) # 251b0 <__global_locale+0xe8>
   17860:	00078067          	jr	a5

0000000000017864 <__ascii_mbtowc>:
   17864:	02058063          	beqz	a1,17884 <__ascii_mbtowc+0x20>
   17868:	04060263          	beqz	a2,178ac <__ascii_mbtowc+0x48>
   1786c:	04068863          	beqz	a3,178bc <__ascii_mbtowc+0x58>
   17870:	00064783          	lbu	a5,0(a2)
   17874:	00f5a023          	sw	a5,0(a1)
   17878:	00064503          	lbu	a0,0(a2)
   1787c:	00a03533          	snez	a0,a0
   17880:	00008067          	ret
   17884:	ff010113          	add	sp,sp,-16
   17888:	00c10593          	add	a1,sp,12
   1788c:	02060463          	beqz	a2,178b4 <__ascii_mbtowc+0x50>
   17890:	02068a63          	beqz	a3,178c4 <__ascii_mbtowc+0x60>
   17894:	00064783          	lbu	a5,0(a2)
   17898:	00f5a023          	sw	a5,0(a1)
   1789c:	00064503          	lbu	a0,0(a2)
   178a0:	00a03533          	snez	a0,a0
   178a4:	01010113          	add	sp,sp,16
   178a8:	00008067          	ret
   178ac:	00000513          	li	a0,0
   178b0:	00008067          	ret
   178b4:	00000513          	li	a0,0
   178b8:	fedff06f          	j	178a4 <__ascii_mbtowc+0x40>
   178bc:	ffe00513          	li	a0,-2
   178c0:	00008067          	ret
   178c4:	ffe00513          	li	a0,-2
   178c8:	fddff06f          	j	178a4 <__ascii_mbtowc+0x40>

00000000000178cc <memchr>:
   178cc:	00757793          	and	a5,a0,7
   178d0:	0ff5f693          	zext.b	a3,a1
   178d4:	02078e63          	beqz	a5,17910 <memchr+0x44>
   178d8:	fff60793          	add	a5,a2,-1
   178dc:	02060663          	beqz	a2,17908 <memchr+0x3c>
   178e0:	fff00613          	li	a2,-1
   178e4:	0180006f          	j	178fc <memchr+0x30>
   178e8:	00150513          	add	a0,a0,1
   178ec:	00757713          	and	a4,a0,7
   178f0:	02070263          	beqz	a4,17914 <memchr+0x48>
   178f4:	fff78793          	add	a5,a5,-1
   178f8:	00c78863          	beq	a5,a2,17908 <memchr+0x3c>
   178fc:	00054703          	lbu	a4,0(a0)
   17900:	fed714e3          	bne	a4,a3,178e8 <memchr+0x1c>
   17904:	00008067          	ret
   17908:	00000513          	li	a0,0
   1790c:	00008067          	ret
   17910:	00060793          	mv	a5,a2
   17914:	00700713          	li	a4,7
   17918:	04f77c63          	bgeu	a4,a5,17970 <memchr+0xa4>
   1791c:	0ff5f593          	zext.b	a1,a1
   17920:	00859713          	sll	a4,a1,0x8
   17924:	00b70733          	add	a4,a4,a1
   17928:	01071593          	sll	a1,a4,0x10
   1792c:	00e585b3          	add	a1,a1,a4
   17930:	7001b883          	ld	a7,1792(gp) # 25a80 <__SDATA_BEGIN__>
   17934:	7081b803          	ld	a6,1800(gp) # 25a88 <__SDATA_BEGIN__+0x8>
   17938:	02059713          	sll	a4,a1,0x20
   1793c:	00e585b3          	add	a1,a1,a4
   17940:	00700313          	li	t1,7
   17944:	0100006f          	j	17954 <memchr+0x88>
   17948:	ff878793          	add	a5,a5,-8
   1794c:	00850513          	add	a0,a0,8
   17950:	02f37063          	bgeu	t1,a5,17970 <memchr+0xa4>
   17954:	00053703          	ld	a4,0(a0)
   17958:	00e5c733          	xor	a4,a1,a4
   1795c:	01170633          	add	a2,a4,a7
   17960:	fff74713          	not	a4,a4
   17964:	00e67733          	and	a4,a2,a4
   17968:	01077733          	and	a4,a4,a6
   1796c:	fc070ee3          	beqz	a4,17948 <memchr+0x7c>
   17970:	00f50733          	add	a4,a0,a5
   17974:	00079863          	bnez	a5,17984 <memchr+0xb8>
   17978:	f91ff06f          	j	17908 <memchr+0x3c>
   1797c:	00150513          	add	a0,a0,1
   17980:	f8a704e3          	beq	a4,a0,17908 <memchr+0x3c>
   17984:	00054783          	lbu	a5,0(a0)
   17988:	fed79ae3          	bne	a5,a3,1797c <memchr+0xb0>
   1798c:	00008067          	ret

0000000000017990 <__malloc_lock>:
   17990:	00008067          	ret

0000000000017994 <__malloc_unlock>:
   17994:	00008067          	ret

0000000000017998 <_Balloc>:
   17998:	07853783          	ld	a5,120(a0)
   1799c:	fe010113          	add	sp,sp,-32
   179a0:	00813823          	sd	s0,16(sp)
   179a4:	00913423          	sd	s1,8(sp)
   179a8:	00113c23          	sd	ra,24(sp)
   179ac:	00050493          	mv	s1,a0
   179b0:	00058413          	mv	s0,a1
   179b4:	02078a63          	beqz	a5,179e8 <_Balloc+0x50>
   179b8:	00341713          	sll	a4,s0,0x3
   179bc:	00e787b3          	add	a5,a5,a4
   179c0:	0007b503          	ld	a0,0(a5)
   179c4:	04050263          	beqz	a0,17a08 <_Balloc+0x70>
   179c8:	00053703          	ld	a4,0(a0)
   179cc:	00e7b023          	sd	a4,0(a5)
   179d0:	00053823          	sd	zero,16(a0)
   179d4:	01813083          	ld	ra,24(sp)
   179d8:	01013403          	ld	s0,16(sp)
   179dc:	00813483          	ld	s1,8(sp)
   179e0:	02010113          	add	sp,sp,32
   179e4:	00008067          	ret
   179e8:	04100613          	li	a2,65
   179ec:	00800593          	li	a1,8
   179f0:	44c050ef          	jal	1ce3c <_calloc_r>
   179f4:	06a4bc23          	sd	a0,120(s1)
   179f8:	00050793          	mv	a5,a0
   179fc:	fa051ee3          	bnez	a0,179b8 <_Balloc+0x20>
   17a00:	00000513          	li	a0,0
   17a04:	fd1ff06f          	j	179d4 <_Balloc+0x3c>
   17a08:	00100793          	li	a5,1
   17a0c:	008797bb          	sllw	a5,a5,s0
   17a10:	0007861b          	sext.w	a2,a5
   17a14:	00760613          	add	a2,a2,7
   17a18:	02041413          	sll	s0,s0,0x20
   17a1c:	02079793          	sll	a5,a5,0x20
   17a20:	02045413          	srl	s0,s0,0x20
   17a24:	00261613          	sll	a2,a2,0x2
   17a28:	00100593          	li	a1,1
   17a2c:	00048513          	mv	a0,s1
   17a30:	00f46433          	or	s0,s0,a5
   17a34:	408050ef          	jal	1ce3c <_calloc_r>
   17a38:	fc0504e3          	beqz	a0,17a00 <_Balloc+0x68>
   17a3c:	00853423          	sd	s0,8(a0)
   17a40:	f91ff06f          	j	179d0 <_Balloc+0x38>

0000000000017a44 <_Bfree>:
   17a44:	02058063          	beqz	a1,17a64 <_Bfree+0x20>
   17a48:	0085a703          	lw	a4,8(a1)
   17a4c:	07853783          	ld	a5,120(a0)
   17a50:	00371713          	sll	a4,a4,0x3
   17a54:	00e787b3          	add	a5,a5,a4
   17a58:	0007b703          	ld	a4,0(a5)
   17a5c:	00e5b023          	sd	a4,0(a1)
   17a60:	00b7b023          	sd	a1,0(a5)
   17a64:	00008067          	ret

0000000000017a68 <__multadd>:
   17a68:	fd010113          	add	sp,sp,-48
   17a6c:	02813023          	sd	s0,32(sp)
   17a70:	0145a403          	lw	s0,20(a1)
   17a74:	00010337          	lui	t1,0x10
   17a78:	01213823          	sd	s2,16(sp)
   17a7c:	01313423          	sd	s3,8(sp)
   17a80:	02113423          	sd	ra,40(sp)
   17a84:	00913c23          	sd	s1,24(sp)
   17a88:	01413023          	sd	s4,0(sp)
   17a8c:	00058913          	mv	s2,a1
   17a90:	00050993          	mv	s3,a0
   17a94:	01858813          	add	a6,a1,24
   17a98:	00000893          	li	a7,0
   17a9c:	fff30313          	add	t1,t1,-1 # ffff <exit-0xe9>
   17aa0:	00082783          	lw	a5,0(a6)
   17aa4:	00480813          	add	a6,a6,4
   17aa8:	0018889b          	addw	a7,a7,1
   17aac:	0067f733          	and	a4,a5,t1
   17ab0:	02c7073b          	mulw	a4,a4,a2
   17ab4:	0107d79b          	srlw	a5,a5,0x10
   17ab8:	02c787bb          	mulw	a5,a5,a2
   17abc:	00d7073b          	addw	a4,a4,a3
   17ac0:	0107569b          	srlw	a3,a4,0x10
   17ac4:	00e37733          	and	a4,t1,a4
   17ac8:	00d787bb          	addw	a5,a5,a3
   17acc:	0107969b          	sllw	a3,a5,0x10
   17ad0:	00e6873b          	addw	a4,a3,a4
   17ad4:	fee82e23          	sw	a4,-4(a6)
   17ad8:	0107d49b          	srlw	s1,a5,0x10
   17adc:	0107d69b          	srlw	a3,a5,0x10
   17ae0:	fc88c0e3          	blt	a7,s0,17aa0 <__multadd+0x38>
   17ae4:	02068263          	beqz	a3,17b08 <__multadd+0xa0>
   17ae8:	00c92783          	lw	a5,12(s2)
   17aec:	04f45063          	bge	s0,a5,17b2c <__multadd+0xc4>
   17af0:	00440793          	add	a5,s0,4
   17af4:	00279793          	sll	a5,a5,0x2
   17af8:	00f907b3          	add	a5,s2,a5
   17afc:	0097a423          	sw	s1,8(a5)
   17b00:	0014041b          	addw	s0,s0,1
   17b04:	00892a23          	sw	s0,20(s2)
   17b08:	02813083          	ld	ra,40(sp)
   17b0c:	02013403          	ld	s0,32(sp)
   17b10:	01813483          	ld	s1,24(sp)
   17b14:	00813983          	ld	s3,8(sp)
   17b18:	00013a03          	ld	s4,0(sp)
   17b1c:	00090513          	mv	a0,s2
   17b20:	01013903          	ld	s2,16(sp)
   17b24:	03010113          	add	sp,sp,48
   17b28:	00008067          	ret
   17b2c:	00892583          	lw	a1,8(s2)
   17b30:	00098513          	mv	a0,s3
   17b34:	0015859b          	addw	a1,a1,1
   17b38:	e61ff0ef          	jal	17998 <_Balloc>
   17b3c:	00050a13          	mv	s4,a0
   17b40:	04050c63          	beqz	a0,17b98 <__multadd+0x130>
   17b44:	01492603          	lw	a2,20(s2)
   17b48:	01090593          	add	a1,s2,16
   17b4c:	01050513          	add	a0,a0,16
   17b50:	00260613          	add	a2,a2,2
   17b54:	00261613          	sll	a2,a2,0x2
   17b58:	53d050ef          	jal	1d894 <memcpy>
   17b5c:	00892703          	lw	a4,8(s2)
   17b60:	0789b783          	ld	a5,120(s3)
   17b64:	00371713          	sll	a4,a4,0x3
   17b68:	00e787b3          	add	a5,a5,a4
   17b6c:	0007b703          	ld	a4,0(a5)
   17b70:	00e93023          	sd	a4,0(s2)
   17b74:	0127b023          	sd	s2,0(a5)
   17b78:	00440793          	add	a5,s0,4
   17b7c:	000a0913          	mv	s2,s4
   17b80:	00279793          	sll	a5,a5,0x2
   17b84:	00f907b3          	add	a5,s2,a5
   17b88:	0097a423          	sw	s1,8(a5)
   17b8c:	0014041b          	addw	s0,s0,1
   17b90:	00892a23          	sw	s0,20(s2)
   17b94:	f75ff06f          	j	17b08 <__multadd+0xa0>
   17b98:	000236b7          	lui	a3,0x23
   17b9c:	00023537          	lui	a0,0x23
   17ba0:	bd868693          	add	a3,a3,-1064 # 22bd8 <__clz_tab+0x190>
   17ba4:	00000613          	li	a2,0
   17ba8:	0b500593          	li	a1,181
   17bac:	c6050513          	add	a0,a0,-928 # 22c60 <__clz_tab+0x218>
   17bb0:	210050ef          	jal	1cdc0 <__assert_func>

0000000000017bb4 <__s2b>:
   17bb4:	fc010113          	add	sp,sp,-64
   17bb8:	02813823          	sd	s0,48(sp)
   17bbc:	02913423          	sd	s1,40(sp)
   17bc0:	03213023          	sd	s2,32(sp)
   17bc4:	01313c23          	sd	s3,24(sp)
   17bc8:	01413823          	sd	s4,16(sp)
   17bcc:	00068493          	mv	s1,a3
   17bd0:	00058413          	mv	s0,a1
   17bd4:	0086869b          	addw	a3,a3,8
   17bd8:	00900593          	li	a1,9
   17bdc:	02113c23          	sd	ra,56(sp)
   17be0:	01513423          	sd	s5,8(sp)
   17be4:	01613023          	sd	s6,0(sp)
   17be8:	00900793          	li	a5,9
   17bec:	02b6c6bb          	divw	a3,a3,a1
   17bf0:	00050913          	mv	s2,a0
   17bf4:	00060a13          	mv	s4,a2
   17bf8:	00070993          	mv	s3,a4
   17bfc:	0e97d863          	bge	a5,s1,17cec <__s2b+0x138>
   17c00:	00100793          	li	a5,1
   17c04:	00000593          	li	a1,0
   17c08:	0017979b          	sllw	a5,a5,0x1
   17c0c:	0015859b          	addw	a1,a1,1
   17c10:	fed7cce3          	blt	a5,a3,17c08 <__s2b+0x54>
   17c14:	00090513          	mv	a0,s2
   17c18:	d81ff0ef          	jal	17998 <_Balloc>
   17c1c:	00050593          	mv	a1,a0
   17c20:	0c050a63          	beqz	a0,17cf4 <__s2b+0x140>
   17c24:	00100793          	li	a5,1
   17c28:	00f52a23          	sw	a5,20(a0)
   17c2c:	01352c23          	sw	s3,24(a0)
   17c30:	00900793          	li	a5,9
   17c34:	0b47d663          	bge	a5,s4,17ce0 <__s2b+0x12c>
   17c38:	020a1793          	sll	a5,s4,0x20
   17c3c:	00940b13          	add	s6,s0,9
   17c40:	0207d793          	srl	a5,a5,0x20
   17c44:	000a0a9b          	sext.w	s5,s4
   17c48:	00f40433          	add	s0,s0,a5
   17c4c:	000b0993          	mv	s3,s6
   17c50:	0009c683          	lbu	a3,0(s3)
   17c54:	00a00613          	li	a2,10
   17c58:	00090513          	mv	a0,s2
   17c5c:	fd06869b          	addw	a3,a3,-48
   17c60:	e09ff0ef          	jal	17a68 <__multadd>
   17c64:	00198993          	add	s3,s3,1
   17c68:	00050593          	mv	a1,a0
   17c6c:	fe8992e3          	bne	s3,s0,17c50 <__s2b+0x9c>
   17c70:	ff8a8a9b          	addw	s5,s5,-8
   17c74:	020a9a93          	sll	s5,s5,0x20
   17c78:	020ada93          	srl	s5,s5,0x20
   17c7c:	015b0433          	add	s0,s6,s5
   17c80:	029a5a63          	bge	s4,s1,17cb4 <__s2b+0x100>
   17c84:	414484bb          	subw	s1,s1,s4
   17c88:	02049493          	sll	s1,s1,0x20
   17c8c:	0204d493          	srl	s1,s1,0x20
   17c90:	009404b3          	add	s1,s0,s1
   17c94:	00044683          	lbu	a3,0(s0)
   17c98:	00a00613          	li	a2,10
   17c9c:	00090513          	mv	a0,s2
   17ca0:	fd06869b          	addw	a3,a3,-48
   17ca4:	dc5ff0ef          	jal	17a68 <__multadd>
   17ca8:	00140413          	add	s0,s0,1
   17cac:	00050593          	mv	a1,a0
   17cb0:	fe9412e3          	bne	s0,s1,17c94 <__s2b+0xe0>
   17cb4:	03813083          	ld	ra,56(sp)
   17cb8:	03013403          	ld	s0,48(sp)
   17cbc:	02813483          	ld	s1,40(sp)
   17cc0:	02013903          	ld	s2,32(sp)
   17cc4:	01813983          	ld	s3,24(sp)
   17cc8:	01013a03          	ld	s4,16(sp)
   17ccc:	00813a83          	ld	s5,8(sp)
   17cd0:	00013b03          	ld	s6,0(sp)
   17cd4:	00058513          	mv	a0,a1
   17cd8:	04010113          	add	sp,sp,64
   17cdc:	00008067          	ret
   17ce0:	00a40413          	add	s0,s0,10
   17ce4:	00900a13          	li	s4,9
   17ce8:	f99ff06f          	j	17c80 <__s2b+0xcc>
   17cec:	00000593          	li	a1,0
   17cf0:	f25ff06f          	j	17c14 <__s2b+0x60>
   17cf4:	000236b7          	lui	a3,0x23
   17cf8:	00023537          	lui	a0,0x23
   17cfc:	bd868693          	add	a3,a3,-1064 # 22bd8 <__clz_tab+0x190>
   17d00:	00000613          	li	a2,0
   17d04:	0ce00593          	li	a1,206
   17d08:	c6050513          	add	a0,a0,-928 # 22c60 <__clz_tab+0x218>
   17d0c:	0b4050ef          	jal	1cdc0 <__assert_func>

0000000000017d10 <__hi0bits>:
   17d10:	00050793          	mv	a5,a0
   17d14:	00010737          	lui	a4,0x10
   17d18:	00000513          	li	a0,0
   17d1c:	00e7f663          	bgeu	a5,a4,17d28 <__hi0bits+0x18>
   17d20:	0107979b          	sllw	a5,a5,0x10
   17d24:	01000513          	li	a0,16
   17d28:	01000737          	lui	a4,0x1000
   17d2c:	00e7f663          	bgeu	a5,a4,17d38 <__hi0bits+0x28>
   17d30:	0087979b          	sllw	a5,a5,0x8
   17d34:	0085051b          	addw	a0,a0,8
   17d38:	10000737          	lui	a4,0x10000
   17d3c:	00e7f663          	bgeu	a5,a4,17d48 <__hi0bits+0x38>
   17d40:	0047979b          	sllw	a5,a5,0x4
   17d44:	0045051b          	addw	a0,a0,4
   17d48:	40000737          	lui	a4,0x40000
   17d4c:	00e7e863          	bltu	a5,a4,17d5c <__hi0bits+0x4c>
   17d50:	0207c463          	bltz	a5,17d78 <__hi0bits+0x68>
   17d54:	0015051b          	addw	a0,a0,1
   17d58:	00008067          	ret
   17d5c:	0027979b          	sllw	a5,a5,0x2
   17d60:	0007871b          	sext.w	a4,a5
   17d64:	00074c63          	bltz	a4,17d7c <__hi0bits+0x6c>
   17d68:	40000737          	lui	a4,0x40000
   17d6c:	00e7f7b3          	and	a5,a5,a4
   17d70:	00079a63          	bnez	a5,17d84 <__hi0bits+0x74>
   17d74:	02000513          	li	a0,32
   17d78:	00008067          	ret
   17d7c:	0025051b          	addw	a0,a0,2
   17d80:	00008067          	ret
   17d84:	0035051b          	addw	a0,a0,3
   17d88:	00008067          	ret

0000000000017d8c <__lo0bits>:
   17d8c:	00052783          	lw	a5,0(a0)
   17d90:	00050713          	mv	a4,a0
   17d94:	0077f693          	and	a3,a5,7
   17d98:	00078613          	mv	a2,a5
   17d9c:	02068463          	beqz	a3,17dc4 <__lo0bits+0x38>
   17da0:	0017f693          	and	a3,a5,1
   17da4:	00000513          	li	a0,0
   17da8:	04069e63          	bnez	a3,17e04 <__lo0bits+0x78>
   17dac:	00267613          	and	a2,a2,2
   17db0:	0a060863          	beqz	a2,17e60 <__lo0bits+0xd4>
   17db4:	0017d79b          	srlw	a5,a5,0x1
   17db8:	00f72023          	sw	a5,0(a4) # 40000000 <__BSS_END__+0x3ffda480>
   17dbc:	00100513          	li	a0,1
   17dc0:	00008067          	ret
   17dc4:	03079693          	sll	a3,a5,0x30
   17dc8:	0306d693          	srl	a3,a3,0x30
   17dcc:	00000513          	li	a0,0
   17dd0:	06068e63          	beqz	a3,17e4c <__lo0bits+0xc0>
   17dd4:	0ff7f693          	zext.b	a3,a5
   17dd8:	06068063          	beqz	a3,17e38 <__lo0bits+0xac>
   17ddc:	00f7f693          	and	a3,a5,15
   17de0:	04068263          	beqz	a3,17e24 <__lo0bits+0x98>
   17de4:	0037f693          	and	a3,a5,3
   17de8:	02068463          	beqz	a3,17e10 <__lo0bits+0x84>
   17dec:	0017f693          	and	a3,a5,1
   17df0:	00069c63          	bnez	a3,17e08 <__lo0bits+0x7c>
   17df4:	0017d79b          	srlw	a5,a5,0x1
   17df8:	0015051b          	addw	a0,a0,1
   17dfc:	00079663          	bnez	a5,17e08 <__lo0bits+0x7c>
   17e00:	02000513          	li	a0,32
   17e04:	00008067          	ret
   17e08:	00f72023          	sw	a5,0(a4)
   17e0c:	00008067          	ret
   17e10:	0027d79b          	srlw	a5,a5,0x2
   17e14:	0017f693          	and	a3,a5,1
   17e18:	0025051b          	addw	a0,a0,2
   17e1c:	fe0696e3          	bnez	a3,17e08 <__lo0bits+0x7c>
   17e20:	fd5ff06f          	j	17df4 <__lo0bits+0x68>
   17e24:	0047d79b          	srlw	a5,a5,0x4
   17e28:	0037f693          	and	a3,a5,3
   17e2c:	0045051b          	addw	a0,a0,4
   17e30:	fa069ee3          	bnez	a3,17dec <__lo0bits+0x60>
   17e34:	fddff06f          	j	17e10 <__lo0bits+0x84>
   17e38:	0087d79b          	srlw	a5,a5,0x8
   17e3c:	00f7f693          	and	a3,a5,15
   17e40:	0085051b          	addw	a0,a0,8
   17e44:	fa0690e3          	bnez	a3,17de4 <__lo0bits+0x58>
   17e48:	fddff06f          	j	17e24 <__lo0bits+0x98>
   17e4c:	0107d79b          	srlw	a5,a5,0x10
   17e50:	0ff7f693          	zext.b	a3,a5
   17e54:	01000513          	li	a0,16
   17e58:	f80692e3          	bnez	a3,17ddc <__lo0bits+0x50>
   17e5c:	fddff06f          	j	17e38 <__lo0bits+0xac>
   17e60:	0027d79b          	srlw	a5,a5,0x2
   17e64:	00f72023          	sw	a5,0(a4)
   17e68:	00200513          	li	a0,2
   17e6c:	00008067          	ret

0000000000017e70 <__i2b>:
   17e70:	07853783          	ld	a5,120(a0)
   17e74:	fe010113          	add	sp,sp,-32
   17e78:	00813823          	sd	s0,16(sp)
   17e7c:	00913423          	sd	s1,8(sp)
   17e80:	00113c23          	sd	ra,24(sp)
   17e84:	00050413          	mv	s0,a0
   17e88:	00058493          	mv	s1,a1
   17e8c:	02078c63          	beqz	a5,17ec4 <__i2b+0x54>
   17e90:	0087b503          	ld	a0,8(a5)
   17e94:	06050263          	beqz	a0,17ef8 <__i2b+0x88>
   17e98:	00053703          	ld	a4,0(a0)
   17e9c:	00e7b423          	sd	a4,8(a5)
   17ea0:	01813083          	ld	ra,24(sp)
   17ea4:	01013403          	ld	s0,16(sp)
   17ea8:	00100793          	li	a5,1
   17eac:	02079793          	sll	a5,a5,0x20
   17eb0:	00952c23          	sw	s1,24(a0)
   17eb4:	00f53823          	sd	a5,16(a0)
   17eb8:	00813483          	ld	s1,8(sp)
   17ebc:	02010113          	add	sp,sp,32
   17ec0:	00008067          	ret
   17ec4:	04100613          	li	a2,65
   17ec8:	00800593          	li	a1,8
   17ecc:	771040ef          	jal	1ce3c <_calloc_r>
   17ed0:	06a43c23          	sd	a0,120(s0)
   17ed4:	00050793          	mv	a5,a0
   17ed8:	fa051ce3          	bnez	a0,17e90 <__i2b+0x20>
   17edc:	000236b7          	lui	a3,0x23
   17ee0:	00023537          	lui	a0,0x23
   17ee4:	bd868693          	add	a3,a3,-1064 # 22bd8 <__clz_tab+0x190>
   17ee8:	00000613          	li	a2,0
   17eec:	14000593          	li	a1,320
   17ef0:	c6050513          	add	a0,a0,-928 # 22c60 <__clz_tab+0x218>
   17ef4:	6cd040ef          	jal	1cdc0 <__assert_func>
   17ef8:	02400613          	li	a2,36
   17efc:	00100593          	li	a1,1
   17f00:	00040513          	mv	a0,s0
   17f04:	739040ef          	jal	1ce3c <_calloc_r>
   17f08:	fc050ae3          	beqz	a0,17edc <__i2b+0x6c>
   17f0c:	00100793          	li	a5,1
   17f10:	02179793          	sll	a5,a5,0x21
   17f14:	00178793          	add	a5,a5,1
   17f18:	00f53423          	sd	a5,8(a0)
   17f1c:	f85ff06f          	j	17ea0 <__i2b+0x30>

0000000000017f20 <__multiply>:
   17f20:	fd010113          	add	sp,sp,-48
   17f24:	01213823          	sd	s2,16(sp)
   17f28:	01313423          	sd	s3,8(sp)
   17f2c:	01462903          	lw	s2,20(a2)
   17f30:	0145a983          	lw	s3,20(a1)
   17f34:	00913c23          	sd	s1,24(sp)
   17f38:	01413023          	sd	s4,0(sp)
   17f3c:	02113423          	sd	ra,40(sp)
   17f40:	02813023          	sd	s0,32(sp)
   17f44:	00058a13          	mv	s4,a1
   17f48:	00060493          	mv	s1,a2
   17f4c:	0129cc63          	blt	s3,s2,17f64 <__multiply+0x44>
   17f50:	00090793          	mv	a5,s2
   17f54:	00058493          	mv	s1,a1
   17f58:	00098913          	mv	s2,s3
   17f5c:	00060a13          	mv	s4,a2
   17f60:	00078993          	mv	s3,a5
   17f64:	00c4a783          	lw	a5,12(s1)
   17f68:	0139043b          	addw	s0,s2,s3
   17f6c:	0084a583          	lw	a1,8(s1)
   17f70:	0087d463          	bge	a5,s0,17f78 <__multiply+0x58>
   17f74:	0015859b          	addw	a1,a1,1
   17f78:	a21ff0ef          	jal	17998 <_Balloc>
   17f7c:	1c050263          	beqz	a0,18140 <__multiply+0x220>
   17f80:	01850313          	add	t1,a0,24
   17f84:	00241893          	sll	a7,s0,0x2
   17f88:	011308b3          	add	a7,t1,a7
   17f8c:	00030793          	mv	a5,t1
   17f90:	01137863          	bgeu	t1,a7,17fa0 <__multiply+0x80>
   17f94:	0007a023          	sw	zero,0(a5)
   17f98:	00478793          	add	a5,a5,4
   17f9c:	ff17ece3          	bltu	a5,a7,17f94 <__multiply+0x74>
   17fa0:	018a0813          	add	a6,s4,24
   17fa4:	00299e13          	sll	t3,s3,0x2
   17fa8:	01848e93          	add	t4,s1,24
   17fac:	00291593          	sll	a1,s2,0x2
   17fb0:	01c80e33          	add	t3,a6,t3
   17fb4:	00be85b3          	add	a1,t4,a1
   17fb8:	13c87a63          	bgeu	a6,t3,180ec <__multiply+0x1cc>
   17fbc:	01948793          	add	a5,s1,25
   17fc0:	00400f13          	li	t5,4
   17fc4:	16f5f463          	bgeu	a1,a5,1812c <__multiply+0x20c>
   17fc8:	000106b7          	lui	a3,0x10
   17fcc:	fff68693          	add	a3,a3,-1 # ffff <exit-0xe9>
   17fd0:	0180006f          	j	17fe8 <__multiply+0xc8>
   17fd4:	010fdf9b          	srlw	t6,t6,0x10
   17fd8:	080f9a63          	bnez	t6,1806c <__multiply+0x14c>
   17fdc:	00480813          	add	a6,a6,4
   17fe0:	00430313          	add	t1,t1,4
   17fe4:	11c87463          	bgeu	a6,t3,180ec <__multiply+0x1cc>
   17fe8:	00082f83          	lw	t6,0(a6)
   17fec:	00dff3b3          	and	t2,t6,a3
   17ff0:	fe0382e3          	beqz	t2,17fd4 <__multiply+0xb4>
   17ff4:	00030293          	mv	t0,t1
   17ff8:	000e8f93          	mv	t6,t4
   17ffc:	00000493          	li	s1,0
   18000:	000fa783          	lw	a5,0(t6)
   18004:	0002a603          	lw	a2,0(t0) # 109dc <memset+0xb4>
   18008:	00428293          	add	t0,t0,4
   1800c:	00d7f733          	and	a4,a5,a3
   18010:	0277073b          	mulw	a4,a4,t2
   18014:	0107d79b          	srlw	a5,a5,0x10
   18018:	00d67933          	and	s2,a2,a3
   1801c:	0106561b          	srlw	a2,a2,0x10
   18020:	004f8f93          	add	t6,t6,4
   18024:	027787bb          	mulw	a5,a5,t2
   18028:	0127073b          	addw	a4,a4,s2
   1802c:	0097073b          	addw	a4,a4,s1
   18030:	0107549b          	srlw	s1,a4,0x10
   18034:	00e6f733          	and	a4,a3,a4
   18038:	00c787bb          	addw	a5,a5,a2
   1803c:	009787bb          	addw	a5,a5,s1
   18040:	0107961b          	sllw	a2,a5,0x10
   18044:	00c76733          	or	a4,a4,a2
   18048:	fee2ae23          	sw	a4,-4(t0)
   1804c:	0107d49b          	srlw	s1,a5,0x10
   18050:	0107d71b          	srlw	a4,a5,0x10
   18054:	fabfe6e3          	bltu	t6,a1,18000 <__multiply+0xe0>
   18058:	01e307b3          	add	a5,t1,t5
   1805c:	00e7a023          	sw	a4,0(a5)
   18060:	00082f83          	lw	t6,0(a6)
   18064:	010fdf9b          	srlw	t6,t6,0x10
   18068:	f60f8ae3          	beqz	t6,17fdc <__multiply+0xbc>
   1806c:	00032703          	lw	a4,0(t1)
   18070:	00030293          	mv	t0,t1
   18074:	000e8613          	mv	a2,t4
   18078:	00070393          	mv	t2,a4
   1807c:	00000493          	li	s1,0
   18080:	00062783          	lw	a5,0(a2)
   18084:	0103d99b          	srlw	s3,t2,0x10
   18088:	00d77733          	and	a4,a4,a3
   1808c:	00d7f7b3          	and	a5,a5,a3
   18090:	03f787bb          	mulw	a5,a5,t6
   18094:	0042a383          	lw	t2,4(t0)
   18098:	00428293          	add	t0,t0,4
   1809c:	00460613          	add	a2,a2,4
   180a0:	00d3f933          	and	s2,t2,a3
   180a4:	009787bb          	addw	a5,a5,s1
   180a8:	013787bb          	addw	a5,a5,s3
   180ac:	0107949b          	sllw	s1,a5,0x10
   180b0:	00976733          	or	a4,a4,s1
   180b4:	fee2ae23          	sw	a4,-4(t0)
   180b8:	ffe65703          	lhu	a4,-2(a2)
   180bc:	0107d79b          	srlw	a5,a5,0x10
   180c0:	03f7073b          	mulw	a4,a4,t6
   180c4:	0127073b          	addw	a4,a4,s2
   180c8:	00f707bb          	addw	a5,a4,a5
   180cc:	0007871b          	sext.w	a4,a5
   180d0:	0107d49b          	srlw	s1,a5,0x10
   180d4:	fab666e3          	bltu	a2,a1,18080 <__multiply+0x160>
   180d8:	01e30733          	add	a4,t1,t5
   180dc:	00f72023          	sw	a5,0(a4)
   180e0:	00480813          	add	a6,a6,4
   180e4:	00430313          	add	t1,t1,4
   180e8:	f1c860e3          	bltu	a6,t3,17fe8 <__multiply+0xc8>
   180ec:	00804863          	bgtz	s0,180fc <__multiply+0x1dc>
   180f0:	0180006f          	j	18108 <__multiply+0x1e8>
   180f4:	fff4041b          	addw	s0,s0,-1
   180f8:	00040863          	beqz	s0,18108 <__multiply+0x1e8>
   180fc:	ffc8a783          	lw	a5,-4(a7)
   18100:	ffc88893          	add	a7,a7,-4
   18104:	fe0788e3          	beqz	a5,180f4 <__multiply+0x1d4>
   18108:	02813083          	ld	ra,40(sp)
   1810c:	00852a23          	sw	s0,20(a0)
   18110:	02013403          	ld	s0,32(sp)
   18114:	01813483          	ld	s1,24(sp)
   18118:	01013903          	ld	s2,16(sp)
   1811c:	00813983          	ld	s3,8(sp)
   18120:	00013a03          	ld	s4,0(sp)
   18124:	03010113          	add	sp,sp,48
   18128:	00008067          	ret
   1812c:	409587b3          	sub	a5,a1,s1
   18130:	fe778793          	add	a5,a5,-25
   18134:	ffc7f793          	and	a5,a5,-4
   18138:	00478f13          	add	t5,a5,4
   1813c:	e8dff06f          	j	17fc8 <__multiply+0xa8>
   18140:	000236b7          	lui	a3,0x23
   18144:	00023537          	lui	a0,0x23
   18148:	bd868693          	add	a3,a3,-1064 # 22bd8 <__clz_tab+0x190>
   1814c:	00000613          	li	a2,0
   18150:	15d00593          	li	a1,349
   18154:	c6050513          	add	a0,a0,-928 # 22c60 <__clz_tab+0x218>
   18158:	469040ef          	jal	1cdc0 <__assert_func>

000000000001815c <__pow5mult>:
   1815c:	fd010113          	add	sp,sp,-48
   18160:	02813023          	sd	s0,32(sp)
   18164:	01213823          	sd	s2,16(sp)
   18168:	01313423          	sd	s3,8(sp)
   1816c:	02113423          	sd	ra,40(sp)
   18170:	00913c23          	sd	s1,24(sp)
   18174:	00367793          	and	a5,a2,3
   18178:	00060413          	mv	s0,a2
   1817c:	00050993          	mv	s3,a0
   18180:	00058913          	mv	s2,a1
   18184:	0a079a63          	bnez	a5,18238 <__pow5mult+0xdc>
   18188:	40245413          	sra	s0,s0,0x2
   1818c:	06040663          	beqz	s0,181f8 <__pow5mult+0x9c>
   18190:	0709b483          	ld	s1,112(s3)
   18194:	0c048663          	beqz	s1,18260 <__pow5mult+0x104>
   18198:	00147793          	and	a5,s0,1
   1819c:	02079063          	bnez	a5,181bc <__pow5mult+0x60>
   181a0:	40145413          	sra	s0,s0,0x1
   181a4:	04040a63          	beqz	s0,181f8 <__pow5mult+0x9c>
   181a8:	0004b503          	ld	a0,0(s1)
   181ac:	06050663          	beqz	a0,18218 <__pow5mult+0xbc>
   181b0:	00050493          	mv	s1,a0
   181b4:	00147793          	and	a5,s0,1
   181b8:	fe0784e3          	beqz	a5,181a0 <__pow5mult+0x44>
   181bc:	00048613          	mv	a2,s1
   181c0:	00090593          	mv	a1,s2
   181c4:	00098513          	mv	a0,s3
   181c8:	d59ff0ef          	jal	17f20 <__multiply>
   181cc:	02090063          	beqz	s2,181ec <__pow5mult+0x90>
   181d0:	00892703          	lw	a4,8(s2)
   181d4:	0789b783          	ld	a5,120(s3)
   181d8:	00371713          	sll	a4,a4,0x3
   181dc:	00e787b3          	add	a5,a5,a4
   181e0:	0007b703          	ld	a4,0(a5)
   181e4:	00e93023          	sd	a4,0(s2)
   181e8:	0127b023          	sd	s2,0(a5)
   181ec:	40145413          	sra	s0,s0,0x1
   181f0:	00050913          	mv	s2,a0
   181f4:	fa041ae3          	bnez	s0,181a8 <__pow5mult+0x4c>
   181f8:	02813083          	ld	ra,40(sp)
   181fc:	02013403          	ld	s0,32(sp)
   18200:	01813483          	ld	s1,24(sp)
   18204:	00813983          	ld	s3,8(sp)
   18208:	00090513          	mv	a0,s2
   1820c:	01013903          	ld	s2,16(sp)
   18210:	03010113          	add	sp,sp,48
   18214:	00008067          	ret
   18218:	00048613          	mv	a2,s1
   1821c:	00048593          	mv	a1,s1
   18220:	00098513          	mv	a0,s3
   18224:	cfdff0ef          	jal	17f20 <__multiply>
   18228:	00a4b023          	sd	a0,0(s1)
   1822c:	00053023          	sd	zero,0(a0)
   18230:	00050493          	mv	s1,a0
   18234:	f81ff06f          	j	181b4 <__pow5mult+0x58>
   18238:	fff7879b          	addw	a5,a5,-1
   1823c:	00023737          	lui	a4,0x23
   18240:	1b870713          	add	a4,a4,440 # 231b8 <p05.0>
   18244:	00279793          	sll	a5,a5,0x2
   18248:	00f707b3          	add	a5,a4,a5
   1824c:	0007a603          	lw	a2,0(a5)
   18250:	00000693          	li	a3,0
   18254:	815ff0ef          	jal	17a68 <__multadd>
   18258:	00050913          	mv	s2,a0
   1825c:	f2dff06f          	j	18188 <__pow5mult+0x2c>
   18260:	00100593          	li	a1,1
   18264:	00098513          	mv	a0,s3
   18268:	f30ff0ef          	jal	17998 <_Balloc>
   1826c:	00050493          	mv	s1,a0
   18270:	02050063          	beqz	a0,18290 <__pow5mult+0x134>
   18274:	27100793          	li	a5,625
   18278:	00f52c23          	sw	a5,24(a0)
   1827c:	00100793          	li	a5,1
   18280:	00f52a23          	sw	a5,20(a0)
   18284:	06a9b823          	sd	a0,112(s3)
   18288:	00053023          	sd	zero,0(a0)
   1828c:	f0dff06f          	j	18198 <__pow5mult+0x3c>
   18290:	000236b7          	lui	a3,0x23
   18294:	00023537          	lui	a0,0x23
   18298:	bd868693          	add	a3,a3,-1064 # 22bd8 <__clz_tab+0x190>
   1829c:	00000613          	li	a2,0
   182a0:	14000593          	li	a1,320
   182a4:	c6050513          	add	a0,a0,-928 # 22c60 <__clz_tab+0x218>
   182a8:	319040ef          	jal	1cdc0 <__assert_func>

00000000000182ac <__lshift>:
   182ac:	fc010113          	add	sp,sp,-64
   182b0:	02813823          	sd	s0,48(sp)
   182b4:	0145a403          	lw	s0,20(a1)
   182b8:	00c5a783          	lw	a5,12(a1)
   182bc:	01513423          	sd	s5,8(sp)
   182c0:	40565a9b          	sraw	s5,a2,0x5
   182c4:	008a843b          	addw	s0,s5,s0
   182c8:	02913423          	sd	s1,40(sp)
   182cc:	03213023          	sd	s2,32(sp)
   182d0:	01313c23          	sd	s3,24(sp)
   182d4:	01413823          	sd	s4,16(sp)
   182d8:	01613023          	sd	s6,0(sp)
   182dc:	02113c23          	sd	ra,56(sp)
   182e0:	0014091b          	addw	s2,s0,1
   182e4:	00058493          	mv	s1,a1
   182e8:	00060a13          	mv	s4,a2
   182ec:	0085a583          	lw	a1,8(a1)
   182f0:	00050993          	mv	s3,a0
   182f4:	40565b13          	sra	s6,a2,0x5
   182f8:	0127d863          	bge	a5,s2,18308 <__lshift+0x5c>
   182fc:	0017979b          	sllw	a5,a5,0x1
   18300:	0015859b          	addw	a1,a1,1
   18304:	ff27cce3          	blt	a5,s2,182fc <__lshift+0x50>
   18308:	00098513          	mv	a0,s3
   1830c:	e8cff0ef          	jal	17998 <_Balloc>
   18310:	12050263          	beqz	a0,18434 <__lshift+0x188>
   18314:	01850713          	add	a4,a0,24
   18318:	03605663          	blez	s6,18344 <__lshift+0x98>
   1831c:	006a869b          	addw	a3,s5,6
   18320:	00269693          	sll	a3,a3,0x2
   18324:	00d506b3          	add	a3,a0,a3
   18328:	00070793          	mv	a5,a4
   1832c:	00478793          	add	a5,a5,4
   18330:	fe07ae23          	sw	zero,-4(a5)
   18334:	fef69ce3          	bne	a3,a5,1832c <__lshift+0x80>
   18338:	020a9793          	sll	a5,s5,0x20
   1833c:	01e7da93          	srl	s5,a5,0x1e
   18340:	01570733          	add	a4,a4,s5
   18344:	0144a883          	lw	a7,20(s1)
   18348:	01848793          	add	a5,s1,24
   1834c:	01fa7613          	and	a2,s4,31
   18350:	00289893          	sll	a7,a7,0x2
   18354:	011788b3          	add	a7,a5,a7
   18358:	0a060863          	beqz	a2,18408 <__lshift+0x15c>
   1835c:	02000593          	li	a1,32
   18360:	40c585bb          	subw	a1,a1,a2
   18364:	00070313          	mv	t1,a4
   18368:	00000693          	li	a3,0
   1836c:	0007a803          	lw	a6,0(a5)
   18370:	00430313          	add	t1,t1,4
   18374:	00478793          	add	a5,a5,4
   18378:	00c8183b          	sllw	a6,a6,a2
   1837c:	0106e6b3          	or	a3,a3,a6
   18380:	fed32e23          	sw	a3,-4(t1)
   18384:	ffc7a803          	lw	a6,-4(a5)
   18388:	00b856bb          	srlw	a3,a6,a1
   1838c:	00068813          	mv	a6,a3
   18390:	fd17eee3          	bltu	a5,a7,1836c <__lshift+0xc0>
   18394:	01948793          	add	a5,s1,25
   18398:	00400613          	li	a2,4
   1839c:	00f8ea63          	bltu	a7,a5,183b0 <__lshift+0x104>
   183a0:	409887b3          	sub	a5,a7,s1
   183a4:	fe778793          	add	a5,a5,-25
   183a8:	ffc7f793          	and	a5,a5,-4
   183ac:	00478613          	add	a2,a5,4
   183b0:	00c70733          	add	a4,a4,a2
   183b4:	01072023          	sw	a6,0(a4)
   183b8:	00069463          	bnez	a3,183c0 <__lshift+0x114>
   183bc:	00040913          	mv	s2,s0
   183c0:	0084a703          	lw	a4,8(s1)
   183c4:	0789b783          	ld	a5,120(s3)
   183c8:	03813083          	ld	ra,56(sp)
   183cc:	00371713          	sll	a4,a4,0x3
   183d0:	00e787b3          	add	a5,a5,a4
   183d4:	0007b703          	ld	a4,0(a5)
   183d8:	01252a23          	sw	s2,20(a0)
   183dc:	03013403          	ld	s0,48(sp)
   183e0:	00e4b023          	sd	a4,0(s1)
   183e4:	0097b023          	sd	s1,0(a5)
   183e8:	02013903          	ld	s2,32(sp)
   183ec:	02813483          	ld	s1,40(sp)
   183f0:	01813983          	ld	s3,24(sp)
   183f4:	01013a03          	ld	s4,16(sp)
   183f8:	00813a83          	ld	s5,8(sp)
   183fc:	00013b03          	ld	s6,0(sp)
   18400:	04010113          	add	sp,sp,64
   18404:	00008067          	ret
   18408:	0007a683          	lw	a3,0(a5)
   1840c:	00478793          	add	a5,a5,4
   18410:	00470713          	add	a4,a4,4
   18414:	fed72e23          	sw	a3,-4(a4)
   18418:	fb17f2e3          	bgeu	a5,a7,183bc <__lshift+0x110>
   1841c:	0007a683          	lw	a3,0(a5)
   18420:	00478793          	add	a5,a5,4
   18424:	00470713          	add	a4,a4,4
   18428:	fed72e23          	sw	a3,-4(a4)
   1842c:	fd17eee3          	bltu	a5,a7,18408 <__lshift+0x15c>
   18430:	f8dff06f          	j	183bc <__lshift+0x110>
   18434:	000236b7          	lui	a3,0x23
   18438:	00023537          	lui	a0,0x23
   1843c:	bd868693          	add	a3,a3,-1064 # 22bd8 <__clz_tab+0x190>
   18440:	00000613          	li	a2,0
   18444:	1d900593          	li	a1,473
   18448:	c6050513          	add	a0,a0,-928 # 22c60 <__clz_tab+0x218>
   1844c:	175040ef          	jal	1cdc0 <__assert_func>

0000000000018450 <__mcmp>:
   18450:	0145a783          	lw	a5,20(a1)
   18454:	00050813          	mv	a6,a0
   18458:	01452503          	lw	a0,20(a0)
   1845c:	40f5053b          	subw	a0,a0,a5
   18460:	04051263          	bnez	a0,184a4 <__mcmp+0x54>
   18464:	00279793          	sll	a5,a5,0x2
   18468:	01880813          	add	a6,a6,24
   1846c:	01858593          	add	a1,a1,24
   18470:	00f80733          	add	a4,a6,a5
   18474:	00f587b3          	add	a5,a1,a5
   18478:	0080006f          	j	18480 <__mcmp+0x30>
   1847c:	02e87463          	bgeu	a6,a4,184a4 <__mcmp+0x54>
   18480:	ffc72603          	lw	a2,-4(a4)
   18484:	ffc7a683          	lw	a3,-4(a5)
   18488:	ffc70713          	add	a4,a4,-4
   1848c:	ffc78793          	add	a5,a5,-4
   18490:	fed606e3          	beq	a2,a3,1847c <__mcmp+0x2c>
   18494:	00100513          	li	a0,1
   18498:	00d67663          	bgeu	a2,a3,184a4 <__mcmp+0x54>
   1849c:	fff00513          	li	a0,-1
   184a0:	00008067          	ret
   184a4:	00008067          	ret

00000000000184a8 <__mdiff>:
   184a8:	fe010113          	add	sp,sp,-32
   184ac:	01462783          	lw	a5,20(a2)
   184b0:	01213023          	sd	s2,0(sp)
   184b4:	0145a903          	lw	s2,20(a1)
   184b8:	00813823          	sd	s0,16(sp)
   184bc:	00913423          	sd	s1,8(sp)
   184c0:	00113c23          	sd	ra,24(sp)
   184c4:	40f9093b          	subw	s2,s2,a5
   184c8:	00058493          	mv	s1,a1
   184cc:	00060413          	mv	s0,a2
   184d0:	04091663          	bnez	s2,1851c <__mdiff+0x74>
   184d4:	00279693          	sll	a3,a5,0x2
   184d8:	01858593          	add	a1,a1,24
   184dc:	01860713          	add	a4,a2,24
   184e0:	00d587b3          	add	a5,a1,a3
   184e4:	00d70733          	add	a4,a4,a3
   184e8:	0080006f          	j	184f0 <__mdiff+0x48>
   184ec:	18f5fa63          	bgeu	a1,a5,18680 <__mdiff+0x1d8>
   184f0:	ffc7a603          	lw	a2,-4(a5)
   184f4:	ffc72683          	lw	a3,-4(a4)
   184f8:	ffc78793          	add	a5,a5,-4
   184fc:	ffc70713          	add	a4,a4,-4
   18500:	fed606e3          	beq	a2,a3,184ec <__mdiff+0x44>
   18504:	02d67063          	bgeu	a2,a3,18524 <__mdiff+0x7c>
   18508:	00048793          	mv	a5,s1
   1850c:	00100913          	li	s2,1
   18510:	00040493          	mv	s1,s0
   18514:	00078413          	mv	s0,a5
   18518:	00c0006f          	j	18524 <__mdiff+0x7c>
   1851c:	fe0946e3          	bltz	s2,18508 <__mdiff+0x60>
   18520:	00000913          	li	s2,0
   18524:	0084a583          	lw	a1,8(s1)
   18528:	c70ff0ef          	jal	17998 <_Balloc>
   1852c:	1a050e63          	beqz	a0,186e8 <__mdiff+0x240>
   18530:	0144a303          	lw	t1,20(s1)
   18534:	01442f03          	lw	t5,20(s0)
   18538:	01848293          	add	t0,s1,24
   1853c:	00231e13          	sll	t3,t1,0x2
   18540:	01840813          	add	a6,s0,24
   18544:	002f1f13          	sll	t5,t5,0x2
   18548:	01850f93          	add	t6,a0,24
   1854c:	000108b7          	lui	a7,0x10
   18550:	01252823          	sw	s2,16(a0)
   18554:	01c28e33          	add	t3,t0,t3
   18558:	01e80f33          	add	t5,a6,t5
   1855c:	000f8613          	mv	a2,t6
   18560:	00028e93          	mv	t4,t0
   18564:	00000593          	li	a1,0
   18568:	fff88893          	add	a7,a7,-1 # ffff <exit-0xe9>
   1856c:	000ea703          	lw	a4,0(t4)
   18570:	00082683          	lw	a3,0(a6)
   18574:	00460613          	add	a2,a2,4
   18578:	011777b3          	and	a5,a4,a7
   1857c:	0116f3b3          	and	t2,a3,a7
   18580:	407787bb          	subw	a5,a5,t2
   18584:	00b787bb          	addw	a5,a5,a1
   18588:	0106d69b          	srlw	a3,a3,0x10
   1858c:	0107571b          	srlw	a4,a4,0x10
   18590:	40d7073b          	subw	a4,a4,a3
   18594:	4107d69b          	sraw	a3,a5,0x10
   18598:	00d7073b          	addw	a4,a4,a3
   1859c:	00f8f7b3          	and	a5,a7,a5
   185a0:	0107169b          	sllw	a3,a4,0x10
   185a4:	00d7e7b3          	or	a5,a5,a3
   185a8:	0007879b          	sext.w	a5,a5
   185ac:	00480813          	add	a6,a6,4
   185b0:	fef62e23          	sw	a5,-4(a2)
   185b4:	004e8e93          	add	t4,t4,4
   185b8:	4107559b          	sraw	a1,a4,0x10
   185bc:	fbe868e3          	bltu	a6,t5,1856c <__mdiff+0xc4>
   185c0:	408f0733          	sub	a4,t5,s0
   185c4:	fe770713          	add	a4,a4,-25
   185c8:	01940413          	add	s0,s0,25
   185cc:	00275e93          	srl	t4,a4,0x2
   185d0:	00400713          	li	a4,4
   185d4:	008f6663          	bltu	t5,s0,185e0 <__mdiff+0x138>
   185d8:	001e8713          	add	a4,t4,1
   185dc:	00271713          	sll	a4,a4,0x2
   185e0:	00e282b3          	add	t0,t0,a4
   185e4:	00ef8833          	add	a6,t6,a4
   185e8:	000108b7          	lui	a7,0x10
   185ec:	00080613          	mv	a2,a6
   185f0:	00028693          	mv	a3,t0
   185f4:	fff88893          	add	a7,a7,-1 # ffff <exit-0xe9>
   185f8:	0bc2fc63          	bgeu	t0,t3,186b0 <__mdiff+0x208>
   185fc:	0006a783          	lw	a5,0(a3)
   18600:	00058e9b          	sext.w	t4,a1
   18604:	00460613          	add	a2,a2,4
   18608:	0117f733          	and	a4,a5,a7
   1860c:	00b7073b          	addw	a4,a4,a1
   18610:	4107571b          	sraw	a4,a4,0x10
   18614:	0107d59b          	srlw	a1,a5,0x10
   18618:	00b7073b          	addw	a4,a4,a1
   1861c:	01d787bb          	addw	a5,a5,t4
   18620:	0107159b          	sllw	a1,a4,0x10
   18624:	0117f7b3          	and	a5,a5,a7
   18628:	00b7e7b3          	or	a5,a5,a1
   1862c:	0007879b          	sext.w	a5,a5
   18630:	00468693          	add	a3,a3,4
   18634:	fef62e23          	sw	a5,-4(a2)
   18638:	4107559b          	sraw	a1,a4,0x10
   1863c:	fdc6e0e3          	bltu	a3,t3,185fc <__mdiff+0x154>
   18640:	fffe0e13          	add	t3,t3,-1
   18644:	405e0e33          	sub	t3,t3,t0
   18648:	ffce7e13          	and	t3,t3,-4
   1864c:	01c80733          	add	a4,a6,t3
   18650:	00079a63          	bnez	a5,18664 <__mdiff+0x1bc>
   18654:	ffc72783          	lw	a5,-4(a4)
   18658:	fff3031b          	addw	t1,t1,-1
   1865c:	ffc70713          	add	a4,a4,-4
   18660:	fe078ae3          	beqz	a5,18654 <__mdiff+0x1ac>
   18664:	01813083          	ld	ra,24(sp)
   18668:	01013403          	ld	s0,16(sp)
   1866c:	00652a23          	sw	t1,20(a0)
   18670:	00813483          	ld	s1,8(sp)
   18674:	00013903          	ld	s2,0(sp)
   18678:	02010113          	add	sp,sp,32
   1867c:	00008067          	ret
   18680:	00000593          	li	a1,0
   18684:	b14ff0ef          	jal	17998 <_Balloc>
   18688:	04050263          	beqz	a0,186cc <__mdiff+0x224>
   1868c:	01813083          	ld	ra,24(sp)
   18690:	01013403          	ld	s0,16(sp)
   18694:	00100793          	li	a5,1
   18698:	00f52a23          	sw	a5,20(a0)
   1869c:	00052c23          	sw	zero,24(a0)
   186a0:	00813483          	ld	s1,8(sp)
   186a4:	00013903          	ld	s2,0(sp)
   186a8:	02010113          	add	sp,sp,32
   186ac:	00008067          	ret
   186b0:	00000713          	li	a4,0
   186b4:	008f7663          	bgeu	t5,s0,186c0 <__mdiff+0x218>
   186b8:	00ef8733          	add	a4,t6,a4
   186bc:	f95ff06f          	j	18650 <__mdiff+0x1a8>
   186c0:	002e9713          	sll	a4,t4,0x2
   186c4:	00ef8733          	add	a4,t6,a4
   186c8:	f89ff06f          	j	18650 <__mdiff+0x1a8>
   186cc:	000236b7          	lui	a3,0x23
   186d0:	00023537          	lui	a0,0x23
   186d4:	bd868693          	add	a3,a3,-1064 # 22bd8 <__clz_tab+0x190>
   186d8:	00000613          	li	a2,0
   186dc:	23200593          	li	a1,562
   186e0:	c6050513          	add	a0,a0,-928 # 22c60 <__clz_tab+0x218>
   186e4:	6dc040ef          	jal	1cdc0 <__assert_func>
   186e8:	000236b7          	lui	a3,0x23
   186ec:	00023537          	lui	a0,0x23
   186f0:	bd868693          	add	a3,a3,-1064 # 22bd8 <__clz_tab+0x190>
   186f4:	00000613          	li	a2,0
   186f8:	24000593          	li	a1,576
   186fc:	c6050513          	add	a0,a0,-928 # 22c60 <__clz_tab+0x218>
   18700:	6c0040ef          	jal	1cdc0 <__assert_func>

0000000000018704 <__ulp>:
   18704:	7ff007b7          	lui	a5,0x7ff00
   18708:	02055513          	srl	a0,a0,0x20
   1870c:	00f57533          	and	a0,a0,a5
   18710:	fcc007b7          	lui	a5,0xfcc00
   18714:	00a7873b          	addw	a4,a5,a0
   18718:	00000513          	li	a0,0
   1871c:	00e05c63          	blez	a4,18734 <__ulp+0x30>
   18720:	02051513          	sll	a0,a0,0x20
   18724:	02071713          	sll	a4,a4,0x20
   18728:	02055513          	srl	a0,a0,0x20
   1872c:	00e56533          	or	a0,a0,a4
   18730:	00008067          	ret
   18734:	40e007bb          	negw	a5,a4
   18738:	4147d69b          	sraw	a3,a5,0x14
   1873c:	01300713          	li	a4,19
   18740:	02d74263          	blt	a4,a3,18764 <__ulp+0x60>
   18744:	00080737          	lui	a4,0x80
   18748:	00000513          	li	a0,0
   1874c:	40d7573b          	sraw	a4,a4,a3
   18750:	02051513          	sll	a0,a0,0x20
   18754:	02071713          	sll	a4,a4,0x20
   18758:	02055513          	srl	a0,a0,0x20
   1875c:	00e56533          	or	a0,a0,a4
   18760:	00008067          	ret
   18764:	fec6879b          	addw	a5,a3,-20
   18768:	01e00713          	li	a4,30
   1876c:	00100513          	li	a0,1
   18770:	00f74663          	blt	a4,a5,1877c <__ulp+0x78>
   18774:	80000537          	lui	a0,0x80000
   18778:	00f5553b          	srlw	a0,a0,a5
   1877c:	00000713          	li	a4,0
   18780:	02051513          	sll	a0,a0,0x20
   18784:	02071713          	sll	a4,a4,0x20
   18788:	02055513          	srl	a0,a0,0x20
   1878c:	00e56533          	or	a0,a0,a4
   18790:	00008067          	ret

0000000000018794 <__b2d>:
   18794:	fd010113          	add	sp,sp,-48
   18798:	00913c23          	sd	s1,24(sp)
   1879c:	01452483          	lw	s1,20(a0) # ffffffff80000014 <__BSS_END__+0xffffffff7ffda494>
   187a0:	02813023          	sd	s0,32(sp)
   187a4:	01850413          	add	s0,a0,24
   187a8:	00249493          	sll	s1,s1,0x2
   187ac:	009404b3          	add	s1,s0,s1
   187b0:	01213823          	sd	s2,16(sp)
   187b4:	ffc4a903          	lw	s2,-4(s1)
   187b8:	01313423          	sd	s3,8(sp)
   187bc:	01413023          	sd	s4,0(sp)
   187c0:	00090513          	mv	a0,s2
   187c4:	00058993          	mv	s3,a1
   187c8:	02113423          	sd	ra,40(sp)
   187cc:	d44ff0ef          	jal	17d10 <__hi0bits>
   187d0:	02000693          	li	a3,32
   187d4:	40a687bb          	subw	a5,a3,a0
   187d8:	00f9a023          	sw	a5,0(s3)
   187dc:	00a00793          	li	a5,10
   187e0:	ffc48a13          	add	s4,s1,-4
   187e4:	00050713          	mv	a4,a0
   187e8:	0aa7dc63          	bge	a5,a0,188a0 <__b2d+0x10c>
   187ec:	ff55079b          	addw	a5,a0,-11
   187f0:	05447663          	bgeu	s0,s4,1883c <__b2d+0xa8>
   187f4:	ff84a703          	lw	a4,-8(s1)
   187f8:	06078463          	beqz	a5,18860 <__b2d+0xcc>
   187fc:	40f686bb          	subw	a3,a3,a5
   18800:	00d7563b          	srlw	a2,a4,a3
   18804:	00f9193b          	sllw	s2,s2,a5
   18808:	00c96933          	or	s2,s2,a2
   1880c:	3ff00637          	lui	a2,0x3ff00
   18810:	00c96933          	or	s2,s2,a2
   18814:	00f7163b          	sllw	a2,a4,a5
   18818:	ff848793          	add	a5,s1,-8
   1881c:	02091513          	sll	a0,s2,0x20
   18820:	0006071b          	sext.w	a4,a2
   18824:	04f47463          	bgeu	s0,a5,1886c <__b2d+0xd8>
   18828:	ff44a703          	lw	a4,-12(s1)
   1882c:	00d7573b          	srlw	a4,a4,a3
   18830:	00c76733          	or	a4,a4,a2
   18834:	0007071b          	sext.w	a4,a4
   18838:	0340006f          	j	1886c <__b2d+0xd8>
   1883c:	00b00693          	li	a3,11
   18840:	00d50e63          	beq	a0,a3,1885c <__b2d+0xc8>
   18844:	00f9153b          	sllw	a0,s2,a5
   18848:	3ff007b7          	lui	a5,0x3ff00
   1884c:	00f56533          	or	a0,a0,a5
   18850:	02051513          	sll	a0,a0,0x20
   18854:	00000713          	li	a4,0
   18858:	0140006f          	j	1886c <__b2d+0xd8>
   1885c:	00000713          	li	a4,0
   18860:	3ff00537          	lui	a0,0x3ff00
   18864:	00a96533          	or	a0,s2,a0
   18868:	02051513          	sll	a0,a0,0x20
   1886c:	02813083          	ld	ra,40(sp)
   18870:	02013403          	ld	s0,32(sp)
   18874:	02055513          	srl	a0,a0,0x20
   18878:	02071713          	sll	a4,a4,0x20
   1887c:	02075713          	srl	a4,a4,0x20
   18880:	02051513          	sll	a0,a0,0x20
   18884:	01813483          	ld	s1,24(sp)
   18888:	01013903          	ld	s2,16(sp)
   1888c:	00813983          	ld	s3,8(sp)
   18890:	00013a03          	ld	s4,0(sp)
   18894:	00e56533          	or	a0,a0,a4
   18898:	03010113          	add	sp,sp,48
   1889c:	00008067          	ret
   188a0:	00b00693          	li	a3,11
   188a4:	40a686bb          	subw	a3,a3,a0
   188a8:	00d957bb          	srlw	a5,s2,a3
   188ac:	3ff00637          	lui	a2,0x3ff00
   188b0:	00c7e7b3          	or	a5,a5,a2
   188b4:	02079513          	sll	a0,a5,0x20
   188b8:	00000793          	li	a5,0
   188bc:	01447663          	bgeu	s0,s4,188c8 <__b2d+0x134>
   188c0:	ff84a783          	lw	a5,-8(s1)
   188c4:	00d7d7bb          	srlw	a5,a5,a3
   188c8:	0157071b          	addw	a4,a4,21 # 80015 <__BSS_END__+0x5a495>
   188cc:	00e9173b          	sllw	a4,s2,a4
   188d0:	00e7e733          	or	a4,a5,a4
   188d4:	0007071b          	sext.w	a4,a4
   188d8:	f95ff06f          	j	1886c <__b2d+0xd8>

00000000000188dc <__d2b>:
   188dc:	fc010113          	add	sp,sp,-64
   188e0:	02813823          	sd	s0,48(sp)
   188e4:	00058413          	mv	s0,a1
   188e8:	00100593          	li	a1,1
   188ec:	03213023          	sd	s2,32(sp)
   188f0:	01413823          	sd	s4,16(sp)
   188f4:	02113c23          	sd	ra,56(sp)
   188f8:	02913423          	sd	s1,40(sp)
   188fc:	01313c23          	sd	s3,24(sp)
   18900:	00060a13          	mv	s4,a2
   18904:	00068913          	mv	s2,a3
   18908:	890ff0ef          	jal	17998 <_Balloc>
   1890c:	10050063          	beqz	a0,18a0c <__d2b+0x130>
   18910:	42045793          	sra	a5,s0,0x20
   18914:	0147d99b          	srlw	s3,a5,0x14
   18918:	7ff9f993          	and	s3,s3,2047
   1891c:	02c79793          	sll	a5,a5,0x2c
   18920:	00050493          	mv	s1,a0
   18924:	02c7d793          	srl	a5,a5,0x2c
   18928:	00098663          	beqz	s3,18934 <__d2b+0x58>
   1892c:	00100737          	lui	a4,0x100
   18930:	00e7e7b3          	or	a5,a5,a4
   18934:	00f12623          	sw	a5,12(sp)
   18938:	0004041b          	sext.w	s0,s0
   1893c:	06041063          	bnez	s0,1899c <__d2b+0xc0>
   18940:	00c10513          	add	a0,sp,12
   18944:	c48ff0ef          	jal	17d8c <__lo0bits>
   18948:	00c12783          	lw	a5,12(sp)
   1894c:	00100413          	li	s0,1
   18950:	0084aa23          	sw	s0,20(s1)
   18954:	00f4ac23          	sw	a5,24(s1)
   18958:	0205051b          	addw	a0,a0,32 # 3ff00020 <__BSS_END__+0x3feda4a0>
   1895c:	08098663          	beqz	s3,189e8 <__d2b+0x10c>
   18960:	bcd9899b          	addw	s3,s3,-1075
   18964:	00a989bb          	addw	s3,s3,a0
   18968:	03500413          	li	s0,53
   1896c:	013a2023          	sw	s3,0(s4)
   18970:	40a4053b          	subw	a0,s0,a0
   18974:	03813083          	ld	ra,56(sp)
   18978:	03013403          	ld	s0,48(sp)
   1897c:	00a92023          	sw	a0,0(s2)
   18980:	01813983          	ld	s3,24(sp)
   18984:	02013903          	ld	s2,32(sp)
   18988:	01013a03          	ld	s4,16(sp)
   1898c:	00048513          	mv	a0,s1
   18990:	02813483          	ld	s1,40(sp)
   18994:	04010113          	add	sp,sp,64
   18998:	00008067          	ret
   1899c:	00810513          	add	a0,sp,8
   189a0:	00812423          	sw	s0,8(sp)
   189a4:	be8ff0ef          	jal	17d8c <__lo0bits>
   189a8:	00c12783          	lw	a5,12(sp)
   189ac:	00812703          	lw	a4,8(sp)
   189b0:	02050063          	beqz	a0,189d0 <__d2b+0xf4>
   189b4:	02000693          	li	a3,32
   189b8:	40a686bb          	subw	a3,a3,a0
   189bc:	00d796bb          	sllw	a3,a5,a3
   189c0:	00d76733          	or	a4,a4,a3
   189c4:	00a7d7bb          	srlw	a5,a5,a0
   189c8:	0007071b          	sext.w	a4,a4
   189cc:	00f12623          	sw	a5,12(sp)
   189d0:	00f03433          	snez	s0,a5
   189d4:	00140413          	add	s0,s0,1
   189d8:	00e4ac23          	sw	a4,24(s1)
   189dc:	00f4ae23          	sw	a5,28(s1)
   189e0:	0084aa23          	sw	s0,20(s1)
   189e4:	f6099ee3          	bnez	s3,18960 <__d2b+0x84>
   189e8:	bce5051b          	addw	a0,a0,-1074
   189ec:	00241793          	sll	a5,s0,0x2
   189f0:	00aa2023          	sw	a0,0(s4)
   189f4:	00f487b3          	add	a5,s1,a5
   189f8:	0147a503          	lw	a0,20(a5) # 3ff00014 <__BSS_END__+0x3feda494>
   189fc:	0054141b          	sllw	s0,s0,0x5
   18a00:	b10ff0ef          	jal	17d10 <__hi0bits>
   18a04:	40a4053b          	subw	a0,s0,a0
   18a08:	f6dff06f          	j	18974 <__d2b+0x98>
   18a0c:	000236b7          	lui	a3,0x23
   18a10:	00023537          	lui	a0,0x23
   18a14:	bd868693          	add	a3,a3,-1064 # 22bd8 <__clz_tab+0x190>
   18a18:	00000613          	li	a2,0
   18a1c:	30a00593          	li	a1,778
   18a20:	c6050513          	add	a0,a0,-928 # 22c60 <__clz_tab+0x218>
   18a24:	39c040ef          	jal	1cdc0 <__assert_func>

0000000000018a28 <__ratio>:
   18a28:	fd010113          	add	sp,sp,-48
   18a2c:	00913c23          	sd	s1,24(sp)
   18a30:	00058493          	mv	s1,a1
   18a34:	00810593          	add	a1,sp,8
   18a38:	02113423          	sd	ra,40(sp)
   18a3c:	02813023          	sd	s0,32(sp)
   18a40:	01213823          	sd	s2,16(sp)
   18a44:	00050913          	mv	s2,a0
   18a48:	d4dff0ef          	jal	18794 <__b2d>
   18a4c:	00c10593          	add	a1,sp,12
   18a50:	00050413          	mv	s0,a0
   18a54:	00048513          	mv	a0,s1
   18a58:	d3dff0ef          	jal	18794 <__b2d>
   18a5c:	01492783          	lw	a5,20(s2)
   18a60:	0144a603          	lw	a2,20(s1)
   18a64:	00812703          	lw	a4,8(sp)
   18a68:	00c12683          	lw	a3,12(sp)
   18a6c:	40c787bb          	subw	a5,a5,a2
   18a70:	0057979b          	sllw	a5,a5,0x5
   18a74:	40d7073b          	subw	a4,a4,a3
   18a78:	00e7873b          	addw	a4,a5,a4
   18a7c:	00070793          	mv	a5,a4
   18a80:	00050593          	mv	a1,a0
   18a84:	04e05263          	blez	a4,18ac8 <__ratio+0xa0>
   18a88:	02045713          	srl	a4,s0,0x20
   18a8c:	0147979b          	sllw	a5,a5,0x14
   18a90:	00e787bb          	addw	a5,a5,a4
   18a94:	fff00713          	li	a4,-1
   18a98:	02075713          	srl	a4,a4,0x20
   18a9c:	02079793          	sll	a5,a5,0x20
   18aa0:	00877733          	and	a4,a4,s0
   18aa4:	00f76433          	or	s0,a4,a5
   18aa8:	00040513          	mv	a0,s0
   18aac:	6a4070ef          	jal	20150 <__divdf3>
   18ab0:	02813083          	ld	ra,40(sp)
   18ab4:	02013403          	ld	s0,32(sp)
   18ab8:	01813483          	ld	s1,24(sp)
   18abc:	01013903          	ld	s2,16(sp)
   18ac0:	03010113          	add	sp,sp,48
   18ac4:	00008067          	ret
   18ac8:	02055713          	srl	a4,a0,0x20
   18acc:	0147979b          	sllw	a5,a5,0x14
   18ad0:	40f707bb          	subw	a5,a4,a5
   18ad4:	fff00713          	li	a4,-1
   18ad8:	02075713          	srl	a4,a4,0x20
   18adc:	02079793          	sll	a5,a5,0x20
   18ae0:	00a775b3          	and	a1,a4,a0
   18ae4:	00f5e5b3          	or	a1,a1,a5
   18ae8:	fc1ff06f          	j	18aa8 <__ratio+0x80>

0000000000018aec <_mprec_log10>:
   18aec:	fe010113          	add	sp,sp,-32
   18af0:	00813823          	sd	s0,16(sp)
   18af4:	00113c23          	sd	ra,24(sp)
   18af8:	00913423          	sd	s1,8(sp)
   18afc:	01700793          	li	a5,23
   18b00:	00050413          	mv	s0,a0
   18b04:	02a7d863          	bge	a5,a0,18b34 <_mprec_log10+0x48>
   18b08:	7101b503          	ld	a0,1808(gp) # 25a90 <__SDATA_BEGIN__+0x10>
   18b0c:	7181b483          	ld	s1,1816(gp) # 25a98 <__SDATA_BEGIN__+0x18>
   18b10:	00048593          	mv	a1,s1
   18b14:	fff4041b          	addw	s0,s0,-1
   18b18:	395070ef          	jal	206ac <__muldf3>
   18b1c:	fe041ae3          	bnez	s0,18b10 <_mprec_log10+0x24>
   18b20:	01813083          	ld	ra,24(sp)
   18b24:	01013403          	ld	s0,16(sp)
   18b28:	00813483          	ld	s1,8(sp)
   18b2c:	02010113          	add	sp,sp,32
   18b30:	00008067          	ret
   18b34:	000237b7          	lui	a5,0x23
   18b38:	00351413          	sll	s0,a0,0x3
   18b3c:	21878793          	add	a5,a5,536 # 23218 <__mprec_tens>
   18b40:	01813083          	ld	ra,24(sp)
   18b44:	008787b3          	add	a5,a5,s0
   18b48:	01013403          	ld	s0,16(sp)
   18b4c:	0007b503          	ld	a0,0(a5)
   18b50:	00813483          	ld	s1,8(sp)
   18b54:	02010113          	add	sp,sp,32
   18b58:	00008067          	ret

0000000000018b5c <__copybits>:
   18b5c:	01462683          	lw	a3,20(a2) # 3ff00014 <__BSS_END__+0x3feda494>
   18b60:	fff5859b          	addw	a1,a1,-1
   18b64:	4055d59b          	sraw	a1,a1,0x5
   18b68:	0015859b          	addw	a1,a1,1
   18b6c:	01860793          	add	a5,a2,24
   18b70:	00269693          	sll	a3,a3,0x2
   18b74:	00259593          	sll	a1,a1,0x2
   18b78:	00d786b3          	add	a3,a5,a3
   18b7c:	00b505b3          	add	a1,a0,a1
   18b80:	02d7f863          	bgeu	a5,a3,18bb0 <__copybits+0x54>
   18b84:	00050713          	mv	a4,a0
   18b88:	0007a803          	lw	a6,0(a5)
   18b8c:	00478793          	add	a5,a5,4
   18b90:	00470713          	add	a4,a4,4 # 100004 <__BSS_END__+0xda484>
   18b94:	ff072e23          	sw	a6,-4(a4)
   18b98:	fed7e8e3          	bltu	a5,a3,18b88 <__copybits+0x2c>
   18b9c:	40c687b3          	sub	a5,a3,a2
   18ba0:	fe778793          	add	a5,a5,-25
   18ba4:	ffc7f793          	and	a5,a5,-4
   18ba8:	00478793          	add	a5,a5,4
   18bac:	00f50533          	add	a0,a0,a5
   18bb0:	00b57863          	bgeu	a0,a1,18bc0 <__copybits+0x64>
   18bb4:	00450513          	add	a0,a0,4
   18bb8:	fe052e23          	sw	zero,-4(a0)
   18bbc:	feb56ce3          	bltu	a0,a1,18bb4 <__copybits+0x58>
   18bc0:	00008067          	ret

0000000000018bc4 <__any_on>:
   18bc4:	01452703          	lw	a4,20(a0)
   18bc8:	4055d613          	sra	a2,a1,0x5
   18bcc:	01850693          	add	a3,a0,24
   18bd0:	02c75263          	bge	a4,a2,18bf4 <__any_on+0x30>
   18bd4:	00271713          	sll	a4,a4,0x2
   18bd8:	00e687b3          	add	a5,a3,a4
   18bdc:	04f6f263          	bgeu	a3,a5,18c20 <__any_on+0x5c>
   18be0:	ffc7a703          	lw	a4,-4(a5)
   18be4:	ffc78793          	add	a5,a5,-4
   18be8:	fe070ae3          	beqz	a4,18bdc <__any_on+0x18>
   18bec:	00100513          	li	a0,1
   18bf0:	00008067          	ret
   18bf4:	00261793          	sll	a5,a2,0x2
   18bf8:	00f687b3          	add	a5,a3,a5
   18bfc:	fee650e3          	bge	a2,a4,18bdc <__any_on+0x18>
   18c00:	01f5f593          	and	a1,a1,31
   18c04:	fc058ce3          	beqz	a1,18bdc <__any_on+0x18>
   18c08:	0007a603          	lw	a2,0(a5)
   18c0c:	00100513          	li	a0,1
   18c10:	00b6573b          	srlw	a4,a2,a1
   18c14:	00b7173b          	sllw	a4,a4,a1
   18c18:	fcc702e3          	beq	a4,a2,18bdc <__any_on+0x18>
   18c1c:	00008067          	ret
   18c20:	00000513          	li	a0,0
   18c24:	00008067          	ret

0000000000018c28 <_sbrk_r>:
   18c28:	fe010113          	add	sp,sp,-32
   18c2c:	00813823          	sd	s0,16(sp)
   18c30:	00913423          	sd	s1,8(sp)
   18c34:	00050413          	mv	s0,a0
   18c38:	00058513          	mv	a0,a1
   18c3c:	00113c23          	sd	ra,24(sp)
   18c40:	7801a823          	sw	zero,1936(gp) # 25b10 <errno>
   18c44:	3e0070ef          	jal	20024 <_sbrk>
   18c48:	fff00793          	li	a5,-1
   18c4c:	00f50c63          	beq	a0,a5,18c64 <_sbrk_r+0x3c>
   18c50:	01813083          	ld	ra,24(sp)
   18c54:	01013403          	ld	s0,16(sp)
   18c58:	00813483          	ld	s1,8(sp)
   18c5c:	02010113          	add	sp,sp,32
   18c60:	00008067          	ret
   18c64:	7901a783          	lw	a5,1936(gp) # 25b10 <errno>
   18c68:	fe0784e3          	beqz	a5,18c50 <_sbrk_r+0x28>
   18c6c:	01813083          	ld	ra,24(sp)
   18c70:	00f42023          	sw	a5,0(s0)
   18c74:	01013403          	ld	s0,16(sp)
   18c78:	00813483          	ld	s1,8(sp)
   18c7c:	02010113          	add	sp,sp,32
   18c80:	00008067          	ret

0000000000018c84 <frexp>:
   18c84:	fe010113          	add	sp,sp,-32
   18c88:	00813823          	sd	s0,16(sp)
   18c8c:	80000437          	lui	s0,0x80000
   18c90:	00113c23          	sd	ra,24(sp)
   18c94:	00913423          	sd	s1,8(sp)
   18c98:	42055693          	sra	a3,a0,0x20
   18c9c:	fff44413          	not	s0,s0
   18ca0:	0086f733          	and	a4,a3,s0
   18ca4:	0005a023          	sw	zero,0(a1)
   18ca8:	7ff00637          	lui	a2,0x7ff00
   18cac:	00050793          	mv	a5,a0
   18cb0:	06c77263          	bgeu	a4,a2,18d14 <frexp+0x90>
   18cb4:	00a76633          	or	a2,a4,a0
   18cb8:	0006061b          	sext.w	a2,a2
   18cbc:	04060c63          	beqz	a2,18d14 <frexp+0x90>
   18cc0:	7ff00637          	lui	a2,0x7ff00
   18cc4:	00c6f633          	and	a2,a3,a2
   18cc8:	00058493          	mv	s1,a1
   18ccc:	06060063          	beqz	a2,18d2c <frexp+0xa8>
   18cd0:	0006869b          	sext.w	a3,a3
   18cd4:	0007071b          	sext.w	a4,a4
   18cd8:	00000593          	li	a1,0
   18cdc:	80100637          	lui	a2,0x80100
   18ce0:	fff60613          	add	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800da47f>
   18ce4:	00c6f6b3          	and	a3,a3,a2
   18ce8:	3fe00637          	lui	a2,0x3fe00
   18cec:	00c6e6b3          	or	a3,a3,a2
   18cf0:	4147571b          	sraw	a4,a4,0x14
   18cf4:	fff00613          	li	a2,-1
   18cf8:	c027071b          	addw	a4,a4,-1022
   18cfc:	02065613          	srl	a2,a2,0x20
   18d00:	00b7073b          	addw	a4,a4,a1
   18d04:	02069693          	sll	a3,a3,0x20
   18d08:	00f677b3          	and	a5,a2,a5
   18d0c:	00e4a023          	sw	a4,0(s1)
   18d10:	00d7e7b3          	or	a5,a5,a3
   18d14:	01813083          	ld	ra,24(sp)
   18d18:	01013403          	ld	s0,16(sp)
   18d1c:	00813483          	ld	s1,8(sp)
   18d20:	00078513          	mv	a0,a5
   18d24:	02010113          	add	sp,sp,32
   18d28:	00008067          	ret
   18d2c:	7201b583          	ld	a1,1824(gp) # 25aa0 <__SDATA_BEGIN__+0x20>
   18d30:	17d070ef          	jal	206ac <__muldf3>
   18d34:	42055713          	sra	a4,a0,0x20
   18d38:	00070693          	mv	a3,a4
   18d3c:	00050793          	mv	a5,a0
   18d40:	00877733          	and	a4,a4,s0
   18d44:	fca00593          	li	a1,-54
   18d48:	f95ff06f          	j	18cdc <frexp+0x58>

0000000000018d4c <_sprintf_r>:
   18d4c:	f0010113          	add	sp,sp,-256
   18d50:	0d810e93          	add	t4,sp,216
   18d54:	0ef13423          	sd	a5,232(sp)
   18d58:	80000337          	lui	t1,0x80000
   18d5c:	ffff07b7          	lui	a5,0xffff0
   18d60:	00058e13          	mv	t3,a1
   18d64:	fff34313          	not	t1,t1
   18d68:	0cd13c23          	sd	a3,216(sp)
   18d6c:	20878793          	add	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffca688>
   18d70:	01010593          	add	a1,sp,16
   18d74:	000e8693          	mv	a3,t4
   18d78:	0c113423          	sd	ra,200(sp)
   18d7c:	02f12023          	sw	a5,32(sp)
   18d80:	0ee13023          	sd	a4,224(sp)
   18d84:	0f013823          	sd	a6,240(sp)
   18d88:	0f113c23          	sd	a7,248(sp)
   18d8c:	01c13823          	sd	t3,16(sp)
   18d90:	03c13423          	sd	t3,40(sp)
   18d94:	00612e23          	sw	t1,28(sp)
   18d98:	02612823          	sw	t1,48(sp)
   18d9c:	01d13423          	sd	t4,8(sp)
   18da0:	570000ef          	jal	19310 <_svfprintf_r>
   18da4:	01013783          	ld	a5,16(sp)
   18da8:	00078023          	sb	zero,0(a5)
   18dac:	0c813083          	ld	ra,200(sp)
   18db0:	10010113          	add	sp,sp,256
   18db4:	00008067          	ret

0000000000018db8 <sprintf>:
   18db8:	00050e13          	mv	t3,a0
   18dbc:	f0010113          	add	sp,sp,-256
   18dc0:	7581b503          	ld	a0,1880(gp) # 25ad8 <_impure_ptr>
   18dc4:	0d010e93          	add	t4,sp,208
   18dc8:	0ef13423          	sd	a5,232(sp)
   18dcc:	80000337          	lui	t1,0x80000
   18dd0:	ffff07b7          	lui	a5,0xffff0
   18dd4:	fff34313          	not	t1,t1
   18dd8:	0cc13823          	sd	a2,208(sp)
   18ddc:	0cd13c23          	sd	a3,216(sp)
   18de0:	20878793          	add	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffca688>
   18de4:	00058613          	mv	a2,a1
   18de8:	000e8693          	mv	a3,t4
   18dec:	01010593          	add	a1,sp,16
   18df0:	0c113423          	sd	ra,200(sp)
   18df4:	02f12023          	sw	a5,32(sp)
   18df8:	0ee13023          	sd	a4,224(sp)
   18dfc:	0f013823          	sd	a6,240(sp)
   18e00:	0f113c23          	sd	a7,248(sp)
   18e04:	01c13823          	sd	t3,16(sp)
   18e08:	03c13423          	sd	t3,40(sp)
   18e0c:	00612e23          	sw	t1,28(sp)
   18e10:	02612823          	sw	t1,48(sp)
   18e14:	01d13423          	sd	t4,8(sp)
   18e18:	4f8000ef          	jal	19310 <_svfprintf_r>
   18e1c:	01013783          	ld	a5,16(sp)
   18e20:	00078023          	sb	zero,0(a5)
   18e24:	0c813083          	ld	ra,200(sp)
   18e28:	10010113          	add	sp,sp,256
   18e2c:	00008067          	ret

0000000000018e30 <__sread>:
   18e30:	ff010113          	add	sp,sp,-16
   18e34:	00813023          	sd	s0,0(sp)
   18e38:	00058413          	mv	s0,a1
   18e3c:	01259583          	lh	a1,18(a1)
   18e40:	00113423          	sd	ra,8(sp)
   18e44:	511040ef          	jal	1db54 <_read_r>
   18e48:	02054063          	bltz	a0,18e68 <__sread+0x38>
   18e4c:	09043783          	ld	a5,144(s0) # ffffffff80000090 <__BSS_END__+0xffffffff7ffda510>
   18e50:	00813083          	ld	ra,8(sp)
   18e54:	00a787b3          	add	a5,a5,a0
   18e58:	08f43823          	sd	a5,144(s0)
   18e5c:	00013403          	ld	s0,0(sp)
   18e60:	01010113          	add	sp,sp,16
   18e64:	00008067          	ret
   18e68:	01045783          	lhu	a5,16(s0)
   18e6c:	fffff737          	lui	a4,0xfffff
   18e70:	fff70713          	add	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffd947f>
   18e74:	00e7f7b3          	and	a5,a5,a4
   18e78:	00813083          	ld	ra,8(sp)
   18e7c:	00f41823          	sh	a5,16(s0)
   18e80:	00013403          	ld	s0,0(sp)
   18e84:	01010113          	add	sp,sp,16
   18e88:	00008067          	ret

0000000000018e8c <__seofread>:
   18e8c:	00000513          	li	a0,0
   18e90:	00008067          	ret

0000000000018e94 <__swrite>:
   18e94:	01059783          	lh	a5,16(a1)
   18e98:	fd010113          	add	sp,sp,-48
   18e9c:	02813023          	sd	s0,32(sp)
   18ea0:	00913c23          	sd	s1,24(sp)
   18ea4:	01213823          	sd	s2,16(sp)
   18ea8:	01313423          	sd	s3,8(sp)
   18eac:	02113423          	sd	ra,40(sp)
   18eb0:	1007f713          	and	a4,a5,256
   18eb4:	00058413          	mv	s0,a1
   18eb8:	00050493          	mv	s1,a0
   18ebc:	00060913          	mv	s2,a2
   18ec0:	00068993          	mv	s3,a3
   18ec4:	04071063          	bnez	a4,18f04 <__swrite+0x70>
   18ec8:	fffff737          	lui	a4,0xfffff
   18ecc:	fff70713          	add	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffd947f>
   18ed0:	00e7f7b3          	and	a5,a5,a4
   18ed4:	01241583          	lh	a1,18(s0)
   18ed8:	00f41823          	sh	a5,16(s0)
   18edc:	02013403          	ld	s0,32(sp)
   18ee0:	02813083          	ld	ra,40(sp)
   18ee4:	00098693          	mv	a3,s3
   18ee8:	00090613          	mv	a2,s2
   18eec:	00813983          	ld	s3,8(sp)
   18ef0:	01013903          	ld	s2,16(sp)
   18ef4:	00048513          	mv	a0,s1
   18ef8:	01813483          	ld	s1,24(sp)
   18efc:	03010113          	add	sp,sp,48
   18f00:	6590306f          	j	1cd58 <_write_r>
   18f04:	01259583          	lh	a1,18(a1)
   18f08:	00200693          	li	a3,2
   18f0c:	00000613          	li	a2,0
   18f10:	11d040ef          	jal	1d82c <_lseek_r>
   18f14:	01041783          	lh	a5,16(s0)
   18f18:	fb1ff06f          	j	18ec8 <__swrite+0x34>

0000000000018f1c <__sseek>:
   18f1c:	ff010113          	add	sp,sp,-16
   18f20:	00813023          	sd	s0,0(sp)
   18f24:	00058413          	mv	s0,a1
   18f28:	01259583          	lh	a1,18(a1)
   18f2c:	00113423          	sd	ra,8(sp)
   18f30:	0fd040ef          	jal	1d82c <_lseek_r>
   18f34:	fff00793          	li	a5,-1
   18f38:	02f50863          	beq	a0,a5,18f68 <__sseek+0x4c>
   18f3c:	01045783          	lhu	a5,16(s0)
   18f40:	00001737          	lui	a4,0x1
   18f44:	00813083          	ld	ra,8(sp)
   18f48:	00e7e7b3          	or	a5,a5,a4
   18f4c:	0107979b          	sllw	a5,a5,0x10
   18f50:	4107d79b          	sraw	a5,a5,0x10
   18f54:	08a43823          	sd	a0,144(s0)
   18f58:	00f41823          	sh	a5,16(s0)
   18f5c:	00013403          	ld	s0,0(sp)
   18f60:	01010113          	add	sp,sp,16
   18f64:	00008067          	ret
   18f68:	01045783          	lhu	a5,16(s0)
   18f6c:	fffff737          	lui	a4,0xfffff
   18f70:	fff70713          	add	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffd947f>
   18f74:	00e7f7b3          	and	a5,a5,a4
   18f78:	0107979b          	sllw	a5,a5,0x10
   18f7c:	4107d79b          	sraw	a5,a5,0x10
   18f80:	00813083          	ld	ra,8(sp)
   18f84:	00f41823          	sh	a5,16(s0)
   18f88:	00013403          	ld	s0,0(sp)
   18f8c:	01010113          	add	sp,sp,16
   18f90:	00008067          	ret

0000000000018f94 <__sclose>:
   18f94:	01259583          	lh	a1,18(a1)
   18f98:	78d0306f          	j	1cf24 <_close_r>

0000000000018f9c <strcmp>:
   18f9c:	00b56733          	or	a4,a0,a1
   18fa0:	fff00393          	li	t2,-1
   18fa4:	00777713          	and	a4,a4,7
   18fa8:	0c071c63          	bnez	a4,19080 <strcmp+0xe4>
   18fac:	0000d797          	auipc	a5,0xd
   18fb0:	afc7b783          	ld	a5,-1284(a5) # 25aa8 <mask>
   18fb4:	00053603          	ld	a2,0(a0)
   18fb8:	0005b683          	ld	a3,0(a1)
   18fbc:	00f672b3          	and	t0,a2,a5
   18fc0:	00f66333          	or	t1,a2,a5
   18fc4:	00f282b3          	add	t0,t0,a5
   18fc8:	0062e2b3          	or	t0,t0,t1
   18fcc:	0c729e63          	bne	t0,t2,190a8 <strcmp+0x10c>
   18fd0:	04d61663          	bne	a2,a3,1901c <strcmp+0x80>
   18fd4:	00853603          	ld	a2,8(a0)
   18fd8:	0085b683          	ld	a3,8(a1)
   18fdc:	00f672b3          	and	t0,a2,a5
   18fe0:	00f66333          	or	t1,a2,a5
   18fe4:	00f282b3          	add	t0,t0,a5
   18fe8:	0062e2b3          	or	t0,t0,t1
   18fec:	0a729a63          	bne	t0,t2,190a0 <strcmp+0x104>
   18ff0:	02d61663          	bne	a2,a3,1901c <strcmp+0x80>
   18ff4:	01053603          	ld	a2,16(a0)
   18ff8:	0105b683          	ld	a3,16(a1)
   18ffc:	00f672b3          	and	t0,a2,a5
   19000:	00f66333          	or	t1,a2,a5
   19004:	00f282b3          	add	t0,t0,a5
   19008:	0062e2b3          	or	t0,t0,t1
   1900c:	0a729463          	bne	t0,t2,190b4 <strcmp+0x118>
   19010:	01850513          	add	a0,a0,24
   19014:	01858593          	add	a1,a1,24
   19018:	f8d60ee3          	beq	a2,a3,18fb4 <strcmp+0x18>
   1901c:	03061713          	sll	a4,a2,0x30
   19020:	03069793          	sll	a5,a3,0x30
   19024:	02f71a63          	bne	a4,a5,19058 <strcmp+0xbc>
   19028:	02061713          	sll	a4,a2,0x20
   1902c:	02069793          	sll	a5,a3,0x20
   19030:	02f71463          	bne	a4,a5,19058 <strcmp+0xbc>
   19034:	01061713          	sll	a4,a2,0x10
   19038:	01069793          	sll	a5,a3,0x10
   1903c:	00f71e63          	bne	a4,a5,19058 <strcmp+0xbc>
   19040:	03065713          	srl	a4,a2,0x30
   19044:	0306d793          	srl	a5,a3,0x30
   19048:	40f70533          	sub	a0,a4,a5
   1904c:	0ff57593          	zext.b	a1,a0
   19050:	02059063          	bnez	a1,19070 <strcmp+0xd4>
   19054:	00008067          	ret
   19058:	03075713          	srl	a4,a4,0x30
   1905c:	0307d793          	srl	a5,a5,0x30
   19060:	40f70533          	sub	a0,a4,a5
   19064:	0ff57593          	zext.b	a1,a0
   19068:	00059463          	bnez	a1,19070 <strcmp+0xd4>
   1906c:	00008067          	ret
   19070:	0ff77713          	zext.b	a4,a4
   19074:	0ff7f793          	zext.b	a5,a5
   19078:	40f70533          	sub	a0,a4,a5
   1907c:	00008067          	ret
   19080:	00054603          	lbu	a2,0(a0)
   19084:	0005c683          	lbu	a3,0(a1)
   19088:	00150513          	add	a0,a0,1
   1908c:	00158593          	add	a1,a1,1
   19090:	00d61463          	bne	a2,a3,19098 <strcmp+0xfc>
   19094:	fe0616e3          	bnez	a2,19080 <strcmp+0xe4>
   19098:	40d60533          	sub	a0,a2,a3
   1909c:	00008067          	ret
   190a0:	00850513          	add	a0,a0,8
   190a4:	00858593          	add	a1,a1,8
   190a8:	fcd61ce3          	bne	a2,a3,19080 <strcmp+0xe4>
   190ac:	00000513          	li	a0,0
   190b0:	00008067          	ret
   190b4:	01050513          	add	a0,a0,16
   190b8:	01058593          	add	a1,a1,16
   190bc:	fcd612e3          	bne	a2,a3,19080 <strcmp+0xe4>
   190c0:	00000513          	li	a0,0
   190c4:	00008067          	ret

00000000000190c8 <strcpy>:
   190c8:	00b567b3          	or	a5,a0,a1
   190cc:	0077f793          	and	a5,a5,7
   190d0:	0a079463          	bnez	a5,19178 <strcpy+0xb0>
   190d4:	7281b683          	ld	a3,1832(gp) # 25aa8 <mask>
   190d8:	0005b703          	ld	a4,0(a1)
   190dc:	fff00613          	li	a2,-1
   190e0:	00d777b3          	and	a5,a4,a3
   190e4:	00d787b3          	add	a5,a5,a3
   190e8:	00e7e7b3          	or	a5,a5,a4
   190ec:	00d7e7b3          	or	a5,a5,a3
   190f0:	0ac79263          	bne	a5,a2,19194 <strcpy+0xcc>
   190f4:	00050613          	mv	a2,a0
   190f8:	fff00813          	li	a6,-1
   190fc:	00e63023          	sd	a4,0(a2) # 3fe00000 <__BSS_END__+0x3fdda480>
   19100:	0085b703          	ld	a4,8(a1)
   19104:	00858593          	add	a1,a1,8
   19108:	00860613          	add	a2,a2,8
   1910c:	00d777b3          	and	a5,a4,a3
   19110:	00d787b3          	add	a5,a5,a3
   19114:	00e7e7b3          	or	a5,a5,a4
   19118:	00d7e7b3          	or	a5,a5,a3
   1911c:	ff0780e3          	beq	a5,a6,190fc <strcpy+0x34>
   19120:	0005c783          	lbu	a5,0(a1)
   19124:	0015c703          	lbu	a4,1(a1)
   19128:	0025c683          	lbu	a3,2(a1)
   1912c:	00f60023          	sb	a5,0(a2)
   19130:	04078263          	beqz	a5,19174 <strcpy+0xac>
   19134:	00e600a3          	sb	a4,1(a2)
   19138:	02070e63          	beqz	a4,19174 <strcpy+0xac>
   1913c:	0035c783          	lbu	a5,3(a1)
   19140:	00d60123          	sb	a3,2(a2)
   19144:	02068863          	beqz	a3,19174 <strcpy+0xac>
   19148:	0045c703          	lbu	a4,4(a1)
   1914c:	00f601a3          	sb	a5,3(a2)
   19150:	02078263          	beqz	a5,19174 <strcpy+0xac>
   19154:	0055c783          	lbu	a5,5(a1)
   19158:	00e60223          	sb	a4,4(a2)
   1915c:	00070c63          	beqz	a4,19174 <strcpy+0xac>
   19160:	0065c703          	lbu	a4,6(a1)
   19164:	00f602a3          	sb	a5,5(a2)
   19168:	00078663          	beqz	a5,19174 <strcpy+0xac>
   1916c:	00e60323          	sb	a4,6(a2)
   19170:	02071663          	bnez	a4,1919c <strcpy+0xd4>
   19174:	00008067          	ret
   19178:	00050793          	mv	a5,a0
   1917c:	0005c703          	lbu	a4,0(a1)
   19180:	00178793          	add	a5,a5,1
   19184:	00158593          	add	a1,a1,1
   19188:	fee78fa3          	sb	a4,-1(a5)
   1918c:	fe0718e3          	bnez	a4,1917c <strcpy+0xb4>
   19190:	00008067          	ret
   19194:	00050613          	mv	a2,a0
   19198:	f89ff06f          	j	19120 <strcpy+0x58>
   1919c:	000603a3          	sb	zero,7(a2)
   191a0:	00008067          	ret

00000000000191a4 <strlen>:
   191a4:	00757793          	and	a5,a0,7
   191a8:	00050713          	mv	a4,a0
   191ac:	06079a63          	bnez	a5,19220 <strlen+0x7c>
   191b0:	7281b683          	ld	a3,1832(gp) # 25aa8 <mask>
   191b4:	fff00593          	li	a1,-1
   191b8:	00073603          	ld	a2,0(a4)
   191bc:	00870713          	add	a4,a4,8
   191c0:	00d677b3          	and	a5,a2,a3
   191c4:	00d787b3          	add	a5,a5,a3
   191c8:	00c7e7b3          	or	a5,a5,a2
   191cc:	00d7e7b3          	or	a5,a5,a3
   191d0:	feb784e3          	beq	a5,a1,191b8 <strlen+0x14>
   191d4:	ff874683          	lbu	a3,-8(a4)
   191d8:	40a707b3          	sub	a5,a4,a0
   191dc:	06068463          	beqz	a3,19244 <strlen+0xa0>
   191e0:	ff974683          	lbu	a3,-7(a4)
   191e4:	04068c63          	beqz	a3,1923c <strlen+0x98>
   191e8:	ffa74683          	lbu	a3,-6(a4)
   191ec:	06068463          	beqz	a3,19254 <strlen+0xb0>
   191f0:	ffb74683          	lbu	a3,-5(a4)
   191f4:	04068c63          	beqz	a3,1924c <strlen+0xa8>
   191f8:	ffc74683          	lbu	a3,-4(a4)
   191fc:	06068063          	beqz	a3,1925c <strlen+0xb8>
   19200:	ffd74683          	lbu	a3,-3(a4)
   19204:	06068063          	beqz	a3,19264 <strlen+0xc0>
   19208:	ffe74503          	lbu	a0,-2(a4)
   1920c:	00a03533          	snez	a0,a0
   19210:	00f50533          	add	a0,a0,a5
   19214:	ffe50513          	add	a0,a0,-2
   19218:	00008067          	ret
   1921c:	f8068ae3          	beqz	a3,191b0 <strlen+0xc>
   19220:	00074783          	lbu	a5,0(a4)
   19224:	00170713          	add	a4,a4,1
   19228:	00777693          	and	a3,a4,7
   1922c:	fe0798e3          	bnez	a5,1921c <strlen+0x78>
   19230:	40a70733          	sub	a4,a4,a0
   19234:	fff70513          	add	a0,a4,-1
   19238:	00008067          	ret
   1923c:	ff978513          	add	a0,a5,-7
   19240:	00008067          	ret
   19244:	ff878513          	add	a0,a5,-8
   19248:	00008067          	ret
   1924c:	ffb78513          	add	a0,a5,-5
   19250:	00008067          	ret
   19254:	ffa78513          	add	a0,a5,-6
   19258:	00008067          	ret
   1925c:	ffc78513          	add	a0,a5,-4
   19260:	00008067          	ret
   19264:	ffd78513          	add	a0,a5,-3
   19268:	00008067          	ret

000000000001926c <strncpy>:
   1926c:	00b567b3          	or	a5,a0,a1
   19270:	0077f793          	and	a5,a5,7
   19274:	00079663          	bnez	a5,19280 <strncpy+0x14>
   19278:	00700793          	li	a5,7
   1927c:	04c7e663          	bltu	a5,a2,192c8 <strncpy+0x5c>
   19280:	00050713          	mv	a4,a0
   19284:	01c0006f          	j	192a0 <strncpy+0x34>
   19288:	fff5c683          	lbu	a3,-1(a1)
   1928c:	fff60813          	add	a6,a2,-1
   19290:	fed78fa3          	sb	a3,-1(a5)
   19294:	00068e63          	beqz	a3,192b0 <strncpy+0x44>
   19298:	00078713          	mv	a4,a5
   1929c:	00080613          	mv	a2,a6
   192a0:	00158593          	add	a1,a1,1
   192a4:	00170793          	add	a5,a4,1
   192a8:	fe0610e3          	bnez	a2,19288 <strncpy+0x1c>
   192ac:	00008067          	ret
   192b0:	00c70733          	add	a4,a4,a2
   192b4:	04080c63          	beqz	a6,1930c <strncpy+0xa0>
   192b8:	00178793          	add	a5,a5,1
   192bc:	fe078fa3          	sb	zero,-1(a5)
   192c0:	fee79ce3          	bne	a5,a4,192b8 <strncpy+0x4c>
   192c4:	00008067          	ret
   192c8:	7001b303          	ld	t1,1792(gp) # 25a80 <__SDATA_BEGIN__>
   192cc:	7081b883          	ld	a7,1800(gp) # 25a88 <__SDATA_BEGIN__+0x8>
   192d0:	00050713          	mv	a4,a0
   192d4:	00700e13          	li	t3,7
   192d8:	0180006f          	j	192f0 <strncpy+0x84>
   192dc:	00d73023          	sd	a3,0(a4)
   192e0:	ff860613          	add	a2,a2,-8
   192e4:	00870713          	add	a4,a4,8
   192e8:	00858593          	add	a1,a1,8
   192ec:	face7ae3          	bgeu	t3,a2,192a0 <strncpy+0x34>
   192f0:	0005b683          	ld	a3,0(a1)
   192f4:	006687b3          	add	a5,a3,t1
   192f8:	fff6c813          	not	a6,a3
   192fc:	0107f7b3          	and	a5,a5,a6
   19300:	0117f7b3          	and	a5,a5,a7
   19304:	fc078ce3          	beqz	a5,192dc <strncpy+0x70>
   19308:	f99ff06f          	j	192a0 <strncpy+0x34>
   1930c:	00008067          	ret

0000000000019310 <_svfprintf_r>:
   19310:	d9010113          	add	sp,sp,-624
   19314:	26113423          	sd	ra,616(sp)
   19318:	26813023          	sd	s0,608(sp)
   1931c:	25213823          	sd	s2,592(sp)
   19320:	00058413          	mv	s0,a1
   19324:	00b13023          	sd	a1,0(sp)
   19328:	00060913          	mv	s2,a2
   1932c:	02d13023          	sd	a3,32(sp)
   19330:	24913c23          	sd	s1,600(sp)
   19334:	25313423          	sd	s3,584(sp)
   19338:	25413023          	sd	s4,576(sp)
   1933c:	23513c23          	sd	s5,568(sp)
   19340:	23613823          	sd	s6,560(sp)
   19344:	23713423          	sd	s7,552(sp)
   19348:	23813023          	sd	s8,544(sp)
   1934c:	21913c23          	sd	s9,536(sp)
   19350:	21a13823          	sd	s10,528(sp)
   19354:	21b13423          	sd	s11,520(sp)
   19358:	04a13823          	sd	a0,80(sp)
   1935c:	9adfd0ef          	jal	16d08 <_localeconv_r>
   19360:	00053783          	ld	a5,0(a0)
   19364:	00078513          	mv	a0,a5
   19368:	06f13023          	sd	a5,96(sp)
   1936c:	e39ff0ef          	jal	191a4 <strlen>
   19370:	01045703          	lhu	a4,16(s0)
   19374:	0e013823          	sd	zero,240(sp)
   19378:	0e013c23          	sd	zero,248(sp)
   1937c:	08077713          	and	a4,a4,128
   19380:	04a13c23          	sd	a0,88(sp)
   19384:	00070863          	beqz	a4,19394 <_svfprintf_r+0x84>
   19388:	01843703          	ld	a4,24(s0)
   1938c:	00071463          	bnez	a4,19394 <_svfprintf_r+0x84>
   19390:	3e80106f          	j	1a778 <_svfprintf_r+0x1468>
   19394:	18010793          	add	a5,sp,384
   19398:	00023737          	lui	a4,0x23
   1939c:	00078313          	mv	t1,a5
   193a0:	10f13023          	sd	a5,256(sp)
   193a4:	00090b13          	mv	s6,s2
   193a8:	2e070793          	add	a5,a4,736 # 232e0 <__mprec_tens+0xc8>
   193ac:	00023737          	lui	a4,0x23
   193b0:	02f13423          	sd	a5,40(sp)
   193b4:	4e870793          	add	a5,a4,1256 # 234e8 <zeroes.0>
   193b8:	000b4703          	lbu	a4,0(s6)
   193bc:	10013823          	sd	zero,272(sp)
   193c0:	10012423          	sw	zero,264(sp)
   193c4:	02013c23          	sd	zero,56(sp)
   193c8:	06013423          	sd	zero,104(sp)
   193cc:	06013823          	sd	zero,112(sp)
   193d0:	06013c23          	sd	zero,120(sp)
   193d4:	08013023          	sd	zero,128(sp)
   193d8:	08013423          	sd	zero,136(sp)
   193dc:	00013823          	sd	zero,16(sp)
   193e0:	00f13423          	sd	a5,8(sp)
   193e4:	05013983          	ld	s3,80(sp)
   193e8:	00030413          	mv	s0,t1
   193ec:	24070063          	beqz	a4,1962c <_svfprintf_r+0x31c>
   193f0:	000b0493          	mv	s1,s6
   193f4:	02500693          	li	a3,37
   193f8:	2ad70263          	beq	a4,a3,1969c <_svfprintf_r+0x38c>
   193fc:	0014c703          	lbu	a4,1(s1)
   19400:	00148493          	add	s1,s1,1
   19404:	fe071ae3          	bnez	a4,193f8 <_svfprintf_r+0xe8>
   19408:	4164893b          	subw	s2,s1,s6
   1940c:	22090063          	beqz	s2,1962c <_svfprintf_r+0x31c>
   19410:	11013b83          	ld	s7,272(sp)
   19414:	10812683          	lw	a3,264(sp)
   19418:	01643023          	sd	s6,0(s0)
   1941c:	012b8733          	add	a4,s7,s2
   19420:	0016861b          	addw	a2,a3,1
   19424:	01243423          	sd	s2,8(s0)
   19428:	10e13823          	sd	a4,272(sp)
   1942c:	10c12423          	sw	a2,264(sp)
   19430:	00700713          	li	a4,7
   19434:	01040413          	add	s0,s0,16
   19438:	26c74a63          	blt	a4,a2,196ac <_svfprintf_r+0x39c>
   1943c:	01013783          	ld	a5,16(sp)
   19440:	0004c703          	lbu	a4,0(s1)
   19444:	012787bb          	addw	a5,a5,s2
   19448:	00f13823          	sd	a5,16(sp)
   1944c:	1e070063          	beqz	a4,1962c <_svfprintf_r+0x31c>
   19450:	fff00313          	li	t1,-1
   19454:	0014ce03          	lbu	t3,1(s1)
   19458:	0c0107a3          	sb	zero,207(sp)
   1945c:	00148493          	add	s1,s1,1
   19460:	00000a13          	li	s4,0
   19464:	00000913          	li	s2,0
   19468:	05a00b93          	li	s7,90
   1946c:	00030a93          	mv	s5,t1
   19470:	00148493          	add	s1,s1,1
   19474:	000e0d1b          	sext.w	s10,t3
   19478:	fe0d079b          	addw	a5,s10,-32
   1947c:	0007871b          	sext.w	a4,a5
   19480:	04ebec63          	bltu	s7,a4,194d8 <_svfprintf_r+0x1c8>
   19484:	02079713          	sll	a4,a5,0x20
   19488:	01e75793          	srl	a5,a4,0x1e
   1948c:	02813703          	ld	a4,40(sp)
   19490:	00e787b3          	add	a5,a5,a4
   19494:	0007a783          	lw	a5,0(a5)
   19498:	00078067          	jr	a5
   1949c:	00000a13          	li	s4,0
   194a0:	00900693          	li	a3,9
   194a4:	0004c703          	lbu	a4,0(s1)
   194a8:	002a179b          	sllw	a5,s4,0x2
   194ac:	01478a3b          	addw	s4,a5,s4
   194b0:	fd0d0d1b          	addw	s10,s10,-48
   194b4:	001a1a1b          	sllw	s4,s4,0x1
   194b8:	fd07079b          	addw	a5,a4,-48
   194bc:	014d0a3b          	addw	s4,s10,s4
   194c0:	00148493          	add	s1,s1,1
   194c4:	00070d1b          	sext.w	s10,a4
   194c8:	fcf6fee3          	bgeu	a3,a5,194a4 <_svfprintf_r+0x194>
   194cc:	fe0d079b          	addw	a5,s10,-32
   194d0:	0007871b          	sext.w	a4,a5
   194d4:	faebf8e3          	bgeu	s7,a4,19484 <_svfprintf_r+0x174>
   194d8:	140d0a63          	beqz	s10,1962c <_svfprintf_r+0x31c>
   194dc:	11a10c23          	sb	s10,280(sp)
   194e0:	0c0107a3          	sb	zero,207(sp)
   194e4:	00100c13          	li	s8,1
   194e8:	00100d93          	li	s11,1
   194ec:	11810b13          	add	s6,sp,280
   194f0:	00013c23          	sd	zero,24(sp)
   194f4:	00000313          	li	t1,0
   194f8:	04013423          	sd	zero,72(sp)
   194fc:	04013023          	sd	zero,64(sp)
   19500:	02013823          	sd	zero,48(sp)
   19504:	00297c93          	and	s9,s2,2
   19508:	000c8463          	beqz	s9,19510 <_svfprintf_r+0x200>
   1950c:	002c0c1b          	addw	s8,s8,2
   19510:	08497a93          	and	s5,s2,132
   19514:	000a9663          	bnez	s5,19520 <_svfprintf_r+0x210>
   19518:	418a073b          	subw	a4,s4,s8
   1951c:	2ee04ee3          	bgtz	a4,1a018 <_svfprintf_r+0xd08>
   19520:	0cf14703          	lbu	a4,207(sp)
   19524:	11013b83          	ld	s7,272(sp)
   19528:	02070c63          	beqz	a4,19560 <_svfprintf_r+0x250>
   1952c:	10812603          	lw	a2,264(sp)
   19530:	0cf10593          	add	a1,sp,207
   19534:	00b43023          	sd	a1,0(s0)
   19538:	0016061b          	addw	a2,a2,1
   1953c:	00100593          	li	a1,1
   19540:	001b8b93          	add	s7,s7,1
   19544:	00b43423          	sd	a1,8(s0)
   19548:	10c12423          	sw	a2,264(sp)
   1954c:	0006059b          	sext.w	a1,a2
   19550:	11713823          	sd	s7,272(sp)
   19554:	00700613          	li	a2,7
   19558:	01040413          	add	s0,s0,16
   1955c:	24b64a63          	blt	a2,a1,197b0 <_svfprintf_r+0x4a0>
   19560:	020c8c63          	beqz	s9,19598 <_svfprintf_r+0x288>
   19564:	10812603          	lw	a2,264(sp)
   19568:	00200593          	li	a1,2
   1956c:	002b8b93          	add	s7,s7,2
   19570:	0016061b          	addw	a2,a2,1
   19574:	0d010793          	add	a5,sp,208
   19578:	00b43423          	sd	a1,8(s0)
   1957c:	00f43023          	sd	a5,0(s0)
   19580:	0006059b          	sext.w	a1,a2
   19584:	10c12423          	sw	a2,264(sp)
   19588:	11713823          	sd	s7,272(sp)
   1958c:	00700613          	li	a2,7
   19590:	01040413          	add	s0,s0,16
   19594:	3ab642e3          	blt	a2,a1,1a138 <_svfprintf_r+0xe28>
   19598:	08000613          	li	a2,128
   1959c:	08ca84e3          	beq	s5,a2,19e24 <_svfprintf_r+0xb14>
   195a0:	41b30cbb          	subw	s9,t1,s11
   195a4:	179044e3          	bgtz	s9,19f0c <_svfprintf_r+0xbfc>
   195a8:	10097613          	and	a2,s2,256
   195ac:	6a061c63          	bnez	a2,19c64 <_svfprintf_r+0x954>
   195b0:	10812603          	lw	a2,264(sp)
   195b4:	017d8733          	add	a4,s11,s7
   195b8:	01643023          	sd	s6,0(s0)
   195bc:	0016069b          	addw	a3,a2,1
   195c0:	01b43423          	sd	s11,8(s0)
   195c4:	10e13823          	sd	a4,272(sp)
   195c8:	10d12423          	sw	a3,264(sp)
   195cc:	00700793          	li	a5,7
   195d0:	2ed7c463          	blt	a5,a3,198b8 <_svfprintf_r+0x5a8>
   195d4:	01040413          	add	s0,s0,16
   195d8:	00497913          	and	s2,s2,4
   195dc:	00090663          	beqz	s2,195e8 <_svfprintf_r+0x2d8>
   195e0:	418a093b          	subw	s2,s4,s8
   195e4:	37204ee3          	bgtz	s2,1a160 <_svfprintf_r+0xe50>
   195e8:	000a0793          	mv	a5,s4
   195ec:	018a5463          	bge	s4,s8,195f4 <_svfprintf_r+0x2e4>
   195f0:	000c0793          	mv	a5,s8
   195f4:	01013683          	ld	a3,16(sp)
   195f8:	00d787bb          	addw	a5,a5,a3
   195fc:	00f13823          	sd	a5,16(sp)
   19600:	1e0718e3          	bnez	a4,19ff0 <_svfprintf_r+0xce0>
   19604:	01813783          	ld	a5,24(sp)
   19608:	10012423          	sw	zero,264(sp)
   1960c:	00078863          	beqz	a5,1961c <_svfprintf_r+0x30c>
   19610:	01813583          	ld	a1,24(sp)
   19614:	00098513          	mv	a0,s3
   19618:	df8fa0ef          	jal	13c10 <_free_r>
   1961c:	18010413          	add	s0,sp,384
   19620:	00048b13          	mv	s6,s1
   19624:	000b4703          	lbu	a4,0(s6)
   19628:	dc0714e3          	bnez	a4,193f0 <_svfprintf_r+0xe0>
   1962c:	11013783          	ld	a5,272(sp)
   19630:	00078463          	beqz	a5,19638 <_svfprintf_r+0x328>
   19634:	2310106f          	j	1b064 <_svfprintf_r+0x1d54>
   19638:	00013783          	ld	a5,0(sp)
   1963c:	0107d783          	lhu	a5,16(a5)
   19640:	0407f793          	and	a5,a5,64
   19644:	00078463          	beqz	a5,1964c <_svfprintf_r+0x33c>
   19648:	0c00206f          	j	1b708 <_svfprintf_r+0x23f8>
   1964c:	26813083          	ld	ra,616(sp)
   19650:	26013403          	ld	s0,608(sp)
   19654:	01013503          	ld	a0,16(sp)
   19658:	25813483          	ld	s1,600(sp)
   1965c:	25013903          	ld	s2,592(sp)
   19660:	24813983          	ld	s3,584(sp)
   19664:	24013a03          	ld	s4,576(sp)
   19668:	23813a83          	ld	s5,568(sp)
   1966c:	23013b03          	ld	s6,560(sp)
   19670:	22813b83          	ld	s7,552(sp)
   19674:	22013c03          	ld	s8,544(sp)
   19678:	21813c83          	ld	s9,536(sp)
   1967c:	21013d03          	ld	s10,528(sp)
   19680:	20813d83          	ld	s11,520(sp)
   19684:	27010113          	add	sp,sp,624
   19688:	00008067          	ret
   1968c:	01096913          	or	s2,s2,16
   19690:	0004ce03          	lbu	t3,0(s1)
   19694:	0009091b          	sext.w	s2,s2
   19698:	dd9ff06f          	j	19470 <_svfprintf_r+0x160>
   1969c:	4164893b          	subw	s2,s1,s6
   196a0:	d60918e3          	bnez	s2,19410 <_svfprintf_r+0x100>
   196a4:	0004c703          	lbu	a4,0(s1)
   196a8:	da5ff06f          	j	1944c <_svfprintf_r+0x13c>
   196ac:	00013583          	ld	a1,0(sp)
   196b0:	10010613          	add	a2,sp,256
   196b4:	00098513          	mv	a0,s3
   196b8:	415040ef          	jal	1e2cc <__ssprint_r>
   196bc:	f6051ee3          	bnez	a0,19638 <_svfprintf_r+0x328>
   196c0:	18010413          	add	s0,sp,384
   196c4:	d79ff06f          	j	1943c <_svfprintf_r+0x12c>
   196c8:	00897713          	and	a4,s2,8
   196cc:	000a8313          	mv	t1,s5
   196d0:	720708e3          	beqz	a4,1a600 <_svfprintf_r+0x12f0>
   196d4:	02013783          	ld	a5,32(sp)
   196d8:	00f78a93          	add	s5,a5,15
   196dc:	ff0afa93          	and	s5,s5,-16
   196e0:	000ab703          	ld	a4,0(s5)
   196e4:	008ab583          	ld	a1,8(s5)
   196e8:	010a8793          	add	a5,s5,16
   196ec:	02f13023          	sd	a5,32(sp)
   196f0:	0f010513          	add	a0,sp,240
   196f4:	00613c23          	sd	t1,24(sp)
   196f8:	0ee13823          	sd	a4,240(sp)
   196fc:	0eb13c23          	sd	a1,248(sp)
   19700:	d98fd0ef          	jal	16c98 <_ldcheck>
   19704:	0ca12c23          	sw	a0,216(sp)
   19708:	00200713          	li	a4,2
   1970c:	01813303          	ld	t1,24(sp)
   19710:	00e51463          	bne	a0,a4,19718 <_svfprintf_r+0x408>
   19714:	4a40106f          	j	1abb8 <_svfprintf_r+0x18a8>
   19718:	00100713          	li	a4,1
   1971c:	00e51463          	bne	a0,a4,19724 <_svfprintf_r+0x414>
   19720:	6300106f          	j	1ad50 <_svfprintf_r+0x1a40>
   19724:	06100713          	li	a4,97
   19728:	00ed1463          	bne	s10,a4,19730 <_svfprintf_r+0x420>
   1972c:	46d0106f          	j	1b398 <_svfprintf_r+0x2088>
   19730:	04100713          	li	a4,65
   19734:	00ed1463          	bne	s10,a4,1973c <_svfprintf_r+0x42c>
   19738:	61d0106f          	j	1b554 <_svfprintf_r+0x2244>
   1973c:	fff00713          	li	a4,-1
   19740:	00e31463          	bne	t1,a4,19748 <_svfprintf_r+0x438>
   19744:	1650106f          	j	1b0a8 <_svfprintf_r+0x1d98>
   19748:	fdfd7713          	and	a4,s10,-33
   1974c:	04700693          	li	a3,71
   19750:	00d71463          	bne	a4,a3,19758 <_svfprintf_r+0x448>
   19754:	7e10106f          	j	1b734 <_svfprintf_r+0x2424>
   19758:	10096713          	or	a4,s2,256
   1975c:	0f813c83          	ld	s9,248(sp)
   19760:	0007079b          	sext.w	a5,a4
   19764:	08f13823          	sd	a5,144(sp)
   19768:	05213023          	sd	s2,64(sp)
   1976c:	0f013c03          	ld	s8,240(sp)
   19770:	000cd463          	bgez	s9,19778 <_svfprintf_r+0x468>
   19774:	4d90106f          	j	1b44c <_svfprintf_r+0x213c>
   19778:	08013c23          	sd	zero,152(sp)
   1977c:	00013c23          	sd	zero,24(sp)
   19780:	fbfd071b          	addw	a4,s10,-65
   19784:	0007061b          	sext.w	a2,a4
   19788:	02500693          	li	a3,37
   1978c:	00c6f463          	bgeu	a3,a2,19794 <_svfprintf_r+0x484>
   19790:	6b40106f          	j	1ae44 <_svfprintf_r+0x1b34>
   19794:	02071693          	sll	a3,a4,0x20
   19798:	01e6d713          	srl	a4,a3,0x1e
   1979c:	000236b7          	lui	a3,0x23
   197a0:	44c68693          	add	a3,a3,1100 # 2344c <__mprec_tens+0x234>
   197a4:	00d70733          	add	a4,a4,a3
   197a8:	00072703          	lw	a4,0(a4)
   197ac:	00070067          	jr	a4
   197b0:	00013583          	ld	a1,0(sp)
   197b4:	10010613          	add	a2,sp,256
   197b8:	00098513          	mv	a0,s3
   197bc:	08613823          	sd	t1,144(sp)
   197c0:	30d040ef          	jal	1e2cc <__ssprint_r>
   197c4:	040510e3          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   197c8:	11013b83          	ld	s7,272(sp)
   197cc:	09013303          	ld	t1,144(sp)
   197d0:	18010413          	add	s0,sp,384
   197d4:	d8dff06f          	j	19560 <_svfprintf_r+0x250>
   197d8:	03813783          	ld	a5,56(sp)
   197dc:	00100693          	li	a3,1
   197e0:	01040c93          	add	s9,s0,16
   197e4:	3af6dce3          	bge	a3,a5,1a39c <_svfprintf_r+0x108c>
   197e8:	10812603          	lw	a2,264(sp)
   197ec:	00100693          	li	a3,1
   197f0:	001b8713          	add	a4,s7,1
   197f4:	0016061b          	addw	a2,a2,1
   197f8:	00d43423          	sd	a3,8(s0)
   197fc:	10c12423          	sw	a2,264(sp)
   19800:	0006069b          	sext.w	a3,a2
   19804:	01643023          	sd	s6,0(s0)
   19808:	10e13823          	sd	a4,272(sp)
   1980c:	00700613          	li	a2,7
   19810:	50d64ce3          	blt	a2,a3,1a528 <_svfprintf_r+0x1218>
   19814:	05813783          	ld	a5,88(sp)
   19818:	0016841b          	addw	s0,a3,1
   1981c:	10812423          	sw	s0,264(sp)
   19820:	00e78d33          	add	s10,a5,a4
   19824:	06013703          	ld	a4,96(sp)
   19828:	00fcb423          	sd	a5,8(s9)
   1982c:	11a13823          	sd	s10,272(sp)
   19830:	00ecb023          	sd	a4,0(s9)
   19834:	00700713          	li	a4,7
   19838:	010c8c93          	add	s9,s9,16
   1983c:	508748e3          	blt	a4,s0,1a54c <_svfprintf_r+0x123c>
   19840:	0f013503          	ld	a0,240(sp)
   19844:	0f813583          	ld	a1,248(sp)
   19848:	00000613          	li	a2,0
   1984c:	00000693          	li	a3,0
   19850:	3bc070ef          	jal	20c0c <__eqtf2>
   19854:	03813783          	ld	a5,56(sp)
   19858:	fff78d9b          	addw	s11,a5,-1
   1985c:	38050ae3          	beqz	a0,1a3f0 <_svfprintf_r+0x10e0>
   19860:	001b0793          	add	a5,s6,1
   19864:	0014041b          	addw	s0,s0,1
   19868:	01bd0d33          	add	s10,s10,s11
   1986c:	00fcb023          	sd	a5,0(s9)
   19870:	01bcb423          	sd	s11,8(s9)
   19874:	11a13823          	sd	s10,272(sp)
   19878:	10812423          	sw	s0,264(sp)
   1987c:	00700793          	li	a5,7
   19880:	3487c6e3          	blt	a5,s0,1a3cc <_svfprintf_r+0x10bc>
   19884:	010c8c93          	add	s9,s9,16
   19888:	07013683          	ld	a3,112(sp)
   1988c:	0014041b          	addw	s0,s0,1
   19890:	0e010793          	add	a5,sp,224
   19894:	01a68733          	add	a4,a3,s10
   19898:	00fcb023          	sd	a5,0(s9)
   1989c:	00dcb423          	sd	a3,8(s9)
   198a0:	10812423          	sw	s0,264(sp)
   198a4:	0004069b          	sext.w	a3,s0
   198a8:	10e13823          	sd	a4,272(sp)
   198ac:	00700793          	li	a5,7
   198b0:	010c8413          	add	s0,s9,16
   198b4:	d2d7d2e3          	bge	a5,a3,195d8 <_svfprintf_r+0x2c8>
   198b8:	00013583          	ld	a1,0(sp)
   198bc:	10010613          	add	a2,sp,256
   198c0:	00098513          	mv	a0,s3
   198c4:	209040ef          	jal	1e2cc <__ssprint_r>
   198c8:	72051e63          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   198cc:	11013703          	ld	a4,272(sp)
   198d0:	18010413          	add	s0,sp,384
   198d4:	d05ff06f          	j	195d8 <_svfprintf_r+0x2c8>
   198d8:	02013703          	ld	a4,32(sp)
   198dc:	0c0107a3          	sb	zero,207(sp)
   198e0:	00100c13          	li	s8,1
   198e4:	00072783          	lw	a5,0(a4)
   198e8:	00870713          	add	a4,a4,8
   198ec:	02e13023          	sd	a4,32(sp)
   198f0:	10f10c23          	sb	a5,280(sp)
   198f4:	00100d93          	li	s11,1
   198f8:	11810b13          	add	s6,sp,280
   198fc:	bf5ff06f          	j	194f0 <_svfprintf_r+0x1e0>
   19900:	02013783          	ld	a5,32(sp)
   19904:	0c0107a3          	sb	zero,207(sp)
   19908:	000a8313          	mv	t1,s5
   1990c:	0007bb03          	ld	s6,0(a5)
   19910:	00878a93          	add	s5,a5,8
   19914:	000b1463          	bnez	s6,1991c <_svfprintf_r+0x60c>
   19918:	2fc0106f          	j	1ac14 <_svfprintf_r+0x1904>
   1991c:	fff00713          	li	a4,-1
   19920:	70e300e3          	beq	t1,a4,1a820 <_svfprintf_r+0x1510>
   19924:	00030613          	mv	a2,t1
   19928:	00000593          	li	a1,0
   1992c:	000b0513          	mv	a0,s6
   19930:	02613023          	sd	t1,32(sp)
   19934:	f99fd0ef          	jal	178cc <memchr>
   19938:	00a13c23          	sd	a0,24(sp)
   1993c:	02013303          	ld	t1,32(sp)
   19940:	00051463          	bnez	a0,19948 <_svfprintf_r+0x638>
   19944:	3a90106f          	j	1b4ec <_svfprintf_r+0x21dc>
   19948:	01813783          	ld	a5,24(sp)
   1994c:	41678dbb          	subw	s11,a5,s6
   19950:	0cf14703          	lbu	a4,207(sp)
   19954:	fffdc813          	not	a6,s11
   19958:	43f85813          	sra	a6,a6,0x3f
   1995c:	03513023          	sd	s5,32(sp)
   19960:	00013c23          	sd	zero,24(sp)
   19964:	04013423          	sd	zero,72(sp)
   19968:	04013023          	sd	zero,64(sp)
   1996c:	02013823          	sd	zero,48(sp)
   19970:	01b87c33          	and	s8,a6,s11
   19974:	00000313          	li	t1,0
   19978:	b80706e3          	beqz	a4,19504 <_svfprintf_r+0x1f4>
   1997c:	001c0c1b          	addw	s8,s8,1
   19980:	b85ff06f          	j	19504 <_svfprintf_r+0x1f4>
   19984:	02013783          	ld	a5,32(sp)
   19988:	0007aa03          	lw	s4,0(a5)
   1998c:	00878793          	add	a5,a5,8
   19990:	3e0a5ee3          	bgez	s4,1a58c <_svfprintf_r+0x127c>
   19994:	41400a3b          	negw	s4,s4
   19998:	02f13023          	sd	a5,32(sp)
   1999c:	00496913          	or	s2,s2,4
   199a0:	0004ce03          	lbu	t3,0(s1)
   199a4:	0009091b          	sext.w	s2,s2
   199a8:	ac9ff06f          	j	19470 <_svfprintf_r+0x160>
   199ac:	02b00793          	li	a5,43
   199b0:	0004ce03          	lbu	t3,0(s1)
   199b4:	0cf107a3          	sb	a5,207(sp)
   199b8:	ab9ff06f          	j	19470 <_svfprintf_r+0x160>
   199bc:	08096913          	or	s2,s2,128
   199c0:	0004ce03          	lbu	t3,0(s1)
   199c4:	0009091b          	sext.w	s2,s2
   199c8:	aa9ff06f          	j	19470 <_svfprintf_r+0x160>
   199cc:	0004cd03          	lbu	s10,0(s1)
   199d0:	02a00693          	li	a3,42
   199d4:	00148793          	add	a5,s1,1
   199d8:	00dd1463          	bne	s10,a3,199e0 <_svfprintf_r+0x6d0>
   199dc:	63d0106f          	j	1b818 <_svfprintf_r+0x2508>
   199e0:	fd0d071b          	addw	a4,s10,-48
   199e4:	00900613          	li	a2,9
   199e8:	00078493          	mv	s1,a5
   199ec:	00000a93          	li	s5,0
   199f0:	00900693          	li	a3,9
   199f4:	a8e662e3          	bltu	a2,a4,19478 <_svfprintf_r+0x168>
   199f8:	0004cd03          	lbu	s10,0(s1)
   199fc:	002a979b          	sllw	a5,s5,0x2
   19a00:	0157833b          	addw	t1,a5,s5
   19a04:	0013131b          	sllw	t1,t1,0x1
   19a08:	00e30abb          	addw	s5,t1,a4
   19a0c:	fd0d071b          	addw	a4,s10,-48
   19a10:	00148493          	add	s1,s1,1
   19a14:	fee6f2e3          	bgeu	a3,a4,199f8 <_svfprintf_r+0x6e8>
   19a18:	a61ff06f          	j	19478 <_svfprintf_r+0x168>
   19a1c:	00098513          	mv	a0,s3
   19a20:	ae8fd0ef          	jal	16d08 <_localeconv_r>
   19a24:	00853783          	ld	a5,8(a0)
   19a28:	00078513          	mv	a0,a5
   19a2c:	08f13423          	sd	a5,136(sp)
   19a30:	f74ff0ef          	jal	191a4 <strlen>
   19a34:	00050793          	mv	a5,a0
   19a38:	00098513          	mv	a0,s3
   19a3c:	00078c13          	mv	s8,a5
   19a40:	08f13023          	sd	a5,128(sp)
   19a44:	ac4fd0ef          	jal	16d08 <_localeconv_r>
   19a48:	01053783          	ld	a5,16(a0)
   19a4c:	0004ce03          	lbu	t3,0(s1)
   19a50:	06f13c23          	sd	a5,120(sp)
   19a54:	a00c0ee3          	beqz	s8,19470 <_svfprintf_r+0x160>
   19a58:	a0078ce3          	beqz	a5,19470 <_svfprintf_r+0x160>
   19a5c:	0007c783          	lbu	a5,0(a5)
   19a60:	a00788e3          	beqz	a5,19470 <_svfprintf_r+0x160>
   19a64:	40096913          	or	s2,s2,1024
   19a68:	0009091b          	sext.w	s2,s2
   19a6c:	a05ff06f          	j	19470 <_svfprintf_r+0x160>
   19a70:	00196913          	or	s2,s2,1
   19a74:	0004ce03          	lbu	t3,0(s1)
   19a78:	0009091b          	sext.w	s2,s2
   19a7c:	9f5ff06f          	j	19470 <_svfprintf_r+0x160>
   19a80:	0cf14783          	lbu	a5,207(sp)
   19a84:	0004ce03          	lbu	t3,0(s1)
   19a88:	9e0794e3          	bnez	a5,19470 <_svfprintf_r+0x160>
   19a8c:	02000793          	li	a5,32
   19a90:	0cf107a3          	sb	a5,207(sp)
   19a94:	9ddff06f          	j	19470 <_svfprintf_r+0x160>
   19a98:	01096c93          	or	s9,s2,16
   19a9c:	000a8313          	mv	t1,s5
   19aa0:	000c8c9b          	sext.w	s9,s9
   19aa4:	02013683          	ld	a3,32(sp)
   19aa8:	020cf793          	and	a5,s9,32
   19aac:	00868713          	add	a4,a3,8
   19ab0:	200780e3          	beqz	a5,1a4b0 <_svfprintf_r+0x11a0>
   19ab4:	0006bb83          	ld	s7,0(a3)
   19ab8:	00100793          	li	a5,1
   19abc:	02e13023          	sd	a4,32(sp)
   19ac0:	00000713          	li	a4,0
   19ac4:	0ce107a3          	sb	a4,207(sp)
   19ac8:	fff00713          	li	a4,-1
   19acc:	2ae30863          	beq	t1,a4,19d7c <_svfprintf_r+0xa6c>
   19ad0:	f7fcf913          	and	s2,s9,-129
   19ad4:	0009091b          	sext.w	s2,s2
   19ad8:	2a0b9063          	bnez	s7,19d78 <_svfprintf_r+0xa68>
   19adc:	2e031e63          	bnez	t1,19dd8 <_svfprintf_r+0xac8>
   19ae0:	22079ee3          	bnez	a5,1a51c <_svfprintf_r+0x120c>
   19ae4:	001cfd93          	and	s11,s9,1
   19ae8:	17c10b13          	add	s6,sp,380
   19aec:	2a0d96e3          	bnez	s11,1a598 <_svfprintf_r+0x1288>
   19af0:	0cf14703          	lbu	a4,207(sp)
   19af4:	00030813          	mv	a6,t1
   19af8:	01b35463          	bge	t1,s11,19b00 <_svfprintf_r+0x7f0>
   19afc:	000d8813          	mv	a6,s11
   19b00:	00013c23          	sd	zero,24(sp)
   19b04:	04013423          	sd	zero,72(sp)
   19b08:	04013023          	sd	zero,64(sp)
   19b0c:	02013823          	sd	zero,48(sp)
   19b10:	00080c1b          	sext.w	s8,a6
   19b14:	e60714e3          	bnez	a4,1997c <_svfprintf_r+0x66c>
   19b18:	9edff06f          	j	19504 <_svfprintf_r+0x1f4>
   19b1c:	00896913          	or	s2,s2,8
   19b20:	0004ce03          	lbu	t3,0(s1)
   19b24:	0009091b          	sext.w	s2,s2
   19b28:	949ff06f          	j	19470 <_svfprintf_r+0x160>
   19b2c:	01096913          	or	s2,s2,16
   19b30:	000a8313          	mv	t1,s5
   19b34:	0009091b          	sext.w	s2,s2
   19b38:	02013683          	ld	a3,32(sp)
   19b3c:	02097793          	and	a5,s2,32
   19b40:	00868713          	add	a4,a3,8
   19b44:	18078ce3          	beqz	a5,1a4dc <_svfprintf_r+0x11cc>
   19b48:	0006b783          	ld	a5,0(a3)
   19b4c:	00078b93          	mv	s7,a5
   19b50:	1a07cae3          	bltz	a5,1a504 <_svfprintf_r+0x11f4>
   19b54:	fff00793          	li	a5,-1
   19b58:	5af30c63          	beq	t1,a5,1a110 <_svfprintf_r+0xe00>
   19b5c:	f7f97c93          	and	s9,s2,-129
   19b60:	000c8c9b          	sext.w	s9,s9
   19b64:	2c0b98e3          	bnez	s7,1a634 <_svfprintf_r+0x1324>
   19b68:	00030463          	beqz	t1,19b70 <_svfprintf_r+0x860>
   19b6c:	3a90106f          	j	1b714 <_svfprintf_r+0x2404>
   19b70:	00000d93          	li	s11,0
   19b74:	02e13023          	sd	a4,32(sp)
   19b78:	000c8913          	mv	s2,s9
   19b7c:	17c10b13          	add	s6,sp,380
   19b80:	f71ff06f          	j	19af0 <_svfprintf_r+0x7e0>
   19b84:	01096913          	or	s2,s2,16
   19b88:	000a8313          	mv	t1,s5
   19b8c:	0009091b          	sext.w	s2,s2
   19b90:	02013683          	ld	a3,32(sp)
   19b94:	02097793          	and	a5,s2,32
   19b98:	00868713          	add	a4,a3,8
   19b9c:	0e0788e3          	beqz	a5,1a48c <_svfprintf_r+0x117c>
   19ba0:	0006bb83          	ld	s7,0(a3)
   19ba4:	bff97c93          	and	s9,s2,-1025
   19ba8:	000c8c9b          	sext.w	s9,s9
   19bac:	02e13023          	sd	a4,32(sp)
   19bb0:	00000793          	li	a5,0
   19bb4:	f0dff06f          	j	19ac0 <_svfprintf_r+0x7b0>
   19bb8:	02096913          	or	s2,s2,32
   19bbc:	0004ce03          	lbu	t3,0(s1)
   19bc0:	0009091b          	sext.w	s2,s2
   19bc4:	8adff06f          	j	19470 <_svfprintf_r+0x160>
   19bc8:	02013703          	ld	a4,32(sp)
   19bcc:	02097793          	and	a5,s2,32
   19bd0:	00073703          	ld	a4,0(a4)
   19bd4:	200782e3          	beqz	a5,1a5d8 <_svfprintf_r+0x12c8>
   19bd8:	01013783          	ld	a5,16(sp)
   19bdc:	00f73023          	sd	a5,0(a4)
   19be0:	02013783          	ld	a5,32(sp)
   19be4:	00048b13          	mv	s6,s1
   19be8:	00878793          	add	a5,a5,8
   19bec:	02f13023          	sd	a5,32(sp)
   19bf0:	a35ff06f          	j	19624 <_svfprintf_r+0x314>
   19bf4:	0004ce03          	lbu	t3,0(s1)
   19bf8:	06c00793          	li	a5,108
   19bfc:	36fe04e3          	beq	t3,a5,1a764 <_svfprintf_r+0x1454>
   19c00:	01096913          	or	s2,s2,16
   19c04:	0009091b          	sext.w	s2,s2
   19c08:	869ff06f          	j	19470 <_svfprintf_r+0x160>
   19c0c:	0004ce03          	lbu	t3,0(s1)
   19c10:	06800793          	li	a5,104
   19c14:	32fe0ee3          	beq	t3,a5,1a750 <_svfprintf_r+0x1440>
   19c18:	04096913          	or	s2,s2,64
   19c1c:	0009091b          	sext.w	s2,s2
   19c20:	851ff06f          	j	19470 <_svfprintf_r+0x160>
   19c24:	02013703          	ld	a4,32(sp)
   19c28:	ffff87b7          	lui	a5,0xffff8
   19c2c:	8307c793          	xor	a5,a5,-2000
   19c30:	0cf11823          	sh	a5,208(sp)
   19c34:	00870793          	add	a5,a4,8
   19c38:	02f13023          	sd	a5,32(sp)
   19c3c:	000237b7          	lui	a5,0x23
   19c40:	b8078793          	add	a5,a5,-1152 # 22b80 <__clz_tab+0x138>
   19c44:	00296c93          	or	s9,s2,2
   19c48:	06f13423          	sd	a5,104(sp)
   19c4c:	00073b83          	ld	s7,0(a4)
   19c50:	000a8313          	mv	t1,s5
   19c54:	000c8c9b          	sext.w	s9,s9
   19c58:	00200793          	li	a5,2
   19c5c:	07800d13          	li	s10,120
   19c60:	e61ff06f          	j	19ac0 <_svfprintf_r+0x7b0>
   19c64:	06500693          	li	a3,101
   19c68:	b7a6d8e3          	bge	a3,s10,197d8 <_svfprintf_r+0x4c8>
   19c6c:	0f013503          	ld	a0,240(sp)
   19c70:	0f813583          	ld	a1,248(sp)
   19c74:	00000613          	li	a2,0
   19c78:	00000693          	li	a3,0
   19c7c:	791060ef          	jal	20c0c <__eqtf2>
   19c80:	58051863          	bnez	a0,1a210 <_svfprintf_r+0xf00>
   19c84:	10812783          	lw	a5,264(sp)
   19c88:	000236b7          	lui	a3,0x23
   19c8c:	ba068693          	add	a3,a3,-1120 # 22ba0 <__clz_tab+0x158>
   19c90:	0017879b          	addw	a5,a5,1
   19c94:	00d43023          	sd	a3,0(s0)
   19c98:	001b8b93          	add	s7,s7,1
   19c9c:	00100693          	li	a3,1
   19ca0:	00d43423          	sd	a3,8(s0)
   19ca4:	10f12423          	sw	a5,264(sp)
   19ca8:	0007869b          	sext.w	a3,a5
   19cac:	11713823          	sd	s7,272(sp)
   19cb0:	00700793          	li	a5,7
   19cb4:	01040413          	add	s0,s0,16
   19cb8:	66d7c0e3          	blt	a5,a3,1ab18 <_svfprintf_r+0x1808>
   19cbc:	0d812783          	lw	a5,216(sp)
   19cc0:	03813703          	ld	a4,56(sp)
   19cc4:	0ae7d6e3          	bge	a5,a4,1a570 <_svfprintf_r+0x1260>
   19cc8:	05813683          	ld	a3,88(sp)
   19ccc:	10812783          	lw	a5,264(sp)
   19cd0:	06013603          	ld	a2,96(sp)
   19cd4:	01768733          	add	a4,a3,s7
   19cd8:	0017879b          	addw	a5,a5,1
   19cdc:	00d43423          	sd	a3,8(s0)
   19ce0:	00c43023          	sd	a2,0(s0)
   19ce4:	0007869b          	sext.w	a3,a5
   19ce8:	10f12423          	sw	a5,264(sp)
   19cec:	10e13823          	sd	a4,272(sp)
   19cf0:	00700793          	li	a5,7
   19cf4:	01040413          	add	s0,s0,16
   19cf8:	20d7cee3          	blt	a5,a3,1a714 <_svfprintf_r+0x1404>
   19cfc:	03813783          	ld	a5,56(sp)
   19d00:	fff78c9b          	addw	s9,a5,-1
   19d04:	8d905ae3          	blez	s9,195d8 <_svfprintf_r+0x2c8>
   19d08:	00023f37          	lui	t5,0x23
   19d0c:	01000693          	li	a3,16
   19d10:	10812783          	lw	a5,264(sp)
   19d14:	4e8f0b93          	add	s7,t5,1256 # 234e8 <zeroes.0>
   19d18:	6396d0e3          	bge	a3,s9,1ab38 <_svfprintf_r+0x1828>
   19d1c:	00013a83          	ld	s5,0(sp)
   19d20:	01000d13          	li	s10,16
   19d24:	00700d93          	li	s11,7
   19d28:	00c0006f          	j	19d34 <_svfprintf_r+0xa24>
   19d2c:	ff0c8c9b          	addw	s9,s9,-16
   19d30:	619d54e3          	bge	s10,s9,1ab38 <_svfprintf_r+0x1828>
   19d34:	0017879b          	addw	a5,a5,1
   19d38:	01070713          	add	a4,a4,16
   19d3c:	01743023          	sd	s7,0(s0)
   19d40:	01a43423          	sd	s10,8(s0)
   19d44:	10e13823          	sd	a4,272(sp)
   19d48:	10f12423          	sw	a5,264(sp)
   19d4c:	01040413          	add	s0,s0,16
   19d50:	fcfddee3          	bge	s11,a5,19d2c <_svfprintf_r+0xa1c>
   19d54:	10010613          	add	a2,sp,256
   19d58:	000a8593          	mv	a1,s5
   19d5c:	00098513          	mv	a0,s3
   19d60:	56c040ef          	jal	1e2cc <__ssprint_r>
   19d64:	2a051063          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   19d68:	11013703          	ld	a4,272(sp)
   19d6c:	10812783          	lw	a5,264(sp)
   19d70:	18010413          	add	s0,sp,384
   19d74:	fb9ff06f          	j	19d2c <_svfprintf_r+0xa1c>
   19d78:	00090c93          	mv	s9,s2
   19d7c:	00100713          	li	a4,1
   19d80:	38e78c63          	beq	a5,a4,1a118 <_svfprintf_r+0xe08>
   19d84:	00200713          	li	a4,2
   19d88:	06e78463          	beq	a5,a4,19df0 <_svfprintf_r+0xae0>
   19d8c:	17c10a93          	add	s5,sp,380
   19d90:	000a8b13          	mv	s6,s5
   19d94:	007bf713          	and	a4,s7,7
   19d98:	03070713          	add	a4,a4,48
   19d9c:	feeb0fa3          	sb	a4,-1(s6)
   19da0:	003bdb93          	srl	s7,s7,0x3
   19da4:	000b0613          	mv	a2,s6
   19da8:	fffb0b13          	add	s6,s6,-1
   19dac:	fe0b94e3          	bnez	s7,19d94 <_svfprintf_r+0xa84>
   19db0:	001cf593          	and	a1,s9,1
   19db4:	06058263          	beqz	a1,19e18 <_svfprintf_r+0xb08>
   19db8:	03000593          	li	a1,48
   19dbc:	04b70e63          	beq	a4,a1,19e18 <_svfprintf_r+0xb08>
   19dc0:	ffe60613          	add	a2,a2,-2
   19dc4:	febb0fa3          	sb	a1,-1(s6)
   19dc8:	40ca8dbb          	subw	s11,s5,a2
   19dcc:	000c8913          	mv	s2,s9
   19dd0:	00060b13          	mv	s6,a2
   19dd4:	d1dff06f          	j	19af0 <_svfprintf_r+0x7e0>
   19dd8:	00100713          	li	a4,1
   19ddc:	00e79463          	bne	a5,a4,19de4 <_svfprintf_r+0xad4>
   19de0:	77c0106f          	j	1b55c <_svfprintf_r+0x224c>
   19de4:	00200713          	li	a4,2
   19de8:	00090c93          	mv	s9,s2
   19dec:	fae790e3          	bne	a5,a4,19d8c <_svfprintf_r+0xa7c>
   19df0:	06813703          	ld	a4,104(sp)
   19df4:	17c10a93          	add	s5,sp,380
   19df8:	000a8b13          	mv	s6,s5
   19dfc:	00fbf793          	and	a5,s7,15
   19e00:	00f707b3          	add	a5,a4,a5
   19e04:	0007c783          	lbu	a5,0(a5)
   19e08:	004bdb93          	srl	s7,s7,0x4
   19e0c:	fffb0b13          	add	s6,s6,-1
   19e10:	00fb0023          	sb	a5,0(s6)
   19e14:	fe0b94e3          	bnez	s7,19dfc <_svfprintf_r+0xaec>
   19e18:	416a8dbb          	subw	s11,s5,s6
   19e1c:	000c8913          	mv	s2,s9
   19e20:	cd1ff06f          	j	19af0 <_svfprintf_r+0x7e0>
   19e24:	418a0abb          	subw	s5,s4,s8
   19e28:	f7505c63          	blez	s5,195a0 <_svfprintf_r+0x290>
   19e2c:	00023f37          	lui	t5,0x23
   19e30:	01000593          	li	a1,16
   19e34:	000b8713          	mv	a4,s7
   19e38:	10812603          	lw	a2,264(sp)
   19e3c:	4e8f0b93          	add	s7,t5,1256 # 234e8 <zeroes.0>
   19e40:	0955de63          	bge	a1,s5,19edc <_svfprintf_r+0xbcc>
   19e44:	08913823          	sd	s1,144(sp)
   19e48:	01000f93          	li	t6,16
   19e4c:	000a8493          	mv	s1,s5
   19e50:	00700c93          	li	s9,7
   19e54:	000a0a93          	mv	s5,s4
   19e58:	00090a13          	mv	s4,s2
   19e5c:	000b8913          	mv	s2,s7
   19e60:	000b0b93          	mv	s7,s6
   19e64:	00030b13          	mv	s6,t1
   19e68:	00c0006f          	j	19e74 <_svfprintf_r+0xb64>
   19e6c:	ff04849b          	addw	s1,s1,-16
   19e70:	049fd863          	bge	t6,s1,19ec0 <_svfprintf_r+0xbb0>
   19e74:	0016061b          	addw	a2,a2,1
   19e78:	01070713          	add	a4,a4,16
   19e7c:	01243023          	sd	s2,0(s0)
   19e80:	01f43423          	sd	t6,8(s0)
   19e84:	10e13823          	sd	a4,272(sp)
   19e88:	10c12423          	sw	a2,264(sp)
   19e8c:	01040413          	add	s0,s0,16
   19e90:	fcccdee3          	bge	s9,a2,19e6c <_svfprintf_r+0xb5c>
   19e94:	00013583          	ld	a1,0(sp)
   19e98:	10010613          	add	a2,sp,256
   19e9c:	00098513          	mv	a0,s3
   19ea0:	42c040ef          	jal	1e2cc <__ssprint_r>
   19ea4:	16051063          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   19ea8:	01000f93          	li	t6,16
   19eac:	ff04849b          	addw	s1,s1,-16
   19eb0:	11013703          	ld	a4,272(sp)
   19eb4:	10812603          	lw	a2,264(sp)
   19eb8:	18010413          	add	s0,sp,384
   19ebc:	fa9fcce3          	blt	t6,s1,19e74 <_svfprintf_r+0xb64>
   19ec0:	000b0313          	mv	t1,s6
   19ec4:	000b8b13          	mv	s6,s7
   19ec8:	00090b93          	mv	s7,s2
   19ecc:	000a0913          	mv	s2,s4
   19ed0:	000a8a13          	mv	s4,s5
   19ed4:	00048a93          	mv	s5,s1
   19ed8:	09013483          	ld	s1,144(sp)
   19edc:	0016059b          	addw	a1,a2,1
   19ee0:	00ea8733          	add	a4,s5,a4
   19ee4:	01743023          	sd	s7,0(s0)
   19ee8:	01543423          	sd	s5,8(s0)
   19eec:	10e13823          	sd	a4,272(sp)
   19ef0:	10b12423          	sw	a1,264(sp)
   19ef4:	00700613          	li	a2,7
   19ef8:	48b64ce3          	blt	a2,a1,1ab90 <_svfprintf_r+0x1880>
   19efc:	41b30cbb          	subw	s9,t1,s11
   19f00:	01040413          	add	s0,s0,16
   19f04:	00070b93          	mv	s7,a4
   19f08:	eb905063          	blez	s9,195a8 <_svfprintf_r+0x298>
   19f0c:	00023f37          	lui	t5,0x23
   19f10:	01000593          	li	a1,16
   19f14:	000b8713          	mv	a4,s7
   19f18:	10812603          	lw	a2,264(sp)
   19f1c:	4e8f0b93          	add	s7,t5,1256 # 234e8 <zeroes.0>
   19f20:	0b95d263          	bge	a1,s9,19fc4 <_svfprintf_r+0xcb4>
   19f24:	00813b83          	ld	s7,8(sp)
   19f28:	01000893          	li	a7,16
   19f2c:	00700a93          	li	s5,7
   19f30:	000b8793          	mv	a5,s7
   19f34:	000b0b93          	mv	s7,s6
   19f38:	000a0b13          	mv	s6,s4
   19f3c:	00090a13          	mv	s4,s2
   19f40:	00048913          	mv	s2,s1
   19f44:	000c8493          	mv	s1,s9
   19f48:	00078c93          	mv	s9,a5
   19f4c:	00c0006f          	j	19f58 <_svfprintf_r+0xc48>
   19f50:	ff04849b          	addw	s1,s1,-16
   19f54:	0498da63          	bge	a7,s1,19fa8 <_svfprintf_r+0xc98>
   19f58:	00813683          	ld	a3,8(sp)
   19f5c:	0016061b          	addw	a2,a2,1
   19f60:	01070713          	add	a4,a4,16
   19f64:	00d43023          	sd	a3,0(s0)
   19f68:	01143423          	sd	a7,8(s0)
   19f6c:	10e13823          	sd	a4,272(sp)
   19f70:	10c12423          	sw	a2,264(sp)
   19f74:	01040413          	add	s0,s0,16
   19f78:	fccadce3          	bge	s5,a2,19f50 <_svfprintf_r+0xc40>
   19f7c:	00013583          	ld	a1,0(sp)
   19f80:	10010613          	add	a2,sp,256
   19f84:	00098513          	mv	a0,s3
   19f88:	344040ef          	jal	1e2cc <__ssprint_r>
   19f8c:	06051c63          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   19f90:	01000893          	li	a7,16
   19f94:	ff04849b          	addw	s1,s1,-16
   19f98:	11013703          	ld	a4,272(sp)
   19f9c:	10812603          	lw	a2,264(sp)
   19fa0:	18010413          	add	s0,sp,384
   19fa4:	fa98cae3          	blt	a7,s1,19f58 <_svfprintf_r+0xc48>
   19fa8:	000c8793          	mv	a5,s9
   19fac:	00048c93          	mv	s9,s1
   19fb0:	00090493          	mv	s1,s2
   19fb4:	000a0913          	mv	s2,s4
   19fb8:	000b0a13          	mv	s4,s6
   19fbc:	000b8b13          	mv	s6,s7
   19fc0:	00078b93          	mv	s7,a5
   19fc4:	0016059b          	addw	a1,a2,1
   19fc8:	00ec8733          	add	a4,s9,a4
   19fcc:	01743023          	sd	s7,0(s0)
   19fd0:	01943423          	sd	s9,8(s0)
   19fd4:	10e13823          	sd	a4,272(sp)
   19fd8:	10b12423          	sw	a1,264(sp)
   19fdc:	00700613          	li	a2,7
   19fe0:	48b64663          	blt	a2,a1,1a46c <_svfprintf_r+0x115c>
   19fe4:	01040413          	add	s0,s0,16
   19fe8:	00070b93          	mv	s7,a4
   19fec:	dbcff06f          	j	195a8 <_svfprintf_r+0x298>
   19ff0:	00013583          	ld	a1,0(sp)
   19ff4:	10010613          	add	a2,sp,256
   19ff8:	00098513          	mv	a0,s3
   19ffc:	2d0040ef          	jal	1e2cc <__ssprint_r>
   1a000:	e0050263          	beqz	a0,19604 <_svfprintf_r+0x2f4>
   1a004:	01813583          	ld	a1,24(sp)
   1a008:	e2058863          	beqz	a1,19638 <_svfprintf_r+0x328>
   1a00c:	05013503          	ld	a0,80(sp)
   1a010:	c01f90ef          	jal	13c10 <_free_r>
   1a014:	e24ff06f          	j	19638 <_svfprintf_r+0x328>
   1a018:	000238b7          	lui	a7,0x23
   1a01c:	01000513          	li	a0,16
   1a020:	11013583          	ld	a1,272(sp)
   1a024:	10812603          	lw	a2,264(sp)
   1a028:	4f888b93          	add	s7,a7,1272 # 234f8 <blanks.1>
   1a02c:	08e55c63          	bge	a0,a4,1a0c4 <_svfprintf_r+0xdb4>
   1a030:	08913823          	sd	s1,144(sp)
   1a034:	00040793          	mv	a5,s0
   1a038:	000b8493          	mv	s1,s7
   1a03c:	01000f13          	li	t5,16
   1a040:	000b0b93          	mv	s7,s6
   1a044:	00700393          	li	t2,7
   1a048:	00070413          	mv	s0,a4
   1a04c:	00030b13          	mv	s6,t1
   1a050:	00c0006f          	j	1a05c <_svfprintf_r+0xd4c>
   1a054:	ff04041b          	addw	s0,s0,-16
   1a058:	048f5a63          	bge	t5,s0,1a0ac <_svfprintf_r+0xd9c>
   1a05c:	0016061b          	addw	a2,a2,1
   1a060:	01058593          	add	a1,a1,16
   1a064:	0097b023          	sd	s1,0(a5)
   1a068:	01e7b423          	sd	t5,8(a5)
   1a06c:	10b13823          	sd	a1,272(sp)
   1a070:	10c12423          	sw	a2,264(sp)
   1a074:	01078793          	add	a5,a5,16
   1a078:	fcc3dee3          	bge	t2,a2,1a054 <_svfprintf_r+0xd44>
   1a07c:	00013583          	ld	a1,0(sp)
   1a080:	10010613          	add	a2,sp,256
   1a084:	00098513          	mv	a0,s3
   1a088:	244040ef          	jal	1e2cc <__ssprint_r>
   1a08c:	f6051ce3          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1a090:	01000f13          	li	t5,16
   1a094:	ff04041b          	addw	s0,s0,-16
   1a098:	11013583          	ld	a1,272(sp)
   1a09c:	10812603          	lw	a2,264(sp)
   1a0a0:	18010793          	add	a5,sp,384
   1a0a4:	00700393          	li	t2,7
   1a0a8:	fa8f4ae3          	blt	t5,s0,1a05c <_svfprintf_r+0xd4c>
   1a0ac:	000b0313          	mv	t1,s6
   1a0b0:	000b8b13          	mv	s6,s7
   1a0b4:	00048b93          	mv	s7,s1
   1a0b8:	09013483          	ld	s1,144(sp)
   1a0bc:	00040713          	mv	a4,s0
   1a0c0:	00078413          	mv	s0,a5
   1a0c4:	00b705b3          	add	a1,a4,a1
   1a0c8:	0016061b          	addw	a2,a2,1
   1a0cc:	00e43423          	sd	a4,8(s0)
   1a0d0:	01743023          	sd	s7,0(s0)
   1a0d4:	10b13823          	sd	a1,272(sp)
   1a0d8:	10c12423          	sw	a2,264(sp)
   1a0dc:	0006059b          	sext.w	a1,a2
   1a0e0:	00700713          	li	a4,7
   1a0e4:	01040413          	add	s0,s0,16
   1a0e8:	c2b75c63          	bge	a4,a1,19520 <_svfprintf_r+0x210>
   1a0ec:	00013583          	ld	a1,0(sp)
   1a0f0:	10010613          	add	a2,sp,256
   1a0f4:	00098513          	mv	a0,s3
   1a0f8:	08613823          	sd	t1,144(sp)
   1a0fc:	1d0040ef          	jal	1e2cc <__ssprint_r>
   1a100:	f00512e3          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1a104:	09013303          	ld	t1,144(sp)
   1a108:	18010413          	add	s0,sp,384
   1a10c:	c14ff06f          	j	19520 <_svfprintf_r+0x210>
   1a110:	00090c93          	mv	s9,s2
   1a114:	02e13023          	sd	a4,32(sp)
   1a118:	00900793          	li	a5,9
   1a11c:	5377e263          	bltu	a5,s7,1a640 <_svfprintf_r+0x1330>
   1a120:	030b8b9b          	addw	s7,s7,48
   1a124:	17710da3          	sb	s7,379(sp)
   1a128:	000c8913          	mv	s2,s9
   1a12c:	00100d93          	li	s11,1
   1a130:	17b10b13          	add	s6,sp,379
   1a134:	9bdff06f          	j	19af0 <_svfprintf_r+0x7e0>
   1a138:	00013583          	ld	a1,0(sp)
   1a13c:	10010613          	add	a2,sp,256
   1a140:	00098513          	mv	a0,s3
   1a144:	08613823          	sd	t1,144(sp)
   1a148:	184040ef          	jal	1e2cc <__ssprint_r>
   1a14c:	ea051ce3          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1a150:	11013b83          	ld	s7,272(sp)
   1a154:	09013303          	ld	t1,144(sp)
   1a158:	18010413          	add	s0,sp,384
   1a15c:	c3cff06f          	j	19598 <_svfprintf_r+0x288>
   1a160:	000238b7          	lui	a7,0x23
   1a164:	01000693          	li	a3,16
   1a168:	10812783          	lw	a5,264(sp)
   1a16c:	4f888b93          	add	s7,a7,1272 # 234f8 <blanks.1>
   1a170:	0726d263          	bge	a3,s2,1a1d4 <_svfprintf_r+0xec4>
   1a174:	00013a83          	ld	s5,0(sp)
   1a178:	01000c93          	li	s9,16
   1a17c:	00700d13          	li	s10,7
   1a180:	00c0006f          	j	1a18c <_svfprintf_r+0xe7c>
   1a184:	ff09091b          	addw	s2,s2,-16
   1a188:	052cd663          	bge	s9,s2,1a1d4 <_svfprintf_r+0xec4>
   1a18c:	0017879b          	addw	a5,a5,1
   1a190:	01070713          	add	a4,a4,16
   1a194:	01743023          	sd	s7,0(s0)
   1a198:	01943423          	sd	s9,8(s0)
   1a19c:	10e13823          	sd	a4,272(sp)
   1a1a0:	10f12423          	sw	a5,264(sp)
   1a1a4:	01040413          	add	s0,s0,16
   1a1a8:	fcfd5ee3          	bge	s10,a5,1a184 <_svfprintf_r+0xe74>
   1a1ac:	10010613          	add	a2,sp,256
   1a1b0:	000a8593          	mv	a1,s5
   1a1b4:	00098513          	mv	a0,s3
   1a1b8:	114040ef          	jal	1e2cc <__ssprint_r>
   1a1bc:	e40514e3          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1a1c0:	ff09091b          	addw	s2,s2,-16
   1a1c4:	11013703          	ld	a4,272(sp)
   1a1c8:	10812783          	lw	a5,264(sp)
   1a1cc:	18010413          	add	s0,sp,384
   1a1d0:	fb2ccee3          	blt	s9,s2,1a18c <_svfprintf_r+0xe7c>
   1a1d4:	0017869b          	addw	a3,a5,1
   1a1d8:	01270733          	add	a4,a4,s2
   1a1dc:	01743023          	sd	s7,0(s0)
   1a1e0:	01243423          	sd	s2,8(s0)
   1a1e4:	10e13823          	sd	a4,272(sp)
   1a1e8:	10d12423          	sw	a3,264(sp)
   1a1ec:	00700793          	li	a5,7
   1a1f0:	bed7dc63          	bge	a5,a3,195e8 <_svfprintf_r+0x2d8>
   1a1f4:	00013583          	ld	a1,0(sp)
   1a1f8:	10010613          	add	a2,sp,256
   1a1fc:	00098513          	mv	a0,s3
   1a200:	0cc040ef          	jal	1e2cc <__ssprint_r>
   1a204:	e00510e3          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1a208:	11013703          	ld	a4,272(sp)
   1a20c:	bdcff06f          	j	195e8 <_svfprintf_r+0x2d8>
   1a210:	0d812603          	lw	a2,216(sp)
   1a214:	00c05ce3          	blez	a2,1aa2c <_svfprintf_r+0x171c>
   1a218:	03813783          	ld	a5,56(sp)
   1a21c:	03013703          	ld	a4,48(sp)
   1a220:	00fb0ab3          	add	s5,s6,a5
   1a224:	00078693          	mv	a3,a5
   1a228:	3ef74e63          	blt	a4,a5,1a624 <_svfprintf_r+0x1314>
   1a22c:	00068d1b          	sext.w	s10,a3
   1a230:	03a05663          	blez	s10,1a25c <_svfprintf_r+0xf4c>
   1a234:	10812603          	lw	a2,264(sp)
   1a238:	01ab8bb3          	add	s7,s7,s10
   1a23c:	01643023          	sd	s6,0(s0)
   1a240:	0016059b          	addw	a1,a2,1
   1a244:	01a43423          	sd	s10,8(s0)
   1a248:	11713823          	sd	s7,272(sp)
   1a24c:	10b12423          	sw	a1,264(sp)
   1a250:	00700613          	li	a2,7
   1a254:	01040413          	add	s0,s0,16
   1a258:	3ab642e3          	blt	a2,a1,1adfc <_svfprintf_r+0x1aec>
   1a25c:	fffd4613          	not	a2,s10
   1a260:	03013783          	ld	a5,48(sp)
   1a264:	43f65613          	sra	a2,a2,0x3f
   1a268:	00cd76b3          	and	a3,s10,a2
   1a26c:	40d78d3b          	subw	s10,a5,a3
   1a270:	53a04c63          	bgtz	s10,1a7a8 <_svfprintf_r+0x1498>
   1a274:	03013783          	ld	a5,48(sp)
   1a278:	40097693          	and	a3,s2,1024
   1a27c:	00fb0b33          	add	s6,s6,a5
   1a280:	5a069863          	bnez	a3,1a830 <_svfprintf_r+0x1520>
   1a284:	0d812683          	lw	a3,216(sp)
   1a288:	03813783          	ld	a5,56(sp)
   1a28c:	00f6c663          	blt	a3,a5,1a298 <_svfprintf_r+0xf88>
   1a290:	00197613          	and	a2,s2,1
   1a294:	380608e3          	beqz	a2,1ae24 <_svfprintf_r+0x1b14>
   1a298:	10812603          	lw	a2,264(sp)
   1a29c:	05813783          	ld	a5,88(sp)
   1a2a0:	06013583          	ld	a1,96(sp)
   1a2a4:	01040413          	add	s0,s0,16
   1a2a8:	01778733          	add	a4,a5,s7
   1a2ac:	feb43823          	sd	a1,-16(s0)
   1a2b0:	0016059b          	addw	a1,a2,1
   1a2b4:	fef43c23          	sd	a5,-8(s0)
   1a2b8:	10e13823          	sd	a4,272(sp)
   1a2bc:	10b12423          	sw	a1,264(sp)
   1a2c0:	00700613          	li	a2,7
   1a2c4:	00b65463          	bge	a2,a1,1a2cc <_svfprintf_r+0xfbc>
   1a2c8:	1a00106f          	j	1b468 <_svfprintf_r+0x2158>
   1a2cc:	03813783          	ld	a5,56(sp)
   1a2d0:	416a8cb3          	sub	s9,s5,s6
   1a2d4:	000c859b          	sext.w	a1,s9
   1a2d8:	40d7863b          	subw	a2,a5,a3
   1a2dc:	00b65463          	bge	a2,a1,1a2e4 <_svfprintf_r+0xfd4>
   1a2e0:	00060c93          	mv	s9,a2
   1a2e4:	000c8c9b          	sext.w	s9,s9
   1a2e8:	03905863          	blez	s9,1a318 <_svfprintf_r+0x1008>
   1a2ec:	10812683          	lw	a3,264(sp)
   1a2f0:	01970733          	add	a4,a4,s9
   1a2f4:	01643023          	sd	s6,0(s0)
   1a2f8:	0016869b          	addw	a3,a3,1
   1a2fc:	01943423          	sd	s9,8(s0)
   1a300:	10e13823          	sd	a4,272(sp)
   1a304:	10d12423          	sw	a3,264(sp)
   1a308:	00700793          	li	a5,7
   1a30c:	01040413          	add	s0,s0,16
   1a310:	00d7d463          	bge	a5,a3,1a318 <_svfprintf_r+0x1008>
   1a314:	2040106f          	j	1b518 <_svfprintf_r+0x2208>
   1a318:	fffcc793          	not	a5,s9
   1a31c:	43f7d793          	sra	a5,a5,0x3f
   1a320:	00fcfcb3          	and	s9,s9,a5
   1a324:	41960cbb          	subw	s9,a2,s9
   1a328:	ab905863          	blez	s9,195d8 <_svfprintf_r+0x2c8>
   1a32c:	00023f37          	lui	t5,0x23
   1a330:	01000693          	li	a3,16
   1a334:	10812783          	lw	a5,264(sp)
   1a338:	4e8f0b93          	add	s7,t5,1256 # 234e8 <zeroes.0>
   1a33c:	7f96de63          	bge	a3,s9,1ab38 <_svfprintf_r+0x1828>
   1a340:	00013a83          	ld	s5,0(sp)
   1a344:	01000d13          	li	s10,16
   1a348:	00700d93          	li	s11,7
   1a34c:	00c0006f          	j	1a358 <_svfprintf_r+0x1048>
   1a350:	ff0c8c9b          	addw	s9,s9,-16
   1a354:	7f9d5263          	bge	s10,s9,1ab38 <_svfprintf_r+0x1828>
   1a358:	0017879b          	addw	a5,a5,1
   1a35c:	01070713          	add	a4,a4,16
   1a360:	01743023          	sd	s7,0(s0)
   1a364:	01a43423          	sd	s10,8(s0)
   1a368:	10e13823          	sd	a4,272(sp)
   1a36c:	10f12423          	sw	a5,264(sp)
   1a370:	01040413          	add	s0,s0,16
   1a374:	fcfddee3          	bge	s11,a5,1a350 <_svfprintf_r+0x1040>
   1a378:	10010613          	add	a2,sp,256
   1a37c:	000a8593          	mv	a1,s5
   1a380:	00098513          	mv	a0,s3
   1a384:	749030ef          	jal	1e2cc <__ssprint_r>
   1a388:	c6051ee3          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1a38c:	11013703          	ld	a4,272(sp)
   1a390:	10812783          	lw	a5,264(sp)
   1a394:	18010413          	add	s0,sp,384
   1a398:	fb9ff06f          	j	1a350 <_svfprintf_r+0x1040>
   1a39c:	00197613          	and	a2,s2,1
   1a3a0:	c4061463          	bnez	a2,197e8 <_svfprintf_r+0x4d8>
   1a3a4:	10812603          	lw	a2,264(sp)
   1a3a8:	001b8d13          	add	s10,s7,1
   1a3ac:	01643023          	sd	s6,0(s0)
   1a3b0:	0016079b          	addw	a5,a2,1
   1a3b4:	00d43423          	sd	a3,8(s0)
   1a3b8:	10f12423          	sw	a5,264(sp)
   1a3bc:	0007841b          	sext.w	s0,a5
   1a3c0:	11a13823          	sd	s10,272(sp)
   1a3c4:	00700793          	li	a5,7
   1a3c8:	cc87d063          	bge	a5,s0,19888 <_svfprintf_r+0x578>
   1a3cc:	00013583          	ld	a1,0(sp)
   1a3d0:	10010613          	add	a2,sp,256
   1a3d4:	00098513          	mv	a0,s3
   1a3d8:	6f5030ef          	jal	1e2cc <__ssprint_r>
   1a3dc:	c20514e3          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1a3e0:	11013d03          	ld	s10,272(sp)
   1a3e4:	10812403          	lw	s0,264(sp)
   1a3e8:	18010c93          	add	s9,sp,384
   1a3ec:	c9cff06f          	j	19888 <_svfprintf_r+0x578>
   1a3f0:	03813703          	ld	a4,56(sp)
   1a3f4:	00100793          	li	a5,1
   1a3f8:	c8e7d863          	bge	a5,a4,19888 <_svfprintf_r+0x578>
   1a3fc:	00023f37          	lui	t5,0x23
   1a400:	01100793          	li	a5,17
   1a404:	4e8f0b93          	add	s7,t5,1256 # 234e8 <zeroes.0>
   1a408:	02e7d8e3          	bge	a5,a4,1ac38 <_svfprintf_r+0x1928>
   1a40c:	00013a83          	ld	s5,0(sp)
   1a410:	01000713          	li	a4,16
   1a414:	00700b13          	li	s6,7
   1a418:	00c0006f          	j	1a424 <_svfprintf_r+0x1114>
   1a41c:	ff0d8d9b          	addw	s11,s11,-16
   1a420:	01b75ce3          	bge	a4,s11,1ac38 <_svfprintf_r+0x1928>
   1a424:	0014041b          	addw	s0,s0,1
   1a428:	010d0d13          	add	s10,s10,16
   1a42c:	017cb023          	sd	s7,0(s9)
   1a430:	00ecb423          	sd	a4,8(s9)
   1a434:	11a13823          	sd	s10,272(sp)
   1a438:	10812423          	sw	s0,264(sp)
   1a43c:	010c8c93          	add	s9,s9,16
   1a440:	fc8b5ee3          	bge	s6,s0,1a41c <_svfprintf_r+0x110c>
   1a444:	10010613          	add	a2,sp,256
   1a448:	000a8593          	mv	a1,s5
   1a44c:	00098513          	mv	a0,s3
   1a450:	67d030ef          	jal	1e2cc <__ssprint_r>
   1a454:	ba0518e3          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1a458:	11013d03          	ld	s10,272(sp)
   1a45c:	10812403          	lw	s0,264(sp)
   1a460:	18010c93          	add	s9,sp,384
   1a464:	01000713          	li	a4,16
   1a468:	fb5ff06f          	j	1a41c <_svfprintf_r+0x110c>
   1a46c:	00013583          	ld	a1,0(sp)
   1a470:	10010613          	add	a2,sp,256
   1a474:	00098513          	mv	a0,s3
   1a478:	655030ef          	jal	1e2cc <__ssprint_r>
   1a47c:	b80514e3          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1a480:	11013b83          	ld	s7,272(sp)
   1a484:	18010413          	add	s0,sp,384
   1a488:	920ff06f          	j	195a8 <_svfprintf_r+0x298>
   1a48c:	01097793          	and	a5,s2,16
   1a490:	12079e63          	bnez	a5,1a5cc <_svfprintf_r+0x12bc>
   1a494:	02013683          	ld	a3,32(sp)
   1a498:	04097793          	and	a5,s2,64
   1a49c:	0006ab83          	lw	s7,0(a3)
   1a4a0:	060780e3          	beqz	a5,1ad00 <_svfprintf_r+0x19f0>
   1a4a4:	030b9b93          	sll	s7,s7,0x30
   1a4a8:	030bdb93          	srl	s7,s7,0x30
   1a4ac:	ef8ff06f          	j	19ba4 <_svfprintf_r+0x894>
   1a4b0:	010cf793          	and	a5,s9,16
   1a4b4:	10079263          	bnez	a5,1a5b8 <_svfprintf_r+0x12a8>
   1a4b8:	02013683          	ld	a3,32(sp)
   1a4bc:	040cf793          	and	a5,s9,64
   1a4c0:	0006ab83          	lw	s7,0(a3)
   1a4c4:	040786e3          	beqz	a5,1ad10 <_svfprintf_r+0x1a00>
   1a4c8:	030b9b93          	sll	s7,s7,0x30
   1a4cc:	030bdb93          	srl	s7,s7,0x30
   1a4d0:	02e13023          	sd	a4,32(sp)
   1a4d4:	00100793          	li	a5,1
   1a4d8:	de8ff06f          	j	19ac0 <_svfprintf_r+0x7b0>
   1a4dc:	01097793          	and	a5,s2,16
   1a4e0:	0c079463          	bnez	a5,1a5a8 <_svfprintf_r+0x1298>
   1a4e4:	02013683          	ld	a3,32(sp)
   1a4e8:	04097793          	and	a5,s2,64
   1a4ec:	0006ab83          	lw	s7,0(a3)
   1a4f0:	02078ce3          	beqz	a5,1ad28 <_svfprintf_r+0x1a18>
   1a4f4:	010b9b9b          	sllw	s7,s7,0x10
   1a4f8:	410bdb9b          	sraw	s7,s7,0x10
   1a4fc:	000b8793          	mv	a5,s7
   1a500:	e407da63          	bgez	a5,19b54 <_svfprintf_r+0x844>
   1a504:	02e13023          	sd	a4,32(sp)
   1a508:	41700bb3          	neg	s7,s7
   1a50c:	00090c93          	mv	s9,s2
   1a510:	02d00713          	li	a4,45
   1a514:	00100793          	li	a5,1
   1a518:	dacff06f          	j	19ac4 <_svfprintf_r+0x7b4>
   1a51c:	00000d93          	li	s11,0
   1a520:	17c10b13          	add	s6,sp,380
   1a524:	dccff06f          	j	19af0 <_svfprintf_r+0x7e0>
   1a528:	00013583          	ld	a1,0(sp)
   1a52c:	10010613          	add	a2,sp,256
   1a530:	00098513          	mv	a0,s3
   1a534:	599030ef          	jal	1e2cc <__ssprint_r>
   1a538:	ac0516e3          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1a53c:	11013703          	ld	a4,272(sp)
   1a540:	10812683          	lw	a3,264(sp)
   1a544:	18010c93          	add	s9,sp,384
   1a548:	accff06f          	j	19814 <_svfprintf_r+0x504>
   1a54c:	00013583          	ld	a1,0(sp)
   1a550:	10010613          	add	a2,sp,256
   1a554:	00098513          	mv	a0,s3
   1a558:	575030ef          	jal	1e2cc <__ssprint_r>
   1a55c:	aa0514e3          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1a560:	11013d03          	ld	s10,272(sp)
   1a564:	10812403          	lw	s0,264(sp)
   1a568:	18010c93          	add	s9,sp,384
   1a56c:	ad4ff06f          	j	19840 <_svfprintf_r+0x530>
   1a570:	00197793          	and	a5,s2,1
   1a574:	000b8713          	mv	a4,s7
   1a578:	00079463          	bnez	a5,1a580 <_svfprintf_r+0x1270>
   1a57c:	85cff06f          	j	195d8 <_svfprintf_r+0x2c8>
   1a580:	f48ff06f          	j	19cc8 <_svfprintf_r+0x9b8>
   1a584:	000a8313          	mv	t1,s5
   1a588:	db0ff06f          	j	19b38 <_svfprintf_r+0x828>
   1a58c:	0004ce03          	lbu	t3,0(s1)
   1a590:	02f13023          	sd	a5,32(sp)
   1a594:	eddfe06f          	j	19470 <_svfprintf_r+0x160>
   1a598:	03000793          	li	a5,48
   1a59c:	16f10da3          	sb	a5,379(sp)
   1a5a0:	17b10b13          	add	s6,sp,379
   1a5a4:	d4cff06f          	j	19af0 <_svfprintf_r+0x7e0>
   1a5a8:	02013783          	ld	a5,32(sp)
   1a5ac:	0007b783          	ld	a5,0(a5)
   1a5b0:	00078b93          	mv	s7,a5
   1a5b4:	d9cff06f          	j	19b50 <_svfprintf_r+0x840>
   1a5b8:	02013783          	ld	a5,32(sp)
   1a5bc:	02e13023          	sd	a4,32(sp)
   1a5c0:	0007bb83          	ld	s7,0(a5)
   1a5c4:	00100793          	li	a5,1
   1a5c8:	cf8ff06f          	j	19ac0 <_svfprintf_r+0x7b0>
   1a5cc:	02013783          	ld	a5,32(sp)
   1a5d0:	0007bb83          	ld	s7,0(a5)
   1a5d4:	dd0ff06f          	j	19ba4 <_svfprintf_r+0x894>
   1a5d8:	01097793          	and	a5,s2,16
   1a5dc:	de079e63          	bnez	a5,19bd8 <_svfprintf_r+0x8c8>
   1a5e0:	04097793          	and	a5,s2,64
   1a5e4:	24079ce3          	bnez	a5,1b03c <_svfprintf_r+0x1d2c>
   1a5e8:	20097913          	and	s2,s2,512
   1a5ec:	01013783          	ld	a5,16(sp)
   1a5f0:	00091463          	bnez	s2,1a5f8 <_svfprintf_r+0x12e8>
   1a5f4:	1380106f          	j	1b72c <_svfprintf_r+0x241c>
   1a5f8:	00f70023          	sb	a5,0(a4)
   1a5fc:	de4ff06f          	j	19be0 <_svfprintf_r+0x8d0>
   1a600:	02013783          	ld	a5,32(sp)
   1a604:	01513c23          	sd	s5,24(sp)
   1a608:	0007b503          	ld	a0,0(a5)
   1a60c:	00878a93          	add	s5,a5,8
   1a610:	03513023          	sd	s5,32(sp)
   1a614:	74d070ef          	jal	22560 <__extenddftf2>
   1a618:	01813303          	ld	t1,24(sp)
   1a61c:	00050713          	mv	a4,a0
   1a620:	8d0ff06f          	j	196f0 <_svfprintf_r+0x3e0>
   1a624:	00070693          	mv	a3,a4
   1a628:	00068d1b          	sext.w	s10,a3
   1a62c:	c1a044e3          	bgtz	s10,1a234 <_svfprintf_r+0xf24>
   1a630:	c2dff06f          	j	1a25c <_svfprintf_r+0xf4c>
   1a634:	02e13023          	sd	a4,32(sp)
   1a638:	00900793          	li	a5,9
   1a63c:	af77f2e3          	bgeu	a5,s7,1a120 <_svfprintf_r+0xe10>
   1a640:	17c10a93          	add	s5,sp,380
   1a644:	07813803          	ld	a6,120(sp)
   1a648:	400cf793          	and	a5,s9,1024
   1a64c:	00000693          	li	a3,0
   1a650:	000a8593          	mv	a1,s5
   1a654:	00a00913          	li	s2,10
   1a658:	00900d93          	li	s11,9
   1a65c:	0ff00c13          	li	s8,255
   1a660:	0140006f          	j	1a674 <_svfprintf_r+0x1364>
   1a664:	032bd733          	divu	a4,s7,s2
   1a668:	037dfa63          	bgeu	s11,s7,1a69c <_svfprintf_r+0x138c>
   1a66c:	00070b93          	mv	s7,a4
   1a670:	000b0593          	mv	a1,s6
   1a674:	fff58b13          	add	s6,a1,-1
   1a678:	0016869b          	addw	a3,a3,1
   1a67c:	032bf733          	remu	a4,s7,s2
   1a680:	0307071b          	addw	a4,a4,48
   1a684:	fee58fa3          	sb	a4,-1(a1)
   1a688:	fc078ee3          	beqz	a5,1a664 <_svfprintf_r+0x1354>
   1a68c:	00084703          	lbu	a4,0(a6)
   1a690:	fce69ae3          	bne	a3,a4,1a664 <_svfprintf_r+0x1354>
   1a694:	fd8708e3          	beq	a4,s8,1a664 <_svfprintf_r+0x1354>
   1a698:	717de663          	bltu	s11,s7,1ada4 <_svfprintf_r+0x1a94>
   1a69c:	07013c23          	sd	a6,120(sp)
   1a6a0:	02d13c23          	sd	a3,56(sp)
   1a6a4:	416a8dbb          	subw	s11,s5,s6
   1a6a8:	000c8913          	mv	s2,s9
   1a6ac:	c44ff06f          	j	19af0 <_svfprintf_r+0x7e0>
   1a6b0:	000237b7          	lui	a5,0x23
   1a6b4:	b6878793          	add	a5,a5,-1176 # 22b68 <__clz_tab+0x120>
   1a6b8:	000a8313          	mv	t1,s5
   1a6bc:	06f13423          	sd	a5,104(sp)
   1a6c0:	02013683          	ld	a3,32(sp)
   1a6c4:	02097793          	and	a5,s2,32
   1a6c8:	00868713          	add	a4,a3,8
   1a6cc:	32078263          	beqz	a5,1a9f0 <_svfprintf_r+0x16e0>
   1a6d0:	0006bb83          	ld	s7,0(a3)
   1a6d4:	00197793          	and	a5,s2,1
   1a6d8:	00078e63          	beqz	a5,1a6f4 <_svfprintf_r+0x13e4>
   1a6dc:	000b8c63          	beqz	s7,1a6f4 <_svfprintf_r+0x13e4>
   1a6e0:	00296913          	or	s2,s2,2
   1a6e4:	03000793          	li	a5,48
   1a6e8:	0cf10823          	sb	a5,208(sp)
   1a6ec:	0da108a3          	sb	s10,209(sp)
   1a6f0:	0009091b          	sext.w	s2,s2
   1a6f4:	bff97c93          	and	s9,s2,-1025
   1a6f8:	000c8c9b          	sext.w	s9,s9
   1a6fc:	02e13023          	sd	a4,32(sp)
   1a700:	00200793          	li	a5,2
   1a704:	bbcff06f          	j	19ac0 <_svfprintf_r+0x7b0>
   1a708:	000a8313          	mv	t1,s5
   1a70c:	00090c93          	mv	s9,s2
   1a710:	b94ff06f          	j	19aa4 <_svfprintf_r+0x794>
   1a714:	00013583          	ld	a1,0(sp)
   1a718:	10010613          	add	a2,sp,256
   1a71c:	00098513          	mv	a0,s3
   1a720:	3ad030ef          	jal	1e2cc <__ssprint_r>
   1a724:	8e0510e3          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1a728:	11013703          	ld	a4,272(sp)
   1a72c:	18010413          	add	s0,sp,384
   1a730:	dccff06f          	j	19cfc <_svfprintf_r+0x9ec>
   1a734:	000237b7          	lui	a5,0x23
   1a738:	b8078793          	add	a5,a5,-1152 # 22b80 <__clz_tab+0x138>
   1a73c:	000a8313          	mv	t1,s5
   1a740:	06f13423          	sd	a5,104(sp)
   1a744:	f7dff06f          	j	1a6c0 <_svfprintf_r+0x13b0>
   1a748:	000a8313          	mv	t1,s5
   1a74c:	c44ff06f          	j	19b90 <_svfprintf_r+0x880>
   1a750:	20096913          	or	s2,s2,512
   1a754:	0014ce03          	lbu	t3,1(s1)
   1a758:	0009091b          	sext.w	s2,s2
   1a75c:	00148493          	add	s1,s1,1
   1a760:	d11fe06f          	j	19470 <_svfprintf_r+0x160>
   1a764:	02096913          	or	s2,s2,32
   1a768:	0014ce03          	lbu	t3,1(s1)
   1a76c:	0009091b          	sext.w	s2,s2
   1a770:	00148493          	add	s1,s1,1
   1a774:	cfdfe06f          	j	19470 <_svfprintf_r+0x160>
   1a778:	05013503          	ld	a0,80(sp)
   1a77c:	04000593          	li	a1,64
   1a780:	901fc0ef          	jal	17080 <_malloc_r>
   1a784:	00013783          	ld	a5,0(sp)
   1a788:	00a7b023          	sd	a0,0(a5)
   1a78c:	00a7bc23          	sd	a0,24(a5)
   1a790:	00051463          	bnez	a0,1a798 <_svfprintf_r+0x1488>
   1a794:	7690006f          	j	1b6fc <_svfprintf_r+0x23ec>
   1a798:	00013783          	ld	a5,0(sp)
   1a79c:	04000713          	li	a4,64
   1a7a0:	02e7a023          	sw	a4,32(a5)
   1a7a4:	bf1fe06f          	j	19394 <_svfprintf_r+0x84>
   1a7a8:	00023f37          	lui	t5,0x23
   1a7ac:	01000593          	li	a1,16
   1a7b0:	000b8713          	mv	a4,s7
   1a7b4:	10812603          	lw	a2,264(sp)
   1a7b8:	4e8f0b93          	add	s7,t5,1256 # 234e8 <zeroes.0>
   1a7bc:	5ba5de63          	bge	a1,s10,1ad78 <_svfprintf_r+0x1a68>
   1a7c0:	00013c83          	ld	s9,0(sp)
   1a7c4:	01000893          	li	a7,16
   1a7c8:	00700d93          	li	s11,7
   1a7cc:	00c0006f          	j	1a7d8 <_svfprintf_r+0x14c8>
   1a7d0:	ff0d0d1b          	addw	s10,s10,-16
   1a7d4:	5ba8d263          	bge	a7,s10,1ad78 <_svfprintf_r+0x1a68>
   1a7d8:	0016061b          	addw	a2,a2,1
   1a7dc:	01070713          	add	a4,a4,16
   1a7e0:	01743023          	sd	s7,0(s0)
   1a7e4:	01143423          	sd	a7,8(s0)
   1a7e8:	10e13823          	sd	a4,272(sp)
   1a7ec:	10c12423          	sw	a2,264(sp)
   1a7f0:	01040413          	add	s0,s0,16
   1a7f4:	fccddee3          	bge	s11,a2,1a7d0 <_svfprintf_r+0x14c0>
   1a7f8:	10010613          	add	a2,sp,256
   1a7fc:	000c8593          	mv	a1,s9
   1a800:	00098513          	mv	a0,s3
   1a804:	2c9030ef          	jal	1e2cc <__ssprint_r>
   1a808:	fe051e63          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1a80c:	11013703          	ld	a4,272(sp)
   1a810:	10812603          	lw	a2,264(sp)
   1a814:	18010413          	add	s0,sp,384
   1a818:	01000893          	li	a7,16
   1a81c:	fb5ff06f          	j	1a7d0 <_svfprintf_r+0x14c0>
   1a820:	000b0513          	mv	a0,s6
   1a824:	981fe0ef          	jal	191a4 <strlen>
   1a828:	00050d9b          	sext.w	s11,a0
   1a82c:	924ff06f          	j	19950 <_svfprintf_r+0x640>
   1a830:	04013d03          	ld	s10,64(sp)
   1a834:	00023e37          	lui	t3,0x23
   1a838:	08913823          	sd	s1,144(sp)
   1a83c:	09213c23          	sd	s2,152(sp)
   1a840:	0b413023          	sd	s4,160(sp)
   1a844:	05813023          	sd	s8,64(sp)
   1a848:	000b0a13          	mv	s4,s6
   1a84c:	07813903          	ld	s2,120(sp)
   1a850:	08813483          	ld	s1,136(sp)
   1a854:	08013b03          	ld	s6,128(sp)
   1a858:	04813c03          	ld	s8,72(sp)
   1a85c:	00013c83          	ld	s9,0(sp)
   1a860:	00700313          	li	t1,7
   1a864:	01000893          	li	a7,16
   1a868:	4e8e0d93          	add	s11,t3,1256 # 234e8 <zeroes.0>
   1a86c:	000b8713          	mv	a4,s7
   1a870:	080d0c63          	beqz	s10,1a908 <_svfprintf_r+0x15f8>
   1a874:	160c0863          	beqz	s8,1a9e4 <_svfprintf_r+0x16d4>
   1a878:	fffc0c1b          	addw	s8,s8,-1
   1a87c:	10812783          	lw	a5,264(sp)
   1a880:	01670733          	add	a4,a4,s6
   1a884:	00943023          	sd	s1,0(s0)
   1a888:	0017869b          	addw	a3,a5,1
   1a88c:	01643423          	sd	s6,8(s0)
   1a890:	10e13823          	sd	a4,272(sp)
   1a894:	10d12423          	sw	a3,264(sp)
   1a898:	01040413          	add	s0,s0,16
   1a89c:	16d34463          	blt	t1,a3,1aa04 <_svfprintf_r+0x16f4>
   1a8a0:	00094683          	lbu	a3,0(s2)
   1a8a4:	414a8bb3          	sub	s7,s5,s4
   1a8a8:	000b879b          	sext.w	a5,s7
   1a8ac:	0006861b          	sext.w	a2,a3
   1a8b0:	00f6d463          	bge	a3,a5,1a8b8 <_svfprintf_r+0x15a8>
   1a8b4:	00060b93          	mv	s7,a2
   1a8b8:	000b8b9b          	sext.w	s7,s7
   1a8bc:	03705863          	blez	s7,1a8ec <_svfprintf_r+0x15dc>
   1a8c0:	10812783          	lw	a5,264(sp)
   1a8c4:	01770733          	add	a4,a4,s7
   1a8c8:	01443023          	sd	s4,0(s0)
   1a8cc:	0017869b          	addw	a3,a5,1
   1a8d0:	01743423          	sd	s7,8(s0)
   1a8d4:	10e13823          	sd	a4,272(sp)
   1a8d8:	10d12423          	sw	a3,264(sp)
   1a8dc:	28d34263          	blt	t1,a3,1ab60 <_svfprintf_r+0x1850>
   1a8e0:	00094683          	lbu	a3,0(s2)
   1a8e4:	01040413          	add	s0,s0,16
   1a8e8:	0006861b          	sext.w	a2,a3
   1a8ec:	fffbc793          	not	a5,s7
   1a8f0:	43f7d793          	sra	a5,a5,0x3f
   1a8f4:	00fbf7b3          	and	a5,s7,a5
   1a8f8:	40f60bbb          	subw	s7,a2,a5
   1a8fc:	03704c63          	bgtz	s7,1a934 <_svfprintf_r+0x1624>
   1a900:	00da0a33          	add	s4,s4,a3
   1a904:	f60d18e3          	bnez	s10,1a874 <_svfprintf_r+0x1564>
   1a908:	f60c18e3          	bnez	s8,1a878 <_svfprintf_r+0x1568>
   1a90c:	07213c23          	sd	s2,120(sp)
   1a910:	000a0b13          	mv	s6,s4
   1a914:	09013483          	ld	s1,144(sp)
   1a918:	09813903          	ld	s2,152(sp)
   1a91c:	0a013a03          	ld	s4,160(sp)
   1a920:	04013c03          	ld	s8,64(sp)
   1a924:	00070b93          	mv	s7,a4
   1a928:	956afee3          	bgeu	s5,s6,1a284 <_svfprintf_r+0xf74>
   1a92c:	000a8b13          	mv	s6,s5
   1a930:	955ff06f          	j	1a284 <_svfprintf_r+0xf74>
   1a934:	00023637          	lui	a2,0x23
   1a938:	10812783          	lw	a5,264(sp)
   1a93c:	4e860613          	add	a2,a2,1256 # 234e8 <zeroes.0>
   1a940:	0778dc63          	bge	a7,s7,1a9b8 <_svfprintf_r+0x16a8>
   1a944:	02913823          	sd	s1,48(sp)
   1a948:	000b8493          	mv	s1,s7
   1a94c:	000d8b93          	mv	s7,s11
   1a950:	00c0006f          	j	1a95c <_svfprintf_r+0x164c>
   1a954:	ff04849b          	addw	s1,s1,-16
   1a958:	0498da63          	bge	a7,s1,1a9ac <_svfprintf_r+0x169c>
   1a95c:	0017879b          	addw	a5,a5,1
   1a960:	01070713          	add	a4,a4,16
   1a964:	01b43023          	sd	s11,0(s0)
   1a968:	01143423          	sd	a7,8(s0)
   1a96c:	10e13823          	sd	a4,272(sp)
   1a970:	10f12423          	sw	a5,264(sp)
   1a974:	01040413          	add	s0,s0,16
   1a978:	fcf35ee3          	bge	t1,a5,1a954 <_svfprintf_r+0x1644>
   1a97c:	10010613          	add	a2,sp,256
   1a980:	000c8593          	mv	a1,s9
   1a984:	00098513          	mv	a0,s3
   1a988:	145030ef          	jal	1e2cc <__ssprint_r>
   1a98c:	e6051c63          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1a990:	01000893          	li	a7,16
   1a994:	ff04849b          	addw	s1,s1,-16
   1a998:	11013703          	ld	a4,272(sp)
   1a99c:	10812783          	lw	a5,264(sp)
   1a9a0:	18010413          	add	s0,sp,384
   1a9a4:	00700313          	li	t1,7
   1a9a8:	fa98cae3          	blt	a7,s1,1a95c <_svfprintf_r+0x164c>
   1a9ac:	000b8613          	mv	a2,s7
   1a9b0:	00048b93          	mv	s7,s1
   1a9b4:	03013483          	ld	s1,48(sp)
   1a9b8:	0017869b          	addw	a3,a5,1
   1a9bc:	00eb8733          	add	a4,s7,a4
   1a9c0:	00c43023          	sd	a2,0(s0)
   1a9c4:	01743423          	sd	s7,8(s0)
   1a9c8:	10e13823          	sd	a4,272(sp)
   1a9cc:	10d12423          	sw	a3,264(sp)
   1a9d0:	18d34ae3          	blt	t1,a3,1b364 <_svfprintf_r+0x2054>
   1a9d4:	00094683          	lbu	a3,0(s2)
   1a9d8:	01040413          	add	s0,s0,16
   1a9dc:	00da0a33          	add	s4,s4,a3
   1a9e0:	f25ff06f          	j	1a904 <_svfprintf_r+0x15f4>
   1a9e4:	fff90913          	add	s2,s2,-1
   1a9e8:	fffd0d1b          	addw	s10,s10,-1
   1a9ec:	e91ff06f          	j	1a87c <_svfprintf_r+0x156c>
   1a9f0:	01097793          	and	a5,s2,16
   1a9f4:	10078463          	beqz	a5,1aafc <_svfprintf_r+0x17ec>
   1a9f8:	02013783          	ld	a5,32(sp)
   1a9fc:	0007bb83          	ld	s7,0(a5)
   1aa00:	cd5ff06f          	j	1a6d4 <_svfprintf_r+0x13c4>
   1aa04:	10010613          	add	a2,sp,256
   1aa08:	000c8593          	mv	a1,s9
   1aa0c:	00098513          	mv	a0,s3
   1aa10:	0bd030ef          	jal	1e2cc <__ssprint_r>
   1aa14:	de051863          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1aa18:	11013703          	ld	a4,272(sp)
   1aa1c:	18010413          	add	s0,sp,384
   1aa20:	01000893          	li	a7,16
   1aa24:	00700313          	li	t1,7
   1aa28:	e79ff06f          	j	1a8a0 <_svfprintf_r+0x1590>
   1aa2c:	10812683          	lw	a3,264(sp)
   1aa30:	000235b7          	lui	a1,0x23
   1aa34:	ba058593          	add	a1,a1,-1120 # 22ba0 <__clz_tab+0x158>
   1aa38:	0016869b          	addw	a3,a3,1
   1aa3c:	00b43023          	sd	a1,0(s0)
   1aa40:	001b8713          	add	a4,s7,1
   1aa44:	00100593          	li	a1,1
   1aa48:	00b43423          	sd	a1,8(s0)
   1aa4c:	10d12423          	sw	a3,264(sp)
   1aa50:	0006859b          	sext.w	a1,a3
   1aa54:	10e13823          	sd	a4,272(sp)
   1aa58:	00700693          	li	a3,7
   1aa5c:	01040413          	add	s0,s0,16
   1aa60:	06b6cc63          	blt	a3,a1,1aad8 <_svfprintf_r+0x17c8>
   1aa64:	1e061e63          	bnez	a2,1ac60 <_svfprintf_r+0x1950>
   1aa68:	03813783          	ld	a5,56(sp)
   1aa6c:	00197693          	and	a3,s2,1
   1aa70:	00d7e6b3          	or	a3,a5,a3
   1aa74:	00069463          	bnez	a3,1aa7c <_svfprintf_r+0x176c>
   1aa78:	b61fe06f          	j	195d8 <_svfprintf_r+0x2c8>
   1aa7c:	10812603          	lw	a2,264(sp)
   1aa80:	05813783          	ld	a5,88(sp)
   1aa84:	06013683          	ld	a3,96(sp)
   1aa88:	00e78733          	add	a4,a5,a4
   1aa8c:	00d43023          	sd	a3,0(s0)
   1aa90:	0016069b          	addw	a3,a2,1
   1aa94:	00f43423          	sd	a5,8(s0)
   1aa98:	10e13823          	sd	a4,272(sp)
   1aa9c:	10d12423          	sw	a3,264(sp)
   1aaa0:	00700613          	li	a2,7
   1aaa4:	5cd64a63          	blt	a2,a3,1b078 <_svfprintf_r+0x1d68>
   1aaa8:	01040413          	add	s0,s0,16
   1aaac:	03813783          	ld	a5,56(sp)
   1aab0:	0016861b          	addw	a2,a3,1
   1aab4:	01643023          	sd	s6,0(s0)
   1aab8:	00e78733          	add	a4,a5,a4
   1aabc:	00f43423          	sd	a5,8(s0)
   1aac0:	10e13823          	sd	a4,272(sp)
   1aac4:	10c12423          	sw	a2,264(sp)
   1aac8:	00700793          	li	a5,7
   1aacc:	00c7c463          	blt	a5,a2,1aad4 <_svfprintf_r+0x17c4>
   1aad0:	b05fe06f          	j	195d4 <_svfprintf_r+0x2c4>
   1aad4:	de5fe06f          	j	198b8 <_svfprintf_r+0x5a8>
   1aad8:	00013583          	ld	a1,0(sp)
   1aadc:	10010613          	add	a2,sp,256
   1aae0:	00098513          	mv	a0,s3
   1aae4:	7e8030ef          	jal	1e2cc <__ssprint_r>
   1aae8:	d0051e63          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1aaec:	0d812603          	lw	a2,216(sp)
   1aaf0:	11013703          	ld	a4,272(sp)
   1aaf4:	18010413          	add	s0,sp,384
   1aaf8:	f6dff06f          	j	1aa64 <_svfprintf_r+0x1754>
   1aafc:	02013683          	ld	a3,32(sp)
   1ab00:	04097793          	and	a5,s2,64
   1ab04:	0006ab83          	lw	s7,0(a3)
   1ab08:	22078c63          	beqz	a5,1ad40 <_svfprintf_r+0x1a30>
   1ab0c:	030b9b93          	sll	s7,s7,0x30
   1ab10:	030bdb93          	srl	s7,s7,0x30
   1ab14:	bc1ff06f          	j	1a6d4 <_svfprintf_r+0x13c4>
   1ab18:	00013583          	ld	a1,0(sp)
   1ab1c:	10010613          	add	a2,sp,256
   1ab20:	00098513          	mv	a0,s3
   1ab24:	7a8030ef          	jal	1e2cc <__ssprint_r>
   1ab28:	cc051e63          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1ab2c:	11013b83          	ld	s7,272(sp)
   1ab30:	18010413          	add	s0,sp,384
   1ab34:	988ff06f          	j	19cbc <_svfprintf_r+0x9ac>
   1ab38:	0017869b          	addw	a3,a5,1
   1ab3c:	01743023          	sd	s7,0(s0)
   1ab40:	01943423          	sd	s9,8(s0)
   1ab44:	01970733          	add	a4,a4,s9
   1ab48:	10e13823          	sd	a4,272(sp)
   1ab4c:	10d12423          	sw	a3,264(sp)
   1ab50:	00700793          	li	a5,7
   1ab54:	00d7c463          	blt	a5,a3,1ab5c <_svfprintf_r+0x184c>
   1ab58:	a7dfe06f          	j	195d4 <_svfprintf_r+0x2c4>
   1ab5c:	d5dfe06f          	j	198b8 <_svfprintf_r+0x5a8>
   1ab60:	10010613          	add	a2,sp,256
   1ab64:	000c8593          	mv	a1,s9
   1ab68:	00098513          	mv	a0,s3
   1ab6c:	760030ef          	jal	1e2cc <__ssprint_r>
   1ab70:	c8051a63          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1ab74:	00094683          	lbu	a3,0(s2)
   1ab78:	11013703          	ld	a4,272(sp)
   1ab7c:	18010413          	add	s0,sp,384
   1ab80:	0006861b          	sext.w	a2,a3
   1ab84:	01000893          	li	a7,16
   1ab88:	00700313          	li	t1,7
   1ab8c:	d61ff06f          	j	1a8ec <_svfprintf_r+0x15dc>
   1ab90:	00013583          	ld	a1,0(sp)
   1ab94:	10010613          	add	a2,sp,256
   1ab98:	00098513          	mv	a0,s3
   1ab9c:	08613823          	sd	t1,144(sp)
   1aba0:	72c030ef          	jal	1e2cc <__ssprint_r>
   1aba4:	c6051063          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1aba8:	11013b83          	ld	s7,272(sp)
   1abac:	09013303          	ld	t1,144(sp)
   1abb0:	18010413          	add	s0,sp,384
   1abb4:	9edfe06f          	j	195a0 <_svfprintf_r+0x290>
   1abb8:	0f013503          	ld	a0,240(sp)
   1abbc:	0f813583          	ld	a1,248(sp)
   1abc0:	00000613          	li	a2,0
   1abc4:	00000693          	li	a3,0
   1abc8:	224060ef          	jal	20dec <__letf2>
   1abcc:	0c0542e3          	bltz	a0,1b490 <_svfprintf_r+0x2180>
   1abd0:	0cf14703          	lbu	a4,207(sp)
   1abd4:	04700793          	li	a5,71
   1abd8:	21a7dc63          	bge	a5,s10,1adf0 <_svfprintf_r+0x1ae0>
   1abdc:	000237b7          	lui	a5,0x23
   1abe0:	b5078b13          	add	s6,a5,-1200 # 22b50 <__clz_tab+0x108>
   1abe4:	f7f97913          	and	s2,s2,-129
   1abe8:	00013c23          	sd	zero,24(sp)
   1abec:	04013423          	sd	zero,72(sp)
   1abf0:	04013023          	sd	zero,64(sp)
   1abf4:	02013823          	sd	zero,48(sp)
   1abf8:	0009091b          	sext.w	s2,s2
   1abfc:	00300c13          	li	s8,3
   1ac00:	00300d93          	li	s11,3
   1ac04:	00000313          	li	t1,0
   1ac08:	00070463          	beqz	a4,1ac10 <_svfprintf_r+0x1900>
   1ac0c:	d71fe06f          	j	1997c <_svfprintf_r+0x66c>
   1ac10:	8f5fe06f          	j	19504 <_svfprintf_r+0x1f4>
   1ac14:	00600793          	li	a5,6
   1ac18:	00030693          	mv	a3,t1
   1ac1c:	2067e063          	bltu	a5,t1,1ae1c <_svfprintf_r+0x1b0c>
   1ac20:	00068d9b          	sext.w	s11,a3
   1ac24:	000237b7          	lui	a5,0x23
   1ac28:	000d8c13          	mv	s8,s11
   1ac2c:	03513023          	sd	s5,32(sp)
   1ac30:	b9878b13          	add	s6,a5,-1128 # 22b98 <__clz_tab+0x150>
   1ac34:	8bdfe06f          	j	194f0 <_svfprintf_r+0x1e0>
   1ac38:	0014041b          	addw	s0,s0,1
   1ac3c:	01bd0d33          	add	s10,s10,s11
   1ac40:	017cb023          	sd	s7,0(s9)
   1ac44:	01bcb423          	sd	s11,8(s9)
   1ac48:	11a13823          	sd	s10,272(sp)
   1ac4c:	10812423          	sw	s0,264(sp)
   1ac50:	00700793          	li	a5,7
   1ac54:	0087c463          	blt	a5,s0,1ac5c <_svfprintf_r+0x194c>
   1ac58:	c2dfe06f          	j	19884 <_svfprintf_r+0x574>
   1ac5c:	f70ff06f          	j	1a3cc <_svfprintf_r+0x10bc>
   1ac60:	10812583          	lw	a1,264(sp)
   1ac64:	05813783          	ld	a5,88(sp)
   1ac68:	06013683          	ld	a3,96(sp)
   1ac6c:	01040413          	add	s0,s0,16
   1ac70:	00e78733          	add	a4,a5,a4
   1ac74:	fed43823          	sd	a3,-16(s0)
   1ac78:	0015869b          	addw	a3,a1,1
   1ac7c:	fef43c23          	sd	a5,-8(s0)
   1ac80:	10e13823          	sd	a4,272(sp)
   1ac84:	10d12423          	sw	a3,264(sp)
   1ac88:	00700593          	li	a1,7
   1ac8c:	3ed5c663          	blt	a1,a3,1b078 <_svfprintf_r+0x1d68>
   1ac90:	e0065ee3          	bgez	a2,1aaac <_svfprintf_r+0x179c>
   1ac94:	00023f37          	lui	t5,0x23
   1ac98:	ff000593          	li	a1,-16
   1ac9c:	40c00cbb          	negw	s9,a2
   1aca0:	4e8f0b93          	add	s7,t5,1256 # 234e8 <zeroes.0>
   1aca4:	01000d13          	li	s10,16
   1aca8:	00700d93          	li	s11,7
   1acac:	00b64863          	blt	a2,a1,1acbc <_svfprintf_r+0x19ac>
   1acb0:	1cd0006f          	j	1b67c <_svfprintf_r+0x236c>
   1acb4:	ff0c8c9b          	addw	s9,s9,-16
   1acb8:	1d9d52e3          	bge	s10,s9,1b67c <_svfprintf_r+0x236c>
   1acbc:	0016869b          	addw	a3,a3,1
   1acc0:	01070713          	add	a4,a4,16
   1acc4:	01743023          	sd	s7,0(s0)
   1acc8:	01a43423          	sd	s10,8(s0)
   1accc:	10e13823          	sd	a4,272(sp)
   1acd0:	10d12423          	sw	a3,264(sp)
   1acd4:	01040413          	add	s0,s0,16
   1acd8:	fcdddee3          	bge	s11,a3,1acb4 <_svfprintf_r+0x19a4>
   1acdc:	00013583          	ld	a1,0(sp)
   1ace0:	10010613          	add	a2,sp,256
   1ace4:	00098513          	mv	a0,s3
   1ace8:	5e4030ef          	jal	1e2cc <__ssprint_r>
   1acec:	b0051c63          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1acf0:	11013703          	ld	a4,272(sp)
   1acf4:	10812683          	lw	a3,264(sp)
   1acf8:	18010413          	add	s0,sp,384
   1acfc:	fb9ff06f          	j	1acb4 <_svfprintf_r+0x19a4>
   1ad00:	20097793          	and	a5,s2,512
   1ad04:	32078663          	beqz	a5,1b030 <_svfprintf_r+0x1d20>
   1ad08:	0ffbfb93          	zext.b	s7,s7
   1ad0c:	e99fe06f          	j	19ba4 <_svfprintf_r+0x894>
   1ad10:	200cf793          	and	a5,s9,512
   1ad14:	30078463          	beqz	a5,1b01c <_svfprintf_r+0x1d0c>
   1ad18:	0ffbfb93          	zext.b	s7,s7
   1ad1c:	02e13023          	sd	a4,32(sp)
   1ad20:	00100793          	li	a5,1
   1ad24:	d9dfe06f          	j	19ac0 <_svfprintf_r+0x7b0>
   1ad28:	20097793          	and	a5,s2,512
   1ad2c:	32078463          	beqz	a5,1b054 <_svfprintf_r+0x1d44>
   1ad30:	018b9b9b          	sllw	s7,s7,0x18
   1ad34:	418bdb9b          	sraw	s7,s7,0x18
   1ad38:	000b8793          	mv	a5,s7
   1ad3c:	e15fe06f          	j	19b50 <_svfprintf_r+0x840>
   1ad40:	20097793          	and	a5,s2,512
   1ad44:	30078263          	beqz	a5,1b048 <_svfprintf_r+0x1d38>
   1ad48:	0ffbfb93          	zext.b	s7,s7
   1ad4c:	989ff06f          	j	1a6d4 <_svfprintf_r+0x13c4>
   1ad50:	0f813783          	ld	a5,248(sp)
   1ad54:	3007d463          	bgez	a5,1b05c <_svfprintf_r+0x1d4c>
   1ad58:	02d00793          	li	a5,45
   1ad5c:	0cf107a3          	sb	a5,207(sp)
   1ad60:	02d00713          	li	a4,45
   1ad64:	04700793          	li	a5,71
   1ad68:	7fa7d063          	bge	a5,s10,1b548 <_svfprintf_r+0x2238>
   1ad6c:	000237b7          	lui	a5,0x23
   1ad70:	b6078b13          	add	s6,a5,-1184 # 22b60 <__clz_tab+0x118>
   1ad74:	e71ff06f          	j	1abe4 <_svfprintf_r+0x18d4>
   1ad78:	0016059b          	addw	a1,a2,1
   1ad7c:	00ed0733          	add	a4,s10,a4
   1ad80:	01743023          	sd	s7,0(s0)
   1ad84:	01a43423          	sd	s10,8(s0)
   1ad88:	10e13823          	sd	a4,272(sp)
   1ad8c:	10b12423          	sw	a1,264(sp)
   1ad90:	00700693          	li	a3,7
   1ad94:	30b6ce63          	blt	a3,a1,1b0b0 <_svfprintf_r+0x1da0>
   1ad98:	01040413          	add	s0,s0,16
   1ad9c:	00070b93          	mv	s7,a4
   1ada0:	cd4ff06f          	j	1a274 <_svfprintf_r+0xf64>
   1ada4:	02f13c23          	sd	a5,56(sp)
   1ada8:	08013783          	ld	a5,128(sp)
   1adac:	08813583          	ld	a1,136(sp)
   1adb0:	02613823          	sd	t1,48(sp)
   1adb4:	40fb0b33          	sub	s6,s6,a5
   1adb8:	00078613          	mv	a2,a5
   1adbc:	000b0513          	mv	a0,s6
   1adc0:	01013c23          	sd	a6,24(sp)
   1adc4:	ca8fe0ef          	jal	1926c <strncpy>
   1adc8:	01813803          	ld	a6,24(sp)
   1adcc:	00a00713          	li	a4,10
   1add0:	02ebd733          	divu	a4,s7,a4
   1add4:	00184683          	lbu	a3,1(a6)
   1add8:	03013303          	ld	t1,48(sp)
   1addc:	03813783          	ld	a5,56(sp)
   1ade0:	00d036b3          	snez	a3,a3
   1ade4:	00d80833          	add	a6,a6,a3
   1ade8:	00000693          	li	a3,0
   1adec:	881ff06f          	j	1a66c <_svfprintf_r+0x135c>
   1adf0:	000237b7          	lui	a5,0x23
   1adf4:	b4878b13          	add	s6,a5,-1208 # 22b48 <__clz_tab+0x100>
   1adf8:	dedff06f          	j	1abe4 <_svfprintf_r+0x18d4>
   1adfc:	00013583          	ld	a1,0(sp)
   1ae00:	10010613          	add	a2,sp,256
   1ae04:	00098513          	mv	a0,s3
   1ae08:	4c4030ef          	jal	1e2cc <__ssprint_r>
   1ae0c:	9e051c63          	bnez	a0,1a004 <_svfprintf_r+0xcf4>
   1ae10:	11013b83          	ld	s7,272(sp)
   1ae14:	18010413          	add	s0,sp,384
   1ae18:	c44ff06f          	j	1a25c <_svfprintf_r+0xf4c>
   1ae1c:	00600693          	li	a3,6
   1ae20:	e01ff06f          	j	1ac20 <_svfprintf_r+0x1910>
   1ae24:	416a8cb3          	sub	s9,s5,s6
   1ae28:	40d7863b          	subw	a2,a5,a3
   1ae2c:	000c879b          	sext.w	a5,s9
   1ae30:	000b8713          	mv	a4,s7
   1ae34:	00f65463          	bge	a2,a5,1ae3c <_svfprintf_r+0x1b2c>
   1ae38:	00060c93          	mv	s9,a2
   1ae3c:	000c8c9b          	sext.w	s9,s9
   1ae40:	cd8ff06f          	j	1a318 <_svfprintf_r+0x1008>
   1ae44:	00030913          	mv	s2,t1
   1ae48:	00200693          	li	a3,2
   1ae4c:	00090713          	mv	a4,s2
   1ae50:	0e810893          	add	a7,sp,232
   1ae54:	0dc10813          	add	a6,sp,220
   1ae58:	0d810793          	add	a5,sp,216
   1ae5c:	000c0593          	mv	a1,s8
   1ae60:	000c8613          	mv	a2,s9
   1ae64:	00098513          	mv	a0,s3
   1ae68:	02613823          	sd	t1,48(sp)
   1ae6c:	b69fa0ef          	jal	159d4 <_ldtoa_r>
   1ae70:	06700713          	li	a4,103
   1ae74:	03013303          	ld	t1,48(sp)
   1ae78:	00050b13          	mv	s6,a0
   1ae7c:	4ced0863          	beq	s10,a4,1b34c <_svfprintf_r+0x203c>
   1ae80:	04700713          	li	a4,71
   1ae84:	4ced0463          	beq	s10,a4,1b34c <_svfprintf_r+0x203c>
   1ae88:	fdfd7d93          	and	s11,s10,-33
   1ae8c:	04600713          	li	a4,70
   1ae90:	01250ab3          	add	s5,a0,s2
   1ae94:	60ed8663          	beq	s11,a4,1b4a0 <_svfprintf_r+0x2190>
   1ae98:	000c0513          	mv	a0,s8
   1ae9c:	00000613          	li	a2,0
   1aea0:	00000693          	li	a3,0
   1aea4:	000c8593          	mv	a1,s9
   1aea8:	02613823          	sd	t1,48(sp)
   1aeac:	561050ef          	jal	20c0c <__eqtf2>
   1aeb0:	03013303          	ld	t1,48(sp)
   1aeb4:	000a8c13          	mv	s8,s5
   1aeb8:	02050263          	beqz	a0,1aedc <_svfprintf_r+0x1bcc>
   1aebc:	0e813c03          	ld	s8,232(sp)
   1aec0:	015c7e63          	bgeu	s8,s5,1aedc <_svfprintf_r+0x1bcc>
   1aec4:	03000693          	li	a3,48
   1aec8:	001c0793          	add	a5,s8,1
   1aecc:	0ef13423          	sd	a5,232(sp)
   1aed0:	00dc0023          	sb	a3,0(s8)
   1aed4:	0e813c03          	ld	s8,232(sp)
   1aed8:	ff5c68e3          	bltu	s8,s5,1aec8 <_svfprintf_r+0x1bb8>
   1aedc:	416c07bb          	subw	a5,s8,s6
   1aee0:	02f13c23          	sd	a5,56(sp)
   1aee4:	0d812603          	lw	a2,216(sp)
   1aee8:	04700713          	li	a4,71
   1aeec:	02c13823          	sd	a2,48(sp)
   1aef0:	3ced8663          	beq	s11,a4,1b2bc <_svfprintf_r+0x1fac>
   1aef4:	04600713          	li	a4,70
   1aef8:	6aed8463          	beq	s11,a4,1b5a0 <_svfprintf_r+0x2290>
   1aefc:	fff6071b          	addw	a4,a2,-1
   1af00:	0ce12c23          	sw	a4,216(sp)
   1af04:	06100693          	li	a3,97
   1af08:	10dd04e3          	beq	s10,a3,1b810 <_svfprintf_r+0x2500>
   1af0c:	04100593          	li	a1,65
   1af10:	05000693          	li	a3,80
   1af14:	3cbd1263          	bne	s10,a1,1b2d8 <_svfprintf_r+0x1fc8>
   1af18:	00100593          	li	a1,1
   1af1c:	0ed10023          	sb	a3,224(sp)
   1af20:	02b00693          	li	a3,43
   1af24:	00075863          	bgez	a4,1af34 <_svfprintf_r+0x1c24>
   1af28:	00100713          	li	a4,1
   1af2c:	40c7073b          	subw	a4,a4,a2
   1af30:	02d00693          	li	a3,45
   1af34:	0ed100a3          	sb	a3,225(sp)
   1af38:	00900693          	li	a3,9
   1af3c:	68e6d463          	bge	a3,a4,1b5c4 <_svfprintf_r+0x22b4>
   1af40:	0ef10813          	add	a6,sp,239
   1af44:	00080893          	mv	a7,a6
   1af48:	00a00313          	li	t1,10
   1af4c:	06300f13          	li	t5,99
   1af50:	026767bb          	remw	a5,a4,t1
   1af54:	00088613          	mv	a2,a7
   1af58:	00070693          	mv	a3,a4
   1af5c:	fff88893          	add	a7,a7,-1
   1af60:	0307879b          	addw	a5,a5,48
   1af64:	fef60fa3          	sb	a5,-1(a2)
   1af68:	0267473b          	divw	a4,a4,t1
   1af6c:	fedf42e3          	blt	t5,a3,1af50 <_svfprintf_r+0x1c40>
   1af70:	0307051b          	addw	a0,a4,48
   1af74:	fea88fa3          	sb	a0,-1(a7)
   1af78:	ffe60713          	add	a4,a2,-2
   1af7c:	110776e3          	bgeu	a4,a6,1b888 <_svfprintf_r+0x2578>
   1af80:	0e210693          	add	a3,sp,226
   1af84:	00074783          	lbu	a5,0(a4)
   1af88:	00170713          	add	a4,a4,1
   1af8c:	00168693          	add	a3,a3,1
   1af90:	fef68fa3          	sb	a5,-1(a3)
   1af94:	ff0718e3          	bne	a4,a6,1af84 <_svfprintf_r+0x1c74>
   1af98:	0f110713          	add	a4,sp,241
   1af9c:	0e210793          	add	a5,sp,226
   1afa0:	40c70733          	sub	a4,a4,a2
   1afa4:	00e78733          	add	a4,a5,a4
   1afa8:	0e010693          	add	a3,sp,224
   1afac:	40d707bb          	subw	a5,a4,a3
   1afb0:	06f13823          	sd	a5,112(sp)
   1afb4:	07013703          	ld	a4,112(sp)
   1afb8:	03813783          	ld	a5,56(sp)
   1afbc:	00100613          	li	a2,1
   1afc0:	00f70dbb          	addw	s11,a4,a5
   1afc4:	000d8713          	mv	a4,s11
   1afc8:	74f65a63          	bge	a2,a5,1b71c <_svfprintf_r+0x240c>
   1afcc:	05813783          	ld	a5,88(sp)
   1afd0:	00f70dbb          	addw	s11,a4,a5
   1afd4:	04013783          	ld	a5,64(sp)
   1afd8:	fffdc813          	not	a6,s11
   1afdc:	43f85813          	sra	a6,a6,0x3f
   1afe0:	bff7f913          	and	s2,a5,-1025
   1afe4:	0009091b          	sext.w	s2,s2
   1afe8:	010df833          	and	a6,s11,a6
   1afec:	10096913          	or	s2,s2,256
   1aff0:	00080c1b          	sext.w	s8,a6
   1aff4:	04013423          	sd	zero,72(sp)
   1aff8:	04013023          	sd	zero,64(sp)
   1affc:	02013823          	sd	zero,48(sp)
   1b000:	09813783          	ld	a5,152(sp)
   1b004:	2e078063          	beqz	a5,1b2e4 <_svfprintf_r+0x1fd4>
   1b008:	02d00713          	li	a4,45
   1b00c:	0ce107a3          	sb	a4,207(sp)
   1b010:	00000313          	li	t1,0
   1b014:	001c0c1b          	addw	s8,s8,1
   1b018:	cecfe06f          	j	19504 <_svfprintf_r+0x1f4>
   1b01c:	020b9b93          	sll	s7,s7,0x20
   1b020:	020bdb93          	srl	s7,s7,0x20
   1b024:	02e13023          	sd	a4,32(sp)
   1b028:	00100793          	li	a5,1
   1b02c:	a95fe06f          	j	19ac0 <_svfprintf_r+0x7b0>
   1b030:	020b9b93          	sll	s7,s7,0x20
   1b034:	020bdb93          	srl	s7,s7,0x20
   1b038:	b6dfe06f          	j	19ba4 <_svfprintf_r+0x894>
   1b03c:	01013783          	ld	a5,16(sp)
   1b040:	00f71023          	sh	a5,0(a4)
   1b044:	b9dfe06f          	j	19be0 <_svfprintf_r+0x8d0>
   1b048:	020b9b93          	sll	s7,s7,0x20
   1b04c:	020bdb93          	srl	s7,s7,0x20
   1b050:	e84ff06f          	j	1a6d4 <_svfprintf_r+0x13c4>
   1b054:	000b8793          	mv	a5,s7
   1b058:	af9fe06f          	j	19b50 <_svfprintf_r+0x840>
   1b05c:	0cf14703          	lbu	a4,207(sp)
   1b060:	d05ff06f          	j	1ad64 <_svfprintf_r+0x1a54>
   1b064:	00013583          	ld	a1,0(sp)
   1b068:	05013503          	ld	a0,80(sp)
   1b06c:	10010613          	add	a2,sp,256
   1b070:	25c030ef          	jal	1e2cc <__ssprint_r>
   1b074:	dc4fe06f          	j	19638 <_svfprintf_r+0x328>
   1b078:	00013583          	ld	a1,0(sp)
   1b07c:	10010613          	add	a2,sp,256
   1b080:	00098513          	mv	a0,s3
   1b084:	248030ef          	jal	1e2cc <__ssprint_r>
   1b088:	00050463          	beqz	a0,1b090 <_svfprintf_r+0x1d80>
   1b08c:	f79fe06f          	j	1a004 <_svfprintf_r+0xcf4>
   1b090:	0d812603          	lw	a2,216(sp)
   1b094:	11013703          	ld	a4,272(sp)
   1b098:	10812683          	lw	a3,264(sp)
   1b09c:	18010413          	add	s0,sp,384
   1b0a0:	a00656e3          	bgez	a2,1aaac <_svfprintf_r+0x179c>
   1b0a4:	bf1ff06f          	j	1ac94 <_svfprintf_r+0x1984>
   1b0a8:	00600313          	li	t1,6
   1b0ac:	eacfe06f          	j	19758 <_svfprintf_r+0x448>
   1b0b0:	00013583          	ld	a1,0(sp)
   1b0b4:	10010613          	add	a2,sp,256
   1b0b8:	00098513          	mv	a0,s3
   1b0bc:	210030ef          	jal	1e2cc <__ssprint_r>
   1b0c0:	00050463          	beqz	a0,1b0c8 <_svfprintf_r+0x1db8>
   1b0c4:	f41fe06f          	j	1a004 <_svfprintf_r+0xcf4>
   1b0c8:	11013b83          	ld	s7,272(sp)
   1b0cc:	18010413          	add	s0,sp,384
   1b0d0:	9a4ff06f          	j	1a274 <_svfprintf_r+0xf64>
   1b0d4:	0013091b          	addw	s2,t1,1 # ffffffff80000001 <__BSS_END__+0xffffffff7ffda481>
   1b0d8:	00200693          	li	a3,2
   1b0dc:	d71ff06f          	j	1ae4c <_svfprintf_r+0x1b3c>
   1b0e0:	00030913          	mv	s2,t1
   1b0e4:	00300693          	li	a3,3
   1b0e8:	d65ff06f          	j	1ae4c <_svfprintf_r+0x1b3c>
   1b0ec:	000c8593          	mv	a1,s9
   1b0f0:	000c0513          	mv	a0,s8
   1b0f4:	02613823          	sd	t1,48(sp)
   1b0f8:	580070ef          	jal	22678 <__trunctfdf2>
   1b0fc:	0d810593          	add	a1,sp,216
   1b100:	b85fd0ef          	jal	18c84 <frexp>
   1b104:	45c070ef          	jal	22560 <__extenddftf2>
   1b108:	00023737          	lui	a4,0x23
   1b10c:	f2873683          	ld	a3,-216(a4) # 22f28 <blanks.1+0x20>
   1b110:	00000613          	li	a2,0
   1b114:	5e5050ef          	jal	20ef8 <__multf3>
   1b118:	00000613          	li	a2,0
   1b11c:	00000693          	li	a3,0
   1b120:	00050d93          	mv	s11,a0
   1b124:	00058913          	mv	s2,a1
   1b128:	2e5050ef          	jal	20c0c <__eqtf2>
   1b12c:	03013303          	ld	t1,48(sp)
   1b130:	00051663          	bnez	a0,1b13c <_svfprintf_r+0x1e2c>
   1b134:	00100713          	li	a4,1
   1b138:	0ce12c23          	sw	a4,216(sp)
   1b13c:	00023737          	lui	a4,0x23
   1b140:	b6870793          	add	a5,a4,-1176 # 22b68 <__clz_tab+0x120>
   1b144:	02f13c23          	sd	a5,56(sp)
   1b148:	000236b7          	lui	a3,0x23
   1b14c:	f386b783          	ld	a5,-200(a3) # 22f38 <blanks.1+0x30>
   1b150:	02031713          	sll	a4,t1,0x20
   1b154:	02075713          	srl	a4,a4,0x20
   1b158:	00170713          	add	a4,a4,1
   1b15c:	02f13823          	sd	a5,48(sp)
   1b160:	0003061b          	sext.w	a2,t1
   1b164:	00eb07b3          	add	a5,s6,a4
   1b168:	04913423          	sd	s1,72(sp)
   1b16c:	0b413023          	sd	s4,160(sp)
   1b170:	0a813823          	sd	s0,176(sp)
   1b174:	00078493          	mv	s1,a5
   1b178:	03813403          	ld	s0,56(sp)
   1b17c:	0ac13c23          	sd	a2,184(sp)
   1b180:	0a613423          	sd	t1,168(sp)
   1b184:	000b0a13          	mv	s4,s6
   1b188:	00098b93          	mv	s7,s3
   1b18c:	000b0c93          	mv	s9,s6
   1b190:	0140006f          	j	1b1a4 <_svfprintf_r+0x1e94>
   1b194:	00000613          	li	a2,0
   1b198:	00000693          	li	a3,0
   1b19c:	271050ef          	jal	20c0c <__eqtf2>
   1b1a0:	52050263          	beqz	a0,1b6c4 <_svfprintf_r+0x23b4>
   1b1a4:	03013683          	ld	a3,48(sp)
   1b1a8:	00000613          	li	a2,0
   1b1ac:	000d8513          	mv	a0,s11
   1b1b0:	00090593          	mv	a1,s2
   1b1b4:	545050ef          	jal	20ef8 <__multf3>
   1b1b8:	00058913          	mv	s2,a1
   1b1bc:	00050993          	mv	s3,a0
   1b1c0:	244070ef          	jal	22404 <__fixtfsi>
   1b1c4:	00050c1b          	sext.w	s8,a0
   1b1c8:	000c0513          	mv	a0,s8
   1b1cc:	30c070ef          	jal	224d8 <__floatsitf>
   1b1d0:	00058693          	mv	a3,a1
   1b1d4:	00050613          	mv	a2,a0
   1b1d8:	00090593          	mv	a1,s2
   1b1dc:	00098513          	mv	a0,s3
   1b1e0:	59c060ef          	jal	2177c <__subtf3>
   1b1e4:	01840733          	add	a4,s0,s8
   1b1e8:	00074683          	lbu	a3,0(a4)
   1b1ec:	000a0993          	mv	s3,s4
   1b1f0:	001a0a13          	add	s4,s4,1
   1b1f4:	feda0fa3          	sb	a3,-1(s4)
   1b1f8:	00050a93          	mv	s5,a0
   1b1fc:	00050d93          	mv	s11,a0
   1b200:	00058913          	mv	s2,a1
   1b204:	f94498e3          	bne	s1,s4,1b194 <_svfprintf_r+0x1e84>
   1b208:	000a0a93          	mv	s5,s4
   1b20c:	04813483          	ld	s1,72(sp)
   1b210:	0a813303          	ld	t1,168(sp)
   1b214:	0b013403          	ld	s0,176(sp)
   1b218:	0a013a03          	ld	s4,160(sp)
   1b21c:	03313823          	sd	s3,48(sp)
   1b220:	000c8b13          	mv	s6,s9
   1b224:	000b8993          	mv	s3,s7
   1b228:	00058c93          	mv	s9,a1
   1b22c:	00050b93          	mv	s7,a0
   1b230:	fff00d93          	li	s11,-1
   1b234:	000236b7          	lui	a3,0x23
   1b238:	f486b903          	ld	s2,-184(a3) # 22f48 <blanks.1+0x40>
   1b23c:	00000613          	li	a2,0
   1b240:	000b8513          	mv	a0,s7
   1b244:	00090693          	mv	a3,s2
   1b248:	000c8593          	mv	a1,s9
   1b24c:	04613423          	sd	t1,72(sp)
   1b250:	291050ef          	jal	20ce0 <__getf2>
   1b254:	04813303          	ld	t1,72(sp)
   1b258:	38a04e63          	bgtz	a0,1b5f4 <_svfprintf_r+0x22e4>
   1b25c:	00000613          	li	a2,0
   1b260:	00090693          	mv	a3,s2
   1b264:	000b8513          	mv	a0,s7
   1b268:	000c8593          	mv	a1,s9
   1b26c:	1a1050ef          	jal	20c0c <__eqtf2>
   1b270:	04813303          	ld	t1,72(sp)
   1b274:	00051663          	bnez	a0,1b280 <_svfprintf_r+0x1f70>
   1b278:	001c7c13          	and	s8,s8,1
   1b27c:	360c1c63          	bnez	s8,1b5f4 <_svfprintf_r+0x22e4>
   1b280:	001d8c1b          	addw	s8,s11,1
   1b284:	018a8c33          	add	s8,s5,s8
   1b288:	03000693          	li	a3,48
   1b28c:	3a0dca63          	bltz	s11,1b640 <_svfprintf_r+0x2330>
   1b290:	001a8a93          	add	s5,s5,1
   1b294:	feda8fa3          	sb	a3,-1(s5)
   1b298:	ff5c1ce3          	bne	s8,s5,1b290 <_svfprintf_r+0x1f80>
   1b29c:	416c07bb          	subw	a5,s8,s6
   1b2a0:	02f13c23          	sd	a5,56(sp)
   1b2a4:	fdfd7d93          	and	s11,s10,-33
   1b2a8:	c3dff06f          	j	1aee4 <_svfprintf_r+0x1bd4>
   1b2ac:	0e813c03          	ld	s8,232(sp)
   1b2b0:	0d812603          	lw	a2,216(sp)
   1b2b4:	416c07bb          	subw	a5,s8,s6
   1b2b8:	02f13c23          	sd	a5,56(sp)
   1b2bc:	ffd00713          	li	a4,-3
   1b2c0:	02c13823          	sd	a2,48(sp)
   1b2c4:	00e64463          	blt	a2,a4,1b2cc <_svfprintf_r+0x1fbc>
   1b2c8:	02c35863          	bge	t1,a2,1b2f8 <_svfprintf_r+0x1fe8>
   1b2cc:	fff6071b          	addw	a4,a2,-1
   1b2d0:	ffed0d1b          	addw	s10,s10,-2
   1b2d4:	0ce12c23          	sw	a4,216(sp)
   1b2d8:	0ffd7693          	zext.b	a3,s10
   1b2dc:	00000593          	li	a1,0
   1b2e0:	c3dff06f          	j	1af1c <_svfprintf_r+0x1c0c>
   1b2e4:	0cf14703          	lbu	a4,207(sp)
   1b2e8:	00000313          	li	t1,0
   1b2ec:	00070463          	beqz	a4,1b2f4 <_svfprintf_r+0x1fe4>
   1b2f0:	e8cfe06f          	j	1997c <_svfprintf_r+0x66c>
   1b2f4:	a10fe06f          	j	19504 <_svfprintf_r+0x1f4>
   1b2f8:	03813783          	ld	a5,56(sp)
   1b2fc:	26f64463          	blt	a2,a5,1b564 <_svfprintf_r+0x2254>
   1b300:	04013783          	ld	a5,64(sp)
   1b304:	00060d93          	mv	s11,a2
   1b308:	0017f713          	and	a4,a5,1
   1b30c:	00070663          	beqz	a4,1b318 <_svfprintf_r+0x2008>
   1b310:	05813783          	ld	a5,88(sp)
   1b314:	00c78dbb          	addw	s11,a5,a2
   1b318:	04013783          	ld	a5,64(sp)
   1b31c:	4007f713          	and	a4,a5,1024
   1b320:	00070463          	beqz	a4,1b328 <_svfprintf_r+0x2018>
   1b324:	42c04063          	bgtz	a2,1b744 <_svfprintf_r+0x2434>
   1b328:	fffdc813          	not	a6,s11
   1b32c:	43f85813          	sra	a6,a6,0x3f
   1b330:	09013903          	ld	s2,144(sp)
   1b334:	010df833          	and	a6,s11,a6
   1b338:	00080c1b          	sext.w	s8,a6
   1b33c:	06700d13          	li	s10,103
   1b340:	04013423          	sd	zero,72(sp)
   1b344:	04013023          	sd	zero,64(sp)
   1b348:	cb9ff06f          	j	1b000 <_svfprintf_r+0x1cf0>
   1b34c:	04013783          	ld	a5,64(sp)
   1b350:	0017f713          	and	a4,a5,1
   1b354:	f4070ce3          	beqz	a4,1b2ac <_svfprintf_r+0x1f9c>
   1b358:	012b0ab3          	add	s5,s6,s2
   1b35c:	04700d93          	li	s11,71
   1b360:	b39ff06f          	j	1ae98 <_svfprintf_r+0x1b88>
   1b364:	10010613          	add	a2,sp,256
   1b368:	000c8593          	mv	a1,s9
   1b36c:	00098513          	mv	a0,s3
   1b370:	75d020ef          	jal	1e2cc <__ssprint_r>
   1b374:	00050463          	beqz	a0,1b37c <_svfprintf_r+0x206c>
   1b378:	c8dfe06f          	j	1a004 <_svfprintf_r+0xcf4>
   1b37c:	00094683          	lbu	a3,0(s2)
   1b380:	11013703          	ld	a4,272(sp)
   1b384:	18010413          	add	s0,sp,384
   1b388:	01000893          	li	a7,16
   1b38c:	00700313          	li	t1,7
   1b390:	00da0a33          	add	s4,s4,a3
   1b394:	d70ff06f          	j	1a904 <_svfprintf_r+0x15f4>
   1b398:	07800713          	li	a4,120
   1b39c:	00296793          	or	a5,s2,2
   1b3a0:	03000693          	li	a3,48
   1b3a4:	0007879b          	sext.w	a5,a5
   1b3a8:	0ce108a3          	sb	a4,209(sp)
   1b3ac:	0cd10823          	sb	a3,208(sp)
   1b3b0:	06300713          	li	a4,99
   1b3b4:	04f13023          	sd	a5,64(sp)
   1b3b8:	00013c23          	sd	zero,24(sp)
   1b3bc:	11810b13          	add	s6,sp,280
   1b3c0:	28674463          	blt	a4,t1,1b648 <_svfprintf_r+0x2338>
   1b3c4:	10296913          	or	s2,s2,258
   1b3c8:	0f813c83          	ld	s9,248(sp)
   1b3cc:	0009079b          	sext.w	a5,s2
   1b3d0:	08f13823          	sd	a5,144(sp)
   1b3d4:	08013c23          	sd	zero,152(sp)
   1b3d8:	0f013c03          	ld	s8,240(sp)
   1b3dc:	060cca63          	bltz	s9,1b450 <_svfprintf_r+0x2140>
   1b3e0:	06100713          	li	a4,97
   1b3e4:	00ed0463          	beq	s10,a4,1b3ec <_svfprintf_r+0x20dc>
   1b3e8:	b98fe06f          	j	19780 <_svfprintf_r+0x470>
   1b3ec:	000c8593          	mv	a1,s9
   1b3f0:	000c0513          	mv	a0,s8
   1b3f4:	02613823          	sd	t1,48(sp)
   1b3f8:	280070ef          	jal	22678 <__trunctfdf2>
   1b3fc:	0d810593          	add	a1,sp,216
   1b400:	885fd0ef          	jal	18c84 <frexp>
   1b404:	15c070ef          	jal	22560 <__extenddftf2>
   1b408:	00023737          	lui	a4,0x23
   1b40c:	f2873683          	ld	a3,-216(a4) # 22f28 <blanks.1+0x20>
   1b410:	00000613          	li	a2,0
   1b414:	2e5050ef          	jal	20ef8 <__multf3>
   1b418:	00000613          	li	a2,0
   1b41c:	00000693          	li	a3,0
   1b420:	00050d93          	mv	s11,a0
   1b424:	00058913          	mv	s2,a1
   1b428:	7e4050ef          	jal	20c0c <__eqtf2>
   1b42c:	03013303          	ld	t1,48(sp)
   1b430:	00051663          	bnez	a0,1b43c <_svfprintf_r+0x212c>
   1b434:	00100713          	li	a4,1
   1b438:	0ce12c23          	sw	a4,216(sp)
   1b43c:	00023737          	lui	a4,0x23
   1b440:	b8070793          	add	a5,a4,-1152 # 22b80 <__clz_tab+0x138>
   1b444:	02f13c23          	sd	a5,56(sp)
   1b448:	d01ff06f          	j	1b148 <_svfprintf_r+0x1e38>
   1b44c:	00013c23          	sd	zero,24(sp)
   1b450:	fff00713          	li	a4,-1
   1b454:	03f71713          	sll	a4,a4,0x3f
   1b458:	02d00793          	li	a5,45
   1b45c:	00ecccb3          	xor	s9,s9,a4
   1b460:	08f13c23          	sd	a5,152(sp)
   1b464:	f7dff06f          	j	1b3e0 <_svfprintf_r+0x20d0>
   1b468:	00013583          	ld	a1,0(sp)
   1b46c:	10010613          	add	a2,sp,256
   1b470:	00098513          	mv	a0,s3
   1b474:	659020ef          	jal	1e2cc <__ssprint_r>
   1b478:	00050463          	beqz	a0,1b480 <_svfprintf_r+0x2170>
   1b47c:	b89fe06f          	j	1a004 <_svfprintf_r+0xcf4>
   1b480:	0d812683          	lw	a3,216(sp)
   1b484:	11013703          	ld	a4,272(sp)
   1b488:	18010413          	add	s0,sp,384
   1b48c:	e41fe06f          	j	1a2cc <_svfprintf_r+0xfbc>
   1b490:	02d00793          	li	a5,45
   1b494:	0cf107a3          	sb	a5,207(sp)
   1b498:	02d00713          	li	a4,45
   1b49c:	f38ff06f          	j	1abd4 <_svfprintf_r+0x18c4>
   1b4a0:	00054683          	lbu	a3,0(a0)
   1b4a4:	03000713          	li	a4,48
   1b4a8:	00e68863          	beq	a3,a4,1b4b8 <_svfprintf_r+0x21a8>
   1b4ac:	0d812683          	lw	a3,216(sp)
   1b4b0:	00da8ab3          	add	s5,s5,a3
   1b4b4:	9e5ff06f          	j	1ae98 <_svfprintf_r+0x1b88>
   1b4b8:	00000613          	li	a2,0
   1b4bc:	00000693          	li	a3,0
   1b4c0:	000c0513          	mv	a0,s8
   1b4c4:	000c8593          	mv	a1,s9
   1b4c8:	02613823          	sd	t1,48(sp)
   1b4cc:	740050ef          	jal	20c0c <__eqtf2>
   1b4d0:	03013303          	ld	t1,48(sp)
   1b4d4:	fc050ce3          	beqz	a0,1b4ac <_svfprintf_r+0x219c>
   1b4d8:	00100713          	li	a4,1
   1b4dc:	412706bb          	subw	a3,a4,s2
   1b4e0:	0cd12c23          	sw	a3,216(sp)
   1b4e4:	00da8ab3          	add	s5,s5,a3
   1b4e8:	9b1ff06f          	j	1ae98 <_svfprintf_r+0x1b88>
   1b4ec:	0cf14703          	lbu	a4,207(sp)
   1b4f0:	03513023          	sd	s5,32(sp)
   1b4f4:	04013423          	sd	zero,72(sp)
   1b4f8:	04013023          	sd	zero,64(sp)
   1b4fc:	02013823          	sd	zero,48(sp)
   1b500:	00030c13          	mv	s8,t1
   1b504:	00030d93          	mv	s11,t1
   1b508:	00000313          	li	t1,0
   1b50c:	00070463          	beqz	a4,1b514 <_svfprintf_r+0x2204>
   1b510:	c6cfe06f          	j	1997c <_svfprintf_r+0x66c>
   1b514:	ff1fd06f          	j	19504 <_svfprintf_r+0x1f4>
   1b518:	00013583          	ld	a1,0(sp)
   1b51c:	10010613          	add	a2,sp,256
   1b520:	00098513          	mv	a0,s3
   1b524:	5a9020ef          	jal	1e2cc <__ssprint_r>
   1b528:	00050463          	beqz	a0,1b530 <_svfprintf_r+0x2220>
   1b52c:	ad9fe06f          	j	1a004 <_svfprintf_r+0xcf4>
   1b530:	0d812603          	lw	a2,216(sp)
   1b534:	03813783          	ld	a5,56(sp)
   1b538:	11013703          	ld	a4,272(sp)
   1b53c:	18010413          	add	s0,sp,384
   1b540:	40c7863b          	subw	a2,a5,a2
   1b544:	dd5fe06f          	j	1a318 <_svfprintf_r+0x1008>
   1b548:	000237b7          	lui	a5,0x23
   1b54c:	b5878b13          	add	s6,a5,-1192 # 22b58 <__clz_tab+0x110>
   1b550:	e94ff06f          	j	1abe4 <_svfprintf_r+0x18d4>
   1b554:	05800713          	li	a4,88
   1b558:	e45ff06f          	j	1b39c <_svfprintf_r+0x208c>
   1b55c:	00090c93          	mv	s9,s2
   1b560:	bc1fe06f          	j	1a120 <_svfprintf_r+0xe10>
   1b564:	05813783          	ld	a5,88(sp)
   1b568:	03813703          	ld	a4,56(sp)
   1b56c:	06700d13          	li	s10,103
   1b570:	00e78dbb          	addw	s11,a5,a4
   1b574:	03013783          	ld	a5,48(sp)
   1b578:	26f05063          	blez	a5,1b7d8 <_svfprintf_r+0x24c8>
   1b57c:	04013783          	ld	a5,64(sp)
   1b580:	4007f713          	and	a4,a5,1024
   1b584:	1c071263          	bnez	a4,1b748 <_svfprintf_r+0x2438>
   1b588:	fffdc813          	not	a6,s11
   1b58c:	43f85813          	sra	a6,a6,0x3f
   1b590:	010df833          	and	a6,s11,a6
   1b594:	09013903          	ld	s2,144(sp)
   1b598:	00080c1b          	sext.w	s8,a6
   1b59c:	da5ff06f          	j	1b340 <_svfprintf_r+0x2030>
   1b5a0:	04013783          	ld	a5,64(sp)
   1b5a4:	0017f713          	and	a4,a5,1
   1b5a8:	03013783          	ld	a5,48(sp)
   1b5ac:	00e36733          	or	a4,t1,a4
   1b5b0:	28f05a63          	blez	a5,1b844 <_svfprintf_r+0x2534>
   1b5b4:	24071463          	bnez	a4,1b7fc <_svfprintf_r+0x24ec>
   1b5b8:	03013d83          	ld	s11,48(sp)
   1b5bc:	06600d13          	li	s10,102
   1b5c0:	fbdff06f          	j	1b57c <_svfprintf_r+0x226c>
   1b5c4:	0e210693          	add	a3,sp,226
   1b5c8:	00059863          	bnez	a1,1b5d8 <_svfprintf_r+0x22c8>
   1b5cc:	03000693          	li	a3,48
   1b5d0:	0ed10123          	sb	a3,226(sp)
   1b5d4:	0e310693          	add	a3,sp,227
   1b5d8:	20010793          	add	a5,sp,512
   1b5dc:	40f68633          	sub	a2,a3,a5
   1b5e0:	0307071b          	addw	a4,a4,48
   1b5e4:	1216079b          	addw	a5,a2,289
   1b5e8:	00e68023          	sb	a4,0(a3)
   1b5ec:	06f13823          	sd	a5,112(sp)
   1b5f0:	9c5ff06f          	j	1afb4 <_svfprintf_r+0x1ca4>
   1b5f4:	03013783          	ld	a5,48(sp)
   1b5f8:	000a8693          	mv	a3,s5
   1b5fc:	0ef13423          	sd	a5,232(sp)
   1b600:	03813783          	ld	a5,56(sp)
   1b604:	fffac603          	lbu	a2,-1(s5)
   1b608:	00f7c583          	lbu	a1,15(a5)
   1b60c:	02c59063          	bne	a1,a2,1b62c <_svfprintf_r+0x231c>
   1b610:	03000513          	li	a0,48
   1b614:	fea68fa3          	sb	a0,-1(a3)
   1b618:	0e813683          	ld	a3,232(sp)
   1b61c:	fff68793          	add	a5,a3,-1
   1b620:	0ef13423          	sd	a5,232(sp)
   1b624:	fff6c603          	lbu	a2,-1(a3)
   1b628:	fec586e3          	beq	a1,a2,1b614 <_svfprintf_r+0x2304>
   1b62c:	0016059b          	addw	a1,a2,1
   1b630:	03900513          	li	a0,57
   1b634:	0ff5f593          	zext.b	a1,a1
   1b638:	02a60a63          	beq	a2,a0,1b66c <_svfprintf_r+0x235c>
   1b63c:	feb68fa3          	sb	a1,-1(a3)
   1b640:	000a8c13          	mv	s8,s5
   1b644:	c59ff06f          	j	1b29c <_svfprintf_r+0x1f8c>
   1b648:	0013059b          	addw	a1,t1,1
   1b64c:	00098513          	mv	a0,s3
   1b650:	00613c23          	sd	t1,24(sp)
   1b654:	a2dfb0ef          	jal	17080 <_malloc_r>
   1b658:	01813303          	ld	t1,24(sp)
   1b65c:	00050b13          	mv	s6,a0
   1b660:	24050063          	beqz	a0,1b8a0 <_svfprintf_r+0x2590>
   1b664:	00a13c23          	sd	a0,24(sp)
   1b668:	d5dff06f          	j	1b3c4 <_svfprintf_r+0x20b4>
   1b66c:	03813783          	ld	a5,56(sp)
   1b670:	00a7c583          	lbu	a1,10(a5)
   1b674:	feb68fa3          	sb	a1,-1(a3)
   1b678:	fc9ff06f          	j	1b640 <_svfprintf_r+0x2330>
   1b67c:	0016869b          	addw	a3,a3,1
   1b680:	01970733          	add	a4,a4,s9
   1b684:	01743023          	sd	s7,0(s0)
   1b688:	01943423          	sd	s9,8(s0)
   1b68c:	10e13823          	sd	a4,272(sp)
   1b690:	10d12423          	sw	a3,264(sp)
   1b694:	00700613          	li	a2,7
   1b698:	c0d65863          	bge	a2,a3,1aaa8 <_svfprintf_r+0x1798>
   1b69c:	00013583          	ld	a1,0(sp)
   1b6a0:	10010613          	add	a2,sp,256
   1b6a4:	00098513          	mv	a0,s3
   1b6a8:	425020ef          	jal	1e2cc <__ssprint_r>
   1b6ac:	00050463          	beqz	a0,1b6b4 <_svfprintf_r+0x23a4>
   1b6b0:	955fe06f          	j	1a004 <_svfprintf_r+0xcf4>
   1b6b4:	11013703          	ld	a4,272(sp)
   1b6b8:	10812683          	lw	a3,264(sp)
   1b6bc:	18010413          	add	s0,sp,384
   1b6c0:	becff06f          	j	1aaac <_svfprintf_r+0x179c>
   1b6c4:	0b813603          	ld	a2,184(sp)
   1b6c8:	000c8b13          	mv	s6,s9
   1b6cc:	03313823          	sd	s3,48(sp)
   1b6d0:	00cb063b          	addw	a2,s6,a2
   1b6d4:	000b8993          	mv	s3,s7
   1b6d8:	000a8b93          	mv	s7,s5
   1b6dc:	000a0a93          	mv	s5,s4
   1b6e0:	04813483          	ld	s1,72(sp)
   1b6e4:	0a813303          	ld	t1,168(sp)
   1b6e8:	0b013403          	ld	s0,176(sp)
   1b6ec:	0a013a03          	ld	s4,160(sp)
   1b6f0:	00090c93          	mv	s9,s2
   1b6f4:	41560dbb          	subw	s11,a2,s5
   1b6f8:	b3dff06f          	j	1b234 <_svfprintf_r+0x1f24>
   1b6fc:	05013703          	ld	a4,80(sp)
   1b700:	00c00793          	li	a5,12
   1b704:	00f72023          	sw	a5,0(a4)
   1b708:	fff00793          	li	a5,-1
   1b70c:	00f13823          	sd	a5,16(sp)
   1b710:	f3dfd06f          	j	1964c <_svfprintf_r+0x33c>
   1b714:	02e13023          	sd	a4,32(sp)
   1b718:	a09fe06f          	j	1a120 <_svfprintf_r+0xe10>
   1b71c:	04013783          	ld	a5,64(sp)
   1b720:	0017f613          	and	a2,a5,1
   1b724:	8a0608e3          	beqz	a2,1afd4 <_svfprintf_r+0x1cc4>
   1b728:	8a5ff06f          	j	1afcc <_svfprintf_r+0x1cbc>
   1b72c:	00f72023          	sw	a5,0(a4)
   1b730:	cb0fe06f          	j	19be0 <_svfprintf_r+0x8d0>
   1b734:	00030463          	beqz	t1,1b73c <_svfprintf_r+0x242c>
   1b738:	820fe06f          	j	19758 <_svfprintf_r+0x448>
   1b73c:	00100313          	li	t1,1
   1b740:	818fe06f          	j	19758 <_svfprintf_r+0x448>
   1b744:	06700d13          	li	s10,103
   1b748:	07813683          	ld	a3,120(sp)
   1b74c:	0ff00613          	li	a2,255
   1b750:	0006c703          	lbu	a4,0(a3)
   1b754:	14c70063          	beq	a4,a2,1b894 <_svfprintf_r+0x2584>
   1b758:	03013783          	ld	a5,48(sp)
   1b75c:	00000813          	li	a6,0
   1b760:	00000513          	li	a0,0
   1b764:	0ff00593          	li	a1,255
   1b768:	0007061b          	sext.w	a2,a4
   1b76c:	00f75e63          	bge	a4,a5,1b788 <_svfprintf_r+0x2478>
   1b770:	0016c703          	lbu	a4,1(a3)
   1b774:	40c787bb          	subw	a5,a5,a2
   1b778:	04070a63          	beqz	a4,1b7cc <_svfprintf_r+0x24bc>
   1b77c:	0015051b          	addw	a0,a0,1
   1b780:	00168693          	add	a3,a3,1
   1b784:	feb712e3          	bne	a4,a1,1b768 <_svfprintf_r+0x2458>
   1b788:	06d13c23          	sd	a3,120(sp)
   1b78c:	02f13823          	sd	a5,48(sp)
   1b790:	04a13023          	sd	a0,64(sp)
   1b794:	05013423          	sd	a6,72(sp)
   1b798:	04813783          	ld	a5,72(sp)
   1b79c:	04013703          	ld	a4,64(sp)
   1b7a0:	09013903          	ld	s2,144(sp)
   1b7a4:	00e7873b          	addw	a4,a5,a4
   1b7a8:	08013783          	ld	a5,128(sp)
   1b7ac:	02f7073b          	mulw	a4,a4,a5
   1b7b0:	01b7073b          	addw	a4,a4,s11
   1b7b4:	00070d9b          	sext.w	s11,a4
   1b7b8:	fffdc613          	not	a2,s11
   1b7bc:	43f65613          	sra	a2,a2,0x3f
   1b7c0:	00c77733          	and	a4,a4,a2
   1b7c4:	00070c1b          	sext.w	s8,a4
   1b7c8:	839ff06f          	j	1b000 <_svfprintf_r+0x1cf0>
   1b7cc:	0006c703          	lbu	a4,0(a3)
   1b7d0:	0018081b          	addw	a6,a6,1
   1b7d4:	fb1ff06f          	j	1b784 <_svfprintf_r+0x2474>
   1b7d8:	40fd873b          	subw	a4,s11,a5
   1b7dc:	0017071b          	addw	a4,a4,1
   1b7e0:	00070d9b          	sext.w	s11,a4
   1b7e4:	fffdc613          	not	a2,s11
   1b7e8:	43f65613          	sra	a2,a2,0x3f
   1b7ec:	00c77733          	and	a4,a4,a2
   1b7f0:	09013903          	ld	s2,144(sp)
   1b7f4:	00070c1b          	sext.w	s8,a4
   1b7f8:	b49ff06f          	j	1b340 <_svfprintf_r+0x2030>
   1b7fc:	05813703          	ld	a4,88(sp)
   1b800:	06600d13          	li	s10,102
   1b804:	00f706bb          	addw	a3,a4,a5
   1b808:	00668dbb          	addw	s11,a3,t1
   1b80c:	d71ff06f          	j	1b57c <_svfprintf_r+0x226c>
   1b810:	07000693          	li	a3,112
   1b814:	f04ff06f          	j	1af18 <_svfprintf_r+0x1c08>
   1b818:	02013683          	ld	a3,32(sp)
   1b81c:	0006a703          	lw	a4,0(a3)
   1b820:	00868693          	add	a3,a3,8
   1b824:	00070313          	mv	t1,a4
   1b828:	00075463          	bgez	a4,1b830 <_svfprintf_r+0x2520>
   1b82c:	fff00313          	li	t1,-1
   1b830:	0014ce03          	lbu	t3,1(s1)
   1b834:	00030a9b          	sext.w	s5,t1
   1b838:	02d13023          	sd	a3,32(sp)
   1b83c:	00078493          	mv	s1,a5
   1b840:	c31fd06f          	j	19470 <_svfprintf_r+0x160>
   1b844:	00071c63          	bnez	a4,1b85c <_svfprintf_r+0x254c>
   1b848:	09013903          	ld	s2,144(sp)
   1b84c:	00100c13          	li	s8,1
   1b850:	06600d13          	li	s10,102
   1b854:	00100d93          	li	s11,1
   1b858:	ae9ff06f          	j	1b340 <_svfprintf_r+0x2030>
   1b85c:	05813783          	ld	a5,88(sp)
   1b860:	09013903          	ld	s2,144(sp)
   1b864:	06600d13          	li	s10,102
   1b868:	0017871b          	addw	a4,a5,1
   1b86c:	0067073b          	addw	a4,a4,t1
   1b870:	00070d9b          	sext.w	s11,a4
   1b874:	fffdc613          	not	a2,s11
   1b878:	43f65613          	sra	a2,a2,0x3f
   1b87c:	00c77733          	and	a4,a4,a2
   1b880:	00070c1b          	sext.w	s8,a4
   1b884:	abdff06f          	j	1b340 <_svfprintf_r+0x2030>
   1b888:	00200793          	li	a5,2
   1b88c:	06f13823          	sd	a5,112(sp)
   1b890:	f24ff06f          	j	1afb4 <_svfprintf_r+0x1ca4>
   1b894:	04013423          	sd	zero,72(sp)
   1b898:	04013023          	sd	zero,64(sp)
   1b89c:	efdff06f          	j	1b798 <_svfprintf_r+0x2488>
   1b8a0:	00013703          	ld	a4,0(sp)
   1b8a4:	01075783          	lhu	a5,16(a4)
   1b8a8:	0407e793          	or	a5,a5,64
   1b8ac:	00f71823          	sh	a5,16(a4)
   1b8b0:	d89fd06f          	j	19638 <_svfprintf_r+0x328>

000000000001b8b4 <__sprint_r.part.0>:
   1b8b4:	0ac5a783          	lw	a5,172(a1)
   1b8b8:	fb010113          	add	sp,sp,-80
   1b8bc:	01513c23          	sd	s5,24(sp)
   1b8c0:	00d7d793          	srl	a5,a5,0xd
   1b8c4:	04113423          	sd	ra,72(sp)
   1b8c8:	04813023          	sd	s0,64(sp)
   1b8cc:	02913c23          	sd	s1,56(sp)
   1b8d0:	03213823          	sd	s2,48(sp)
   1b8d4:	03313423          	sd	s3,40(sp)
   1b8d8:	03413023          	sd	s4,32(sp)
   1b8dc:	01613823          	sd	s6,16(sp)
   1b8e0:	01713423          	sd	s7,8(sp)
   1b8e4:	0017f793          	and	a5,a5,1
   1b8e8:	00060a93          	mv	s5,a2
   1b8ec:	0c078063          	beqz	a5,1b9ac <__sprint_r.part.0+0xf8>
   1b8f0:	01063783          	ld	a5,16(a2)
   1b8f4:	00063b03          	ld	s6,0(a2)
   1b8f8:	00058913          	mv	s2,a1
   1b8fc:	00050993          	mv	s3,a0
   1b900:	fff00a13          	li	s4,-1
   1b904:	0a078063          	beqz	a5,1b9a4 <__sprint_r.part.0+0xf0>
   1b908:	008b3483          	ld	s1,8(s6)
   1b90c:	000b3403          	ld	s0,0(s6)
   1b910:	0024d493          	srl	s1,s1,0x2
   1b914:	00048b9b          	sext.w	s7,s1
   1b918:	07705c63          	blez	s7,1b990 <__sprint_r.part.0+0xdc>
   1b91c:	fff4849b          	addw	s1,s1,-1
   1b920:	02049793          	sll	a5,s1,0x20
   1b924:	01e7d493          	srl	s1,a5,0x1e
   1b928:	00440793          	add	a5,s0,4
   1b92c:	00f484b3          	add	s1,s1,a5
   1b930:	0080006f          	j	1b938 <__sprint_r.part.0+0x84>
   1b934:	04848c63          	beq	s1,s0,1b98c <__sprint_r.part.0+0xd8>
   1b938:	00042583          	lw	a1,0(s0)
   1b93c:	00090613          	mv	a2,s2
   1b940:	00098513          	mv	a0,s3
   1b944:	0d9010ef          	jal	1d21c <_fputwc_r>
   1b948:	0005051b          	sext.w	a0,a0
   1b94c:	00440413          	add	s0,s0,4
   1b950:	ff4512e3          	bne	a0,s4,1b934 <__sprint_r.part.0+0x80>
   1b954:	fff00513          	li	a0,-1
   1b958:	04813083          	ld	ra,72(sp)
   1b95c:	04013403          	ld	s0,64(sp)
   1b960:	000ab823          	sd	zero,16(s5)
   1b964:	000aa423          	sw	zero,8(s5)
   1b968:	03813483          	ld	s1,56(sp)
   1b96c:	03013903          	ld	s2,48(sp)
   1b970:	02813983          	ld	s3,40(sp)
   1b974:	02013a03          	ld	s4,32(sp)
   1b978:	01813a83          	ld	s5,24(sp)
   1b97c:	01013b03          	ld	s6,16(sp)
   1b980:	00813b83          	ld	s7,8(sp)
   1b984:	05010113          	add	sp,sp,80
   1b988:	00008067          	ret
   1b98c:	010ab783          	ld	a5,16(s5)
   1b990:	002b9b93          	sll	s7,s7,0x2
   1b994:	417787b3          	sub	a5,a5,s7
   1b998:	00fab823          	sd	a5,16(s5)
   1b99c:	010b0b13          	add	s6,s6,16
   1b9a0:	f60794e3          	bnez	a5,1b908 <__sprint_r.part.0+0x54>
   1b9a4:	00000513          	li	a0,0
   1b9a8:	fb1ff06f          	j	1b958 <__sprint_r.part.0+0xa4>
   1b9ac:	17d010ef          	jal	1d328 <__sfvwrite_r>
   1b9b0:	fa9ff06f          	j	1b958 <__sprint_r.part.0+0xa4>

000000000001b9b4 <__sprint_r>:
   1b9b4:	01063703          	ld	a4,16(a2)
   1b9b8:	00070463          	beqz	a4,1b9c0 <__sprint_r+0xc>
   1b9bc:	ef9ff06f          	j	1b8b4 <__sprint_r.part.0>
   1b9c0:	00062423          	sw	zero,8(a2)
   1b9c4:	00000513          	li	a0,0
   1b9c8:	00008067          	ret

000000000001b9cc <_vfiprintf_r>:
   1b9cc:	e2010113          	add	sp,sp,-480
   1b9d0:	1b413823          	sd	s4,432(sp)
   1b9d4:	1b513423          	sd	s5,424(sp)
   1b9d8:	19713c23          	sd	s7,408(sp)
   1b9dc:	17b13c23          	sd	s11,376(sp)
   1b9e0:	1c113c23          	sd	ra,472(sp)
   1b9e4:	1c813823          	sd	s0,464(sp)
   1b9e8:	1c913423          	sd	s1,456(sp)
   1b9ec:	1d213023          	sd	s2,448(sp)
   1b9f0:	1b313c23          	sd	s3,440(sp)
   1b9f4:	1b613023          	sd	s6,416(sp)
   1b9f8:	19813823          	sd	s8,400(sp)
   1b9fc:	19913423          	sd	s9,392(sp)
   1ba00:	19a13023          	sd	s10,384(sp)
   1ba04:	00050a93          	mv	s5,a0
   1ba08:	00058a13          	mv	s4,a1
   1ba0c:	00060d93          	mv	s11,a2
   1ba10:	00068b93          	mv	s7,a3
   1ba14:	00050663          	beqz	a0,1ba20 <_vfiprintf_r+0x54>
   1ba18:	05052783          	lw	a5,80(a0)
   1ba1c:	50078263          	beqz	a5,1bf20 <_vfiprintf_r+0x554>
   1ba20:	010a1783          	lh	a5,16(s4)
   1ba24:	03279713          	sll	a4,a5,0x32
   1ba28:	02074663          	bltz	a4,1ba54 <_vfiprintf_r+0x88>
   1ba2c:	0aca2703          	lw	a4,172(s4)
   1ba30:	000026b7          	lui	a3,0x2
   1ba34:	00d7e7b3          	or	a5,a5,a3
   1ba38:	ffffe6b7          	lui	a3,0xffffe
   1ba3c:	0107979b          	sllw	a5,a5,0x10
   1ba40:	fff68693          	add	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd847f>
   1ba44:	4107d79b          	sraw	a5,a5,0x10
   1ba48:	00d77733          	and	a4,a4,a3
   1ba4c:	00fa1823          	sh	a5,16(s4)
   1ba50:	0aea2623          	sw	a4,172(s4)
   1ba54:	0087f713          	and	a4,a5,8
   1ba58:	12070263          	beqz	a4,1bb7c <_vfiprintf_r+0x1b0>
   1ba5c:	018a3703          	ld	a4,24(s4)
   1ba60:	10070e63          	beqz	a4,1bb7c <_vfiprintf_r+0x1b0>
   1ba64:	01a7f793          	and	a5,a5,26
   1ba68:	00a00713          	li	a4,10
   1ba6c:	12e78a63          	beq	a5,a4,1bba0 <_vfiprintf_r+0x1d4>
   1ba70:	00023d37          	lui	s10,0x23
   1ba74:	0f010993          	add	s3,sp,240
   1ba78:	00000c13          	li	s8,0
   1ba7c:	508d0793          	add	a5,s10,1288 # 23508 <blanks.1+0x10>
   1ba80:	00023b37          	lui	s6,0x23
   1ba84:	000c0c93          	mv	s9,s8
   1ba88:	07313823          	sd	s3,112(sp)
   1ba8c:	08013023          	sd	zero,128(sp)
   1ba90:	06012c23          	sw	zero,120(sp)
   1ba94:	00098413          	mv	s0,s3
   1ba98:	00013823          	sd	zero,16(sp)
   1ba9c:	02013c23          	sd	zero,56(sp)
   1baa0:	02013823          	sd	zero,48(sp)
   1baa4:	04013023          	sd	zero,64(sp)
   1baa8:	00f13423          	sd	a5,8(sp)
   1baac:	01000913          	li	s2,16
   1bab0:	678b0b13          	add	s6,s6,1656 # 23678 <zeroes.0>
   1bab4:	000b8c13          	mv	s8,s7
   1bab8:	000dc783          	lbu	a5,0(s11)
   1babc:	34078e63          	beqz	a5,1be18 <_vfiprintf_r+0x44c>
   1bac0:	000d8493          	mv	s1,s11
   1bac4:	02500713          	li	a4,37
   1bac8:	3ce78663          	beq	a5,a4,1be94 <_vfiprintf_r+0x4c8>
   1bacc:	0014c783          	lbu	a5,1(s1)
   1bad0:	00148493          	add	s1,s1,1
   1bad4:	fe079ae3          	bnez	a5,1bac8 <_vfiprintf_r+0xfc>
   1bad8:	41b48bbb          	subw	s7,s1,s11
   1badc:	320b8e63          	beqz	s7,1be18 <_vfiprintf_r+0x44c>
   1bae0:	07812783          	lw	a5,120(sp)
   1bae4:	08013703          	ld	a4,128(sp)
   1bae8:	01b43023          	sd	s11,0(s0)
   1baec:	0017869b          	addw	a3,a5,1
   1baf0:	00eb8733          	add	a4,s7,a4
   1baf4:	01743423          	sd	s7,8(s0)
   1baf8:	08e13023          	sd	a4,128(sp)
   1bafc:	06d12c23          	sw	a3,120(sp)
   1bb00:	00700793          	li	a5,7
   1bb04:	01040413          	add	s0,s0,16
   1bb08:	02d7d063          	bge	a5,a3,1bb28 <_vfiprintf_r+0x15c>
   1bb0c:	4e0708e3          	beqz	a4,1c7fc <_vfiprintf_r+0xe30>
   1bb10:	07010613          	add	a2,sp,112
   1bb14:	000a0593          	mv	a1,s4
   1bb18:	000a8513          	mv	a0,s5
   1bb1c:	d99ff0ef          	jal	1b8b4 <__sprint_r.part.0>
   1bb20:	0e051463          	bnez	a0,1bc08 <_vfiprintf_r+0x23c>
   1bb24:	00098413          	mv	s0,s3
   1bb28:	0004c783          	lbu	a5,0(s1)
   1bb2c:	017c8cbb          	addw	s9,s9,s7
   1bb30:	2e078463          	beqz	a5,1be18 <_vfiprintf_r+0x44c>
   1bb34:	0014c783          	lbu	a5,1(s1)
   1bb38:	00148d93          	add	s11,s1,1
   1bb3c:	060103a3          	sb	zero,103(sp)
   1bb40:	fff00d13          	li	s10,-1
   1bb44:	00000893          	li	a7,0
   1bb48:	00000b93          	li	s7,0
   1bb4c:	05a00493          	li	s1,90
   1bb50:	001d8d93          	add	s11,s11,1
   1bb54:	0007879b          	sext.w	a5,a5
   1bb58:	fe07871b          	addw	a4,a5,-32
   1bb5c:	0007069b          	sext.w	a3,a4
   1bb60:	12d4ec63          	bltu	s1,a3,1bc98 <_vfiprintf_r+0x2cc>
   1bb64:	02071693          	sll	a3,a4,0x20
   1bb68:	01e6d713          	srl	a4,a3,0x1e
   1bb6c:	00813683          	ld	a3,8(sp)
   1bb70:	00d70733          	add	a4,a4,a3
   1bb74:	00072703          	lw	a4,0(a4)
   1bb78:	00070067          	jr	a4
   1bb7c:	000a0593          	mv	a1,s4
   1bb80:	000a8513          	mv	a0,s5
   1bb84:	de4f70ef          	jal	13168 <__swsetup_r>
   1bb88:	00050463          	beqz	a0,1bb90 <_vfiprintf_r+0x1c4>
   1bb8c:	0780106f          	j	1cc04 <_vfiprintf_r+0x1238>
   1bb90:	010a1783          	lh	a5,16(s4)
   1bb94:	00a00713          	li	a4,10
   1bb98:	01a7f793          	and	a5,a5,26
   1bb9c:	ece79ae3          	bne	a5,a4,1ba70 <_vfiprintf_r+0xa4>
   1bba0:	012a1783          	lh	a5,18(s4)
   1bba4:	ec07c6e3          	bltz	a5,1ba70 <_vfiprintf_r+0xa4>
   1bba8:	1d013403          	ld	s0,464(sp)
   1bbac:	1d813083          	ld	ra,472(sp)
   1bbb0:	1c813483          	ld	s1,456(sp)
   1bbb4:	1c013903          	ld	s2,448(sp)
   1bbb8:	1b813983          	ld	s3,440(sp)
   1bbbc:	1a013b03          	ld	s6,416(sp)
   1bbc0:	19013c03          	ld	s8,400(sp)
   1bbc4:	18813c83          	ld	s9,392(sp)
   1bbc8:	18013d03          	ld	s10,384(sp)
   1bbcc:	000b8693          	mv	a3,s7
   1bbd0:	000d8613          	mv	a2,s11
   1bbd4:	19813b83          	ld	s7,408(sp)
   1bbd8:	17813d83          	ld	s11,376(sp)
   1bbdc:	000a0593          	mv	a1,s4
   1bbe0:	000a8513          	mv	a0,s5
   1bbe4:	1b013a03          	ld	s4,432(sp)
   1bbe8:	1a813a83          	ld	s5,424(sp)
   1bbec:	1e010113          	add	sp,sp,480
   1bbf0:	0600106f          	j	1cc50 <__sbprintf>
   1bbf4:	07010613          	add	a2,sp,112
   1bbf8:	000a0593          	mv	a1,s4
   1bbfc:	000a8513          	mv	a0,s5
   1bc00:	cb5ff0ef          	jal	1b8b4 <__sprint_r.part.0>
   1bc04:	20050263          	beqz	a0,1be08 <_vfiprintf_r+0x43c>
   1bc08:	000c8c13          	mv	s8,s9
   1bc0c:	010a5783          	lhu	a5,16(s4)
   1bc10:	0407f793          	and	a5,a5,64
   1bc14:	00078463          	beqz	a5,1bc1c <_vfiprintf_r+0x250>
   1bc18:	7ed0006f          	j	1cc04 <_vfiprintf_r+0x1238>
   1bc1c:	1d813083          	ld	ra,472(sp)
   1bc20:	1d013403          	ld	s0,464(sp)
   1bc24:	1c813483          	ld	s1,456(sp)
   1bc28:	1c013903          	ld	s2,448(sp)
   1bc2c:	1b813983          	ld	s3,440(sp)
   1bc30:	1b013a03          	ld	s4,432(sp)
   1bc34:	1a813a83          	ld	s5,424(sp)
   1bc38:	1a013b03          	ld	s6,416(sp)
   1bc3c:	19813b83          	ld	s7,408(sp)
   1bc40:	18813c83          	ld	s9,392(sp)
   1bc44:	18013d03          	ld	s10,384(sp)
   1bc48:	17813d83          	ld	s11,376(sp)
   1bc4c:	000c0513          	mv	a0,s8
   1bc50:	19013c03          	ld	s8,400(sp)
   1bc54:	1e010113          	add	sp,sp,480
   1bc58:	00008067          	ret
   1bc5c:	00000893          	li	a7,0
   1bc60:	00900613          	li	a2,9
   1bc64:	000dc683          	lbu	a3,0(s11)
   1bc68:	0028971b          	sllw	a4,a7,0x2
   1bc6c:	011708bb          	addw	a7,a4,a7
   1bc70:	fd07879b          	addw	a5,a5,-48
   1bc74:	0018989b          	sllw	a7,a7,0x1
   1bc78:	fd06871b          	addw	a4,a3,-48
   1bc7c:	011788bb          	addw	a7,a5,a7
   1bc80:	001d8d93          	add	s11,s11,1
   1bc84:	0006879b          	sext.w	a5,a3
   1bc88:	fce67ee3          	bgeu	a2,a4,1bc64 <_vfiprintf_r+0x298>
   1bc8c:	fe07871b          	addw	a4,a5,-32
   1bc90:	0007069b          	sext.w	a3,a4
   1bc94:	ecd4f8e3          	bgeu	s1,a3,1bb64 <_vfiprintf_r+0x198>
   1bc98:	18078063          	beqz	a5,1be18 <_vfiprintf_r+0x44c>
   1bc9c:	08f10423          	sb	a5,136(sp)
   1bca0:	060103a3          	sb	zero,103(sp)
   1bca4:	00100e13          	li	t3,1
   1bca8:	00100313          	li	t1,1
   1bcac:	08810493          	add	s1,sp,136
   1bcb0:	00000d13          	li	s10,0
   1bcb4:	002bff93          	and	t6,s7,2
   1bcb8:	000f8463          	beqz	t6,1bcc0 <_vfiprintf_r+0x2f4>
   1bcbc:	002e0e1b          	addw	t3,t3,2
   1bcc0:	07812703          	lw	a4,120(sp)
   1bcc4:	084bf293          	and	t0,s7,132
   1bcc8:	08013783          	ld	a5,128(sp)
   1bccc:	0017059b          	addw	a1,a4,1
   1bcd0:	00058613          	mv	a2,a1
   1bcd4:	00029663          	bnez	t0,1bce0 <_vfiprintf_r+0x314>
   1bcd8:	41c886bb          	subw	a3,a7,t3
   1bcdc:	0ad040e3          	bgtz	a3,1c57c <_vfiprintf_r+0xbb0>
   1bce0:	06714683          	lbu	a3,103(sp)
   1bce4:	02068a63          	beqz	a3,1bd18 <_vfiprintf_r+0x34c>
   1bce8:	06710713          	add	a4,sp,103
   1bcec:	00178793          	add	a5,a5,1
   1bcf0:	00e43023          	sd	a4,0(s0)
   1bcf4:	00100713          	li	a4,1
   1bcf8:	00e43423          	sd	a4,8(s0)
   1bcfc:	08f13023          	sd	a5,128(sp)
   1bd00:	06b12c23          	sw	a1,120(sp)
   1bd04:	00700713          	li	a4,7
   1bd08:	7ab74663          	blt	a4,a1,1c4b4 <_vfiprintf_r+0xae8>
   1bd0c:	00058713          	mv	a4,a1
   1bd10:	01040413          	add	s0,s0,16
   1bd14:	0015859b          	addw	a1,a1,1
   1bd18:	060f8863          	beqz	t6,1bd88 <_vfiprintf_r+0x3bc>
   1bd1c:	06810713          	add	a4,sp,104
   1bd20:	00278793          	add	a5,a5,2
   1bd24:	00e43023          	sd	a4,0(s0)
   1bd28:	00200713          	li	a4,2
   1bd2c:	00e43423          	sd	a4,8(s0)
   1bd30:	08f13023          	sd	a5,128(sp)
   1bd34:	06b12c23          	sw	a1,120(sp)
   1bd38:	00700713          	li	a4,7
   1bd3c:	7eb75463          	bge	a4,a1,1c524 <_vfiprintf_r+0xb58>
   1bd40:	2c0784e3          	beqz	a5,1c808 <_vfiprintf_r+0xe3c>
   1bd44:	07010613          	add	a2,sp,112
   1bd48:	000a0593          	mv	a1,s4
   1bd4c:	000a8513          	mv	a0,s5
   1bd50:	04613423          	sd	t1,72(sp)
   1bd54:	03c13423          	sd	t3,40(sp)
   1bd58:	03113023          	sd	a7,32(sp)
   1bd5c:	00513c23          	sd	t0,24(sp)
   1bd60:	b55ff0ef          	jal	1b8b4 <__sprint_r.part.0>
   1bd64:	ea0512e3          	bnez	a0,1bc08 <_vfiprintf_r+0x23c>
   1bd68:	07812703          	lw	a4,120(sp)
   1bd6c:	08013783          	ld	a5,128(sp)
   1bd70:	04813303          	ld	t1,72(sp)
   1bd74:	02813e03          	ld	t3,40(sp)
   1bd78:	02013883          	ld	a7,32(sp)
   1bd7c:	01813283          	ld	t0,24(sp)
   1bd80:	00098413          	mv	s0,s3
   1bd84:	0017059b          	addw	a1,a4,1
   1bd88:	08000693          	li	a3,128
   1bd8c:	50d28863          	beq	t0,a3,1c29c <_vfiprintf_r+0x8d0>
   1bd90:	406d0d3b          	subw	s10,s10,t1
   1bd94:	63a04863          	bgtz	s10,1c3c4 <_vfiprintf_r+0x9f8>
   1bd98:	00f307b3          	add	a5,t1,a5
   1bd9c:	00943023          	sd	s1,0(s0)
   1bda0:	00643423          	sd	t1,8(s0)
   1bda4:	08f13023          	sd	a5,128(sp)
   1bda8:	06b12c23          	sw	a1,120(sp)
   1bdac:	00700713          	li	a4,7
   1bdb0:	4eb75263          	bge	a4,a1,1c294 <_vfiprintf_r+0x8c8>
   1bdb4:	0c078ae3          	beqz	a5,1c688 <_vfiprintf_r+0xcbc>
   1bdb8:	07010613          	add	a2,sp,112
   1bdbc:	000a0593          	mv	a1,s4
   1bdc0:	000a8513          	mv	a0,s5
   1bdc4:	03c13023          	sd	t3,32(sp)
   1bdc8:	01113c23          	sd	a7,24(sp)
   1bdcc:	ae9ff0ef          	jal	1b8b4 <__sprint_r.part.0>
   1bdd0:	e2051ce3          	bnez	a0,1bc08 <_vfiprintf_r+0x23c>
   1bdd4:	08013783          	ld	a5,128(sp)
   1bdd8:	02013e03          	ld	t3,32(sp)
   1bddc:	01813883          	ld	a7,24(sp)
   1bde0:	00098413          	mv	s0,s3
   1bde4:	004bfb93          	and	s7,s7,4
   1bde8:	000b8663          	beqz	s7,1bdf4 <_vfiprintf_r+0x428>
   1bdec:	41c884bb          	subw	s1,a7,t3
   1bdf0:	0a9048e3          	bgtz	s1,1c6a0 <_vfiprintf_r+0xcd4>
   1bdf4:	00088713          	mv	a4,a7
   1bdf8:	01c8d463          	bge	a7,t3,1be00 <_vfiprintf_r+0x434>
   1bdfc:	000e0713          	mv	a4,t3
   1be00:	01970cbb          	addw	s9,a4,s9
   1be04:	de0798e3          	bnez	a5,1bbf4 <_vfiprintf_r+0x228>
   1be08:	000dc783          	lbu	a5,0(s11)
   1be0c:	06012c23          	sw	zero,120(sp)
   1be10:	00098413          	mv	s0,s3
   1be14:	ca0796e3          	bnez	a5,1bac0 <_vfiprintf_r+0xf4>
   1be18:	08013783          	ld	a5,128(sp)
   1be1c:	000c8c13          	mv	s8,s9
   1be20:	de0786e3          	beqz	a5,1bc0c <_vfiprintf_r+0x240>
   1be24:	07010613          	add	a2,sp,112
   1be28:	000a0593          	mv	a1,s4
   1be2c:	000a8513          	mv	a0,s5
   1be30:	a85ff0ef          	jal	1b8b4 <__sprint_r.part.0>
   1be34:	dd9ff06f          	j	1bc0c <_vfiprintf_r+0x240>
   1be38:	010beb93          	or	s7,s7,16
   1be3c:	000dc783          	lbu	a5,0(s11)
   1be40:	000b8b9b          	sext.w	s7,s7
   1be44:	d0dff06f          	j	1bb50 <_vfiprintf_r+0x184>
   1be48:	010beb93          	or	s7,s7,16
   1be4c:	000b8b9b          	sext.w	s7,s7
   1be50:	020bf793          	and	a5,s7,32
   1be54:	008c0e93          	add	t4,s8,8
   1be58:	04078663          	beqz	a5,1bea4 <_vfiprintf_r+0x4d8>
   1be5c:	000c3783          	ld	a5,0(s8)
   1be60:	00078c13          	mv	s8,a5
   1be64:	0607c263          	bltz	a5,1bec8 <_vfiprintf_r+0x4fc>
   1be68:	fff00793          	li	a5,-1
   1be6c:	06fd0c63          	beq	s10,a5,1bee4 <_vfiprintf_r+0x518>
   1be70:	f7fbfb93          	and	s7,s7,-129
   1be74:	000b8b9b          	sext.w	s7,s7
   1be78:	060c1663          	bnez	s8,1bee4 <_vfiprintf_r+0x518>
   1be7c:	540d1ee3          	bnez	s10,1cbd8 <_vfiprintf_r+0x120c>
   1be80:	00000e13          	li	t3,0
   1be84:	00000313          	li	t1,0
   1be88:	000e8c13          	mv	s8,t4
   1be8c:	0ec10493          	add	s1,sp,236
   1be90:	0800006f          	j	1bf10 <_vfiprintf_r+0x544>
   1be94:	41b48bbb          	subw	s7,s1,s11
   1be98:	c40b94e3          	bnez	s7,1bae0 <_vfiprintf_r+0x114>
   1be9c:	0004c783          	lbu	a5,0(s1)
   1bea0:	c91ff06f          	j	1bb30 <_vfiprintf_r+0x164>
   1bea4:	010bf793          	and	a5,s7,16
   1bea8:	fa079ae3          	bnez	a5,1be5c <_vfiprintf_r+0x490>
   1beac:	040bf793          	and	a5,s7,64
   1beb0:	000c2c03          	lw	s8,0(s8)
   1beb4:	48078ae3          	beqz	a5,1cb48 <_vfiprintf_r+0x117c>
   1beb8:	010c1c1b          	sllw	s8,s8,0x10
   1bebc:	410c5c1b          	sraw	s8,s8,0x10
   1bec0:	000c0793          	mv	a5,s8
   1bec4:	fa07d2e3          	bgez	a5,1be68 <_vfiprintf_r+0x49c>
   1bec8:	02d00793          	li	a5,45
   1becc:	06f103a3          	sb	a5,103(sp)
   1bed0:	fff00793          	li	a5,-1
   1bed4:	41800c33          	neg	s8,s8
   1bed8:	00fd0663          	beq	s10,a5,1bee4 <_vfiprintf_r+0x518>
   1bedc:	f7fbfb93          	and	s7,s7,-129
   1bee0:	000b8b9b          	sext.w	s7,s7
   1bee4:	00900793          	li	a5,9
   1bee8:	1987eae3          	bltu	a5,s8,1c87c <_vfiprintf_r+0xeb0>
   1beec:	030c079b          	addw	a5,s8,48
   1bef0:	0ff7f793          	zext.b	a5,a5
   1bef4:	000e8c13          	mv	s8,t4
   1bef8:	0ef105a3          	sb	a5,235(sp)
   1befc:	000d0e1b          	sext.w	t3,s10
   1bf00:	01a04463          	bgtz	s10,1bf08 <_vfiprintf_r+0x53c>
   1bf04:	00100e13          	li	t3,1
   1bf08:	00100313          	li	t1,1
   1bf0c:	0eb10493          	add	s1,sp,235
   1bf10:	06714783          	lbu	a5,103(sp)
   1bf14:	da0780e3          	beqz	a5,1bcb4 <_vfiprintf_r+0x2e8>
   1bf18:	001e0e1b          	addw	t3,t3,1
   1bf1c:	d99ff06f          	j	1bcb4 <_vfiprintf_r+0x2e8>
   1bf20:	b19f70ef          	jal	13a38 <__sinit>
   1bf24:	afdff06f          	j	1ba20 <_vfiprintf_r+0x54>
   1bf28:	000c3483          	ld	s1,0(s8)
   1bf2c:	060103a3          	sb	zero,103(sp)
   1bf30:	008c0c13          	add	s8,s8,8
   1bf34:	3c0480e3          	beqz	s1,1caf4 <_vfiprintf_r+0x1128>
   1bf38:	fff00793          	li	a5,-1
   1bf3c:	01113c23          	sd	a7,24(sp)
   1bf40:	2cfd06e3          	beq	s10,a5,1ca0c <_vfiprintf_r+0x1040>
   1bf44:	000d0613          	mv	a2,s10
   1bf48:	00000593          	li	a1,0
   1bf4c:	00048513          	mv	a0,s1
   1bf50:	97dfb0ef          	jal	178cc <memchr>
   1bf54:	01813883          	ld	a7,24(sp)
   1bf58:	460502e3          	beqz	a0,1cbbc <_vfiprintf_r+0x11f0>
   1bf5c:	4095033b          	subw	t1,a0,s1
   1bf60:	fff34e13          	not	t3,t1
   1bf64:	43fe5e13          	sra	t3,t3,0x3f
   1bf68:	006e7e33          	and	t3,t3,t1
   1bf6c:	00000d13          	li	s10,0
   1bf70:	fa1ff06f          	j	1bf10 <_vfiprintf_r+0x544>
   1bf74:	000c2783          	lw	a5,0(s8)
   1bf78:	060103a3          	sb	zero,103(sp)
   1bf7c:	008c0c13          	add	s8,s8,8
   1bf80:	08f10423          	sb	a5,136(sp)
   1bf84:	00100e13          	li	t3,1
   1bf88:	00100313          	li	t1,1
   1bf8c:	08810493          	add	s1,sp,136
   1bf90:	d21ff06f          	j	1bcb0 <_vfiprintf_r+0x2e4>
   1bf94:	000c2883          	lw	a7,0(s8)
   1bf98:	008c0c13          	add	s8,s8,8
   1bf9c:	0c08d263          	bgez	a7,1c060 <_vfiprintf_r+0x694>
   1bfa0:	411008bb          	negw	a7,a7
   1bfa4:	004beb93          	or	s7,s7,4
   1bfa8:	000dc783          	lbu	a5,0(s11)
   1bfac:	000b8b9b          	sext.w	s7,s7
   1bfb0:	ba1ff06f          	j	1bb50 <_vfiprintf_r+0x184>
   1bfb4:	02b00713          	li	a4,43
   1bfb8:	000dc783          	lbu	a5,0(s11)
   1bfbc:	06e103a3          	sb	a4,103(sp)
   1bfc0:	b91ff06f          	j	1bb50 <_vfiprintf_r+0x184>
   1bfc4:	080beb93          	or	s7,s7,128
   1bfc8:	000dc783          	lbu	a5,0(s11)
   1bfcc:	000b8b9b          	sext.w	s7,s7
   1bfd0:	b81ff06f          	j	1bb50 <_vfiprintf_r+0x184>
   1bfd4:	000dc783          	lbu	a5,0(s11)
   1bfd8:	02a00613          	li	a2,42
   1bfdc:	001d8713          	add	a4,s11,1
   1bfe0:	42c78ce3          	beq	a5,a2,1cc18 <_vfiprintf_r+0x124c>
   1bfe4:	fd07869b          	addw	a3,a5,-48
   1bfe8:	00900593          	li	a1,9
   1bfec:	00070d93          	mv	s11,a4
   1bff0:	00000d13          	li	s10,0
   1bff4:	00900613          	li	a2,9
   1bff8:	b6d5e0e3          	bltu	a1,a3,1bb58 <_vfiprintf_r+0x18c>
   1bffc:	000dc783          	lbu	a5,0(s11)
   1c000:	002d171b          	sllw	a4,s10,0x2
   1c004:	01a70d3b          	addw	s10,a4,s10
   1c008:	001d1d1b          	sllw	s10,s10,0x1
   1c00c:	00dd0d3b          	addw	s10,s10,a3
   1c010:	fd07869b          	addw	a3,a5,-48
   1c014:	001d8d93          	add	s11,s11,1
   1c018:	fed672e3          	bgeu	a2,a3,1bffc <_vfiprintf_r+0x630>
   1c01c:	b3dff06f          	j	1bb58 <_vfiprintf_r+0x18c>
   1c020:	000a8513          	mv	a0,s5
   1c024:	01113c23          	sd	a7,24(sp)
   1c028:	ce1fa0ef          	jal	16d08 <_localeconv_r>
   1c02c:	00853783          	ld	a5,8(a0)
   1c030:	00078513          	mv	a0,a5
   1c034:	04f13023          	sd	a5,64(sp)
   1c038:	96cfd0ef          	jal	191a4 <strlen>
   1c03c:	00050793          	mv	a5,a0
   1c040:	000a8513          	mv	a0,s5
   1c044:	02f13823          	sd	a5,48(sp)
   1c048:	cc1fa0ef          	jal	16d08 <_localeconv_r>
   1c04c:	01053703          	ld	a4,16(a0)
   1c050:	03013783          	ld	a5,48(sp)
   1c054:	01813883          	ld	a7,24(sp)
   1c058:	02e13c23          	sd	a4,56(sp)
   1c05c:	0e0792e3          	bnez	a5,1c940 <_vfiprintf_r+0xf74>
   1c060:	000dc783          	lbu	a5,0(s11)
   1c064:	aedff06f          	j	1bb50 <_vfiprintf_r+0x184>
   1c068:	001beb93          	or	s7,s7,1
   1c06c:	000dc783          	lbu	a5,0(s11)
   1c070:	000b8b9b          	sext.w	s7,s7
   1c074:	addff06f          	j	1bb50 <_vfiprintf_r+0x184>
   1c078:	06714703          	lbu	a4,103(sp)
   1c07c:	000dc783          	lbu	a5,0(s11)
   1c080:	ac0718e3          	bnez	a4,1bb50 <_vfiprintf_r+0x184>
   1c084:	02000713          	li	a4,32
   1c088:	06e103a3          	sb	a4,103(sp)
   1c08c:	ac5ff06f          	j	1bb50 <_vfiprintf_r+0x184>
   1c090:	010be793          	or	a5,s7,16
   1c094:	0007879b          	sext.w	a5,a5
   1c098:	0207f713          	and	a4,a5,32
   1c09c:	008c0613          	add	a2,s8,8
   1c0a0:	00071663          	bnez	a4,1c0ac <_vfiprintf_r+0x6e0>
   1c0a4:	0107f713          	and	a4,a5,16
   1c0a8:	080700e3          	beqz	a4,1c928 <_vfiprintf_r+0xf5c>
   1c0ac:	000c3703          	ld	a4,0(s8)
   1c0b0:	bff7fb93          	and	s7,a5,-1025
   1c0b4:	060103a3          	sb	zero,103(sp)
   1c0b8:	fff00693          	li	a3,-1
   1c0bc:	000b8b9b          	sext.w	s7,s7
   1c0c0:	00060c13          	mv	s8,a2
   1c0c4:	0cdd0463          	beq	s10,a3,1c18c <_vfiprintf_r+0x7c0>
   1c0c8:	b7f7f793          	and	a5,a5,-1153
   1c0cc:	0007879b          	sext.w	a5,a5
   1c0d0:	1e0716e3          	bnez	a4,1cabc <_vfiprintf_r+0x10f0>
   1c0d4:	000b8313          	mv	t1,s7
   1c0d8:	00078b93          	mv	s7,a5
   1c0dc:	080d1e63          	bnez	s10,1c178 <_vfiprintf_r+0x7ac>
   1c0e0:	78071663          	bnez	a4,1c86c <_vfiprintf_r+0xea0>
   1c0e4:	00137313          	and	t1,t1,1
   1c0e8:	000306e3          	beqz	t1,1c8f4 <_vfiprintf_r+0xf28>
   1c0ec:	03000793          	li	a5,48
   1c0f0:	0ef105a3          	sb	a5,235(sp)
   1c0f4:	00030e13          	mv	t3,t1
   1c0f8:	0eb10493          	add	s1,sp,235
   1c0fc:	e15ff06f          	j	1bf10 <_vfiprintf_r+0x544>
   1c100:	000dc783          	lbu	a5,0(s11)
   1c104:	06c00713          	li	a4,108
   1c108:	1ce78ce3          	beq	a5,a4,1cae0 <_vfiprintf_r+0x1114>
   1c10c:	010beb93          	or	s7,s7,16
   1c110:	000b8b9b          	sext.w	s7,s7
   1c114:	a3dff06f          	j	1bb50 <_vfiprintf_r+0x184>
   1c118:	000dc783          	lbu	a5,0(s11)
   1c11c:	06800713          	li	a4,104
   1c120:	1ae786e3          	beq	a5,a4,1cacc <_vfiprintf_r+0x1100>
   1c124:	040beb93          	or	s7,s7,64
   1c128:	000b8b9b          	sext.w	s7,s7
   1c12c:	a25ff06f          	j	1bb50 <_vfiprintf_r+0x184>
   1c130:	010be313          	or	t1,s7,16
   1c134:	0003031b          	sext.w	t1,t1
   1c138:	02037793          	and	a5,t1,32
   1c13c:	008c0e93          	add	t4,s8,8
   1c140:	00079663          	bnez	a5,1c14c <_vfiprintf_r+0x780>
   1c144:	01037793          	and	a5,t1,16
   1c148:	7c078463          	beqz	a5,1c910 <_vfiprintf_r+0xf44>
   1c14c:	000c3c03          	ld	s8,0(s8)
   1c150:	060103a3          	sb	zero,103(sp)
   1c154:	fff00793          	li	a5,-1
   1c158:	00030b93          	mv	s7,t1
   1c15c:	d8fd04e3          	beq	s10,a5,1bee4 <_vfiprintf_r+0x518>
   1c160:	f7f37b93          	and	s7,t1,-129
   1c164:	000b8b9b          	sext.w	s7,s7
   1c168:	d60c1ee3          	bnez	s8,1bee4 <_vfiprintf_r+0x518>
   1c16c:	000e8c13          	mv	s8,t4
   1c170:	00100713          	li	a4,1
   1c174:	f60d06e3          	beqz	s10,1c0e0 <_vfiprintf_r+0x714>
   1c178:	00100793          	li	a5,1
   1c17c:	26f700e3          	beq	a4,a5,1cbdc <_vfiprintf_r+0x1210>
   1c180:	00200793          	li	a5,2
   1c184:	18f706e3          	beq	a4,a5,1cb10 <_vfiprintf_r+0x1144>
   1c188:	00000713          	li	a4,0
   1c18c:	0ec10313          	add	t1,sp,236
   1c190:	00030493          	mv	s1,t1
   1c194:	00777793          	and	a5,a4,7
   1c198:	03078793          	add	a5,a5,48
   1c19c:	fef48fa3          	sb	a5,-1(s1)
   1c1a0:	00375713          	srl	a4,a4,0x3
   1c1a4:	00048693          	mv	a3,s1
   1c1a8:	fff48493          	add	s1,s1,-1
   1c1ac:	fe0714e3          	bnez	a4,1c194 <_vfiprintf_r+0x7c8>
   1c1b0:	001bf713          	and	a4,s7,1
   1c1b4:	3a070a63          	beqz	a4,1c568 <_vfiprintf_r+0xb9c>
   1c1b8:	03000713          	li	a4,48
   1c1bc:	3ae78663          	beq	a5,a4,1c568 <_vfiprintf_r+0xb9c>
   1c1c0:	ffe68693          	add	a3,a3,-2
   1c1c4:	40d3033b          	subw	t1,t1,a3
   1c1c8:	fee48fa3          	sb	a4,-1(s1)
   1c1cc:	00030e1b          	sext.w	t3,t1
   1c1d0:	79a34e63          	blt	t1,s10,1c96c <_vfiprintf_r+0xfa0>
   1c1d4:	00068493          	mv	s1,a3
   1c1d8:	d39ff06f          	j	1bf10 <_vfiprintf_r+0x544>
   1c1dc:	020beb93          	or	s7,s7,32
   1c1e0:	000dc783          	lbu	a5,0(s11)
   1c1e4:	000b8b9b          	sext.w	s7,s7
   1c1e8:	969ff06f          	j	1bb50 <_vfiprintf_r+0x184>
   1c1ec:	ffff87b7          	lui	a5,0xffff8
   1c1f0:	8307c793          	xor	a5,a5,-2000
   1c1f4:	06f11423          	sh	a5,104(sp)
   1c1f8:	000237b7          	lui	a5,0x23
   1c1fc:	002beb93          	or	s7,s7,2
   1c200:	b8078793          	add	a5,a5,-1152 # 22b80 <__clz_tab+0x138>
   1c204:	000c3703          	ld	a4,0(s8)
   1c208:	000b8b9b          	sext.w	s7,s7
   1c20c:	008c0c13          	add	s8,s8,8
   1c210:	00f13823          	sd	a5,16(sp)
   1c214:	060103a3          	sb	zero,103(sp)
   1c218:	fff00793          	li	a5,-1
   1c21c:	32fd0263          	beq	s10,a5,1c540 <_vfiprintf_r+0xb74>
   1c220:	f7fbf793          	and	a5,s7,-129
   1c224:	0007879b          	sext.w	a5,a5
   1c228:	30071663          	bnez	a4,1c534 <_vfiprintf_r+0xb68>
   1c22c:	000b8313          	mv	t1,s7
   1c230:	00200713          	li	a4,2
   1c234:	00078b93          	mv	s7,a5
   1c238:	ea5ff06f          	j	1c0dc <_vfiprintf_r+0x710>
   1c23c:	020bf793          	and	a5,s7,32
   1c240:	000c3703          	ld	a4,0(s8)
   1c244:	02079463          	bnez	a5,1c26c <_vfiprintf_r+0x8a0>
   1c248:	010bf793          	and	a5,s7,16
   1c24c:	02079063          	bnez	a5,1c26c <_vfiprintf_r+0x8a0>
   1c250:	040bf793          	and	a5,s7,64
   1c254:	120798e3          	bnez	a5,1cb84 <_vfiprintf_r+0x11b8>
   1c258:	200bfb93          	and	s7,s7,512
   1c25c:	1a0b88e3          	beqz	s7,1cc0c <_vfiprintf_r+0x1240>
   1c260:	01970023          	sb	s9,0(a4)
   1c264:	008c0c13          	add	s8,s8,8
   1c268:	851ff06f          	j	1bab8 <_vfiprintf_r+0xec>
   1c26c:	01973023          	sd	s9,0(a4)
   1c270:	008c0c13          	add	s8,s8,8
   1c274:	845ff06f          	j	1bab8 <_vfiprintf_r+0xec>
   1c278:	00100713          	li	a4,1
   1c27c:	00030793          	mv	a5,t1
   1c280:	0e913823          	sd	s1,240(sp)
   1c284:	0e613c23          	sd	t1,248(sp)
   1c288:	08613023          	sd	t1,128(sp)
   1c28c:	06e12c23          	sw	a4,120(sp)
   1c290:	00098413          	mv	s0,s3
   1c294:	01040413          	add	s0,s0,16
   1c298:	b4dff06f          	j	1bde4 <_vfiprintf_r+0x418>
   1c29c:	41c88ebb          	subw	t4,a7,t3
   1c2a0:	afd058e3          	blez	t4,1bd90 <_vfiprintf_r+0x3c4>
   1c2a4:	01000693          	li	a3,16
   1c2a8:	15d6d6e3          	bge	a3,t4,1cbf4 <_vfiprintf_r+0x1228>
   1c2ac:	00023f37          	lui	t5,0x23
   1c2b0:	678f0f13          	add	t5,t5,1656 # 23678 <zeroes.0>
   1c2b4:	00913c23          	sd	s1,24(sp)
   1c2b8:	00040613          	mv	a2,s0
   1c2bc:	01000f93          	li	t6,16
   1c2c0:	00700293          	li	t0,7
   1c2c4:	03113023          	sd	a7,32(sp)
   1c2c8:	03c13423          	sd	t3,40(sp)
   1c2cc:	04613423          	sd	t1,72(sp)
   1c2d0:	000e8413          	mv	s0,t4
   1c2d4:	000f0493          	mv	s1,t5
   1c2d8:	0180006f          	j	1c2f0 <_vfiprintf_r+0x924>
   1c2dc:	0027069b          	addw	a3,a4,2
   1c2e0:	01060613          	add	a2,a2,16
   1c2e4:	00058713          	mv	a4,a1
   1c2e8:	ff04041b          	addw	s0,s0,-16
   1c2ec:	048fdc63          	bge	t6,s0,1c344 <_vfiprintf_r+0x978>
   1c2f0:	0017059b          	addw	a1,a4,1
   1c2f4:	01078793          	add	a5,a5,16
   1c2f8:	00963023          	sd	s1,0(a2)
   1c2fc:	01f63423          	sd	t6,8(a2)
   1c300:	08f13023          	sd	a5,128(sp)
   1c304:	06b12c23          	sw	a1,120(sp)
   1c308:	fcb2dae3          	bge	t0,a1,1c2dc <_vfiprintf_r+0x910>
   1c30c:	18078c63          	beqz	a5,1c4a4 <_vfiprintf_r+0xad8>
   1c310:	07010613          	add	a2,sp,112
   1c314:	000a0593          	mv	a1,s4
   1c318:	000a8513          	mv	a0,s5
   1c31c:	d98ff0ef          	jal	1b8b4 <__sprint_r.part.0>
   1c320:	8e0514e3          	bnez	a0,1bc08 <_vfiprintf_r+0x23c>
   1c324:	07812703          	lw	a4,120(sp)
   1c328:	01000f93          	li	t6,16
   1c32c:	ff04041b          	addw	s0,s0,-16
   1c330:	08013783          	ld	a5,128(sp)
   1c334:	00098613          	mv	a2,s3
   1c338:	0017069b          	addw	a3,a4,1
   1c33c:	00700293          	li	t0,7
   1c340:	fa8fc8e3          	blt	t6,s0,1c2f0 <_vfiprintf_r+0x924>
   1c344:	00048f13          	mv	t5,s1
   1c348:	02013883          	ld	a7,32(sp)
   1c34c:	02813e03          	ld	t3,40(sp)
   1c350:	04813303          	ld	t1,72(sp)
   1c354:	01813483          	ld	s1,24(sp)
   1c358:	00040e93          	mv	t4,s0
   1c35c:	00060413          	mv	s0,a2
   1c360:	01d787b3          	add	a5,a5,t4
   1c364:	01e43023          	sd	t5,0(s0)
   1c368:	01d43423          	sd	t4,8(s0)
   1c36c:	08f13023          	sd	a5,128(sp)
   1c370:	06d12c23          	sw	a3,120(sp)
   1c374:	00700713          	li	a4,7
   1c378:	58d75463          	bge	a4,a3,1c900 <_vfiprintf_r+0xf34>
   1c37c:	7e078263          	beqz	a5,1cb60 <_vfiprintf_r+0x1194>
   1c380:	07010613          	add	a2,sp,112
   1c384:	000a0593          	mv	a1,s4
   1c388:	000a8513          	mv	a0,s5
   1c38c:	02613423          	sd	t1,40(sp)
   1c390:	03c13023          	sd	t3,32(sp)
   1c394:	01113c23          	sd	a7,24(sp)
   1c398:	d1cff0ef          	jal	1b8b4 <__sprint_r.part.0>
   1c39c:	860516e3          	bnez	a0,1bc08 <_vfiprintf_r+0x23c>
   1c3a0:	02813303          	ld	t1,40(sp)
   1c3a4:	07812703          	lw	a4,120(sp)
   1c3a8:	08013783          	ld	a5,128(sp)
   1c3ac:	406d0d3b          	subw	s10,s10,t1
   1c3b0:	02013e03          	ld	t3,32(sp)
   1c3b4:	01813883          	ld	a7,24(sp)
   1c3b8:	00098413          	mv	s0,s3
   1c3bc:	0017059b          	addw	a1,a4,1
   1c3c0:	9da05ce3          	blez	s10,1bd98 <_vfiprintf_r+0x3cc>
   1c3c4:	00023f37          	lui	t5,0x23
   1c3c8:	678f0f13          	add	t5,t5,1656 # 23678 <zeroes.0>
   1c3cc:	0ba95063          	bge	s2,s10,1c46c <_vfiprintf_r+0xaa0>
   1c3d0:	00040693          	mv	a3,s0
   1c3d4:	00700e93          	li	t4,7
   1c3d8:	000d0413          	mv	s0,s10
   1c3dc:	01113c23          	sd	a7,24(sp)
   1c3e0:	03c13023          	sd	t3,32(sp)
   1c3e4:	02613423          	sd	t1,40(sp)
   1c3e8:	000b0d13          	mv	s10,s6
   1c3ec:	0180006f          	j	1c404 <_vfiprintf_r+0xa38>
   1c3f0:	0027059b          	addw	a1,a4,2
   1c3f4:	01068693          	add	a3,a3,16
   1c3f8:	00050713          	mv	a4,a0
   1c3fc:	ff04041b          	addw	s0,s0,-16
   1c400:	04895a63          	bge	s2,s0,1c454 <_vfiprintf_r+0xa88>
   1c404:	0017051b          	addw	a0,a4,1
   1c408:	01078793          	add	a5,a5,16
   1c40c:	0166b023          	sd	s6,0(a3)
   1c410:	0126b423          	sd	s2,8(a3)
   1c414:	08f13023          	sd	a5,128(sp)
   1c418:	06a12c23          	sw	a0,120(sp)
   1c41c:	fcaedae3          	bge	t4,a0,1c3f0 <_vfiprintf_r+0xa24>
   1c420:	06078a63          	beqz	a5,1c494 <_vfiprintf_r+0xac8>
   1c424:	07010613          	add	a2,sp,112
   1c428:	000a0593          	mv	a1,s4
   1c42c:	000a8513          	mv	a0,s5
   1c430:	c84ff0ef          	jal	1b8b4 <__sprint_r.part.0>
   1c434:	fc051a63          	bnez	a0,1bc08 <_vfiprintf_r+0x23c>
   1c438:	07812703          	lw	a4,120(sp)
   1c43c:	ff04041b          	addw	s0,s0,-16
   1c440:	08013783          	ld	a5,128(sp)
   1c444:	00098693          	mv	a3,s3
   1c448:	0017059b          	addw	a1,a4,1
   1c44c:	00700e93          	li	t4,7
   1c450:	fa894ae3          	blt	s2,s0,1c404 <_vfiprintf_r+0xa38>
   1c454:	01813883          	ld	a7,24(sp)
   1c458:	02013e03          	ld	t3,32(sp)
   1c45c:	02813303          	ld	t1,40(sp)
   1c460:	000d0f13          	mv	t5,s10
   1c464:	00040d13          	mv	s10,s0
   1c468:	00068413          	mv	s0,a3
   1c46c:	01a787b3          	add	a5,a5,s10
   1c470:	01e43023          	sd	t5,0(s0)
   1c474:	01a43423          	sd	s10,8(s0)
   1c478:	08f13023          	sd	a5,128(sp)
   1c47c:	06b12c23          	sw	a1,120(sp)
   1c480:	00700713          	li	a4,7
   1c484:	32b74a63          	blt	a4,a1,1c7b8 <_vfiprintf_r+0xdec>
   1c488:	01040413          	add	s0,s0,16
   1c48c:	0015859b          	addw	a1,a1,1
   1c490:	909ff06f          	j	1bd98 <_vfiprintf_r+0x3cc>
   1c494:	00100593          	li	a1,1
   1c498:	00000713          	li	a4,0
   1c49c:	00098693          	mv	a3,s3
   1c4a0:	f5dff06f          	j	1c3fc <_vfiprintf_r+0xa30>
   1c4a4:	00100693          	li	a3,1
   1c4a8:	00000713          	li	a4,0
   1c4ac:	00098613          	mv	a2,s3
   1c4b0:	e39ff06f          	j	1c2e8 <_vfiprintf_r+0x91c>
   1c4b4:	04078a63          	beqz	a5,1c508 <_vfiprintf_r+0xb3c>
   1c4b8:	07010613          	add	a2,sp,112
   1c4bc:	000a0593          	mv	a1,s4
   1c4c0:	000a8513          	mv	a0,s5
   1c4c4:	04613823          	sd	t1,80(sp)
   1c4c8:	05c13423          	sd	t3,72(sp)
   1c4cc:	03113423          	sd	a7,40(sp)
   1c4d0:	02513023          	sd	t0,32(sp)
   1c4d4:	01f13c23          	sd	t6,24(sp)
   1c4d8:	bdcff0ef          	jal	1b8b4 <__sprint_r.part.0>
   1c4dc:	f2051663          	bnez	a0,1bc08 <_vfiprintf_r+0x23c>
   1c4e0:	07812703          	lw	a4,120(sp)
   1c4e4:	08013783          	ld	a5,128(sp)
   1c4e8:	05013303          	ld	t1,80(sp)
   1c4ec:	04813e03          	ld	t3,72(sp)
   1c4f0:	02813883          	ld	a7,40(sp)
   1c4f4:	02013283          	ld	t0,32(sp)
   1c4f8:	01813f83          	ld	t6,24(sp)
   1c4fc:	00098413          	mv	s0,s3
   1c500:	0017059b          	addw	a1,a4,1
   1c504:	815ff06f          	j	1bd18 <_vfiprintf_r+0x34c>
   1c508:	440f8a63          	beqz	t6,1c95c <_vfiprintf_r+0xf90>
   1c50c:	06810793          	add	a5,sp,104
   1c510:	0ef13823          	sd	a5,240(sp)
   1c514:	00200793          	li	a5,2
   1c518:	0ef13c23          	sd	a5,248(sp)
   1c51c:	00100593          	li	a1,1
   1c520:	00098413          	mv	s0,s3
   1c524:	00058713          	mv	a4,a1
   1c528:	01040413          	add	s0,s0,16
   1c52c:	0015859b          	addw	a1,a1,1
   1c530:	859ff06f          	j	1bd88 <_vfiprintf_r+0x3bc>
   1c534:	00078b93          	mv	s7,a5
   1c538:	00200793          	li	a5,2
   1c53c:	c40788e3          	beqz	a5,1c18c <_vfiprintf_r+0x7c0>
   1c540:	01013683          	ld	a3,16(sp)
   1c544:	0ec10313          	add	t1,sp,236
   1c548:	00030493          	mv	s1,t1
   1c54c:	00f77793          	and	a5,a4,15
   1c550:	00f687b3          	add	a5,a3,a5
   1c554:	0007c783          	lbu	a5,0(a5)
   1c558:	00475713          	srl	a4,a4,0x4
   1c55c:	fff48493          	add	s1,s1,-1
   1c560:	00f48023          	sb	a5,0(s1)
   1c564:	fe0714e3          	bnez	a4,1c54c <_vfiprintf_r+0xb80>
   1c568:	4093033b          	subw	t1,t1,s1
   1c56c:	00030e1b          	sext.w	t3,t1
   1c570:	9ba350e3          	bge	t1,s10,1bf10 <_vfiprintf_r+0x544>
   1c574:	000d0e1b          	sext.w	t3,s10
   1c578:	999ff06f          	j	1bf10 <_vfiprintf_r+0x544>
   1c57c:	01000513          	li	a0,16
   1c580:	64d55663          	bge	a0,a3,1cbcc <_vfiprintf_r+0x1200>
   1c584:	00023eb7          	lui	t4,0x23
   1c588:	688e8e93          	add	t4,t4,1672 # 23688 <blanks.1>
   1c58c:	02913423          	sd	s1,40(sp)
   1c590:	00040593          	mv	a1,s0
   1c594:	01000f13          	li	t5,16
   1c598:	00700393          	li	t2,7
   1c59c:	01f13c23          	sd	t6,24(sp)
   1c5a0:	02513023          	sd	t0,32(sp)
   1c5a4:	05113423          	sd	a7,72(sp)
   1c5a8:	05c13823          	sd	t3,80(sp)
   1c5ac:	04613c23          	sd	t1,88(sp)
   1c5b0:	00068413          	mv	s0,a3
   1c5b4:	000e8493          	mv	s1,t4
   1c5b8:	01c0006f          	j	1c5d4 <_vfiprintf_r+0xc08>
   1c5bc:	0027061b          	addw	a2,a4,2
   1c5c0:	01058593          	add	a1,a1,16
   1c5c4:	00050713          	mv	a4,a0
   1c5c8:	ff04041b          	addw	s0,s0,-16
   1c5cc:	048f5e63          	bge	t5,s0,1c628 <_vfiprintf_r+0xc5c>
   1c5d0:	0017061b          	addw	a2,a4,1
   1c5d4:	01078793          	add	a5,a5,16
   1c5d8:	0095b023          	sd	s1,0(a1)
   1c5dc:	01e5b423          	sd	t5,8(a1)
   1c5e0:	08f13023          	sd	a5,128(sp)
   1c5e4:	0006051b          	sext.w	a0,a2
   1c5e8:	06c12c23          	sw	a2,120(sp)
   1c5ec:	fca3d8e3          	bge	t2,a0,1c5bc <_vfiprintf_r+0xbf0>
   1c5f0:	08078463          	beqz	a5,1c678 <_vfiprintf_r+0xcac>
   1c5f4:	07010613          	add	a2,sp,112
   1c5f8:	000a0593          	mv	a1,s4
   1c5fc:	000a8513          	mv	a0,s5
   1c600:	ab4ff0ef          	jal	1b8b4 <__sprint_r.part.0>
   1c604:	e0051263          	bnez	a0,1bc08 <_vfiprintf_r+0x23c>
   1c608:	07812703          	lw	a4,120(sp)
   1c60c:	01000f13          	li	t5,16
   1c610:	ff04041b          	addw	s0,s0,-16
   1c614:	08013783          	ld	a5,128(sp)
   1c618:	00098593          	mv	a1,s3
   1c61c:	0017061b          	addw	a2,a4,1
   1c620:	00700393          	li	t2,7
   1c624:	fa8f46e3          	blt	t5,s0,1c5d0 <_vfiprintf_r+0xc04>
   1c628:	00048e93          	mv	t4,s1
   1c62c:	01813f83          	ld	t6,24(sp)
   1c630:	02013283          	ld	t0,32(sp)
   1c634:	04813883          	ld	a7,72(sp)
   1c638:	05013e03          	ld	t3,80(sp)
   1c63c:	05813303          	ld	t1,88(sp)
   1c640:	02813483          	ld	s1,40(sp)
   1c644:	00040693          	mv	a3,s0
   1c648:	00058413          	mv	s0,a1
   1c64c:	00d787b3          	add	a5,a5,a3
   1c650:	01d43023          	sd	t4,0(s0)
   1c654:	00d43423          	sd	a3,8(s0)
   1c658:	08f13023          	sd	a5,128(sp)
   1c65c:	06c12c23          	sw	a2,120(sp)
   1c660:	00700713          	li	a4,7
   1c664:	1ac74a63          	blt	a4,a2,1c818 <_vfiprintf_r+0xe4c>
   1c668:	01040413          	add	s0,s0,16
   1c66c:	0016059b          	addw	a1,a2,1
   1c670:	00060713          	mv	a4,a2
   1c674:	e6cff06f          	j	1bce0 <_vfiprintf_r+0x314>
   1c678:	00000713          	li	a4,0
   1c67c:	00100613          	li	a2,1
   1c680:	00098593          	mv	a1,s3
   1c684:	f45ff06f          	j	1c5c8 <_vfiprintf_r+0xbfc>
   1c688:	06012c23          	sw	zero,120(sp)
   1c68c:	004bfb93          	and	s7,s7,4
   1c690:	100b8a63          	beqz	s7,1c7a4 <_vfiprintf_r+0xdd8>
   1c694:	41c884bb          	subw	s1,a7,t3
   1c698:	10905663          	blez	s1,1c7a4 <_vfiprintf_r+0xdd8>
   1c69c:	00098413          	mv	s0,s3
   1c6a0:	01000713          	li	a4,16
   1c6a4:	07812683          	lw	a3,120(sp)
   1c6a8:	52975e63          	bge	a4,s1,1cbe4 <_vfiprintf_r+0x1218>
   1c6ac:	00023eb7          	lui	t4,0x23
   1c6b0:	688e8e93          	add	t4,t4,1672 # 23688 <blanks.1>
   1c6b4:	00040613          	mv	a2,s0
   1c6b8:	01000b93          	li	s7,16
   1c6bc:	00048413          	mv	s0,s1
   1c6c0:	00700d13          	li	s10,7
   1c6c4:	01113c23          	sd	a7,24(sp)
   1c6c8:	03c13023          	sd	t3,32(sp)
   1c6cc:	000e8493          	mv	s1,t4
   1c6d0:	0180006f          	j	1c6e8 <_vfiprintf_r+0xd1c>
   1c6d4:	0026871b          	addw	a4,a3,2
   1c6d8:	01060613          	add	a2,a2,16
   1c6dc:	00058693          	mv	a3,a1
   1c6e0:	ff04041b          	addw	s0,s0,-16
   1c6e4:	048bd863          	bge	s7,s0,1c734 <_vfiprintf_r+0xd68>
   1c6e8:	0016859b          	addw	a1,a3,1
   1c6ec:	01078793          	add	a5,a5,16
   1c6f0:	00963023          	sd	s1,0(a2)
   1c6f4:	01763423          	sd	s7,8(a2)
   1c6f8:	08f13023          	sd	a5,128(sp)
   1c6fc:	06b12c23          	sw	a1,120(sp)
   1c700:	fcbd5ae3          	bge	s10,a1,1c6d4 <_vfiprintf_r+0xd08>
   1c704:	08078863          	beqz	a5,1c794 <_vfiprintf_r+0xdc8>
   1c708:	07010613          	add	a2,sp,112
   1c70c:	000a0593          	mv	a1,s4
   1c710:	000a8513          	mv	a0,s5
   1c714:	9a0ff0ef          	jal	1b8b4 <__sprint_r.part.0>
   1c718:	ce051863          	bnez	a0,1bc08 <_vfiprintf_r+0x23c>
   1c71c:	07812683          	lw	a3,120(sp)
   1c720:	ff04041b          	addw	s0,s0,-16
   1c724:	08013783          	ld	a5,128(sp)
   1c728:	00098613          	mv	a2,s3
   1c72c:	0016871b          	addw	a4,a3,1
   1c730:	fa8bcce3          	blt	s7,s0,1c6e8 <_vfiprintf_r+0xd1c>
   1c734:	01813883          	ld	a7,24(sp)
   1c738:	02013e03          	ld	t3,32(sp)
   1c73c:	00048e93          	mv	t4,s1
   1c740:	00040493          	mv	s1,s0
   1c744:	00060413          	mv	s0,a2
   1c748:	009787b3          	add	a5,a5,s1
   1c74c:	01d43023          	sd	t4,0(s0)
   1c750:	00943423          	sd	s1,8(s0)
   1c754:	08f13023          	sd	a5,128(sp)
   1c758:	06e12c23          	sw	a4,120(sp)
   1c75c:	00700693          	li	a3,7
   1c760:	e8e6da63          	bge	a3,a4,1bdf4 <_vfiprintf_r+0x428>
   1c764:	04078063          	beqz	a5,1c7a4 <_vfiprintf_r+0xdd8>
   1c768:	07010613          	add	a2,sp,112
   1c76c:	000a0593          	mv	a1,s4
   1c770:	000a8513          	mv	a0,s5
   1c774:	03c13023          	sd	t3,32(sp)
   1c778:	01113c23          	sd	a7,24(sp)
   1c77c:	938ff0ef          	jal	1b8b4 <__sprint_r.part.0>
   1c780:	c8051463          	bnez	a0,1bc08 <_vfiprintf_r+0x23c>
   1c784:	08013783          	ld	a5,128(sp)
   1c788:	02013e03          	ld	t3,32(sp)
   1c78c:	01813883          	ld	a7,24(sp)
   1c790:	e64ff06f          	j	1bdf4 <_vfiprintf_r+0x428>
   1c794:	00100713          	li	a4,1
   1c798:	00000693          	li	a3,0
   1c79c:	00098613          	mv	a2,s3
   1c7a0:	f41ff06f          	j	1c6e0 <_vfiprintf_r+0xd14>
   1c7a4:	00088793          	mv	a5,a7
   1c7a8:	01c8d463          	bge	a7,t3,1c7b0 <_vfiprintf_r+0xde4>
   1c7ac:	000e0793          	mv	a5,t3
   1c7b0:	01978cbb          	addw	s9,a5,s9
   1c7b4:	e54ff06f          	j	1be08 <_vfiprintf_r+0x43c>
   1c7b8:	ac0780e3          	beqz	a5,1c278 <_vfiprintf_r+0x8ac>
   1c7bc:	07010613          	add	a2,sp,112
   1c7c0:	000a0593          	mv	a1,s4
   1c7c4:	000a8513          	mv	a0,s5
   1c7c8:	02613423          	sd	t1,40(sp)
   1c7cc:	03c13023          	sd	t3,32(sp)
   1c7d0:	01113c23          	sd	a7,24(sp)
   1c7d4:	8e0ff0ef          	jal	1b8b4 <__sprint_r.part.0>
   1c7d8:	c2051863          	bnez	a0,1bc08 <_vfiprintf_r+0x23c>
   1c7dc:	07812583          	lw	a1,120(sp)
   1c7e0:	08013783          	ld	a5,128(sp)
   1c7e4:	02813303          	ld	t1,40(sp)
   1c7e8:	02013e03          	ld	t3,32(sp)
   1c7ec:	01813883          	ld	a7,24(sp)
   1c7f0:	00098413          	mv	s0,s3
   1c7f4:	0015859b          	addw	a1,a1,1
   1c7f8:	da0ff06f          	j	1bd98 <_vfiprintf_r+0x3cc>
   1c7fc:	06012c23          	sw	zero,120(sp)
   1c800:	00098413          	mv	s0,s3
   1c804:	b24ff06f          	j	1bb28 <_vfiprintf_r+0x15c>
   1c808:	00100593          	li	a1,1
   1c80c:	00000713          	li	a4,0
   1c810:	00098413          	mv	s0,s3
   1c814:	d74ff06f          	j	1bd88 <_vfiprintf_r+0x3bc>
   1c818:	20078c63          	beqz	a5,1ca30 <_vfiprintf_r+0x1064>
   1c81c:	07010613          	add	a2,sp,112
   1c820:	000a0593          	mv	a1,s4
   1c824:	000a8513          	mv	a0,s5
   1c828:	04613823          	sd	t1,80(sp)
   1c82c:	05c13423          	sd	t3,72(sp)
   1c830:	03113423          	sd	a7,40(sp)
   1c834:	02513023          	sd	t0,32(sp)
   1c838:	01f13c23          	sd	t6,24(sp)
   1c83c:	878ff0ef          	jal	1b8b4 <__sprint_r.part.0>
   1c840:	bc051463          	bnez	a0,1bc08 <_vfiprintf_r+0x23c>
   1c844:	07812703          	lw	a4,120(sp)
   1c848:	08013783          	ld	a5,128(sp)
   1c84c:	05013303          	ld	t1,80(sp)
   1c850:	04813e03          	ld	t3,72(sp)
   1c854:	02813883          	ld	a7,40(sp)
   1c858:	02013283          	ld	t0,32(sp)
   1c85c:	01813f83          	ld	t6,24(sp)
   1c860:	00098413          	mv	s0,s3
   1c864:	0017059b          	addw	a1,a4,1
   1c868:	c78ff06f          	j	1bce0 <_vfiprintf_r+0x314>
   1c86c:	00000e13          	li	t3,0
   1c870:	00000313          	li	t1,0
   1c874:	0ec10493          	add	s1,sp,236
   1c878:	e98ff06f          	j	1bf10 <_vfiprintf_r+0x544>
   1c87c:	0ec10313          	add	t1,sp,236
   1c880:	03813803          	ld	a6,56(sp)
   1c884:	400bff13          	and	t5,s7,1024
   1c888:	00000613          	li	a2,0
   1c88c:	00030713          	mv	a4,t1
   1c890:	00a00693          	li	a3,10
   1c894:	00900e13          	li	t3,9
   1c898:	0ff00f93          	li	t6,255
   1c89c:	0140006f          	j	1c8b0 <_vfiprintf_r+0xee4>
   1c8a0:	02dc57b3          	divu	a5,s8,a3
   1c8a4:	038e7a63          	bgeu	t3,s8,1c8d8 <_vfiprintf_r+0xf0c>
   1c8a8:	00078c13          	mv	s8,a5
   1c8ac:	00048713          	mv	a4,s1
   1c8b0:	fff70493          	add	s1,a4,-1
   1c8b4:	0016061b          	addw	a2,a2,1
   1c8b8:	02dc77b3          	remu	a5,s8,a3
   1c8bc:	0307879b          	addw	a5,a5,48
   1c8c0:	fef70fa3          	sb	a5,-1(a4)
   1c8c4:	fc0f0ee3          	beqz	t5,1c8a0 <_vfiprintf_r+0xed4>
   1c8c8:	00084783          	lbu	a5,0(a6)
   1c8cc:	fcc79ae3          	bne	a5,a2,1c8a0 <_vfiprintf_r+0xed4>
   1c8d0:	fdf788e3          	beq	a5,t6,1c8a0 <_vfiprintf_r+0xed4>
   1c8d4:	198e6063          	bltu	t3,s8,1ca54 <_vfiprintf_r+0x1088>
   1c8d8:	4093033b          	subw	t1,t1,s1
   1c8dc:	03013c23          	sd	a6,56(sp)
   1c8e0:	00030e1b          	sext.w	t3,t1
   1c8e4:	01a35463          	bge	t1,s10,1c8ec <_vfiprintf_r+0xf20>
   1c8e8:	000d0e1b          	sext.w	t3,s10
   1c8ec:	000e8c13          	mv	s8,t4
   1c8f0:	e20ff06f          	j	1bf10 <_vfiprintf_r+0x544>
   1c8f4:	00000e13          	li	t3,0
   1c8f8:	0ec10493          	add	s1,sp,236
   1c8fc:	e14ff06f          	j	1bf10 <_vfiprintf_r+0x544>
   1c900:	01040413          	add	s0,s0,16
   1c904:	0016859b          	addw	a1,a3,1
   1c908:	00068713          	mv	a4,a3
   1c90c:	c84ff06f          	j	1bd90 <_vfiprintf_r+0x3c4>
   1c910:	04037793          	and	a5,t1,64
   1c914:	000c2c03          	lw	s8,0(s8)
   1c918:	20078863          	beqz	a5,1cb28 <_vfiprintf_r+0x115c>
   1c91c:	030c1c13          	sll	s8,s8,0x30
   1c920:	030c5c13          	srl	s8,s8,0x30
   1c924:	82dff06f          	j	1c150 <_vfiprintf_r+0x784>
   1c928:	0407f693          	and	a3,a5,64
   1c92c:	000c2703          	lw	a4,0(s8)
   1c930:	20068463          	beqz	a3,1cb38 <_vfiprintf_r+0x116c>
   1c934:	03071713          	sll	a4,a4,0x30
   1c938:	03075713          	srl	a4,a4,0x30
   1c93c:	f74ff06f          	j	1c0b0 <_vfiprintf_r+0x6e4>
   1c940:	000dc783          	lbu	a5,0(s11)
   1c944:	a0070663          	beqz	a4,1bb50 <_vfiprintf_r+0x184>
   1c948:	00074703          	lbu	a4,0(a4)
   1c94c:	a0070263          	beqz	a4,1bb50 <_vfiprintf_r+0x184>
   1c950:	400beb93          	or	s7,s7,1024
   1c954:	000b8b9b          	sext.w	s7,s7
   1c958:	9f8ff06f          	j	1bb50 <_vfiprintf_r+0x184>
   1c95c:	00000713          	li	a4,0
   1c960:	00100593          	li	a1,1
   1c964:	00098413          	mv	s0,s3
   1c968:	c20ff06f          	j	1bd88 <_vfiprintf_r+0x3bc>
   1c96c:	000d0e1b          	sext.w	t3,s10
   1c970:	00068493          	mv	s1,a3
   1c974:	d9cff06f          	j	1bf10 <_vfiprintf_r+0x544>
   1c978:	000b8793          	mv	a5,s7
   1c97c:	f1cff06f          	j	1c098 <_vfiprintf_r+0x6cc>
   1c980:	00023737          	lui	a4,0x23
   1c984:	b6870713          	add	a4,a4,-1176 # 22b68 <__clz_tab+0x120>
   1c988:	00e13823          	sd	a4,16(sp)
   1c98c:	020bf713          	and	a4,s7,32
   1c990:	008c0693          	add	a3,s8,8
   1c994:	06071863          	bnez	a4,1ca04 <_vfiprintf_r+0x1038>
   1c998:	010bf713          	and	a4,s7,16
   1c99c:	06071463          	bnez	a4,1ca04 <_vfiprintf_r+0x1038>
   1c9a0:	040bf613          	and	a2,s7,64
   1c9a4:	000c2703          	lw	a4,0(s8)
   1c9a8:	16060863          	beqz	a2,1cb18 <_vfiprintf_r+0x114c>
   1c9ac:	03071713          	sll	a4,a4,0x30
   1c9b0:	03075713          	srl	a4,a4,0x30
   1c9b4:	001bf613          	and	a2,s7,1
   1c9b8:	00060e63          	beqz	a2,1c9d4 <_vfiprintf_r+0x1008>
   1c9bc:	00070c63          	beqz	a4,1c9d4 <_vfiprintf_r+0x1008>
   1c9c0:	002beb93          	or	s7,s7,2
   1c9c4:	03000613          	li	a2,48
   1c9c8:	06c10423          	sb	a2,104(sp)
   1c9cc:	06f104a3          	sb	a5,105(sp)
   1c9d0:	000b8b9b          	sext.w	s7,s7
   1c9d4:	bffbfb93          	and	s7,s7,-1025
   1c9d8:	000b8b9b          	sext.w	s7,s7
   1c9dc:	00068c13          	mv	s8,a3
   1c9e0:	835ff06f          	j	1c214 <_vfiprintf_r+0x848>
   1c9e4:	000b8313          	mv	t1,s7
   1c9e8:	f50ff06f          	j	1c138 <_vfiprintf_r+0x76c>
   1c9ec:	00023737          	lui	a4,0x23
   1c9f0:	b8070713          	add	a4,a4,-1152 # 22b80 <__clz_tab+0x138>
   1c9f4:	00e13823          	sd	a4,16(sp)
   1c9f8:	020bf713          	and	a4,s7,32
   1c9fc:	008c0693          	add	a3,s8,8
   1ca00:	f8070ce3          	beqz	a4,1c998 <_vfiprintf_r+0xfcc>
   1ca04:	000c3703          	ld	a4,0(s8)
   1ca08:	fadff06f          	j	1c9b4 <_vfiprintf_r+0xfe8>
   1ca0c:	00048513          	mv	a0,s1
   1ca10:	f94fc0ef          	jal	191a4 <strlen>
   1ca14:	0005031b          	sext.w	t1,a0
   1ca18:	fff34e13          	not	t3,t1
   1ca1c:	43fe5e13          	sra	t3,t3,0x3f
   1ca20:	01813883          	ld	a7,24(sp)
   1ca24:	006e7e33          	and	t3,t3,t1
   1ca28:	00000d13          	li	s10,0
   1ca2c:	ce4ff06f          	j	1bf10 <_vfiprintf_r+0x544>
   1ca30:	06714703          	lbu	a4,103(sp)
   1ca34:	14070263          	beqz	a4,1cb78 <_vfiprintf_r+0x11ac>
   1ca38:	06710793          	add	a5,sp,103
   1ca3c:	0ef13823          	sd	a5,240(sp)
   1ca40:	00100793          	li	a5,1
   1ca44:	0ef13c23          	sd	a5,248(sp)
   1ca48:	00100593          	li	a1,1
   1ca4c:	00098413          	mv	s0,s3
   1ca50:	abcff06f          	j	1bd0c <_vfiprintf_r+0x340>
   1ca54:	03013783          	ld	a5,48(sp)
   1ca58:	04013583          	ld	a1,64(sp)
   1ca5c:	04613423          	sd	t1,72(sp)
   1ca60:	40f484b3          	sub	s1,s1,a5
   1ca64:	00078613          	mv	a2,a5
   1ca68:	00048513          	mv	a0,s1
   1ca6c:	03d13c23          	sd	t4,56(sp)
   1ca70:	03e13423          	sd	t5,40(sp)
   1ca74:	03113023          	sd	a7,32(sp)
   1ca78:	01013c23          	sd	a6,24(sp)
   1ca7c:	ff0fc0ef          	jal	1926c <strncpy>
   1ca80:	01813803          	ld	a6,24(sp)
   1ca84:	00a00793          	li	a5,10
   1ca88:	02fc57b3          	divu	a5,s8,a5
   1ca8c:	00184703          	lbu	a4,1(a6)
   1ca90:	02013883          	ld	a7,32(sp)
   1ca94:	02813f03          	ld	t5,40(sp)
   1ca98:	00e03733          	snez	a4,a4
   1ca9c:	03813e83          	ld	t4,56(sp)
   1caa0:	04813303          	ld	t1,72(sp)
   1caa4:	00e80833          	add	a6,a6,a4
   1caa8:	00000613          	li	a2,0
   1caac:	00a00693          	li	a3,10
   1cab0:	00900e13          	li	t3,9
   1cab4:	0ff00f93          	li	t6,255
   1cab8:	df1ff06f          	j	1c8a8 <_vfiprintf_r+0xedc>
   1cabc:	00078b93          	mv	s7,a5
   1cac0:	00000793          	li	a5,0
   1cac4:	ec078463          	beqz	a5,1c18c <_vfiprintf_r+0x7c0>
   1cac8:	a79ff06f          	j	1c540 <_vfiprintf_r+0xb74>
   1cacc:	200beb93          	or	s7,s7,512
   1cad0:	001dc783          	lbu	a5,1(s11)
   1cad4:	000b8b9b          	sext.w	s7,s7
   1cad8:	001d8d93          	add	s11,s11,1
   1cadc:	874ff06f          	j	1bb50 <_vfiprintf_r+0x184>
   1cae0:	020beb93          	or	s7,s7,32
   1cae4:	001dc783          	lbu	a5,1(s11)
   1cae8:	000b8b9b          	sext.w	s7,s7
   1caec:	001d8d93          	add	s11,s11,1
   1caf0:	860ff06f          	j	1bb50 <_vfiprintf_r+0x184>
   1caf4:	00600793          	li	a5,6
   1caf8:	000d031b          	sext.w	t1,s10
   1cafc:	07a7ea63          	bltu	a5,s10,1cb70 <_vfiprintf_r+0x11a4>
   1cb00:	000234b7          	lui	s1,0x23
   1cb04:	00030e13          	mv	t3,t1
   1cb08:	b9848493          	add	s1,s1,-1128 # 22b98 <__clz_tab+0x150>
   1cb0c:	9a4ff06f          	j	1bcb0 <_vfiprintf_r+0x2e4>
   1cb10:	00000713          	li	a4,0
   1cb14:	a2dff06f          	j	1c540 <_vfiprintf_r+0xb74>
   1cb18:	200bf613          	and	a2,s7,512
   1cb1c:	08060a63          	beqz	a2,1cbb0 <_vfiprintf_r+0x11e4>
   1cb20:	0ff77713          	zext.b	a4,a4
   1cb24:	e91ff06f          	j	1c9b4 <_vfiprintf_r+0xfe8>
   1cb28:	20037793          	and	a5,t1,512
   1cb2c:	06078c63          	beqz	a5,1cba4 <_vfiprintf_r+0x11d8>
   1cb30:	0ffc7c13          	zext.b	s8,s8
   1cb34:	e1cff06f          	j	1c150 <_vfiprintf_r+0x784>
   1cb38:	2007f693          	and	a3,a5,512
   1cb3c:	04068e63          	beqz	a3,1cb98 <_vfiprintf_r+0x11cc>
   1cb40:	0ff77713          	zext.b	a4,a4
   1cb44:	d6cff06f          	j	1c0b0 <_vfiprintf_r+0x6e4>
   1cb48:	200bf793          	and	a5,s7,512
   1cb4c:	04078263          	beqz	a5,1cb90 <_vfiprintf_r+0x11c4>
   1cb50:	018c1c1b          	sllw	s8,s8,0x18
   1cb54:	418c5c1b          	sraw	s8,s8,0x18
   1cb58:	000c0793          	mv	a5,s8
   1cb5c:	b08ff06f          	j	1be64 <_vfiprintf_r+0x498>
   1cb60:	00100593          	li	a1,1
   1cb64:	00000713          	li	a4,0
   1cb68:	00098413          	mv	s0,s3
   1cb6c:	a24ff06f          	j	1bd90 <_vfiprintf_r+0x3c4>
   1cb70:	00600313          	li	t1,6
   1cb74:	f8dff06f          	j	1cb00 <_vfiprintf_r+0x1134>
   1cb78:	00100593          	li	a1,1
   1cb7c:	00098413          	mv	s0,s3
   1cb80:	998ff06f          	j	1bd18 <_vfiprintf_r+0x34c>
   1cb84:	01971023          	sh	s9,0(a4)
   1cb88:	008c0c13          	add	s8,s8,8
   1cb8c:	f2dfe06f          	j	1bab8 <_vfiprintf_r+0xec>
   1cb90:	000c0793          	mv	a5,s8
   1cb94:	ad0ff06f          	j	1be64 <_vfiprintf_r+0x498>
   1cb98:	02071713          	sll	a4,a4,0x20
   1cb9c:	02075713          	srl	a4,a4,0x20
   1cba0:	d10ff06f          	j	1c0b0 <_vfiprintf_r+0x6e4>
   1cba4:	020c1c13          	sll	s8,s8,0x20
   1cba8:	020c5c13          	srl	s8,s8,0x20
   1cbac:	da4ff06f          	j	1c150 <_vfiprintf_r+0x784>
   1cbb0:	02071713          	sll	a4,a4,0x20
   1cbb4:	02075713          	srl	a4,a4,0x20
   1cbb8:	dfdff06f          	j	1c9b4 <_vfiprintf_r+0xfe8>
   1cbbc:	000d0e13          	mv	t3,s10
   1cbc0:	000d0313          	mv	t1,s10
   1cbc4:	00000d13          	li	s10,0
   1cbc8:	b48ff06f          	j	1bf10 <_vfiprintf_r+0x544>
   1cbcc:	00023eb7          	lui	t4,0x23
   1cbd0:	688e8e93          	add	t4,t4,1672 # 23688 <blanks.1>
   1cbd4:	a79ff06f          	j	1c64c <_vfiprintf_r+0xc80>
   1cbd8:	000e8c13          	mv	s8,t4
   1cbdc:	03000793          	li	a5,48
   1cbe0:	b18ff06f          	j	1bef8 <_vfiprintf_r+0x52c>
   1cbe4:	00023eb7          	lui	t4,0x23
   1cbe8:	0016871b          	addw	a4,a3,1
   1cbec:	688e8e93          	add	t4,t4,1672 # 23688 <blanks.1>
   1cbf0:	b59ff06f          	j	1c748 <_vfiprintf_r+0xd7c>
   1cbf4:	00023f37          	lui	t5,0x23
   1cbf8:	00058693          	mv	a3,a1
   1cbfc:	678f0f13          	add	t5,t5,1656 # 23678 <zeroes.0>
   1cc00:	f60ff06f          	j	1c360 <_vfiprintf_r+0x994>
   1cc04:	fff00c13          	li	s8,-1
   1cc08:	814ff06f          	j	1bc1c <_vfiprintf_r+0x250>
   1cc0c:	01972023          	sw	s9,0(a4)
   1cc10:	008c0c13          	add	s8,s8,8
   1cc14:	ea5fe06f          	j	1bab8 <_vfiprintf_r+0xec>
   1cc18:	000c2783          	lw	a5,0(s8)
   1cc1c:	008c0c13          	add	s8,s8,8
   1cc20:	00078d1b          	sext.w	s10,a5
   1cc24:	0007d463          	bgez	a5,1cc2c <_vfiprintf_r+0x1260>
   1cc28:	fff00d13          	li	s10,-1
   1cc2c:	001dc783          	lbu	a5,1(s11)
   1cc30:	00070d93          	mv	s11,a4
   1cc34:	f1dfe06f          	j	1bb50 <_vfiprintf_r+0x184>

000000000001cc38 <vfiprintf>:
   1cc38:	00050793          	mv	a5,a0
   1cc3c:	7581b503          	ld	a0,1880(gp) # 25ad8 <_impure_ptr>
   1cc40:	00060693          	mv	a3,a2
   1cc44:	00058613          	mv	a2,a1
   1cc48:	00078593          	mv	a1,a5
   1cc4c:	d81fe06f          	j	1b9cc <_vfiprintf_r>

000000000001cc50 <__sbprintf>:
   1cc50:	01059783          	lh	a5,16(a1)
   1cc54:	0125d703          	lhu	a4,18(a1)
   1cc58:	0ac5a303          	lw	t1,172(a1)
   1cc5c:	ffd7f793          	and	a5,a5,-3
   1cc60:	0107979b          	sllw	a5,a5,0x10
   1cc64:	0305b883          	ld	a7,48(a1)
   1cc68:	0405b803          	ld	a6,64(a1)
   1cc6c:	0107171b          	sllw	a4,a4,0x10
   1cc70:	0107d79b          	srlw	a5,a5,0x10
   1cc74:	b3010113          	add	sp,sp,-1232
   1cc78:	00e7e7b3          	or	a5,a5,a4
   1cc7c:	4c813023          	sd	s0,1216(sp)
   1cc80:	40000713          	li	a4,1024
   1cc84:	00f12823          	sw	a5,16(sp)
   1cc88:	00058413          	mv	s0,a1
   1cc8c:	0b010793          	add	a5,sp,176
   1cc90:	00010593          	mv	a1,sp
   1cc94:	4a913c23          	sd	s1,1208(sp)
   1cc98:	4b213823          	sd	s2,1200(sp)
   1cc9c:	4c113423          	sd	ra,1224(sp)
   1cca0:	00050913          	mv	s2,a0
   1cca4:	0a612623          	sw	t1,172(sp)
   1cca8:	03113823          	sd	a7,48(sp)
   1ccac:	05013023          	sd	a6,64(sp)
   1ccb0:	00f13023          	sd	a5,0(sp)
   1ccb4:	00f13c23          	sd	a5,24(sp)
   1ccb8:	00e12623          	sw	a4,12(sp)
   1ccbc:	02e12023          	sw	a4,32(sp)
   1ccc0:	02012423          	sw	zero,40(sp)
   1ccc4:	d09fe0ef          	jal	1b9cc <_vfiprintf_r>
   1ccc8:	00050493          	mv	s1,a0
   1cccc:	02055c63          	bgez	a0,1cd04 <__sbprintf+0xb4>
   1ccd0:	01015783          	lhu	a5,16(sp)
   1ccd4:	0407f793          	and	a5,a5,64
   1ccd8:	00078863          	beqz	a5,1cce8 <__sbprintf+0x98>
   1ccdc:	01045783          	lhu	a5,16(s0)
   1cce0:	0407e793          	or	a5,a5,64
   1cce4:	00f41823          	sh	a5,16(s0)
   1cce8:	4c813083          	ld	ra,1224(sp)
   1ccec:	4c013403          	ld	s0,1216(sp)
   1ccf0:	4b013903          	ld	s2,1200(sp)
   1ccf4:	00048513          	mv	a0,s1
   1ccf8:	4b813483          	ld	s1,1208(sp)
   1ccfc:	4d010113          	add	sp,sp,1232
   1cd00:	00008067          	ret
   1cd04:	00010593          	mv	a1,sp
   1cd08:	00090513          	mv	a0,s2
   1cd0c:	911f60ef          	jal	1361c <_fflush_r>
   1cd10:	fc0500e3          	beqz	a0,1ccd0 <__sbprintf+0x80>
   1cd14:	fff00493          	li	s1,-1
   1cd18:	fb9ff06f          	j	1ccd0 <__sbprintf+0x80>

000000000001cd1c <_wctomb_r>:
   1cd1c:	e281b783          	ld	a5,-472(gp) # 251a8 <__global_locale+0xe0>
   1cd20:	00078067          	jr	a5

000000000001cd24 <__ascii_wctomb>:
   1cd24:	0006079b          	sext.w	a5,a2
   1cd28:	02058463          	beqz	a1,1cd50 <__ascii_wctomb+0x2c>
   1cd2c:	0ff00713          	li	a4,255
   1cd30:	00f76863          	bltu	a4,a5,1cd40 <__ascii_wctomb+0x1c>
   1cd34:	00c58023          	sb	a2,0(a1)
   1cd38:	00100513          	li	a0,1
   1cd3c:	00008067          	ret
   1cd40:	08a00793          	li	a5,138
   1cd44:	00f52023          	sw	a5,0(a0)
   1cd48:	fff00513          	li	a0,-1
   1cd4c:	00008067          	ret
   1cd50:	00000513          	li	a0,0
   1cd54:	00008067          	ret

000000000001cd58 <_write_r>:
   1cd58:	fe010113          	add	sp,sp,-32
   1cd5c:	00058713          	mv	a4,a1
   1cd60:	00813823          	sd	s0,16(sp)
   1cd64:	00913423          	sd	s1,8(sp)
   1cd68:	00060593          	mv	a1,a2
   1cd6c:	00050413          	mv	s0,a0
   1cd70:	00068613          	mv	a2,a3
   1cd74:	00070513          	mv	a0,a4
   1cd78:	00113c23          	sd	ra,24(sp)
   1cd7c:	7801a823          	sw	zero,1936(gp) # 25b10 <errno>
   1cd80:	31c030ef          	jal	2009c <_write>
   1cd84:	fff00793          	li	a5,-1
   1cd88:	00f50c63          	beq	a0,a5,1cda0 <_write_r+0x48>
   1cd8c:	01813083          	ld	ra,24(sp)
   1cd90:	01013403          	ld	s0,16(sp)
   1cd94:	00813483          	ld	s1,8(sp)
   1cd98:	02010113          	add	sp,sp,32
   1cd9c:	00008067          	ret
   1cda0:	7901a783          	lw	a5,1936(gp) # 25b10 <errno>
   1cda4:	fe0784e3          	beqz	a5,1cd8c <_write_r+0x34>
   1cda8:	01813083          	ld	ra,24(sp)
   1cdac:	00f42023          	sw	a5,0(s0)
   1cdb0:	01013403          	ld	s0,16(sp)
   1cdb4:	00813483          	ld	s1,8(sp)
   1cdb8:	02010113          	add	sp,sp,32
   1cdbc:	00008067          	ret

000000000001cdc0 <__assert_func>:
   1cdc0:	7581b703          	ld	a4,1880(gp) # 25ad8 <_impure_ptr>
   1cdc4:	ff010113          	add	sp,sp,-16
   1cdc8:	00068793          	mv	a5,a3
   1cdcc:	00060813          	mv	a6,a2
   1cdd0:	00113423          	sd	ra,8(sp)
   1cdd4:	01873883          	ld	a7,24(a4)
   1cdd8:	00050693          	mv	a3,a0
   1cddc:	00058713          	mv	a4,a1
   1cde0:	00078613          	mv	a2,a5
   1cde4:	02080063          	beqz	a6,1ce04 <__assert_func+0x44>
   1cde8:	000237b7          	lui	a5,0x23
   1cdec:	cb078793          	add	a5,a5,-848 # 22cb0 <__clz_tab+0x268>
   1cdf0:	000235b7          	lui	a1,0x23
   1cdf4:	cc058593          	add	a1,a1,-832 # 22cc0 <__clz_tab+0x278>
   1cdf8:	00088513          	mv	a0,a7
   1cdfc:	2e0000ef          	jal	1d0dc <fiprintf>
   1ce00:	215020ef          	jal	1f814 <abort>
   1ce04:	00023837          	lui	a6,0x23
   1ce08:	b7880793          	add	a5,a6,-1160 # 22b78 <__clz_tab+0x130>
   1ce0c:	b7880813          	add	a6,a6,-1160
   1ce10:	fe1ff06f          	j	1cdf0 <__assert_func+0x30>

000000000001ce14 <__assert>:
   1ce14:	ff010113          	add	sp,sp,-16
   1ce18:	00060693          	mv	a3,a2
   1ce1c:	00000613          	li	a2,0
   1ce20:	00113423          	sd	ra,8(sp)
   1ce24:	f9dff0ef          	jal	1cdc0 <__assert_func>

000000000001ce28 <atexit>:
   1ce28:	00050593          	mv	a1,a0
   1ce2c:	00000693          	li	a3,0
   1ce30:	00000613          	li	a2,0
   1ce34:	00000513          	li	a0,0
   1ce38:	1f50206f          	j	1f82c <__register_exitproc>

000000000001ce3c <_calloc_r>:
   1ce3c:	02c5b7b3          	mulhu	a5,a1,a2
   1ce40:	ff010113          	add	sp,sp,-16
   1ce44:	00113423          	sd	ra,8(sp)
   1ce48:	00813023          	sd	s0,0(sp)
   1ce4c:	02c585b3          	mul	a1,a1,a2
   1ce50:	0a079063          	bnez	a5,1cef0 <_calloc_r+0xb4>
   1ce54:	a2cfa0ef          	jal	17080 <_malloc_r>
   1ce58:	00050413          	mv	s0,a0
   1ce5c:	0a050063          	beqz	a0,1cefc <_calloc_r+0xc0>
   1ce60:	ff853603          	ld	a2,-8(a0)
   1ce64:	04800713          	li	a4,72
   1ce68:	ffc67613          	and	a2,a2,-4
   1ce6c:	ff860613          	add	a2,a2,-8
   1ce70:	04c76863          	bltu	a4,a2,1cec0 <_calloc_r+0x84>
   1ce74:	02700693          	li	a3,39
   1ce78:	00050793          	mv	a5,a0
   1ce7c:	02c6f263          	bgeu	a3,a2,1cea0 <_calloc_r+0x64>
   1ce80:	00053023          	sd	zero,0(a0)
   1ce84:	00053423          	sd	zero,8(a0)
   1ce88:	03700793          	li	a5,55
   1ce8c:	04c7f863          	bgeu	a5,a2,1cedc <_calloc_r+0xa0>
   1ce90:	00053823          	sd	zero,16(a0)
   1ce94:	00053c23          	sd	zero,24(a0)
   1ce98:	02050793          	add	a5,a0,32
   1ce9c:	06e60c63          	beq	a2,a4,1cf14 <_calloc_r+0xd8>
   1cea0:	0007b023          	sd	zero,0(a5)
   1cea4:	0007b423          	sd	zero,8(a5)
   1cea8:	0007b823          	sd	zero,16(a5)
   1ceac:	00813083          	ld	ra,8(sp)
   1ceb0:	00040513          	mv	a0,s0
   1ceb4:	00013403          	ld	s0,0(sp)
   1ceb8:	01010113          	add	sp,sp,16
   1cebc:	00008067          	ret
   1cec0:	00000593          	li	a1,0
   1cec4:	a65f30ef          	jal	10928 <memset>
   1cec8:	00813083          	ld	ra,8(sp)
   1cecc:	00040513          	mv	a0,s0
   1ced0:	00013403          	ld	s0,0(sp)
   1ced4:	01010113          	add	sp,sp,16
   1ced8:	00008067          	ret
   1cedc:	01050793          	add	a5,a0,16
   1cee0:	0007b023          	sd	zero,0(a5)
   1cee4:	0007b423          	sd	zero,8(a5)
   1cee8:	0007b823          	sd	zero,16(a5)
   1ceec:	fc1ff06f          	j	1ceac <_calloc_r+0x70>
   1cef0:	090000ef          	jal	1cf80 <__errno>
   1cef4:	00c00793          	li	a5,12
   1cef8:	00f52023          	sw	a5,0(a0)
   1cefc:	00000413          	li	s0,0
   1cf00:	00813083          	ld	ra,8(sp)
   1cf04:	00040513          	mv	a0,s0
   1cf08:	00013403          	ld	s0,0(sp)
   1cf0c:	01010113          	add	sp,sp,16
   1cf10:	00008067          	ret
   1cf14:	02053023          	sd	zero,32(a0)
   1cf18:	03050793          	add	a5,a0,48
   1cf1c:	02053423          	sd	zero,40(a0)
   1cf20:	f81ff06f          	j	1cea0 <_calloc_r+0x64>

000000000001cf24 <_close_r>:
   1cf24:	fe010113          	add	sp,sp,-32
   1cf28:	00813823          	sd	s0,16(sp)
   1cf2c:	00913423          	sd	s1,8(sp)
   1cf30:	00050413          	mv	s0,a0
   1cf34:	00058513          	mv	a0,a1
   1cf38:	00113c23          	sd	ra,24(sp)
   1cf3c:	7801a823          	sw	zero,1936(gp) # 25b10 <errno>
   1cf40:	719020ef          	jal	1fe58 <_close>
   1cf44:	fff00793          	li	a5,-1
   1cf48:	00f50c63          	beq	a0,a5,1cf60 <_close_r+0x3c>
   1cf4c:	01813083          	ld	ra,24(sp)
   1cf50:	01013403          	ld	s0,16(sp)
   1cf54:	00813483          	ld	s1,8(sp)
   1cf58:	02010113          	add	sp,sp,32
   1cf5c:	00008067          	ret
   1cf60:	7901a783          	lw	a5,1936(gp) # 25b10 <errno>
   1cf64:	fe0784e3          	beqz	a5,1cf4c <_close_r+0x28>
   1cf68:	01813083          	ld	ra,24(sp)
   1cf6c:	00f42023          	sw	a5,0(s0)
   1cf70:	01013403          	ld	s0,16(sp)
   1cf74:	00813483          	ld	s1,8(sp)
   1cf78:	02010113          	add	sp,sp,32
   1cf7c:	00008067          	ret

000000000001cf80 <__errno>:
   1cf80:	7581b503          	ld	a0,1880(gp) # 25ad8 <_impure_ptr>
   1cf84:	00008067          	ret

000000000001cf88 <_fclose_r>:
   1cf88:	fe010113          	add	sp,sp,-32
   1cf8c:	00113c23          	sd	ra,24(sp)
   1cf90:	00813823          	sd	s0,16(sp)
   1cf94:	00913423          	sd	s1,8(sp)
   1cf98:	01213023          	sd	s2,0(sp)
   1cf9c:	02058063          	beqz	a1,1cfbc <_fclose_r+0x34>
   1cfa0:	00058413          	mv	s0,a1
   1cfa4:	00050493          	mv	s1,a0
   1cfa8:	00050663          	beqz	a0,1cfb4 <_fclose_r+0x2c>
   1cfac:	05052783          	lw	a5,80(a0)
   1cfb0:	0a078c63          	beqz	a5,1d068 <_fclose_r+0xe0>
   1cfb4:	01041783          	lh	a5,16(s0)
   1cfb8:	02079263          	bnez	a5,1cfdc <_fclose_r+0x54>
   1cfbc:	01813083          	ld	ra,24(sp)
   1cfc0:	01013403          	ld	s0,16(sp)
   1cfc4:	00000913          	li	s2,0
   1cfc8:	00813483          	ld	s1,8(sp)
   1cfcc:	00090513          	mv	a0,s2
   1cfd0:	00013903          	ld	s2,0(sp)
   1cfd4:	02010113          	add	sp,sp,32
   1cfd8:	00008067          	ret
   1cfdc:	00040593          	mv	a1,s0
   1cfe0:	00048513          	mv	a0,s1
   1cfe4:	becf60ef          	jal	133d0 <__sflush_r>
   1cfe8:	05043783          	ld	a5,80(s0)
   1cfec:	00050913          	mv	s2,a0
   1cff0:	00078a63          	beqz	a5,1d004 <_fclose_r+0x7c>
   1cff4:	03043583          	ld	a1,48(s0)
   1cff8:	00048513          	mv	a0,s1
   1cffc:	000780e7          	jalr	a5
   1d000:	06054c63          	bltz	a0,1d078 <_fclose_r+0xf0>
   1d004:	01045783          	lhu	a5,16(s0)
   1d008:	0807f793          	and	a5,a5,128
   1d00c:	06079e63          	bnez	a5,1d088 <_fclose_r+0x100>
   1d010:	05843583          	ld	a1,88(s0)
   1d014:	00058c63          	beqz	a1,1d02c <_fclose_r+0xa4>
   1d018:	07440793          	add	a5,s0,116
   1d01c:	00f58663          	beq	a1,a5,1d028 <_fclose_r+0xa0>
   1d020:	00048513          	mv	a0,s1
   1d024:	bedf60ef          	jal	13c10 <_free_r>
   1d028:	04043c23          	sd	zero,88(s0)
   1d02c:	07843583          	ld	a1,120(s0)
   1d030:	00058863          	beqz	a1,1d040 <_fclose_r+0xb8>
   1d034:	00048513          	mv	a0,s1
   1d038:	bd9f60ef          	jal	13c10 <_free_r>
   1d03c:	06043c23          	sd	zero,120(s0)
   1d040:	a09f60ef          	jal	13a48 <__sfp_lock_acquire>
   1d044:	00041823          	sh	zero,16(s0)
   1d048:	a05f60ef          	jal	13a4c <__sfp_lock_release>
   1d04c:	01813083          	ld	ra,24(sp)
   1d050:	01013403          	ld	s0,16(sp)
   1d054:	00813483          	ld	s1,8(sp)
   1d058:	00090513          	mv	a0,s2
   1d05c:	00013903          	ld	s2,0(sp)
   1d060:	02010113          	add	sp,sp,32
   1d064:	00008067          	ret
   1d068:	9d1f60ef          	jal	13a38 <__sinit>
   1d06c:	01041783          	lh	a5,16(s0)
   1d070:	f40786e3          	beqz	a5,1cfbc <_fclose_r+0x34>
   1d074:	f69ff06f          	j	1cfdc <_fclose_r+0x54>
   1d078:	01045783          	lhu	a5,16(s0)
   1d07c:	fff00913          	li	s2,-1
   1d080:	0807f793          	and	a5,a5,128
   1d084:	f80786e3          	beqz	a5,1d010 <_fclose_r+0x88>
   1d088:	01843583          	ld	a1,24(s0)
   1d08c:	00048513          	mv	a0,s1
   1d090:	b81f60ef          	jal	13c10 <_free_r>
   1d094:	f7dff06f          	j	1d010 <_fclose_r+0x88>

000000000001d098 <fclose>:
   1d098:	00050593          	mv	a1,a0
   1d09c:	7581b503          	ld	a0,1880(gp) # 25ad8 <_impure_ptr>
   1d0a0:	ee9ff06f          	j	1cf88 <_fclose_r>

000000000001d0a4 <_fiprintf_r>:
   1d0a4:	fb010113          	add	sp,sp,-80
   1d0a8:	02810313          	add	t1,sp,40
   1d0ac:	02d13423          	sd	a3,40(sp)
   1d0b0:	00030693          	mv	a3,t1
   1d0b4:	00113c23          	sd	ra,24(sp)
   1d0b8:	02e13823          	sd	a4,48(sp)
   1d0bc:	02f13c23          	sd	a5,56(sp)
   1d0c0:	05013023          	sd	a6,64(sp)
   1d0c4:	05113423          	sd	a7,72(sp)
   1d0c8:	00613423          	sd	t1,8(sp)
   1d0cc:	901fe0ef          	jal	1b9cc <_vfiprintf_r>
   1d0d0:	01813083          	ld	ra,24(sp)
   1d0d4:	05010113          	add	sp,sp,80
   1d0d8:	00008067          	ret

000000000001d0dc <fiprintf>:
   1d0dc:	00050e13          	mv	t3,a0
   1d0e0:	fb010113          	add	sp,sp,-80
   1d0e4:	7581b503          	ld	a0,1880(gp) # 25ad8 <_impure_ptr>
   1d0e8:	02010313          	add	t1,sp,32
   1d0ec:	02c13023          	sd	a2,32(sp)
   1d0f0:	02d13423          	sd	a3,40(sp)
   1d0f4:	00058613          	mv	a2,a1
   1d0f8:	00030693          	mv	a3,t1
   1d0fc:	000e0593          	mv	a1,t3
   1d100:	00113c23          	sd	ra,24(sp)
   1d104:	02e13823          	sd	a4,48(sp)
   1d108:	02f13c23          	sd	a5,56(sp)
   1d10c:	05013023          	sd	a6,64(sp)
   1d110:	05113423          	sd	a7,72(sp)
   1d114:	00613423          	sd	t1,8(sp)
   1d118:	8b5fe0ef          	jal	1b9cc <_vfiprintf_r>
   1d11c:	01813083          	ld	ra,24(sp)
   1d120:	05010113          	add	sp,sp,80
   1d124:	00008067          	ret

000000000001d128 <__fputwc>:
   1d128:	fd010113          	add	sp,sp,-48
   1d12c:	02813023          	sd	s0,32(sp)
   1d130:	00913c23          	sd	s1,24(sp)
   1d134:	01213823          	sd	s2,16(sp)
   1d138:	02113423          	sd	ra,40(sp)
   1d13c:	00050913          	mv	s2,a0
   1d140:	00058493          	mv	s1,a1
   1d144:	00060413          	mv	s0,a2
   1d148:	c4df90ef          	jal	16d94 <__locale_mb_cur_max>
   1d14c:	00100793          	li	a5,1
   1d150:	00f51c63          	bne	a0,a5,1d168 <__fputwc+0x40>
   1d154:	fff4879b          	addw	a5,s1,-1
   1d158:	0fe00713          	li	a4,254
   1d15c:	00f76663          	bltu	a4,a5,1d168 <__fputwc+0x40>
   1d160:	00910423          	sb	s1,8(sp)
   1d164:	0240006f          	j	1d188 <__fputwc+0x60>
   1d168:	0a440693          	add	a3,s0,164
   1d16c:	00048613          	mv	a2,s1
   1d170:	00810593          	add	a1,sp,8
   1d174:	00090513          	mv	a0,s2
   1d178:	59c020ef          	jal	1f714 <_wcrtomb_r>
   1d17c:	fff00793          	li	a5,-1
   1d180:	08f50463          	beq	a0,a5,1d208 <__fputwc+0xe0>
   1d184:	02050c63          	beqz	a0,1d1bc <__fputwc+0x94>
   1d188:	00c42783          	lw	a5,12(s0)
   1d18c:	00814583          	lbu	a1,8(sp)
   1d190:	fff7871b          	addw	a4,a5,-1
   1d194:	00e42623          	sw	a4,12(s0)
   1d198:	00075a63          	bgez	a4,1d1ac <__fputwc+0x84>
   1d19c:	02842783          	lw	a5,40(s0)
   1d1a0:	02f74c63          	blt	a4,a5,1d1d8 <__fputwc+0xb0>
   1d1a4:	00a00793          	li	a5,10
   1d1a8:	02f58863          	beq	a1,a5,1d1d8 <__fputwc+0xb0>
   1d1ac:	00043783          	ld	a5,0(s0)
   1d1b0:	00178713          	add	a4,a5,1
   1d1b4:	00e43023          	sd	a4,0(s0)
   1d1b8:	00b78023          	sb	a1,0(a5)
   1d1bc:	02813083          	ld	ra,40(sp)
   1d1c0:	02013403          	ld	s0,32(sp)
   1d1c4:	01013903          	ld	s2,16(sp)
   1d1c8:	0004851b          	sext.w	a0,s1
   1d1cc:	01813483          	ld	s1,24(sp)
   1d1d0:	03010113          	add	sp,sp,48
   1d1d4:	00008067          	ret
   1d1d8:	00040613          	mv	a2,s0
   1d1dc:	00090513          	mv	a0,s2
   1d1e0:	3ac020ef          	jal	1f58c <__swbuf_r>
   1d1e4:	fff00793          	li	a5,-1
   1d1e8:	fcf51ae3          	bne	a0,a5,1d1bc <__fputwc+0x94>
   1d1ec:	fff00513          	li	a0,-1
   1d1f0:	02813083          	ld	ra,40(sp)
   1d1f4:	02013403          	ld	s0,32(sp)
   1d1f8:	01813483          	ld	s1,24(sp)
   1d1fc:	01013903          	ld	s2,16(sp)
   1d200:	03010113          	add	sp,sp,48
   1d204:	00008067          	ret
   1d208:	01045783          	lhu	a5,16(s0)
   1d20c:	fff00513          	li	a0,-1
   1d210:	0407e793          	or	a5,a5,64
   1d214:	00f41823          	sh	a5,16(s0)
   1d218:	fd9ff06f          	j	1d1f0 <__fputwc+0xc8>

000000000001d21c <_fputwc_r>:
   1d21c:	01061783          	lh	a5,16(a2)
   1d220:	03279713          	sll	a4,a5,0x32
   1d224:	02074063          	bltz	a4,1d244 <_fputwc_r+0x28>
   1d228:	0ac62703          	lw	a4,172(a2)
   1d22c:	000026b7          	lui	a3,0x2
   1d230:	00d7e7b3          	or	a5,a5,a3
   1d234:	000026b7          	lui	a3,0x2
   1d238:	00d76733          	or	a4,a4,a3
   1d23c:	00f61823          	sh	a5,16(a2)
   1d240:	0ae62623          	sw	a4,172(a2)
   1d244:	ee5ff06f          	j	1d128 <__fputwc>

000000000001d248 <fputwc>:
   1d248:	fe010113          	add	sp,sp,-32
   1d24c:	00813823          	sd	s0,16(sp)
   1d250:	7581b403          	ld	s0,1880(gp) # 25ad8 <_impure_ptr>
   1d254:	00113c23          	sd	ra,24(sp)
   1d258:	00058613          	mv	a2,a1
   1d25c:	00050593          	mv	a1,a0
   1d260:	00040663          	beqz	s0,1d26c <fputwc+0x24>
   1d264:	05042783          	lw	a5,80(s0)
   1d268:	04078063          	beqz	a5,1d2a8 <fputwc+0x60>
   1d26c:	01061783          	lh	a5,16(a2)
   1d270:	03279713          	sll	a4,a5,0x32
   1d274:	02074063          	bltz	a4,1d294 <fputwc+0x4c>
   1d278:	0ac62703          	lw	a4,172(a2)
   1d27c:	000026b7          	lui	a3,0x2
   1d280:	00d7e7b3          	or	a5,a5,a3
   1d284:	000026b7          	lui	a3,0x2
   1d288:	00d76733          	or	a4,a4,a3
   1d28c:	00f61823          	sh	a5,16(a2)
   1d290:	0ae62623          	sw	a4,172(a2)
   1d294:	00040513          	mv	a0,s0
   1d298:	01013403          	ld	s0,16(sp)
   1d29c:	01813083          	ld	ra,24(sp)
   1d2a0:	02010113          	add	sp,sp,32
   1d2a4:	e85ff06f          	j	1d128 <__fputwc>
   1d2a8:	00a13023          	sd	a0,0(sp)
   1d2ac:	00040513          	mv	a0,s0
   1d2b0:	00c13423          	sd	a2,8(sp)
   1d2b4:	f84f60ef          	jal	13a38 <__sinit>
   1d2b8:	00813603          	ld	a2,8(sp)
   1d2bc:	00013583          	ld	a1,0(sp)
   1d2c0:	fadff06f          	j	1d26c <fputwc+0x24>

000000000001d2c4 <_fstat_r>:
   1d2c4:	fe010113          	add	sp,sp,-32
   1d2c8:	00058713          	mv	a4,a1
   1d2cc:	00813823          	sd	s0,16(sp)
   1d2d0:	00913423          	sd	s1,8(sp)
   1d2d4:	00050413          	mv	s0,a0
   1d2d8:	00060593          	mv	a1,a2
   1d2dc:	00070513          	mv	a0,a4
   1d2e0:	00113c23          	sd	ra,24(sp)
   1d2e4:	7801a823          	sw	zero,1936(gp) # 25b10 <errno>
   1d2e8:	3e5020ef          	jal	1fecc <_fstat>
   1d2ec:	fff00793          	li	a5,-1
   1d2f0:	00f50c63          	beq	a0,a5,1d308 <_fstat_r+0x44>
   1d2f4:	01813083          	ld	ra,24(sp)
   1d2f8:	01013403          	ld	s0,16(sp)
   1d2fc:	00813483          	ld	s1,8(sp)
   1d300:	02010113          	add	sp,sp,32
   1d304:	00008067          	ret
   1d308:	7901a783          	lw	a5,1936(gp) # 25b10 <errno>
   1d30c:	fe0784e3          	beqz	a5,1d2f4 <_fstat_r+0x30>
   1d310:	01813083          	ld	ra,24(sp)
   1d314:	00f42023          	sw	a5,0(s0)
   1d318:	01013403          	ld	s0,16(sp)
   1d31c:	00813483          	ld	s1,8(sp)
   1d320:	02010113          	add	sp,sp,32
   1d324:	00008067          	ret

000000000001d328 <__sfvwrite_r>:
   1d328:	01063783          	ld	a5,16(a2)
   1d32c:	28078063          	beqz	a5,1d5ac <__sfvwrite_r+0x284>
   1d330:	01059703          	lh	a4,16(a1)
   1d334:	fa010113          	add	sp,sp,-96
   1d338:	04813823          	sd	s0,80(sp)
   1d33c:	03413823          	sd	s4,48(sp)
   1d340:	03613023          	sd	s6,32(sp)
   1d344:	04113c23          	sd	ra,88(sp)
   1d348:	04913423          	sd	s1,72(sp)
   1d34c:	05213023          	sd	s2,64(sp)
   1d350:	03313c23          	sd	s3,56(sp)
   1d354:	03513423          	sd	s5,40(sp)
   1d358:	01713c23          	sd	s7,24(sp)
   1d35c:	01813823          	sd	s8,16(sp)
   1d360:	01913423          	sd	s9,8(sp)
   1d364:	00877793          	and	a5,a4,8
   1d368:	00060b13          	mv	s6,a2
   1d36c:	00050a13          	mv	s4,a0
   1d370:	00058413          	mv	s0,a1
   1d374:	08078863          	beqz	a5,1d404 <__sfvwrite_r+0xdc>
   1d378:	0185b783          	ld	a5,24(a1)
   1d37c:	08078463          	beqz	a5,1d404 <__sfvwrite_r+0xdc>
   1d380:	00277793          	and	a5,a4,2
   1d384:	000b3483          	ld	s1,0(s6)
   1d388:	08078e63          	beqz	a5,1d424 <__sfvwrite_r+0xfc>
   1d38c:	04043783          	ld	a5,64(s0)
   1d390:	03043583          	ld	a1,48(s0)
   1d394:	80000ab7          	lui	s5,0x80000
   1d398:	00000993          	li	s3,0
   1d39c:	00000913          	li	s2,0
   1d3a0:	c00aca93          	xor	s5,s5,-1024
   1d3a4:	00098613          	mv	a2,s3
   1d3a8:	000a0513          	mv	a0,s4
   1d3ac:	04090463          	beqz	s2,1d3f4 <__sfvwrite_r+0xcc>
   1d3b0:	00090693          	mv	a3,s2
   1d3b4:	012af463          	bgeu	s5,s2,1d3bc <__sfvwrite_r+0x94>
   1d3b8:	000a8693          	mv	a3,s5
   1d3bc:	0006869b          	sext.w	a3,a3
   1d3c0:	000780e7          	jalr	a5
   1d3c4:	1ca05a63          	blez	a0,1d598 <__sfvwrite_r+0x270>
   1d3c8:	010b3783          	ld	a5,16(s6)
   1d3cc:	00a989b3          	add	s3,s3,a0
   1d3d0:	40a90933          	sub	s2,s2,a0
   1d3d4:	40a787b3          	sub	a5,a5,a0
   1d3d8:	00fb3823          	sd	a5,16(s6)
   1d3dc:	16078a63          	beqz	a5,1d550 <__sfvwrite_r+0x228>
   1d3e0:	04043783          	ld	a5,64(s0)
   1d3e4:	03043583          	ld	a1,48(s0)
   1d3e8:	00098613          	mv	a2,s3
   1d3ec:	000a0513          	mv	a0,s4
   1d3f0:	fc0910e3          	bnez	s2,1d3b0 <__sfvwrite_r+0x88>
   1d3f4:	0004b983          	ld	s3,0(s1)
   1d3f8:	0084b903          	ld	s2,8(s1)
   1d3fc:	01048493          	add	s1,s1,16
   1d400:	fa5ff06f          	j	1d3a4 <__sfvwrite_r+0x7c>
   1d404:	00040593          	mv	a1,s0
   1d408:	000a0513          	mv	a0,s4
   1d40c:	d5df50ef          	jal	13168 <__swsetup_r>
   1d410:	18051a63          	bnez	a0,1d5a4 <__sfvwrite_r+0x27c>
   1d414:	01041703          	lh	a4,16(s0)
   1d418:	000b3483          	ld	s1,0(s6)
   1d41c:	00277793          	and	a5,a4,2
   1d420:	f60796e3          	bnez	a5,1d38c <__sfvwrite_r+0x64>
   1d424:	00177793          	and	a5,a4,1
   1d428:	08079e63          	bnez	a5,1d4c4 <__sfvwrite_r+0x19c>
   1d42c:	00c42b83          	lw	s7,12(s0)
   1d430:	00043783          	ld	a5,0(s0)
   1d434:	80000ab7          	lui	s5,0x80000
   1d438:	00000c13          	li	s8,0
   1d43c:	00000913          	li	s2,0
   1d440:	fffaca93          	not	s5,s5
   1d444:	00078513          	mv	a0,a5
   1d448:	06090663          	beqz	s2,1d4b4 <__sfvwrite_r+0x18c>
   1d44c:	20077693          	and	a3,a4,512
   1d450:	1c068663          	beqz	a3,1d61c <__sfvwrite_r+0x2f4>
   1d454:	27797063          	bgeu	s2,s7,1d6b4 <__sfvwrite_r+0x38c>
   1d458:	00090c93          	mv	s9,s2
   1d45c:	00090b93          	mv	s7,s2
   1d460:	000b8613          	mv	a2,s7
   1d464:	000c0593          	mv	a1,s8
   1d468:	5d0000ef          	jal	1da38 <memmove>
   1d46c:	00c42703          	lw	a4,12(s0)
   1d470:	00043783          	ld	a5,0(s0)
   1d474:	00090993          	mv	s3,s2
   1d478:	4197073b          	subw	a4,a4,s9
   1d47c:	017787b3          	add	a5,a5,s7
   1d480:	00e42623          	sw	a4,12(s0)
   1d484:	00f43023          	sd	a5,0(s0)
   1d488:	00000913          	li	s2,0
   1d48c:	010b3783          	ld	a5,16(s6)
   1d490:	013c0c33          	add	s8,s8,s3
   1d494:	413787b3          	sub	a5,a5,s3
   1d498:	00fb3823          	sd	a5,16(s6)
   1d49c:	0a078a63          	beqz	a5,1d550 <__sfvwrite_r+0x228>
   1d4a0:	00043783          	ld	a5,0(s0)
   1d4a4:	01041703          	lh	a4,16(s0)
   1d4a8:	00c42b83          	lw	s7,12(s0)
   1d4ac:	00078513          	mv	a0,a5
   1d4b0:	f8091ee3          	bnez	s2,1d44c <__sfvwrite_r+0x124>
   1d4b4:	0004bc03          	ld	s8,0(s1)
   1d4b8:	0084b903          	ld	s2,8(s1)
   1d4bc:	01048493          	add	s1,s1,16
   1d4c0:	f85ff06f          	j	1d444 <__sfvwrite_r+0x11c>
   1d4c4:	00000993          	li	s3,0
   1d4c8:	00000513          	li	a0,0
   1d4cc:	00000c93          	li	s9,0
   1d4d0:	00000c13          	li	s8,0
   1d4d4:	0e0c0063          	beqz	s8,1d5b4 <__sfvwrite_r+0x28c>
   1d4d8:	0e050863          	beqz	a0,1d5c8 <__sfvwrite_r+0x2a0>
   1d4dc:	00098b93          	mv	s7,s3
   1d4e0:	013c7463          	bgeu	s8,s3,1d4e8 <__sfvwrite_r+0x1c0>
   1d4e4:	000c0b93          	mv	s7,s8
   1d4e8:	00043503          	ld	a0,0(s0)
   1d4ec:	01843703          	ld	a4,24(s0)
   1d4f0:	00c42783          	lw	a5,12(s0)
   1d4f4:	02042683          	lw	a3,32(s0)
   1d4f8:	000b8913          	mv	s2,s7
   1d4fc:	00a77663          	bgeu	a4,a0,1d508 <__sfvwrite_r+0x1e0>
   1d500:	00d78abb          	addw	s5,a5,a3
   1d504:	0f7ac263          	blt	s5,s7,1d5e8 <__sfvwrite_r+0x2c0>
   1d508:	24dbc463          	blt	s7,a3,1d750 <__sfvwrite_r+0x428>
   1d50c:	04043783          	ld	a5,64(s0)
   1d510:	03043583          	ld	a1,48(s0)
   1d514:	000c8613          	mv	a2,s9
   1d518:	000a0513          	mv	a0,s4
   1d51c:	000780e7          	jalr	a5
   1d520:	00050913          	mv	s2,a0
   1d524:	06a05a63          	blez	a0,1d598 <__sfvwrite_r+0x270>
   1d528:	0005079b          	sext.w	a5,a0
   1d52c:	40f989bb          	subw	s3,s3,a5
   1d530:	00100513          	li	a0,1
   1d534:	04098a63          	beqz	s3,1d588 <__sfvwrite_r+0x260>
   1d538:	010b3783          	ld	a5,16(s6)
   1d53c:	012c8cb3          	add	s9,s9,s2
   1d540:	412c0c33          	sub	s8,s8,s2
   1d544:	412787b3          	sub	a5,a5,s2
   1d548:	00fb3823          	sd	a5,16(s6)
   1d54c:	f80794e3          	bnez	a5,1d4d4 <__sfvwrite_r+0x1ac>
   1d550:	00000513          	li	a0,0
   1d554:	05813083          	ld	ra,88(sp)
   1d558:	05013403          	ld	s0,80(sp)
   1d55c:	04813483          	ld	s1,72(sp)
   1d560:	04013903          	ld	s2,64(sp)
   1d564:	03813983          	ld	s3,56(sp)
   1d568:	03013a03          	ld	s4,48(sp)
   1d56c:	02813a83          	ld	s5,40(sp)
   1d570:	02013b03          	ld	s6,32(sp)
   1d574:	01813b83          	ld	s7,24(sp)
   1d578:	01013c03          	ld	s8,16(sp)
   1d57c:	00813c83          	ld	s9,8(sp)
   1d580:	06010113          	add	sp,sp,96
   1d584:	00008067          	ret
   1d588:	00040593          	mv	a1,s0
   1d58c:	000a0513          	mv	a0,s4
   1d590:	88cf60ef          	jal	1361c <_fflush_r>
   1d594:	fa0502e3          	beqz	a0,1d538 <__sfvwrite_r+0x210>
   1d598:	01041783          	lh	a5,16(s0)
   1d59c:	0407e793          	or	a5,a5,64
   1d5a0:	00f41823          	sh	a5,16(s0)
   1d5a4:	fff00513          	li	a0,-1
   1d5a8:	fadff06f          	j	1d554 <__sfvwrite_r+0x22c>
   1d5ac:	00000513          	li	a0,0
   1d5b0:	00008067          	ret
   1d5b4:	0084bc03          	ld	s8,8(s1)
   1d5b8:	00048793          	mv	a5,s1
   1d5bc:	01048493          	add	s1,s1,16
   1d5c0:	fe0c0ae3          	beqz	s8,1d5b4 <__sfvwrite_r+0x28c>
   1d5c4:	0007bc83          	ld	s9,0(a5)
   1d5c8:	000c0613          	mv	a2,s8
   1d5cc:	00a00593          	li	a1,10
   1d5d0:	000c8513          	mv	a0,s9
   1d5d4:	af8fa0ef          	jal	178cc <memchr>
   1d5d8:	1e050063          	beqz	a0,1d7b8 <__sfvwrite_r+0x490>
   1d5dc:	00150513          	add	a0,a0,1
   1d5e0:	419509bb          	subw	s3,a0,s9
   1d5e4:	ef9ff06f          	j	1d4dc <__sfvwrite_r+0x1b4>
   1d5e8:	000c8593          	mv	a1,s9
   1d5ec:	000a8613          	mv	a2,s5
   1d5f0:	448000ef          	jal	1da38 <memmove>
   1d5f4:	00043783          	ld	a5,0(s0)
   1d5f8:	00040593          	mv	a1,s0
   1d5fc:	000a0513          	mv	a0,s4
   1d600:	015787b3          	add	a5,a5,s5
   1d604:	00f43023          	sd	a5,0(s0)
   1d608:	814f60ef          	jal	1361c <_fflush_r>
   1d60c:	f80516e3          	bnez	a0,1d598 <__sfvwrite_r+0x270>
   1d610:	000a8793          	mv	a5,s5
   1d614:	000a8913          	mv	s2,s5
   1d618:	f15ff06f          	j	1d52c <__sfvwrite_r+0x204>
   1d61c:	01843703          	ld	a4,24(s0)
   1d620:	04f76263          	bltu	a4,a5,1d664 <__sfvwrite_r+0x33c>
   1d624:	02042703          	lw	a4,32(s0)
   1d628:	02e96e63          	bltu	s2,a4,1d664 <__sfvwrite_r+0x33c>
   1d62c:	00090693          	mv	a3,s2
   1d630:	012af463          	bgeu	s5,s2,1d638 <__sfvwrite_r+0x310>
   1d634:	000a8693          	mv	a3,s5
   1d638:	02e6e73b          	remw	a4,a3,a4
   1d63c:	04043783          	ld	a5,64(s0)
   1d640:	03043583          	ld	a1,48(s0)
   1d644:	000c0613          	mv	a2,s8
   1d648:	000a0513          	mv	a0,s4
   1d64c:	40e686bb          	subw	a3,a3,a4
   1d650:	000780e7          	jalr	a5
   1d654:	00050993          	mv	s3,a0
   1d658:	f4a050e3          	blez	a0,1d598 <__sfvwrite_r+0x270>
   1d65c:	41390933          	sub	s2,s2,s3
   1d660:	e2dff06f          	j	1d48c <__sfvwrite_r+0x164>
   1d664:	000b8993          	mv	s3,s7
   1d668:	01797463          	bgeu	s2,s7,1d670 <__sfvwrite_r+0x348>
   1d66c:	00090993          	mv	s3,s2
   1d670:	00078513          	mv	a0,a5
   1d674:	00098613          	mv	a2,s3
   1d678:	000c0593          	mv	a1,s8
   1d67c:	3bc000ef          	jal	1da38 <memmove>
   1d680:	00c42703          	lw	a4,12(s0)
   1d684:	00043783          	ld	a5,0(s0)
   1d688:	413706bb          	subw	a3,a4,s3
   1d68c:	013787b3          	add	a5,a5,s3
   1d690:	00d42623          	sw	a3,12(s0)
   1d694:	00f43023          	sd	a5,0(s0)
   1d698:	fc0692e3          	bnez	a3,1d65c <__sfvwrite_r+0x334>
   1d69c:	00040593          	mv	a1,s0
   1d6a0:	000a0513          	mv	a0,s4
   1d6a4:	f79f50ef          	jal	1361c <_fflush_r>
   1d6a8:	ee0518e3          	bnez	a0,1d598 <__sfvwrite_r+0x270>
   1d6ac:	41390933          	sub	s2,s2,s3
   1d6b0:	dddff06f          	j	1d48c <__sfvwrite_r+0x164>
   1d6b4:	48077693          	and	a3,a4,1152
   1d6b8:	0c068263          	beqz	a3,1d77c <__sfvwrite_r+0x454>
   1d6bc:	02042603          	lw	a2,32(s0)
   1d6c0:	01843583          	ld	a1,24(s0)
   1d6c4:	0016169b          	sllw	a3,a2,0x1
   1d6c8:	00c686bb          	addw	a3,a3,a2
   1d6cc:	40b787b3          	sub	a5,a5,a1
   1d6d0:	01f6d99b          	srlw	s3,a3,0x1f
   1d6d4:	00078b9b          	sext.w	s7,a5
   1d6d8:	00d989bb          	addw	s3,s3,a3
   1d6dc:	001b8693          	add	a3,s7,1
   1d6e0:	4019d99b          	sraw	s3,s3,0x1
   1d6e4:	012686b3          	add	a3,a3,s2
   1d6e8:	00d9f663          	bgeu	s3,a3,1d6f4 <__sfvwrite_r+0x3cc>
   1d6ec:	0017879b          	addw	a5,a5,1
   1d6f0:	012789bb          	addw	s3,a5,s2
   1d6f4:	40077713          	and	a4,a4,1024
   1d6f8:	08070663          	beqz	a4,1d784 <__sfvwrite_r+0x45c>
   1d6fc:	00098593          	mv	a1,s3
   1d700:	000a0513          	mv	a0,s4
   1d704:	97df90ef          	jal	17080 <_malloc_r>
   1d708:	00050c93          	mv	s9,a0
   1d70c:	0a050a63          	beqz	a0,1d7c0 <__sfvwrite_r+0x498>
   1d710:	01843583          	ld	a1,24(s0)
   1d714:	000b8613          	mv	a2,s7
   1d718:	17c000ef          	jal	1d894 <memcpy>
   1d71c:	01045783          	lhu	a5,16(s0)
   1d720:	b7f7f793          	and	a5,a5,-1153
   1d724:	0807e793          	or	a5,a5,128
   1d728:	00f41823          	sh	a5,16(s0)
   1d72c:	017c8533          	add	a0,s9,s7
   1d730:	41798bbb          	subw	s7,s3,s7
   1d734:	01943c23          	sd	s9,24(s0)
   1d738:	01742623          	sw	s7,12(s0)
   1d73c:	00a43023          	sd	a0,0(s0)
   1d740:	03342023          	sw	s3,32(s0)
   1d744:	00090c93          	mv	s9,s2
   1d748:	00090b93          	mv	s7,s2
   1d74c:	d15ff06f          	j	1d460 <__sfvwrite_r+0x138>
   1d750:	000b8613          	mv	a2,s7
   1d754:	000c8593          	mv	a1,s9
   1d758:	2e0000ef          	jal	1da38 <memmove>
   1d75c:	00c42683          	lw	a3,12(s0)
   1d760:	00043703          	ld	a4,0(s0)
   1d764:	000b879b          	sext.w	a5,s7
   1d768:	417686bb          	subw	a3,a3,s7
   1d76c:	01770733          	add	a4,a4,s7
   1d770:	00d42623          	sw	a3,12(s0)
   1d774:	00e43023          	sd	a4,0(s0)
   1d778:	db5ff06f          	j	1d52c <__sfvwrite_r+0x204>
   1d77c:	000b8c93          	mv	s9,s7
   1d780:	ce1ff06f          	j	1d460 <__sfvwrite_r+0x138>
   1d784:	00098613          	mv	a2,s3
   1d788:	000a0513          	mv	a0,s4
   1d78c:	430000ef          	jal	1dbbc <_realloc_r>
   1d790:	00050c93          	mv	s9,a0
   1d794:	f8051ce3          	bnez	a0,1d72c <__sfvwrite_r+0x404>
   1d798:	01843583          	ld	a1,24(s0)
   1d79c:	000a0513          	mv	a0,s4
   1d7a0:	c70f60ef          	jal	13c10 <_free_r>
   1d7a4:	01041783          	lh	a5,16(s0)
   1d7a8:	00c00713          	li	a4,12
   1d7ac:	00ea2023          	sw	a4,0(s4)
   1d7b0:	f7f7f793          	and	a5,a5,-129
   1d7b4:	de9ff06f          	j	1d59c <__sfvwrite_r+0x274>
   1d7b8:	001c099b          	addw	s3,s8,1
   1d7bc:	d21ff06f          	j	1d4dc <__sfvwrite_r+0x1b4>
   1d7c0:	00c00713          	li	a4,12
   1d7c4:	01041783          	lh	a5,16(s0)
   1d7c8:	00ea2023          	sw	a4,0(s4)
   1d7cc:	dd1ff06f          	j	1d59c <__sfvwrite_r+0x274>

000000000001d7d0 <_isatty_r>:
   1d7d0:	fe010113          	add	sp,sp,-32
   1d7d4:	00813823          	sd	s0,16(sp)
   1d7d8:	00913423          	sd	s1,8(sp)
   1d7dc:	00050413          	mv	s0,a0
   1d7e0:	00058513          	mv	a0,a1
   1d7e4:	00113c23          	sd	ra,24(sp)
   1d7e8:	7801a823          	sw	zero,1936(gp) # 25b10 <errno>
   1d7ec:	74c020ef          	jal	1ff38 <_isatty>
   1d7f0:	fff00793          	li	a5,-1
   1d7f4:	00f50c63          	beq	a0,a5,1d80c <_isatty_r+0x3c>
   1d7f8:	01813083          	ld	ra,24(sp)
   1d7fc:	01013403          	ld	s0,16(sp)
   1d800:	00813483          	ld	s1,8(sp)
   1d804:	02010113          	add	sp,sp,32
   1d808:	00008067          	ret
   1d80c:	7901a783          	lw	a5,1936(gp) # 25b10 <errno>
   1d810:	fe0784e3          	beqz	a5,1d7f8 <_isatty_r+0x28>
   1d814:	01813083          	ld	ra,24(sp)
   1d818:	00f42023          	sw	a5,0(s0)
   1d81c:	01013403          	ld	s0,16(sp)
   1d820:	00813483          	ld	s1,8(sp)
   1d824:	02010113          	add	sp,sp,32
   1d828:	00008067          	ret

000000000001d82c <_lseek_r>:
   1d82c:	fe010113          	add	sp,sp,-32
   1d830:	00058713          	mv	a4,a1
   1d834:	00813823          	sd	s0,16(sp)
   1d838:	00913423          	sd	s1,8(sp)
   1d83c:	00060593          	mv	a1,a2
   1d840:	00050413          	mv	s0,a0
   1d844:	00068613          	mv	a2,a3
   1d848:	00070513          	mv	a0,a4
   1d84c:	00113c23          	sd	ra,24(sp)
   1d850:	7801a823          	sw	zero,1936(gp) # 25b10 <errno>
   1d854:	748020ef          	jal	1ff9c <_lseek>
   1d858:	fff00793          	li	a5,-1
   1d85c:	00f50c63          	beq	a0,a5,1d874 <_lseek_r+0x48>
   1d860:	01813083          	ld	ra,24(sp)
   1d864:	01013403          	ld	s0,16(sp)
   1d868:	00813483          	ld	s1,8(sp)
   1d86c:	02010113          	add	sp,sp,32
   1d870:	00008067          	ret
   1d874:	7901a783          	lw	a5,1936(gp) # 25b10 <errno>
   1d878:	fe0784e3          	beqz	a5,1d860 <_lseek_r+0x34>
   1d87c:	01813083          	ld	ra,24(sp)
   1d880:	00f42023          	sw	a5,0(s0)
   1d884:	01013403          	ld	s0,16(sp)
   1d888:	00813483          	ld	s1,8(sp)
   1d88c:	02010113          	add	sp,sp,32
   1d890:	00008067          	ret

000000000001d894 <memcpy>:
   1d894:	00b547b3          	xor	a5,a0,a1
   1d898:	0077f793          	and	a5,a5,7
   1d89c:	00c508b3          	add	a7,a0,a2
   1d8a0:	06079463          	bnez	a5,1d908 <memcpy+0x74>
   1d8a4:	00700793          	li	a5,7
   1d8a8:	06c7f063          	bgeu	a5,a2,1d908 <memcpy+0x74>
   1d8ac:	00757793          	and	a5,a0,7
   1d8b0:	00050713          	mv	a4,a0
   1d8b4:	06079a63          	bnez	a5,1d928 <memcpy+0x94>
   1d8b8:	ff88f613          	and	a2,a7,-8
   1d8bc:	40e606b3          	sub	a3,a2,a4
   1d8c0:	04000793          	li	a5,64
   1d8c4:	08d7ce63          	blt	a5,a3,1d960 <memcpy+0xcc>
   1d8c8:	00058693          	mv	a3,a1
   1d8cc:	00070793          	mv	a5,a4
   1d8d0:	02c77863          	bgeu	a4,a2,1d900 <memcpy+0x6c>
   1d8d4:	0006b803          	ld	a6,0(a3) # 2000 <exit-0xe0e8>
   1d8d8:	00878793          	add	a5,a5,8
   1d8dc:	00868693          	add	a3,a3,8
   1d8e0:	ff07bc23          	sd	a6,-8(a5)
   1d8e4:	fec7e8e3          	bltu	a5,a2,1d8d4 <memcpy+0x40>
   1d8e8:	fff60793          	add	a5,a2,-1
   1d8ec:	40e787b3          	sub	a5,a5,a4
   1d8f0:	ff87f793          	and	a5,a5,-8
   1d8f4:	00878793          	add	a5,a5,8
   1d8f8:	00f70733          	add	a4,a4,a5
   1d8fc:	00f585b3          	add	a1,a1,a5
   1d900:	01176863          	bltu	a4,a7,1d910 <memcpy+0x7c>
   1d904:	00008067          	ret
   1d908:	00050713          	mv	a4,a0
   1d90c:	05157863          	bgeu	a0,a7,1d95c <memcpy+0xc8>
   1d910:	0005c783          	lbu	a5,0(a1)
   1d914:	00170713          	add	a4,a4,1
   1d918:	00158593          	add	a1,a1,1
   1d91c:	fef70fa3          	sb	a5,-1(a4)
   1d920:	fee898e3          	bne	a7,a4,1d910 <memcpy+0x7c>
   1d924:	00008067          	ret
   1d928:	0005c683          	lbu	a3,0(a1)
   1d92c:	00170713          	add	a4,a4,1
   1d930:	00777793          	and	a5,a4,7
   1d934:	fed70fa3          	sb	a3,-1(a4)
   1d938:	00158593          	add	a1,a1,1
   1d93c:	f6078ee3          	beqz	a5,1d8b8 <memcpy+0x24>
   1d940:	0005c683          	lbu	a3,0(a1)
   1d944:	00170713          	add	a4,a4,1
   1d948:	00777793          	and	a5,a4,7
   1d94c:	fed70fa3          	sb	a3,-1(a4)
   1d950:	00158593          	add	a1,a1,1
   1d954:	fc079ae3          	bnez	a5,1d928 <memcpy+0x94>
   1d958:	f61ff06f          	j	1d8b8 <memcpy+0x24>
   1d95c:	00008067          	ret
   1d960:	ff010113          	add	sp,sp,-16
   1d964:	00813423          	sd	s0,8(sp)
   1d968:	04000413          	li	s0,64
   1d96c:	0005b383          	ld	t2,0(a1)
   1d970:	0085b283          	ld	t0,8(a1)
   1d974:	0105bf83          	ld	t6,16(a1)
   1d978:	0185bf03          	ld	t5,24(a1)
   1d97c:	0205be83          	ld	t4,32(a1)
   1d980:	0285be03          	ld	t3,40(a1)
   1d984:	0305b303          	ld	t1,48(a1)
   1d988:	0385b803          	ld	a6,56(a1)
   1d98c:	0405b683          	ld	a3,64(a1)
   1d990:	04870713          	add	a4,a4,72
   1d994:	40e607b3          	sub	a5,a2,a4
   1d998:	fa773c23          	sd	t2,-72(a4)
   1d99c:	fc573023          	sd	t0,-64(a4)
   1d9a0:	fdf73423          	sd	t6,-56(a4)
   1d9a4:	fde73823          	sd	t5,-48(a4)
   1d9a8:	fdd73c23          	sd	t4,-40(a4)
   1d9ac:	ffc73023          	sd	t3,-32(a4)
   1d9b0:	fe673423          	sd	t1,-24(a4)
   1d9b4:	ff073823          	sd	a6,-16(a4)
   1d9b8:	fed73c23          	sd	a3,-8(a4)
   1d9bc:	04858593          	add	a1,a1,72
   1d9c0:	faf446e3          	blt	s0,a5,1d96c <memcpy+0xd8>
   1d9c4:	00058693          	mv	a3,a1
   1d9c8:	00070793          	mv	a5,a4
   1d9cc:	02c77863          	bgeu	a4,a2,1d9fc <memcpy+0x168>
   1d9d0:	0006b803          	ld	a6,0(a3)
   1d9d4:	00878793          	add	a5,a5,8
   1d9d8:	00868693          	add	a3,a3,8
   1d9dc:	ff07bc23          	sd	a6,-8(a5)
   1d9e0:	fec7e8e3          	bltu	a5,a2,1d9d0 <memcpy+0x13c>
   1d9e4:	fff60793          	add	a5,a2,-1
   1d9e8:	40e787b3          	sub	a5,a5,a4
   1d9ec:	ff87f793          	and	a5,a5,-8
   1d9f0:	00878793          	add	a5,a5,8
   1d9f4:	00f70733          	add	a4,a4,a5
   1d9f8:	00f585b3          	add	a1,a1,a5
   1d9fc:	01176863          	bltu	a4,a7,1da0c <memcpy+0x178>
   1da00:	00813403          	ld	s0,8(sp)
   1da04:	01010113          	add	sp,sp,16
   1da08:	00008067          	ret
   1da0c:	0005c783          	lbu	a5,0(a1)
   1da10:	00170713          	add	a4,a4,1
   1da14:	00158593          	add	a1,a1,1
   1da18:	fef70fa3          	sb	a5,-1(a4)
   1da1c:	fee882e3          	beq	a7,a4,1da00 <memcpy+0x16c>
   1da20:	0005c783          	lbu	a5,0(a1)
   1da24:	00170713          	add	a4,a4,1
   1da28:	00158593          	add	a1,a1,1
   1da2c:	fef70fa3          	sb	a5,-1(a4)
   1da30:	fce89ee3          	bne	a7,a4,1da0c <memcpy+0x178>
   1da34:	fcdff06f          	j	1da00 <memcpy+0x16c>

000000000001da38 <memmove>:
   1da38:	02a5f663          	bgeu	a1,a0,1da64 <memmove+0x2c>
   1da3c:	00c58733          	add	a4,a1,a2
   1da40:	02e57263          	bgeu	a0,a4,1da64 <memmove+0x2c>
   1da44:	00c507b3          	add	a5,a0,a2
   1da48:	04060663          	beqz	a2,1da94 <memmove+0x5c>
   1da4c:	fff74683          	lbu	a3,-1(a4)
   1da50:	fff78793          	add	a5,a5,-1
   1da54:	fff70713          	add	a4,a4,-1
   1da58:	00d78023          	sb	a3,0(a5)
   1da5c:	fef518e3          	bne	a0,a5,1da4c <memmove+0x14>
   1da60:	00008067          	ret
   1da64:	01f00793          	li	a5,31
   1da68:	02c7e863          	bltu	a5,a2,1da98 <memmove+0x60>
   1da6c:	00050793          	mv	a5,a0
   1da70:	fff60693          	add	a3,a2,-1
   1da74:	0c060a63          	beqz	a2,1db48 <memmove+0x110>
   1da78:	00168693          	add	a3,a3,1
   1da7c:	00d786b3          	add	a3,a5,a3
   1da80:	0005c703          	lbu	a4,0(a1)
   1da84:	00178793          	add	a5,a5,1
   1da88:	00158593          	add	a1,a1,1
   1da8c:	fee78fa3          	sb	a4,-1(a5)
   1da90:	fed798e3          	bne	a5,a3,1da80 <memmove+0x48>
   1da94:	00008067          	ret
   1da98:	00b567b3          	or	a5,a0,a1
   1da9c:	0077f793          	and	a5,a5,7
   1daa0:	08079e63          	bnez	a5,1db3c <memmove+0x104>
   1daa4:	fe060893          	add	a7,a2,-32
   1daa8:	fe08f893          	and	a7,a7,-32
   1daac:	02088893          	add	a7,a7,32
   1dab0:	011507b3          	add	a5,a0,a7
   1dab4:	00058693          	mv	a3,a1
   1dab8:	00050713          	mv	a4,a0
   1dabc:	0006b803          	ld	a6,0(a3)
   1dac0:	02068693          	add	a3,a3,32
   1dac4:	02070713          	add	a4,a4,32
   1dac8:	ff073023          	sd	a6,-32(a4)
   1dacc:	fe86b803          	ld	a6,-24(a3)
   1dad0:	ff073423          	sd	a6,-24(a4)
   1dad4:	ff06b803          	ld	a6,-16(a3)
   1dad8:	ff073823          	sd	a6,-16(a4)
   1dadc:	ff86b803          	ld	a6,-8(a3)
   1dae0:	ff073c23          	sd	a6,-8(a4)
   1dae4:	fcf71ce3          	bne	a4,a5,1dabc <memmove+0x84>
   1dae8:	01867713          	and	a4,a2,24
   1daec:	011585b3          	add	a1,a1,a7
   1daf0:	01f67813          	and	a6,a2,31
   1daf4:	04070c63          	beqz	a4,1db4c <memmove+0x114>
   1daf8:	00058693          	mv	a3,a1
   1dafc:	00078713          	mv	a4,a5
   1db00:	01078eb3          	add	t4,a5,a6
   1db04:	00700e13          	li	t3,7
   1db08:	0006b303          	ld	t1,0(a3)
   1db0c:	00870713          	add	a4,a4,8
   1db10:	40ee88b3          	sub	a7,t4,a4
   1db14:	fe673c23          	sd	t1,-8(a4)
   1db18:	00868693          	add	a3,a3,8
   1db1c:	ff1e66e3          	bltu	t3,a7,1db08 <memmove+0xd0>
   1db20:	ff880713          	add	a4,a6,-8
   1db24:	ff877713          	and	a4,a4,-8
   1db28:	00870713          	add	a4,a4,8
   1db2c:	00767613          	and	a2,a2,7
   1db30:	00e787b3          	add	a5,a5,a4
   1db34:	00e585b3          	add	a1,a1,a4
   1db38:	f39ff06f          	j	1da70 <memmove+0x38>
   1db3c:	fff60693          	add	a3,a2,-1
   1db40:	00050793          	mv	a5,a0
   1db44:	f35ff06f          	j	1da78 <memmove+0x40>
   1db48:	00008067          	ret
   1db4c:	00080613          	mv	a2,a6
   1db50:	f21ff06f          	j	1da70 <memmove+0x38>

000000000001db54 <_read_r>:
   1db54:	fe010113          	add	sp,sp,-32
   1db58:	00058713          	mv	a4,a1
   1db5c:	00813823          	sd	s0,16(sp)
   1db60:	00913423          	sd	s1,8(sp)
   1db64:	00060593          	mv	a1,a2
   1db68:	00050413          	mv	s0,a0
   1db6c:	00068613          	mv	a2,a3
   1db70:	00070513          	mv	a0,a4
   1db74:	00113c23          	sd	ra,24(sp)
   1db78:	7801a823          	sw	zero,1936(gp) # 25b10 <errno>
   1db7c:	464020ef          	jal	1ffe0 <_read>
   1db80:	fff00793          	li	a5,-1
   1db84:	00f50c63          	beq	a0,a5,1db9c <_read_r+0x48>
   1db88:	01813083          	ld	ra,24(sp)
   1db8c:	01013403          	ld	s0,16(sp)
   1db90:	00813483          	ld	s1,8(sp)
   1db94:	02010113          	add	sp,sp,32
   1db98:	00008067          	ret
   1db9c:	7901a783          	lw	a5,1936(gp) # 25b10 <errno>
   1dba0:	fe0784e3          	beqz	a5,1db88 <_read_r+0x34>
   1dba4:	01813083          	ld	ra,24(sp)
   1dba8:	00f42023          	sw	a5,0(s0)
   1dbac:	01013403          	ld	s0,16(sp)
   1dbb0:	00813483          	ld	s1,8(sp)
   1dbb4:	02010113          	add	sp,sp,32
   1dbb8:	00008067          	ret

000000000001dbbc <_realloc_r>:
   1dbbc:	fb010113          	add	sp,sp,-80
   1dbc0:	03213823          	sd	s2,48(sp)
   1dbc4:	04113423          	sd	ra,72(sp)
   1dbc8:	04813023          	sd	s0,64(sp)
   1dbcc:	02913c23          	sd	s1,56(sp)
   1dbd0:	03313423          	sd	s3,40(sp)
   1dbd4:	03413023          	sd	s4,32(sp)
   1dbd8:	01513c23          	sd	s5,24(sp)
   1dbdc:	01613823          	sd	s6,16(sp)
   1dbe0:	01713423          	sd	s7,8(sp)
   1dbe4:	01813023          	sd	s8,0(sp)
   1dbe8:	00060913          	mv	s2,a2
   1dbec:	1c058663          	beqz	a1,1ddb8 <_realloc_r+0x1fc>
   1dbf0:	00058413          	mv	s0,a1
   1dbf4:	00050993          	mv	s3,a0
   1dbf8:	d99f90ef          	jal	17990 <__malloc_lock>
   1dbfc:	ff843783          	ld	a5,-8(s0)
   1dc00:	01790493          	add	s1,s2,23
   1dc04:	02e00713          	li	a4,46
   1dc08:	ff040a93          	add	s5,s0,-16
   1dc0c:	ffc7fa13          	and	s4,a5,-4
   1dc10:	0e977a63          	bgeu	a4,s1,1dd04 <_realloc_r+0x148>
   1dc14:	80000737          	lui	a4,0x80000
   1dc18:	ff04f493          	and	s1,s1,-16
   1dc1c:	fff74713          	not	a4,a4
   1dc20:	0e976663          	bltu	a4,s1,1dd0c <_realloc_r+0x150>
   1dc24:	0f24e463          	bltu	s1,s2,1dd0c <_realloc_r+0x150>
   1dc28:	109a5463          	bge	s4,s1,1dd30 <_realloc_r+0x174>
   1dc2c:	00025737          	lui	a4,0x25
   1dc30:	27070c13          	add	s8,a4,624 # 25270 <__malloc_av_>
   1dc34:	010c3603          	ld	a2,16(s8)
   1dc38:	014a86b3          	add	a3,s5,s4
   1dc3c:	0086b703          	ld	a4,8(a3)
   1dc40:	1cd60e63          	beq	a2,a3,1de1c <_realloc_r+0x260>
   1dc44:	ffe77613          	and	a2,a4,-2
   1dc48:	00c68633          	add	a2,a3,a2
   1dc4c:	00863603          	ld	a2,8(a2)
   1dc50:	00167613          	and	a2,a2,1
   1dc54:	14061463          	bnez	a2,1dd9c <_realloc_r+0x1e0>
   1dc58:	ffc77713          	and	a4,a4,-4
   1dc5c:	00ea0633          	add	a2,s4,a4
   1dc60:	0a965e63          	bge	a2,s1,1dd1c <_realloc_r+0x160>
   1dc64:	0017f793          	and	a5,a5,1
   1dc68:	02079463          	bnez	a5,1dc90 <_realloc_r+0xd4>
   1dc6c:	ff043b83          	ld	s7,-16(s0)
   1dc70:	417a8bb3          	sub	s7,s5,s7
   1dc74:	008bb783          	ld	a5,8(s7)
   1dc78:	ffc7f793          	and	a5,a5,-4
   1dc7c:	00f70733          	add	a4,a4,a5
   1dc80:	01470b33          	add	s6,a4,s4
   1dc84:	329b5463          	bge	s6,s1,1dfac <_realloc_r+0x3f0>
   1dc88:	00fa0b33          	add	s6,s4,a5
   1dc8c:	289b5663          	bge	s6,s1,1df18 <_realloc_r+0x35c>
   1dc90:	00090593          	mv	a1,s2
   1dc94:	00098513          	mv	a0,s3
   1dc98:	be8f90ef          	jal	17080 <_malloc_r>
   1dc9c:	00050913          	mv	s2,a0
   1dca0:	40050263          	beqz	a0,1e0a4 <_realloc_r+0x4e8>
   1dca4:	ff843783          	ld	a5,-8(s0)
   1dca8:	ff050713          	add	a4,a0,-16
   1dcac:	ffe7f793          	and	a5,a5,-2
   1dcb0:	00fa87b3          	add	a5,s5,a5
   1dcb4:	24e78a63          	beq	a5,a4,1df08 <_realloc_r+0x34c>
   1dcb8:	ff8a0613          	add	a2,s4,-8
   1dcbc:	04800793          	li	a5,72
   1dcc0:	2ec7e063          	bltu	a5,a2,1dfa0 <_realloc_r+0x3e4>
   1dcc4:	02700713          	li	a4,39
   1dcc8:	20c76e63          	bltu	a4,a2,1dee4 <_realloc_r+0x328>
   1dccc:	00050793          	mv	a5,a0
   1dcd0:	00040713          	mv	a4,s0
   1dcd4:	00073683          	ld	a3,0(a4)
   1dcd8:	00d7b023          	sd	a3,0(a5)
   1dcdc:	00873683          	ld	a3,8(a4)
   1dce0:	00d7b423          	sd	a3,8(a5)
   1dce4:	01073703          	ld	a4,16(a4)
   1dce8:	00e7b823          	sd	a4,16(a5)
   1dcec:	00098513          	mv	a0,s3
   1dcf0:	00040593          	mv	a1,s0
   1dcf4:	f1df50ef          	jal	13c10 <_free_r>
   1dcf8:	00098513          	mv	a0,s3
   1dcfc:	c99f90ef          	jal	17994 <__malloc_unlock>
   1dd00:	0680006f          	j	1dd68 <_realloc_r+0x1ac>
   1dd04:	02000493          	li	s1,32
   1dd08:	f324f0e3          	bgeu	s1,s2,1dc28 <_realloc_r+0x6c>
   1dd0c:	00c00793          	li	a5,12
   1dd10:	00f9a023          	sw	a5,0(s3)
   1dd14:	00000913          	li	s2,0
   1dd18:	0500006f          	j	1dd68 <_realloc_r+0x1ac>
   1dd1c:	0186b783          	ld	a5,24(a3)
   1dd20:	0106b703          	ld	a4,16(a3)
   1dd24:	00060a13          	mv	s4,a2
   1dd28:	00f73c23          	sd	a5,24(a4)
   1dd2c:	00e7b823          	sd	a4,16(a5)
   1dd30:	008ab783          	ld	a5,8(s5) # ffffffff80000008 <__BSS_END__+0xffffffff7ffda488>
   1dd34:	409a06b3          	sub	a3,s4,s1
   1dd38:	01f00613          	li	a2,31
   1dd3c:	0017f793          	and	a5,a5,1
   1dd40:	014a8733          	add	a4,s5,s4
   1dd44:	0ad66463          	bltu	a2,a3,1ddec <_realloc_r+0x230>
   1dd48:	0147e7b3          	or	a5,a5,s4
   1dd4c:	00fab423          	sd	a5,8(s5)
   1dd50:	00873783          	ld	a5,8(a4)
   1dd54:	0017e793          	or	a5,a5,1
   1dd58:	00f73423          	sd	a5,8(a4)
   1dd5c:	00098513          	mv	a0,s3
   1dd60:	c35f90ef          	jal	17994 <__malloc_unlock>
   1dd64:	00040913          	mv	s2,s0
   1dd68:	04813083          	ld	ra,72(sp)
   1dd6c:	04013403          	ld	s0,64(sp)
   1dd70:	03813483          	ld	s1,56(sp)
   1dd74:	02813983          	ld	s3,40(sp)
   1dd78:	02013a03          	ld	s4,32(sp)
   1dd7c:	01813a83          	ld	s5,24(sp)
   1dd80:	01013b03          	ld	s6,16(sp)
   1dd84:	00813b83          	ld	s7,8(sp)
   1dd88:	00013c03          	ld	s8,0(sp)
   1dd8c:	00090513          	mv	a0,s2
   1dd90:	03013903          	ld	s2,48(sp)
   1dd94:	05010113          	add	sp,sp,80
   1dd98:	00008067          	ret
   1dd9c:	0017f793          	and	a5,a5,1
   1dda0:	ee0798e3          	bnez	a5,1dc90 <_realloc_r+0xd4>
   1dda4:	ff043b83          	ld	s7,-16(s0)
   1dda8:	417a8bb3          	sub	s7,s5,s7
   1ddac:	008bb783          	ld	a5,8(s7)
   1ddb0:	ffc7f793          	and	a5,a5,-4
   1ddb4:	ed5ff06f          	j	1dc88 <_realloc_r+0xcc>
   1ddb8:	04013403          	ld	s0,64(sp)
   1ddbc:	04813083          	ld	ra,72(sp)
   1ddc0:	03813483          	ld	s1,56(sp)
   1ddc4:	03013903          	ld	s2,48(sp)
   1ddc8:	02813983          	ld	s3,40(sp)
   1ddcc:	02013a03          	ld	s4,32(sp)
   1ddd0:	01813a83          	ld	s5,24(sp)
   1ddd4:	01013b03          	ld	s6,16(sp)
   1ddd8:	00813b83          	ld	s7,8(sp)
   1dddc:	00013c03          	ld	s8,0(sp)
   1dde0:	00060593          	mv	a1,a2
   1dde4:	05010113          	add	sp,sp,80
   1dde8:	a98f906f          	j	17080 <_malloc_r>
   1ddec:	0097e7b3          	or	a5,a5,s1
   1ddf0:	00fab423          	sd	a5,8(s5)
   1ddf4:	009a85b3          	add	a1,s5,s1
   1ddf8:	0016e693          	or	a3,a3,1
   1ddfc:	00d5b423          	sd	a3,8(a1)
   1de00:	00873783          	ld	a5,8(a4)
   1de04:	01058593          	add	a1,a1,16
   1de08:	00098513          	mv	a0,s3
   1de0c:	0017e793          	or	a5,a5,1
   1de10:	00f73423          	sd	a5,8(a4)
   1de14:	dfdf50ef          	jal	13c10 <_free_r>
   1de18:	f45ff06f          	j	1dd5c <_realloc_r+0x1a0>
   1de1c:	ffc77713          	and	a4,a4,-4
   1de20:	014706b3          	add	a3,a4,s4
   1de24:	02048613          	add	a2,s1,32
   1de28:	22c6de63          	bge	a3,a2,1e064 <_realloc_r+0x4a8>
   1de2c:	0017f793          	and	a5,a5,1
   1de30:	e60790e3          	bnez	a5,1dc90 <_realloc_r+0xd4>
   1de34:	ff043b83          	ld	s7,-16(s0)
   1de38:	417a8bb3          	sub	s7,s5,s7
   1de3c:	008bb783          	ld	a5,8(s7)
   1de40:	ffc7f793          	and	a5,a5,-4
   1de44:	00f70733          	add	a4,a4,a5
   1de48:	01470b33          	add	s6,a4,s4
   1de4c:	e2cb4ee3          	blt	s6,a2,1dc88 <_realloc_r+0xcc>
   1de50:	018bb783          	ld	a5,24(s7)
   1de54:	010bb703          	ld	a4,16(s7)
   1de58:	ff8a0613          	add	a2,s4,-8
   1de5c:	04800693          	li	a3,72
   1de60:	00f73c23          	sd	a5,24(a4)
   1de64:	00e7b823          	sd	a4,16(a5)
   1de68:	010b8913          	add	s2,s7,16
   1de6c:	26c6e263          	bltu	a3,a2,1e0d0 <_realloc_r+0x514>
   1de70:	02700713          	li	a4,39
   1de74:	00090793          	mv	a5,s2
   1de78:	02c77263          	bgeu	a4,a2,1de9c <_realloc_r+0x2e0>
   1de7c:	00043703          	ld	a4,0(s0)
   1de80:	03700793          	li	a5,55
   1de84:	00ebb823          	sd	a4,16(s7)
   1de88:	00843703          	ld	a4,8(s0)
   1de8c:	00ebbc23          	sd	a4,24(s7)
   1de90:	24c7e863          	bltu	a5,a2,1e0e0 <_realloc_r+0x524>
   1de94:	01040413          	add	s0,s0,16
   1de98:	020b8793          	add	a5,s7,32
   1de9c:	00043703          	ld	a4,0(s0)
   1dea0:	00e7b023          	sd	a4,0(a5)
   1dea4:	00843703          	ld	a4,8(s0)
   1dea8:	00e7b423          	sd	a4,8(a5)
   1deac:	01043703          	ld	a4,16(s0)
   1deb0:	00e7b823          	sd	a4,16(a5)
   1deb4:	009b8733          	add	a4,s7,s1
   1deb8:	409b07b3          	sub	a5,s6,s1
   1debc:	00ec3823          	sd	a4,16(s8)
   1dec0:	0017e793          	or	a5,a5,1
   1dec4:	00f73423          	sd	a5,8(a4)
   1dec8:	008bb783          	ld	a5,8(s7)
   1decc:	00098513          	mv	a0,s3
   1ded0:	0017f793          	and	a5,a5,1
   1ded4:	0097e7b3          	or	a5,a5,s1
   1ded8:	00fbb423          	sd	a5,8(s7)
   1dedc:	ab9f90ef          	jal	17994 <__malloc_unlock>
   1dee0:	e89ff06f          	j	1dd68 <_realloc_r+0x1ac>
   1dee4:	00043683          	ld	a3,0(s0)
   1dee8:	03700713          	li	a4,55
   1deec:	00d53023          	sd	a3,0(a0)
   1def0:	00843683          	ld	a3,8(s0)
   1def4:	00d53423          	sd	a3,8(a0)
   1def8:	14c76663          	bltu	a4,a2,1e044 <_realloc_r+0x488>
   1defc:	01040713          	add	a4,s0,16
   1df00:	01050793          	add	a5,a0,16
   1df04:	dd1ff06f          	j	1dcd4 <_realloc_r+0x118>
   1df08:	ff853783          	ld	a5,-8(a0)
   1df0c:	ffc7f793          	and	a5,a5,-4
   1df10:	00fa0a33          	add	s4,s4,a5
   1df14:	e1dff06f          	j	1dd30 <_realloc_r+0x174>
   1df18:	018bb783          	ld	a5,24(s7)
   1df1c:	010bb703          	ld	a4,16(s7)
   1df20:	ff8a0613          	add	a2,s4,-8
   1df24:	04800693          	li	a3,72
   1df28:	00f73c23          	sd	a5,24(a4)
   1df2c:	00e7b823          	sd	a4,16(a5)
   1df30:	010b8913          	add	s2,s7,16
   1df34:	10c6e063          	bltu	a3,a2,1e034 <_realloc_r+0x478>
   1df38:	02700713          	li	a4,39
   1df3c:	00090793          	mv	a5,s2
   1df40:	02c77c63          	bgeu	a4,a2,1df78 <_realloc_r+0x3bc>
   1df44:	00043703          	ld	a4,0(s0)
   1df48:	03700793          	li	a5,55
   1df4c:	00ebb823          	sd	a4,16(s7)
   1df50:	00843703          	ld	a4,8(s0)
   1df54:	00ebbc23          	sd	a4,24(s7)
   1df58:	14c7f063          	bgeu	a5,a2,1e098 <_realloc_r+0x4dc>
   1df5c:	01043783          	ld	a5,16(s0)
   1df60:	02fbb023          	sd	a5,32(s7)
   1df64:	01843783          	ld	a5,24(s0)
   1df68:	02fbb423          	sd	a5,40(s7)
   1df6c:	0ad60663          	beq	a2,a3,1e018 <_realloc_r+0x45c>
   1df70:	02040413          	add	s0,s0,32
   1df74:	030b8793          	add	a5,s7,48
   1df78:	00043703          	ld	a4,0(s0)
   1df7c:	00e7b023          	sd	a4,0(a5)
   1df80:	00843703          	ld	a4,8(s0)
   1df84:	00e7b423          	sd	a4,8(a5)
   1df88:	01043703          	ld	a4,16(s0)
   1df8c:	00e7b823          	sd	a4,16(a5)
   1df90:	00090413          	mv	s0,s2
   1df94:	000b0a13          	mv	s4,s6
   1df98:	000b8a93          	mv	s5,s7
   1df9c:	d95ff06f          	j	1dd30 <_realloc_r+0x174>
   1dfa0:	00040593          	mv	a1,s0
   1dfa4:	a95ff0ef          	jal	1da38 <memmove>
   1dfa8:	d45ff06f          	j	1dcec <_realloc_r+0x130>
   1dfac:	0186b783          	ld	a5,24(a3)
   1dfb0:	0106b703          	ld	a4,16(a3)
   1dfb4:	ff8a0613          	add	a2,s4,-8
   1dfb8:	04800693          	li	a3,72
   1dfbc:	00f73c23          	sd	a5,24(a4)
   1dfc0:	00e7b823          	sd	a4,16(a5)
   1dfc4:	010bb703          	ld	a4,16(s7)
   1dfc8:	018bb783          	ld	a5,24(s7)
   1dfcc:	010b8913          	add	s2,s7,16
   1dfd0:	00f73c23          	sd	a5,24(a4)
   1dfd4:	00e7b823          	sd	a4,16(a5)
   1dfd8:	04c6ee63          	bltu	a3,a2,1e034 <_realloc_r+0x478>
   1dfdc:	02700713          	li	a4,39
   1dfe0:	00090793          	mv	a5,s2
   1dfe4:	f8c77ae3          	bgeu	a4,a2,1df78 <_realloc_r+0x3bc>
   1dfe8:	00043703          	ld	a4,0(s0)
   1dfec:	03700793          	li	a5,55
   1dff0:	00ebb823          	sd	a4,16(s7)
   1dff4:	00843703          	ld	a4,8(s0)
   1dff8:	00ebbc23          	sd	a4,24(s7)
   1dffc:	08c7fe63          	bgeu	a5,a2,1e098 <_realloc_r+0x4dc>
   1e000:	01043703          	ld	a4,16(s0)
   1e004:	04800793          	li	a5,72
   1e008:	02ebb023          	sd	a4,32(s7)
   1e00c:	01843703          	ld	a4,24(s0)
   1e010:	02ebb423          	sd	a4,40(s7)
   1e014:	f4f61ee3          	bne	a2,a5,1df70 <_realloc_r+0x3b4>
   1e018:	02043703          	ld	a4,32(s0)
   1e01c:	040b8793          	add	a5,s7,64
   1e020:	03040413          	add	s0,s0,48
   1e024:	02ebb823          	sd	a4,48(s7)
   1e028:	ff843703          	ld	a4,-8(s0)
   1e02c:	02ebbc23          	sd	a4,56(s7)
   1e030:	f49ff06f          	j	1df78 <_realloc_r+0x3bc>
   1e034:	00040593          	mv	a1,s0
   1e038:	00090513          	mv	a0,s2
   1e03c:	9fdff0ef          	jal	1da38 <memmove>
   1e040:	f51ff06f          	j	1df90 <_realloc_r+0x3d4>
   1e044:	01043703          	ld	a4,16(s0)
   1e048:	00e53823          	sd	a4,16(a0)
   1e04c:	01843703          	ld	a4,24(s0)
   1e050:	00e53c23          	sd	a4,24(a0)
   1e054:	06f60063          	beq	a2,a5,1e0b4 <_realloc_r+0x4f8>
   1e058:	02040713          	add	a4,s0,32
   1e05c:	02050793          	add	a5,a0,32
   1e060:	c75ff06f          	j	1dcd4 <_realloc_r+0x118>
   1e064:	009a8ab3          	add	s5,s5,s1
   1e068:	409687b3          	sub	a5,a3,s1
   1e06c:	015c3823          	sd	s5,16(s8)
   1e070:	0017e793          	or	a5,a5,1
   1e074:	00fab423          	sd	a5,8(s5)
   1e078:	ff843783          	ld	a5,-8(s0)
   1e07c:	00098513          	mv	a0,s3
   1e080:	00040913          	mv	s2,s0
   1e084:	0017f793          	and	a5,a5,1
   1e088:	0097e7b3          	or	a5,a5,s1
   1e08c:	fef43c23          	sd	a5,-8(s0)
   1e090:	905f90ef          	jal	17994 <__malloc_unlock>
   1e094:	cd5ff06f          	j	1dd68 <_realloc_r+0x1ac>
   1e098:	01040413          	add	s0,s0,16
   1e09c:	020b8793          	add	a5,s7,32
   1e0a0:	ed9ff06f          	j	1df78 <_realloc_r+0x3bc>
   1e0a4:	00098513          	mv	a0,s3
   1e0a8:	8edf90ef          	jal	17994 <__malloc_unlock>
   1e0ac:	00000913          	li	s2,0
   1e0b0:	cb9ff06f          	j	1dd68 <_realloc_r+0x1ac>
   1e0b4:	02043683          	ld	a3,32(s0)
   1e0b8:	03040713          	add	a4,s0,48
   1e0bc:	03050793          	add	a5,a0,48
   1e0c0:	02d53023          	sd	a3,32(a0)
   1e0c4:	02843683          	ld	a3,40(s0)
   1e0c8:	02d53423          	sd	a3,40(a0)
   1e0cc:	c09ff06f          	j	1dcd4 <_realloc_r+0x118>
   1e0d0:	00040593          	mv	a1,s0
   1e0d4:	00090513          	mv	a0,s2
   1e0d8:	961ff0ef          	jal	1da38 <memmove>
   1e0dc:	dd9ff06f          	j	1deb4 <_realloc_r+0x2f8>
   1e0e0:	01043783          	ld	a5,16(s0)
   1e0e4:	02fbb023          	sd	a5,32(s7)
   1e0e8:	01843783          	ld	a5,24(s0)
   1e0ec:	02fbb423          	sd	a5,40(s7)
   1e0f0:	00d60863          	beq	a2,a3,1e100 <_realloc_r+0x544>
   1e0f4:	02040413          	add	s0,s0,32
   1e0f8:	030b8793          	add	a5,s7,48
   1e0fc:	da1ff06f          	j	1de9c <_realloc_r+0x2e0>
   1e100:	02043703          	ld	a4,32(s0)
   1e104:	040b8793          	add	a5,s7,64
   1e108:	03040413          	add	s0,s0,48
   1e10c:	02ebb823          	sd	a4,48(s7)
   1e110:	ff843703          	ld	a4,-8(s0)
   1e114:	02ebbc23          	sd	a4,56(s7)
   1e118:	d85ff06f          	j	1de9c <_realloc_r+0x2e0>

000000000001e11c <cleanup_glue>:
   1e11c:	fd010113          	add	sp,sp,-48
   1e120:	01213823          	sd	s2,16(sp)
   1e124:	0005b903          	ld	s2,0(a1)
   1e128:	02813023          	sd	s0,32(sp)
   1e12c:	00913c23          	sd	s1,24(sp)
   1e130:	02113423          	sd	ra,40(sp)
   1e134:	01313423          	sd	s3,8(sp)
   1e138:	01413023          	sd	s4,0(sp)
   1e13c:	00058413          	mv	s0,a1
   1e140:	00050493          	mv	s1,a0
   1e144:	04090263          	beqz	s2,1e188 <cleanup_glue+0x6c>
   1e148:	00093983          	ld	s3,0(s2)
   1e14c:	02098863          	beqz	s3,1e17c <cleanup_glue+0x60>
   1e150:	0009ba03          	ld	s4,0(s3)
   1e154:	000a0e63          	beqz	s4,1e170 <cleanup_glue+0x54>
   1e158:	000a3583          	ld	a1,0(s4)
   1e15c:	00058463          	beqz	a1,1e164 <cleanup_glue+0x48>
   1e160:	fbdff0ef          	jal	1e11c <cleanup_glue>
   1e164:	000a0593          	mv	a1,s4
   1e168:	00048513          	mv	a0,s1
   1e16c:	aa5f50ef          	jal	13c10 <_free_r>
   1e170:	00098593          	mv	a1,s3
   1e174:	00048513          	mv	a0,s1
   1e178:	a99f50ef          	jal	13c10 <_free_r>
   1e17c:	00090593          	mv	a1,s2
   1e180:	00048513          	mv	a0,s1
   1e184:	a8df50ef          	jal	13c10 <_free_r>
   1e188:	00040593          	mv	a1,s0
   1e18c:	02013403          	ld	s0,32(sp)
   1e190:	02813083          	ld	ra,40(sp)
   1e194:	01013903          	ld	s2,16(sp)
   1e198:	00813983          	ld	s3,8(sp)
   1e19c:	00013a03          	ld	s4,0(sp)
   1e1a0:	00048513          	mv	a0,s1
   1e1a4:	01813483          	ld	s1,24(sp)
   1e1a8:	03010113          	add	sp,sp,48
   1e1ac:	a65f506f          	j	13c10 <_free_r>

000000000001e1b0 <_reclaim_reent>:
   1e1b0:	7581b783          	ld	a5,1880(gp) # 25ad8 <_impure_ptr>
   1e1b4:	10a78a63          	beq	a5,a0,1e2c8 <_reclaim_reent+0x118>
   1e1b8:	07853583          	ld	a1,120(a0)
   1e1bc:	fd010113          	add	sp,sp,-48
   1e1c0:	00913c23          	sd	s1,24(sp)
   1e1c4:	02113423          	sd	ra,40(sp)
   1e1c8:	02813023          	sd	s0,32(sp)
   1e1cc:	01213823          	sd	s2,16(sp)
   1e1d0:	01313423          	sd	s3,8(sp)
   1e1d4:	00050493          	mv	s1,a0
   1e1d8:	04058063          	beqz	a1,1e218 <_reclaim_reent+0x68>
   1e1dc:	00000913          	li	s2,0
   1e1e0:	20000993          	li	s3,512
   1e1e4:	012587b3          	add	a5,a1,s2
   1e1e8:	0007b403          	ld	s0,0(a5)
   1e1ec:	00040e63          	beqz	s0,1e208 <_reclaim_reent+0x58>
   1e1f0:	00040593          	mv	a1,s0
   1e1f4:	00043403          	ld	s0,0(s0)
   1e1f8:	00048513          	mv	a0,s1
   1e1fc:	a15f50ef          	jal	13c10 <_free_r>
   1e200:	fe0418e3          	bnez	s0,1e1f0 <_reclaim_reent+0x40>
   1e204:	0784b583          	ld	a1,120(s1)
   1e208:	00890913          	add	s2,s2,8
   1e20c:	fd391ce3          	bne	s2,s3,1e1e4 <_reclaim_reent+0x34>
   1e210:	00048513          	mv	a0,s1
   1e214:	9fdf50ef          	jal	13c10 <_free_r>
   1e218:	0604b583          	ld	a1,96(s1)
   1e21c:	00058663          	beqz	a1,1e228 <_reclaim_reent+0x78>
   1e220:	00048513          	mv	a0,s1
   1e224:	9edf50ef          	jal	13c10 <_free_r>
   1e228:	1f84b403          	ld	s0,504(s1)
   1e22c:	02040063          	beqz	s0,1e24c <_reclaim_reent+0x9c>
   1e230:	20048913          	add	s2,s1,512
   1e234:	01240c63          	beq	s0,s2,1e24c <_reclaim_reent+0x9c>
   1e238:	00040593          	mv	a1,s0
   1e23c:	00043403          	ld	s0,0(s0)
   1e240:	00048513          	mv	a0,s1
   1e244:	9cdf50ef          	jal	13c10 <_free_r>
   1e248:	fe8918e3          	bne	s2,s0,1e238 <_reclaim_reent+0x88>
   1e24c:	0884b583          	ld	a1,136(s1)
   1e250:	00058663          	beqz	a1,1e25c <_reclaim_reent+0xac>
   1e254:	00048513          	mv	a0,s1
   1e258:	9b9f50ef          	jal	13c10 <_free_r>
   1e25c:	0504a783          	lw	a5,80(s1)
   1e260:	04078663          	beqz	a5,1e2ac <_reclaim_reent+0xfc>
   1e264:	0584b783          	ld	a5,88(s1)
   1e268:	00048513          	mv	a0,s1
   1e26c:	000780e7          	jalr	a5
   1e270:	5204b403          	ld	s0,1312(s1)
   1e274:	02040c63          	beqz	s0,1e2ac <_reclaim_reent+0xfc>
   1e278:	00043583          	ld	a1,0(s0)
   1e27c:	00058663          	beqz	a1,1e288 <_reclaim_reent+0xd8>
   1e280:	00048513          	mv	a0,s1
   1e284:	e99ff0ef          	jal	1e11c <cleanup_glue>
   1e288:	00040593          	mv	a1,s0
   1e28c:	02013403          	ld	s0,32(sp)
   1e290:	02813083          	ld	ra,40(sp)
   1e294:	01013903          	ld	s2,16(sp)
   1e298:	00813983          	ld	s3,8(sp)
   1e29c:	00048513          	mv	a0,s1
   1e2a0:	01813483          	ld	s1,24(sp)
   1e2a4:	03010113          	add	sp,sp,48
   1e2a8:	969f506f          	j	13c10 <_free_r>
   1e2ac:	02813083          	ld	ra,40(sp)
   1e2b0:	02013403          	ld	s0,32(sp)
   1e2b4:	01813483          	ld	s1,24(sp)
   1e2b8:	01013903          	ld	s2,16(sp)
   1e2bc:	00813983          	ld	s3,8(sp)
   1e2c0:	03010113          	add	sp,sp,48
   1e2c4:	00008067          	ret
   1e2c8:	00008067          	ret

000000000001e2cc <__ssprint_r>:
   1e2cc:	01063783          	ld	a5,16(a2)
   1e2d0:	fb010113          	add	sp,sp,-80
   1e2d4:	03313423          	sd	s3,40(sp)
   1e2d8:	01513c23          	sd	s5,24(sp)
   1e2dc:	04113423          	sd	ra,72(sp)
   1e2e0:	04813023          	sd	s0,64(sp)
   1e2e4:	02913c23          	sd	s1,56(sp)
   1e2e8:	03213823          	sd	s2,48(sp)
   1e2ec:	03413023          	sd	s4,32(sp)
   1e2f0:	01613823          	sd	s6,16(sp)
   1e2f4:	01713423          	sd	s7,8(sp)
   1e2f8:	01813023          	sd	s8,0(sp)
   1e2fc:	00063983          	ld	s3,0(a2)
   1e300:	00060a93          	mv	s5,a2
   1e304:	18078463          	beqz	a5,1e48c <__ssprint_r+0x1c0>
   1e308:	00c5a703          	lw	a4,12(a1)
   1e30c:	0005b783          	ld	a5,0(a1)
   1e310:	00050b13          	mv	s6,a0
   1e314:	00058493          	mv	s1,a1
   1e318:	00000a13          	li	s4,0
   1e31c:	00000413          	li	s0,0
   1e320:	00070913          	mv	s2,a4
   1e324:	00078513          	mv	a0,a5
   1e328:	06040263          	beqz	s0,1e38c <__ssprint_r+0xc0>
   1e32c:	06e47863          	bgeu	s0,a4,1e39c <__ssprint_r+0xd0>
   1e330:	0004071b          	sext.w	a4,s0
   1e334:	00070913          	mv	s2,a4
   1e338:	00070b93          	mv	s7,a4
   1e33c:	00078513          	mv	a0,a5
   1e340:	000a0593          	mv	a1,s4
   1e344:	00090613          	mv	a2,s2
   1e348:	ef0ff0ef          	jal	1da38 <memmove>
   1e34c:	00c4a683          	lw	a3,12(s1)
   1e350:	0004b783          	ld	a5,0(s1)
   1e354:	010ab703          	ld	a4,16(s5)
   1e358:	412686bb          	subw	a3,a3,s2
   1e35c:	012787b3          	add	a5,a5,s2
   1e360:	00d4a623          	sw	a3,12(s1)
   1e364:	00f4b023          	sd	a5,0(s1)
   1e368:	41770733          	sub	a4,a4,s7
   1e36c:	00eab823          	sd	a4,16(s5)
   1e370:	017a0a33          	add	s4,s4,s7
   1e374:	41740433          	sub	s0,s0,s7
   1e378:	10070a63          	beqz	a4,1e48c <__ssprint_r+0x1c0>
   1e37c:	00c4a703          	lw	a4,12(s1)
   1e380:	00078513          	mv	a0,a5
   1e384:	00070913          	mv	s2,a4
   1e388:	fa0412e3          	bnez	s0,1e32c <__ssprint_r+0x60>
   1e38c:	0009ba03          	ld	s4,0(s3)
   1e390:	0089b403          	ld	s0,8(s3)
   1e394:	01098993          	add	s3,s3,16
   1e398:	f89ff06f          	j	1e320 <__ssprint_r+0x54>
   1e39c:	01049703          	lh	a4,16(s1)
   1e3a0:	00040b9b          	sext.w	s7,s0
   1e3a4:	48077693          	and	a3,a4,1152
   1e3a8:	f8068ce3          	beqz	a3,1e340 <__ssprint_r+0x74>
   1e3ac:	0204a603          	lw	a2,32(s1)
   1e3b0:	0184b583          	ld	a1,24(s1)
   1e3b4:	0016169b          	sllw	a3,a2,0x1
   1e3b8:	00c686bb          	addw	a3,a3,a2
   1e3bc:	40b787b3          	sub	a5,a5,a1
   1e3c0:	01f6d91b          	srlw	s2,a3,0x1f
   1e3c4:	00078b9b          	sext.w	s7,a5
   1e3c8:	00d9093b          	addw	s2,s2,a3
   1e3cc:	001b8693          	add	a3,s7,1
   1e3d0:	4019591b          	sraw	s2,s2,0x1
   1e3d4:	008686b3          	add	a3,a3,s0
   1e3d8:	00d97663          	bgeu	s2,a3,1e3e4 <__ssprint_r+0x118>
   1e3dc:	0017879b          	addw	a5,a5,1
   1e3e0:	0087893b          	addw	s2,a5,s0
   1e3e4:	40077713          	and	a4,a4,1024
   1e3e8:	06070263          	beqz	a4,1e44c <__ssprint_r+0x180>
   1e3ec:	00090593          	mv	a1,s2
   1e3f0:	000b0513          	mv	a0,s6
   1e3f4:	c8df80ef          	jal	17080 <_malloc_r>
   1e3f8:	00050c13          	mv	s8,a0
   1e3fc:	06050863          	beqz	a0,1e46c <__ssprint_r+0x1a0>
   1e400:	0184b583          	ld	a1,24(s1)
   1e404:	000b8613          	mv	a2,s7
   1e408:	c8cff0ef          	jal	1d894 <memcpy>
   1e40c:	0104d783          	lhu	a5,16(s1)
   1e410:	b7f7f793          	and	a5,a5,-1153
   1e414:	0807e793          	or	a5,a5,128
   1e418:	00f49823          	sh	a5,16(s1)
   1e41c:	017c0533          	add	a0,s8,s7
   1e420:	41790bbb          	subw	s7,s2,s7
   1e424:	0004071b          	sext.w	a4,s0
   1e428:	0324a023          	sw	s2,32(s1)
   1e42c:	0174a623          	sw	s7,12(s1)
   1e430:	0184bc23          	sd	s8,24(s1)
   1e434:	00a4b023          	sd	a0,0(s1)
   1e438:	00070913          	mv	s2,a4
   1e43c:	00070b93          	mv	s7,a4
   1e440:	00050793          	mv	a5,a0
   1e444:	eee47ee3          	bgeu	s0,a4,1e340 <__ssprint_r+0x74>
   1e448:	eedff06f          	j	1e334 <__ssprint_r+0x68>
   1e44c:	00090613          	mv	a2,s2
   1e450:	000b0513          	mv	a0,s6
   1e454:	f68ff0ef          	jal	1dbbc <_realloc_r>
   1e458:	00050c13          	mv	s8,a0
   1e45c:	fc0510e3          	bnez	a0,1e41c <__ssprint_r+0x150>
   1e460:	0184b583          	ld	a1,24(s1)
   1e464:	000b0513          	mv	a0,s6
   1e468:	fa8f50ef          	jal	13c10 <_free_r>
   1e46c:	0104d783          	lhu	a5,16(s1)
   1e470:	00c00713          	li	a4,12
   1e474:	00eb2023          	sw	a4,0(s6)
   1e478:	0407e793          	or	a5,a5,64
   1e47c:	00f49823          	sh	a5,16(s1)
   1e480:	000ab823          	sd	zero,16(s5)
   1e484:	fff00513          	li	a0,-1
   1e488:	0080006f          	j	1e490 <__ssprint_r+0x1c4>
   1e48c:	00000513          	li	a0,0
   1e490:	04813083          	ld	ra,72(sp)
   1e494:	04013403          	ld	s0,64(sp)
   1e498:	000aa423          	sw	zero,8(s5)
   1e49c:	03813483          	ld	s1,56(sp)
   1e4a0:	03013903          	ld	s2,48(sp)
   1e4a4:	02813983          	ld	s3,40(sp)
   1e4a8:	02013a03          	ld	s4,32(sp)
   1e4ac:	01813a83          	ld	s5,24(sp)
   1e4b0:	01013b03          	ld	s6,16(sp)
   1e4b4:	00813b83          	ld	s7,8(sp)
   1e4b8:	00013c03          	ld	s8,0(sp)
   1e4bc:	05010113          	add	sp,sp,80
   1e4c0:	00008067          	ret

000000000001e4c4 <_svfiprintf_r>:
   1e4c4:	0105d703          	lhu	a4,16(a1)
   1e4c8:	e2010113          	add	sp,sp,-480
   1e4cc:	1b413823          	sd	s4,432(sp)
   1e4d0:	1b613023          	sd	s6,416(sp)
   1e4d4:	19813823          	sd	s8,400(sp)
   1e4d8:	17b13c23          	sd	s11,376(sp)
   1e4dc:	1c113c23          	sd	ra,472(sp)
   1e4e0:	1c813823          	sd	s0,464(sp)
   1e4e4:	1c913423          	sd	s1,456(sp)
   1e4e8:	1d213023          	sd	s2,448(sp)
   1e4ec:	1b313c23          	sd	s3,440(sp)
   1e4f0:	1b513423          	sd	s5,424(sp)
   1e4f4:	19713c23          	sd	s7,408(sp)
   1e4f8:	19913423          	sd	s9,392(sp)
   1e4fc:	19a13023          	sd	s10,384(sp)
   1e500:	08077713          	and	a4,a4,128
   1e504:	00058a13          	mv	s4,a1
   1e508:	00050b13          	mv	s6,a0
   1e50c:	00060d93          	mv	s11,a2
   1e510:	00068c13          	mv	s8,a3
   1e514:	00070663          	beqz	a4,1e520 <_svfiprintf_r+0x5c>
   1e518:	0185b703          	ld	a4,24(a1)
   1e51c:	68070ee3          	beqz	a4,1f3b8 <_svfiprintf_r+0xef4>
   1e520:	000237b7          	lui	a5,0x23
   1e524:	0f010a93          	add	s5,sp,240
   1e528:	00000c93          	li	s9,0
   1e52c:	79c78793          	add	a5,a5,1948 # 2379c <_ctype_+0x104>
   1e530:	00024bb7          	lui	s7,0x24
   1e534:	07513823          	sd	s5,112(sp)
   1e538:	08013023          	sd	zero,128(sp)
   1e53c:	06012c23          	sw	zero,120(sp)
   1e540:	00000493          	li	s1,0
   1e544:	000a8413          	mv	s0,s5
   1e548:	00013823          	sd	zero,16(sp)
   1e54c:	02013c23          	sd	zero,56(sp)
   1e550:	02013823          	sd	zero,48(sp)
   1e554:	04013023          	sd	zero,64(sp)
   1e558:	00f13423          	sd	a5,8(sp)
   1e55c:	01000993          	li	s3,16
   1e560:	908b8b93          	add	s7,s7,-1784 # 23908 <zeroes.0>
   1e564:	000c8d13          	mv	s10,s9
   1e568:	000c0693          	mv	a3,s8
   1e56c:	000dc783          	lbu	a5,0(s11)
   1e570:	1e078263          	beqz	a5,1e754 <_svfiprintf_r+0x290>
   1e574:	000d8913          	mv	s2,s11
   1e578:	02500713          	li	a4,37
   1e57c:	26e78863          	beq	a5,a4,1e7ec <_svfiprintf_r+0x328>
   1e580:	00194783          	lbu	a5,1(s2)
   1e584:	00190913          	add	s2,s2,1
   1e588:	fe079ae3          	bnez	a5,1e57c <_svfiprintf_r+0xb8>
   1e58c:	41b90c3b          	subw	s8,s2,s11
   1e590:	1c0c0263          	beqz	s8,1e754 <_svfiprintf_r+0x290>
   1e594:	07812783          	lw	a5,120(sp)
   1e598:	018484b3          	add	s1,s1,s8
   1e59c:	01b43023          	sd	s11,0(s0)
   1e5a0:	0017871b          	addw	a4,a5,1
   1e5a4:	01843423          	sd	s8,8(s0)
   1e5a8:	08913023          	sd	s1,128(sp)
   1e5ac:	06e12c23          	sw	a4,120(sp)
   1e5b0:	00700793          	li	a5,7
   1e5b4:	01040413          	add	s0,s0,16
   1e5b8:	24e7c263          	blt	a5,a4,1e7fc <_svfiprintf_r+0x338>
   1e5bc:	00094783          	lbu	a5,0(s2)
   1e5c0:	018d0d3b          	addw	s10,s10,s8
   1e5c4:	18078863          	beqz	a5,1e754 <_svfiprintf_r+0x290>
   1e5c8:	00194783          	lbu	a5,1(s2)
   1e5cc:	00190d93          	add	s11,s2,1
   1e5d0:	060103a3          	sb	zero,103(sp)
   1e5d4:	fff00c13          	li	s8,-1
   1e5d8:	00000893          	li	a7,0
   1e5dc:	00000c93          	li	s9,0
   1e5e0:	05a00913          	li	s2,90
   1e5e4:	001d8d93          	add	s11,s11,1
   1e5e8:	0007879b          	sext.w	a5,a5
   1e5ec:	fe07871b          	addw	a4,a5,-32
   1e5f0:	0007061b          	sext.w	a2,a4
   1e5f4:	04c96c63          	bltu	s2,a2,1e64c <_svfiprintf_r+0x188>
   1e5f8:	02071613          	sll	a2,a4,0x20
   1e5fc:	01e65713          	srl	a4,a2,0x1e
   1e600:	00813603          	ld	a2,8(sp)
   1e604:	00c70733          	add	a4,a4,a2
   1e608:	00072703          	lw	a4,0(a4)
   1e60c:	00070067          	jr	a4
   1e610:	00000893          	li	a7,0
   1e614:	00900593          	li	a1,9
   1e618:	000dc603          	lbu	a2,0(s11)
   1e61c:	0028971b          	sllw	a4,a7,0x2
   1e620:	011708bb          	addw	a7,a4,a7
   1e624:	fd07879b          	addw	a5,a5,-48
   1e628:	0018989b          	sllw	a7,a7,0x1
   1e62c:	fd06071b          	addw	a4,a2,-48
   1e630:	011788bb          	addw	a7,a5,a7
   1e634:	001d8d93          	add	s11,s11,1
   1e638:	0006079b          	sext.w	a5,a2
   1e63c:	fce5fee3          	bgeu	a1,a4,1e618 <_svfiprintf_r+0x154>
   1e640:	fe07871b          	addw	a4,a5,-32
   1e644:	0007061b          	sext.w	a2,a4
   1e648:	fac978e3          	bgeu	s2,a2,1e5f8 <_svfiprintf_r+0x134>
   1e64c:	10078463          	beqz	a5,1e754 <_svfiprintf_r+0x290>
   1e650:	08f10423          	sb	a5,136(sp)
   1e654:	060103a3          	sb	zero,103(sp)
   1e658:	00100e13          	li	t3,1
   1e65c:	00100313          	li	t1,1
   1e660:	08810913          	add	s2,sp,136
   1e664:	00000c13          	li	s8,0
   1e668:	002cf293          	and	t0,s9,2
   1e66c:	00028463          	beqz	t0,1e674 <_svfiprintf_r+0x1b0>
   1e670:	002e0e1b          	addw	t3,t3,2
   1e674:	084cff93          	and	t6,s9,132
   1e678:	07812783          	lw	a5,120(sp)
   1e67c:	000f9663          	bnez	t6,1e688 <_svfiprintf_r+0x1c4>
   1e680:	41c8873b          	subw	a4,a7,t3
   1e684:	08e04ce3          	bgtz	a4,1ef1c <_svfiprintf_r+0xa58>
   1e688:	06714703          	lbu	a4,103(sp)
   1e68c:	02070863          	beqz	a4,1e6bc <_svfiprintf_r+0x1f8>
   1e690:	06710613          	add	a2,sp,103
   1e694:	00c43023          	sd	a2,0(s0)
   1e698:	0017879b          	addw	a5,a5,1
   1e69c:	00148493          	add	s1,s1,1
   1e6a0:	00100613          	li	a2,1
   1e6a4:	00c43423          	sd	a2,8(s0)
   1e6a8:	08913023          	sd	s1,128(sp)
   1e6ac:	06f12c23          	sw	a5,120(sp)
   1e6b0:	00700713          	li	a4,7
   1e6b4:	01040413          	add	s0,s0,16
   1e6b8:	1af74e63          	blt	a4,a5,1e874 <_svfiprintf_r+0x3b0>
   1e6bc:	02028863          	beqz	t0,1e6ec <_svfiprintf_r+0x228>
   1e6c0:	06810613          	add	a2,sp,104
   1e6c4:	00c43023          	sd	a2,0(s0)
   1e6c8:	0017879b          	addw	a5,a5,1
   1e6cc:	00248493          	add	s1,s1,2
   1e6d0:	00200613          	li	a2,2
   1e6d4:	00c43423          	sd	a2,8(s0)
   1e6d8:	08913023          	sd	s1,128(sp)
   1e6dc:	06f12c23          	sw	a5,120(sp)
   1e6e0:	00700713          	li	a4,7
   1e6e4:	01040413          	add	s0,s0,16
   1e6e8:	16f748e3          	blt	a4,a5,1f058 <_svfiprintf_r+0xb94>
   1e6ec:	08000713          	li	a4,128
   1e6f0:	54ef8463          	beq	t6,a4,1ec38 <_svfiprintf_r+0x774>
   1e6f4:	406c0c3b          	subw	s8,s8,t1
   1e6f8:	67804463          	bgtz	s8,1ed60 <_svfiprintf_r+0x89c>
   1e6fc:	0017871b          	addw	a4,a5,1
   1e700:	006484b3          	add	s1,s1,t1
   1e704:	01243023          	sd	s2,0(s0)
   1e708:	00643423          	sd	t1,8(s0)
   1e70c:	08913023          	sd	s1,128(sp)
   1e710:	06e12c23          	sw	a4,120(sp)
   1e714:	00700793          	li	a5,7
   1e718:	01040413          	add	s0,s0,16
   1e71c:	74e7ce63          	blt	a5,a4,1ee78 <_svfiprintf_r+0x9b4>
   1e720:	004cfc93          	and	s9,s9,4
   1e724:	000c8663          	beqz	s9,1e730 <_svfiprintf_r+0x26c>
   1e728:	41c8893b          	subw	s2,a7,t3
   1e72c:	17204ce3          	bgtz	s2,1f0a4 <_svfiprintf_r+0xbe0>
   1e730:	00088793          	mv	a5,a7
   1e734:	01c8d463          	bge	a7,t3,1e73c <_svfiprintf_r+0x278>
   1e738:	000e0793          	mv	a5,t3
   1e73c:	01a78d3b          	addw	s10,a5,s10
   1e740:	76049863          	bnez	s1,1eeb0 <_svfiprintf_r+0x9ec>
   1e744:	000dc783          	lbu	a5,0(s11)
   1e748:	06012c23          	sw	zero,120(sp)
   1e74c:	000a8413          	mv	s0,s5
   1e750:	e20792e3          	bnez	a5,1e574 <_svfiprintf_r+0xb0>
   1e754:	000d0c93          	mv	s9,s10
   1e758:	0c048863          	beqz	s1,1e828 <_svfiprintf_r+0x364>
   1e75c:	07010613          	add	a2,sp,112
   1e760:	000a0593          	mv	a1,s4
   1e764:	000b0513          	mv	a0,s6
   1e768:	b65ff0ef          	jal	1e2cc <__ssprint_r>
   1e76c:	0bc0006f          	j	1e828 <_svfiprintf_r+0x364>
   1e770:	010cec93          	or	s9,s9,16
   1e774:	000dc783          	lbu	a5,0(s11)
   1e778:	000c8c9b          	sext.w	s9,s9
   1e77c:	e69ff06f          	j	1e5e4 <_svfiprintf_r+0x120>
   1e780:	010cec93          	or	s9,s9,16
   1e784:	000c8c9b          	sext.w	s9,s9
   1e788:	020cf793          	and	a5,s9,32
   1e78c:	00868e93          	add	t4,a3,8
   1e790:	12078c63          	beqz	a5,1e8c8 <_svfiprintf_r+0x404>
   1e794:	0006b703          	ld	a4,0(a3)
   1e798:	00070793          	mv	a5,a4
   1e79c:	14074863          	bltz	a4,1e8ec <_svfiprintf_r+0x428>
   1e7a0:	fff00713          	li	a4,-1
   1e7a4:	16ec0263          	beq	s8,a4,1e908 <_svfiprintf_r+0x444>
   1e7a8:	f7fcfc93          	and	s9,s9,-129
   1e7ac:	000c8c9b          	sext.w	s9,s9
   1e7b0:	14079c63          	bnez	a5,1e908 <_svfiprintf_r+0x444>
   1e7b4:	580c18e3          	bnez	s8,1f544 <_svfiprintf_r+0x1080>
   1e7b8:	00000e13          	li	t3,0
   1e7bc:	00000313          	li	t1,0
   1e7c0:	000e8693          	mv	a3,t4
   1e7c4:	0ec10913          	add	s2,sp,236
   1e7c8:	16c0006f          	j	1e934 <_svfiprintf_r+0x470>
   1e7cc:	0006a883          	lw	a7,0(a3)
   1e7d0:	00868693          	add	a3,a3,8
   1e7d4:	3c08d463          	bgez	a7,1eb9c <_svfiprintf_r+0x6d8>
   1e7d8:	411008bb          	negw	a7,a7
   1e7dc:	004cec93          	or	s9,s9,4
   1e7e0:	000dc783          	lbu	a5,0(s11)
   1e7e4:	000c8c9b          	sext.w	s9,s9
   1e7e8:	dfdff06f          	j	1e5e4 <_svfiprintf_r+0x120>
   1e7ec:	41b90c3b          	subw	s8,s2,s11
   1e7f0:	da0c12e3          	bnez	s8,1e594 <_svfiprintf_r+0xd0>
   1e7f4:	00094783          	lbu	a5,0(s2)
   1e7f8:	dcdff06f          	j	1e5c4 <_svfiprintf_r+0x100>
   1e7fc:	07010613          	add	a2,sp,112
   1e800:	000a0593          	mv	a1,s4
   1e804:	000b0513          	mv	a0,s6
   1e808:	00d13c23          	sd	a3,24(sp)
   1e80c:	ac1ff0ef          	jal	1e2cc <__ssprint_r>
   1e810:	00051a63          	bnez	a0,1e824 <_svfiprintf_r+0x360>
   1e814:	08013483          	ld	s1,128(sp)
   1e818:	01813683          	ld	a3,24(sp)
   1e81c:	000a8413          	mv	s0,s5
   1e820:	d9dff06f          	j	1e5bc <_svfiprintf_r+0xf8>
   1e824:	000d0c93          	mv	s9,s10
   1e828:	010a5783          	lhu	a5,16(s4)
   1e82c:	0407f793          	and	a5,a5,64
   1e830:	52079ae3          	bnez	a5,1f564 <_svfiprintf_r+0x10a0>
   1e834:	1d813083          	ld	ra,472(sp)
   1e838:	1d013403          	ld	s0,464(sp)
   1e83c:	1c813483          	ld	s1,456(sp)
   1e840:	1c013903          	ld	s2,448(sp)
   1e844:	1b813983          	ld	s3,440(sp)
   1e848:	1b013a03          	ld	s4,432(sp)
   1e84c:	1a813a83          	ld	s5,424(sp)
   1e850:	1a013b03          	ld	s6,416(sp)
   1e854:	19813b83          	ld	s7,408(sp)
   1e858:	19013c03          	ld	s8,400(sp)
   1e85c:	18013d03          	ld	s10,384(sp)
   1e860:	17813d83          	ld	s11,376(sp)
   1e864:	000c8513          	mv	a0,s9
   1e868:	18813c83          	ld	s9,392(sp)
   1e86c:	1e010113          	add	sp,sp,480
   1e870:	00008067          	ret
   1e874:	07010613          	add	a2,sp,112
   1e878:	000a0593          	mv	a1,s4
   1e87c:	000b0513          	mv	a0,s6
   1e880:	04d13c23          	sd	a3,88(sp)
   1e884:	04613823          	sd	t1,80(sp)
   1e888:	05c13423          	sd	t3,72(sp)
   1e88c:	03113423          	sd	a7,40(sp)
   1e890:	03f13023          	sd	t6,32(sp)
   1e894:	00513c23          	sd	t0,24(sp)
   1e898:	a35ff0ef          	jal	1e2cc <__ssprint_r>
   1e89c:	f80514e3          	bnez	a0,1e824 <_svfiprintf_r+0x360>
   1e8a0:	08013483          	ld	s1,128(sp)
   1e8a4:	07812783          	lw	a5,120(sp)
   1e8a8:	05813683          	ld	a3,88(sp)
   1e8ac:	05013303          	ld	t1,80(sp)
   1e8b0:	04813e03          	ld	t3,72(sp)
   1e8b4:	02813883          	ld	a7,40(sp)
   1e8b8:	02013f83          	ld	t6,32(sp)
   1e8bc:	01813283          	ld	t0,24(sp)
   1e8c0:	000a8413          	mv	s0,s5
   1e8c4:	df9ff06f          	j	1e6bc <_svfiprintf_r+0x1f8>
   1e8c8:	010cf793          	and	a5,s9,16
   1e8cc:	ec0794e3          	bnez	a5,1e794 <_svfiprintf_r+0x2d0>
   1e8d0:	040cf713          	and	a4,s9,64
   1e8d4:	0006a783          	lw	a5,0(a3)
   1e8d8:	400702e3          	beqz	a4,1f4dc <_svfiprintf_r+0x1018>
   1e8dc:	0107979b          	sllw	a5,a5,0x10
   1e8e0:	4107d79b          	sraw	a5,a5,0x10
   1e8e4:	00078713          	mv	a4,a5
   1e8e8:	ea075ce3          	bgez	a4,1e7a0 <_svfiprintf_r+0x2dc>
   1e8ec:	02d00713          	li	a4,45
   1e8f0:	06e103a3          	sb	a4,103(sp)
   1e8f4:	fff00713          	li	a4,-1
   1e8f8:	40f007b3          	neg	a5,a5
   1e8fc:	00ec0663          	beq	s8,a4,1e908 <_svfiprintf_r+0x444>
   1e900:	f7fcfc93          	and	s9,s9,-129
   1e904:	000c8c9b          	sext.w	s9,s9
   1e908:	00900713          	li	a4,9
   1e90c:	10f766e3          	bltu	a4,a5,1f218 <_svfiprintf_r+0xd54>
   1e910:	0307879b          	addw	a5,a5,48
   1e914:	0ff7f793          	zext.b	a5,a5
   1e918:	000e8693          	mv	a3,t4
   1e91c:	0ef105a3          	sb	a5,235(sp)
   1e920:	000c0e1b          	sext.w	t3,s8
   1e924:	01804463          	bgtz	s8,1e92c <_svfiprintf_r+0x468>
   1e928:	00100e13          	li	t3,1
   1e92c:	00100313          	li	t1,1
   1e930:	0eb10913          	add	s2,sp,235
   1e934:	06714783          	lbu	a5,103(sp)
   1e938:	d20788e3          	beqz	a5,1e668 <_svfiprintf_r+0x1a4>
   1e93c:	001e0e1b          	addw	t3,t3,1
   1e940:	d29ff06f          	j	1e668 <_svfiprintf_r+0x1a4>
   1e944:	0006b903          	ld	s2,0(a3)
   1e948:	060103a3          	sb	zero,103(sp)
   1e94c:	00868693          	add	a3,a3,8
   1e950:	32090ae3          	beqz	s2,1f484 <_svfiprintf_r+0xfc0>
   1e954:	fff00793          	li	a5,-1
   1e958:	02d13023          	sd	a3,32(sp)
   1e95c:	01113c23          	sd	a7,24(sp)
   1e960:	22fc02e3          	beq	s8,a5,1f384 <_svfiprintf_r+0xec0>
   1e964:	000c0613          	mv	a2,s8
   1e968:	00000593          	li	a1,0
   1e96c:	00090513          	mv	a0,s2
   1e970:	f5df80ef          	jal	178cc <memchr>
   1e974:	01813883          	ld	a7,24(sp)
   1e978:	02013683          	ld	a3,32(sp)
   1e97c:	3a050ce3          	beqz	a0,1f534 <_svfiprintf_r+0x1070>
   1e980:	4125033b          	subw	t1,a0,s2
   1e984:	fff34e13          	not	t3,t1
   1e988:	43fe5e13          	sra	t3,t3,0x3f
   1e98c:	006e7e33          	and	t3,t3,t1
   1e990:	00000c13          	li	s8,0
   1e994:	fa1ff06f          	j	1e934 <_svfiprintf_r+0x470>
   1e998:	0006a783          	lw	a5,0(a3)
   1e99c:	060103a3          	sb	zero,103(sp)
   1e9a0:	00868693          	add	a3,a3,8
   1e9a4:	08f10423          	sb	a5,136(sp)
   1e9a8:	00100e13          	li	t3,1
   1e9ac:	00100313          	li	t1,1
   1e9b0:	08810913          	add	s2,sp,136
   1e9b4:	cb1ff06f          	j	1e664 <_svfiprintf_r+0x1a0>
   1e9b8:	020cec93          	or	s9,s9,32
   1e9bc:	000dc783          	lbu	a5,0(s11)
   1e9c0:	000c8c9b          	sext.w	s9,s9
   1e9c4:	c21ff06f          	j	1e5e4 <_svfiprintf_r+0x120>
   1e9c8:	ffff87b7          	lui	a5,0xffff8
   1e9cc:	8307c793          	xor	a5,a5,-2000
   1e9d0:	06f11423          	sh	a5,104(sp)
   1e9d4:	000237b7          	lui	a5,0x23
   1e9d8:	002cec93          	or	s9,s9,2
   1e9dc:	b8078793          	add	a5,a5,-1152 # 22b80 <__clz_tab+0x138>
   1e9e0:	0006b703          	ld	a4,0(a3)
   1e9e4:	000c8c9b          	sext.w	s9,s9
   1e9e8:	00868693          	add	a3,a3,8
   1e9ec:	00f13823          	sd	a5,16(sp)
   1e9f0:	060103a3          	sb	zero,103(sp)
   1e9f4:	fff00793          	li	a5,-1
   1e9f8:	4efc0463          	beq	s8,a5,1eee0 <_svfiprintf_r+0xa1c>
   1e9fc:	f7fcf793          	and	a5,s9,-129
   1ea00:	0007879b          	sext.w	a5,a5
   1ea04:	4c071863          	bnez	a4,1eed4 <_svfiprintf_r+0xa10>
   1ea08:	000c8313          	mv	t1,s9
   1ea0c:	00200713          	li	a4,2
   1ea10:	00078c93          	mv	s9,a5
   1ea14:	060c1a63          	bnez	s8,1ea88 <_svfiprintf_r+0x5c4>
   1ea18:	7e071863          	bnez	a4,1f208 <_svfiprintf_r+0xd44>
   1ea1c:	00137313          	and	t1,t1,1
   1ea20:	060306e3          	beqz	t1,1f28c <_svfiprintf_r+0xdc8>
   1ea24:	03000793          	li	a5,48
   1ea28:	0ef105a3          	sb	a5,235(sp)
   1ea2c:	00030e13          	mv	t3,t1
   1ea30:	0eb10913          	add	s2,sp,235
   1ea34:	f01ff06f          	j	1e934 <_svfiprintf_r+0x470>
   1ea38:	010ce793          	or	a5,s9,16
   1ea3c:	0007879b          	sext.w	a5,a5
   1ea40:	0207f713          	and	a4,a5,32
   1ea44:	00868613          	add	a2,a3,8
   1ea48:	00071663          	bnez	a4,1ea54 <_svfiprintf_r+0x590>
   1ea4c:	0107f713          	and	a4,a5,16
   1ea50:	06070ee3          	beqz	a4,1f2cc <_svfiprintf_r+0xe08>
   1ea54:	0006b703          	ld	a4,0(a3)
   1ea58:	bff7fc93          	and	s9,a5,-1025
   1ea5c:	060103a3          	sb	zero,103(sp)
   1ea60:	fff00693          	li	a3,-1
   1ea64:	000c8c9b          	sext.w	s9,s9
   1ea68:	72dc0c63          	beq	s8,a3,1f1a0 <_svfiprintf_r+0xcdc>
   1ea6c:	b7f7f793          	and	a5,a5,-1153
   1ea70:	0007879b          	sext.w	a5,a5
   1ea74:	1c071ae3          	bnez	a4,1f448 <_svfiprintf_r+0xf84>
   1ea78:	000c8313          	mv	t1,s9
   1ea7c:	00060693          	mv	a3,a2
   1ea80:	00078c93          	mv	s9,a5
   1ea84:	f80c0ae3          	beqz	s8,1ea18 <_svfiprintf_r+0x554>
   1ea88:	00100793          	li	a5,1
   1ea8c:	2af70ee3          	beq	a4,a5,1f548 <_svfiprintf_r+0x1084>
   1ea90:	00200793          	li	a5,2
   1ea94:	20f708e3          	beq	a4,a5,1f4a4 <_svfiprintf_r+0xfe0>
   1ea98:	00000713          	li	a4,0
   1ea9c:	7080006f          	j	1f1a4 <_svfiprintf_r+0xce0>
   1eaa0:	010ce313          	or	t1,s9,16
   1eaa4:	0003031b          	sext.w	t1,t1
   1eaa8:	02037793          	and	a5,t1,32
   1eaac:	00868e93          	add	t4,a3,8
   1eab0:	00079663          	bnez	a5,1eabc <_svfiprintf_r+0x5f8>
   1eab4:	01037793          	and	a5,t1,16
   1eab8:	7e078e63          	beqz	a5,1f2b4 <_svfiprintf_r+0xdf0>
   1eabc:	0006b783          	ld	a5,0(a3)
   1eac0:	060103a3          	sb	zero,103(sp)
   1eac4:	fff00713          	li	a4,-1
   1eac8:	00030c93          	mv	s9,t1
   1eacc:	e2ec0ee3          	beq	s8,a4,1e908 <_svfiprintf_r+0x444>
   1ead0:	f7f37c93          	and	s9,t1,-129
   1ead4:	000c8c9b          	sext.w	s9,s9
   1ead8:	e20798e3          	bnez	a5,1e908 <_svfiprintf_r+0x444>
   1eadc:	000e8693          	mv	a3,t4
   1eae0:	00100713          	li	a4,1
   1eae4:	f31ff06f          	j	1ea14 <_svfiprintf_r+0x550>
   1eae8:	080cec93          	or	s9,s9,128
   1eaec:	000dc783          	lbu	a5,0(s11)
   1eaf0:	000c8c9b          	sext.w	s9,s9
   1eaf4:	af1ff06f          	j	1e5e4 <_svfiprintf_r+0x120>
   1eaf8:	000dc783          	lbu	a5,0(s11)
   1eafc:	02a00593          	li	a1,42
   1eb00:	001d8713          	add	a4,s11,1
   1eb04:	26b784e3          	beq	a5,a1,1f56c <_svfiprintf_r+0x10a8>
   1eb08:	fd07861b          	addw	a2,a5,-48
   1eb0c:	00900513          	li	a0,9
   1eb10:	00070d93          	mv	s11,a4
   1eb14:	00000c13          	li	s8,0
   1eb18:	00900593          	li	a1,9
   1eb1c:	acc568e3          	bltu	a0,a2,1e5ec <_svfiprintf_r+0x128>
   1eb20:	000dc783          	lbu	a5,0(s11)
   1eb24:	002c171b          	sllw	a4,s8,0x2
   1eb28:	01870c3b          	addw	s8,a4,s8
   1eb2c:	001c1c1b          	sllw	s8,s8,0x1
   1eb30:	00cc0c3b          	addw	s8,s8,a2
   1eb34:	fd07861b          	addw	a2,a5,-48
   1eb38:	001d8d93          	add	s11,s11,1
   1eb3c:	fec5f2e3          	bgeu	a1,a2,1eb20 <_svfiprintf_r+0x65c>
   1eb40:	aadff06f          	j	1e5ec <_svfiprintf_r+0x128>
   1eb44:	02b00713          	li	a4,43
   1eb48:	000dc783          	lbu	a5,0(s11)
   1eb4c:	06e103a3          	sb	a4,103(sp)
   1eb50:	a95ff06f          	j	1e5e4 <_svfiprintf_r+0x120>
   1eb54:	000b0513          	mv	a0,s6
   1eb58:	02d13023          	sd	a3,32(sp)
   1eb5c:	01113c23          	sd	a7,24(sp)
   1eb60:	9a8f80ef          	jal	16d08 <_localeconv_r>
   1eb64:	00853783          	ld	a5,8(a0)
   1eb68:	00078513          	mv	a0,a5
   1eb6c:	04f13023          	sd	a5,64(sp)
   1eb70:	e34fa0ef          	jal	191a4 <strlen>
   1eb74:	00050793          	mv	a5,a0
   1eb78:	000b0513          	mv	a0,s6
   1eb7c:	02f13823          	sd	a5,48(sp)
   1eb80:	988f80ef          	jal	16d08 <_localeconv_r>
   1eb84:	01053703          	ld	a4,16(a0)
   1eb88:	03013783          	ld	a5,48(sp)
   1eb8c:	01813883          	ld	a7,24(sp)
   1eb90:	02e13c23          	sd	a4,56(sp)
   1eb94:	02013683          	ld	a3,32(sp)
   1eb98:	70079063          	bnez	a5,1f298 <_svfiprintf_r+0xdd4>
   1eb9c:	000dc783          	lbu	a5,0(s11)
   1eba0:	a45ff06f          	j	1e5e4 <_svfiprintf_r+0x120>
   1eba4:	001cec93          	or	s9,s9,1
   1eba8:	000dc783          	lbu	a5,0(s11)
   1ebac:	000c8c9b          	sext.w	s9,s9
   1ebb0:	a35ff06f          	j	1e5e4 <_svfiprintf_r+0x120>
   1ebb4:	06714703          	lbu	a4,103(sp)
   1ebb8:	000dc783          	lbu	a5,0(s11)
   1ebbc:	a20714e3          	bnez	a4,1e5e4 <_svfiprintf_r+0x120>
   1ebc0:	02000713          	li	a4,32
   1ebc4:	06e103a3          	sb	a4,103(sp)
   1ebc8:	a1dff06f          	j	1e5e4 <_svfiprintf_r+0x120>
   1ebcc:	020cf793          	and	a5,s9,32
   1ebd0:	0006b703          	ld	a4,0(a3)
   1ebd4:	02079463          	bnez	a5,1ebfc <_svfiprintf_r+0x738>
   1ebd8:	010cf793          	and	a5,s9,16
   1ebdc:	02079063          	bnez	a5,1ebfc <_svfiprintf_r+0x738>
   1ebe0:	040cf793          	and	a5,s9,64
   1ebe4:	10079ae3          	bnez	a5,1f4f8 <_svfiprintf_r+0x1034>
   1ebe8:	200cfc93          	and	s9,s9,512
   1ebec:	160c82e3          	beqz	s9,1f550 <_svfiprintf_r+0x108c>
   1ebf0:	01a70023          	sb	s10,0(a4)
   1ebf4:	00868693          	add	a3,a3,8
   1ebf8:	975ff06f          	j	1e56c <_svfiprintf_r+0xa8>
   1ebfc:	01a73023          	sd	s10,0(a4)
   1ec00:	00868693          	add	a3,a3,8
   1ec04:	969ff06f          	j	1e56c <_svfiprintf_r+0xa8>
   1ec08:	000dc783          	lbu	a5,0(s11)
   1ec0c:	06c00713          	li	a4,108
   1ec10:	06e780e3          	beq	a5,a4,1f470 <_svfiprintf_r+0xfac>
   1ec14:	010cec93          	or	s9,s9,16
   1ec18:	000c8c9b          	sext.w	s9,s9
   1ec1c:	9c9ff06f          	j	1e5e4 <_svfiprintf_r+0x120>
   1ec20:	000dc783          	lbu	a5,0(s11)
   1ec24:	06800713          	li	a4,104
   1ec28:	02e78ae3          	beq	a5,a4,1f45c <_svfiprintf_r+0xf98>
   1ec2c:	040cec93          	or	s9,s9,64
   1ec30:	000c8c9b          	sext.w	s9,s9
   1ec34:	9b1ff06f          	j	1e5e4 <_svfiprintf_r+0x120>
   1ec38:	41c8873b          	subw	a4,a7,t3
   1ec3c:	aae05ce3          	blez	a4,1e6f4 <_svfiprintf_r+0x230>
   1ec40:	00024f37          	lui	t5,0x24
   1ec44:	01000613          	li	a2,16
   1ec48:	908f0f13          	add	t5,t5,-1784 # 23908 <zeroes.0>
   1ec4c:	0ae65463          	bge	a2,a4,1ecf4 <_svfiprintf_r+0x830>
   1ec50:	00048613          	mv	a2,s1
   1ec54:	04d13423          	sd	a3,72(sp)
   1ec58:	01000e93          	li	t4,16
   1ec5c:	00040693          	mv	a3,s0
   1ec60:	00700f93          	li	t6,7
   1ec64:	01113c23          	sd	a7,24(sp)
   1ec68:	03c13023          	sd	t3,32(sp)
   1ec6c:	02613423          	sd	t1,40(sp)
   1ec70:	00070413          	mv	s0,a4
   1ec74:	000f0493          	mv	s1,t5
   1ec78:	00c0006f          	j	1ec84 <_svfiprintf_r+0x7c0>
   1ec7c:	ff04041b          	addw	s0,s0,-16
   1ec80:	048eda63          	bge	t4,s0,1ecd4 <_svfiprintf_r+0x810>
   1ec84:	0017879b          	addw	a5,a5,1
   1ec88:	01060613          	add	a2,a2,16
   1ec8c:	0096b023          	sd	s1,0(a3)
   1ec90:	01d6b423          	sd	t4,8(a3)
   1ec94:	08c13023          	sd	a2,128(sp)
   1ec98:	06f12c23          	sw	a5,120(sp)
   1ec9c:	01068693          	add	a3,a3,16
   1eca0:	fcffdee3          	bge	t6,a5,1ec7c <_svfiprintf_r+0x7b8>
   1eca4:	07010613          	add	a2,sp,112
   1eca8:	000a0593          	mv	a1,s4
   1ecac:	000b0513          	mv	a0,s6
   1ecb0:	e1cff0ef          	jal	1e2cc <__ssprint_r>
   1ecb4:	b60518e3          	bnez	a0,1e824 <_svfiprintf_r+0x360>
   1ecb8:	01000e93          	li	t4,16
   1ecbc:	ff04041b          	addw	s0,s0,-16
   1ecc0:	08013603          	ld	a2,128(sp)
   1ecc4:	07812783          	lw	a5,120(sp)
   1ecc8:	000a8693          	mv	a3,s5
   1eccc:	00700f93          	li	t6,7
   1ecd0:	fa8ecae3          	blt	t4,s0,1ec84 <_svfiprintf_r+0x7c0>
   1ecd4:	00040713          	mv	a4,s0
   1ecd8:	01813883          	ld	a7,24(sp)
   1ecdc:	00068413          	mv	s0,a3
   1ece0:	02013e03          	ld	t3,32(sp)
   1ece4:	02813303          	ld	t1,40(sp)
   1ece8:	04813683          	ld	a3,72(sp)
   1ecec:	00048f13          	mv	t5,s1
   1ecf0:	00060493          	mv	s1,a2
   1ecf4:	00e484b3          	add	s1,s1,a4
   1ecf8:	0017879b          	addw	a5,a5,1
   1ecfc:	00e43423          	sd	a4,8(s0)
   1ed00:	01e43023          	sd	t5,0(s0)
   1ed04:	08913023          	sd	s1,128(sp)
   1ed08:	06f12c23          	sw	a5,120(sp)
   1ed0c:	00700713          	li	a4,7
   1ed10:	01040413          	add	s0,s0,16
   1ed14:	9ef750e3          	bge	a4,a5,1e6f4 <_svfiprintf_r+0x230>
   1ed18:	07010613          	add	a2,sp,112
   1ed1c:	000a0593          	mv	a1,s4
   1ed20:	000b0513          	mv	a0,s6
   1ed24:	04d13423          	sd	a3,72(sp)
   1ed28:	02613423          	sd	t1,40(sp)
   1ed2c:	03c13023          	sd	t3,32(sp)
   1ed30:	01113c23          	sd	a7,24(sp)
   1ed34:	d98ff0ef          	jal	1e2cc <__ssprint_r>
   1ed38:	ae0516e3          	bnez	a0,1e824 <_svfiprintf_r+0x360>
   1ed3c:	02813303          	ld	t1,40(sp)
   1ed40:	08013483          	ld	s1,128(sp)
   1ed44:	07812783          	lw	a5,120(sp)
   1ed48:	406c0c3b          	subw	s8,s8,t1
   1ed4c:	04813683          	ld	a3,72(sp)
   1ed50:	02013e03          	ld	t3,32(sp)
   1ed54:	01813883          	ld	a7,24(sp)
   1ed58:	000a8413          	mv	s0,s5
   1ed5c:	9b8050e3          	blez	s8,1e6fc <_svfiprintf_r+0x238>
   1ed60:	00024f37          	lui	t5,0x24
   1ed64:	908f0f13          	add	t5,t5,-1784 # 23908 <zeroes.0>
   1ed68:	0b89d463          	bge	s3,s8,1ee10 <_svfiprintf_r+0x94c>
   1ed6c:	00068613          	mv	a2,a3
   1ed70:	00040713          	mv	a4,s0
   1ed74:	00048693          	mv	a3,s1
   1ed78:	000c0413          	mv	s0,s8
   1ed7c:	00700e93          	li	t4,7
   1ed80:	01113c23          	sd	a7,24(sp)
   1ed84:	03c13023          	sd	t3,32(sp)
   1ed88:	02613423          	sd	t1,40(sp)
   1ed8c:	000b8c13          	mv	s8,s7
   1ed90:	00060493          	mv	s1,a2
   1ed94:	00c0006f          	j	1eda0 <_svfiprintf_r+0x8dc>
   1ed98:	ff04041b          	addw	s0,s0,-16
   1ed9c:	0489d863          	bge	s3,s0,1edec <_svfiprintf_r+0x928>
   1eda0:	0017879b          	addw	a5,a5,1
   1eda4:	01068693          	add	a3,a3,16
   1eda8:	01773023          	sd	s7,0(a4)
   1edac:	01373423          	sd	s3,8(a4)
   1edb0:	08d13023          	sd	a3,128(sp)
   1edb4:	06f12c23          	sw	a5,120(sp)
   1edb8:	01070713          	add	a4,a4,16
   1edbc:	fcfedee3          	bge	t4,a5,1ed98 <_svfiprintf_r+0x8d4>
   1edc0:	07010613          	add	a2,sp,112
   1edc4:	000a0593          	mv	a1,s4
   1edc8:	000b0513          	mv	a0,s6
   1edcc:	d00ff0ef          	jal	1e2cc <__ssprint_r>
   1edd0:	a4051ae3          	bnez	a0,1e824 <_svfiprintf_r+0x360>
   1edd4:	ff04041b          	addw	s0,s0,-16
   1edd8:	08013683          	ld	a3,128(sp)
   1eddc:	07812783          	lw	a5,120(sp)
   1ede0:	000a8713          	mv	a4,s5
   1ede4:	00700e93          	li	t4,7
   1ede8:	fa89cce3          	blt	s3,s0,1eda0 <_svfiprintf_r+0x8dc>
   1edec:	01813883          	ld	a7,24(sp)
   1edf0:	02013e03          	ld	t3,32(sp)
   1edf4:	02813303          	ld	t1,40(sp)
   1edf8:	00048613          	mv	a2,s1
   1edfc:	000c0f13          	mv	t5,s8
   1ee00:	00068493          	mv	s1,a3
   1ee04:	00040c13          	mv	s8,s0
   1ee08:	00060693          	mv	a3,a2
   1ee0c:	00070413          	mv	s0,a4
   1ee10:	0017879b          	addw	a5,a5,1
   1ee14:	018484b3          	add	s1,s1,s8
   1ee18:	01e43023          	sd	t5,0(s0)
   1ee1c:	01843423          	sd	s8,8(s0)
   1ee20:	08913023          	sd	s1,128(sp)
   1ee24:	06f12c23          	sw	a5,120(sp)
   1ee28:	00700713          	li	a4,7
   1ee2c:	01040413          	add	s0,s0,16
   1ee30:	8cf756e3          	bge	a4,a5,1e6fc <_svfiprintf_r+0x238>
   1ee34:	07010613          	add	a2,sp,112
   1ee38:	000a0593          	mv	a1,s4
   1ee3c:	000b0513          	mv	a0,s6
   1ee40:	04d13423          	sd	a3,72(sp)
   1ee44:	02613423          	sd	t1,40(sp)
   1ee48:	03c13023          	sd	t3,32(sp)
   1ee4c:	01113c23          	sd	a7,24(sp)
   1ee50:	c7cff0ef          	jal	1e2cc <__ssprint_r>
   1ee54:	9c0518e3          	bnez	a0,1e824 <_svfiprintf_r+0x360>
   1ee58:	08013483          	ld	s1,128(sp)
   1ee5c:	07812783          	lw	a5,120(sp)
   1ee60:	04813683          	ld	a3,72(sp)
   1ee64:	02813303          	ld	t1,40(sp)
   1ee68:	02013e03          	ld	t3,32(sp)
   1ee6c:	01813883          	ld	a7,24(sp)
   1ee70:	000a8413          	mv	s0,s5
   1ee74:	889ff06f          	j	1e6fc <_svfiprintf_r+0x238>
   1ee78:	07010613          	add	a2,sp,112
   1ee7c:	000a0593          	mv	a1,s4
   1ee80:	000b0513          	mv	a0,s6
   1ee84:	02d13423          	sd	a3,40(sp)
   1ee88:	03c13023          	sd	t3,32(sp)
   1ee8c:	01113c23          	sd	a7,24(sp)
   1ee90:	c3cff0ef          	jal	1e2cc <__ssprint_r>
   1ee94:	980518e3          	bnez	a0,1e824 <_svfiprintf_r+0x360>
   1ee98:	08013483          	ld	s1,128(sp)
   1ee9c:	02813683          	ld	a3,40(sp)
   1eea0:	02013e03          	ld	t3,32(sp)
   1eea4:	01813883          	ld	a7,24(sp)
   1eea8:	000a8413          	mv	s0,s5
   1eeac:	875ff06f          	j	1e720 <_svfiprintf_r+0x25c>
   1eeb0:	07010613          	add	a2,sp,112
   1eeb4:	000a0593          	mv	a1,s4
   1eeb8:	000b0513          	mv	a0,s6
   1eebc:	00d13c23          	sd	a3,24(sp)
   1eec0:	c0cff0ef          	jal	1e2cc <__ssprint_r>
   1eec4:	960510e3          	bnez	a0,1e824 <_svfiprintf_r+0x360>
   1eec8:	08013483          	ld	s1,128(sp)
   1eecc:	01813683          	ld	a3,24(sp)
   1eed0:	875ff06f          	j	1e744 <_svfiprintf_r+0x280>
   1eed4:	00078c93          	mv	s9,a5
   1eed8:	00200793          	li	a5,2
   1eedc:	2c078463          	beqz	a5,1f1a4 <_svfiprintf_r+0xce0>
   1eee0:	01013603          	ld	a2,16(sp)
   1eee4:	0ec10313          	add	t1,sp,236
   1eee8:	00030913          	mv	s2,t1
   1eeec:	00f77793          	and	a5,a4,15
   1eef0:	00f607b3          	add	a5,a2,a5
   1eef4:	0007c783          	lbu	a5,0(a5)
   1eef8:	00475713          	srl	a4,a4,0x4
   1eefc:	fff90913          	add	s2,s2,-1
   1ef00:	00f90023          	sb	a5,0(s2)
   1ef04:	fe0714e3          	bnez	a4,1eeec <_svfiprintf_r+0xa28>
   1ef08:	4123033b          	subw	t1,t1,s2
   1ef0c:	000c0e1b          	sext.w	t3,s8
   1ef10:	a26c52e3          	bge	s8,t1,1e934 <_svfiprintf_r+0x470>
   1ef14:	00030e1b          	sext.w	t3,t1
   1ef18:	a1dff06f          	j	1e934 <_svfiprintf_r+0x470>
   1ef1c:	00024eb7          	lui	t4,0x24
   1ef20:	01000613          	li	a2,16
   1ef24:	918e8e93          	add	t4,t4,-1768 # 23918 <blanks.1>
   1ef28:	0ae65c63          	bge	a2,a4,1efe0 <_svfiprintf_r+0xb1c>
   1ef2c:	00048613          	mv	a2,s1
   1ef30:	04d13c23          	sd	a3,88(sp)
   1ef34:	01000f13          	li	t5,16
   1ef38:	00040693          	mv	a3,s0
   1ef3c:	00700393          	li	t2,7
   1ef40:	00513c23          	sd	t0,24(sp)
   1ef44:	03f13023          	sd	t6,32(sp)
   1ef48:	03113423          	sd	a7,40(sp)
   1ef4c:	05c13423          	sd	t3,72(sp)
   1ef50:	04613823          	sd	t1,80(sp)
   1ef54:	00070413          	mv	s0,a4
   1ef58:	000e8493          	mv	s1,t4
   1ef5c:	00c0006f          	j	1ef68 <_svfiprintf_r+0xaa4>
   1ef60:	ff04041b          	addw	s0,s0,-16
   1ef64:	048f5a63          	bge	t5,s0,1efb8 <_svfiprintf_r+0xaf4>
   1ef68:	0017879b          	addw	a5,a5,1
   1ef6c:	01060613          	add	a2,a2,16
   1ef70:	0096b023          	sd	s1,0(a3)
   1ef74:	01e6b423          	sd	t5,8(a3)
   1ef78:	08c13023          	sd	a2,128(sp)
   1ef7c:	06f12c23          	sw	a5,120(sp)
   1ef80:	01068693          	add	a3,a3,16
   1ef84:	fcf3dee3          	bge	t2,a5,1ef60 <_svfiprintf_r+0xa9c>
   1ef88:	07010613          	add	a2,sp,112
   1ef8c:	000a0593          	mv	a1,s4
   1ef90:	000b0513          	mv	a0,s6
   1ef94:	b38ff0ef          	jal	1e2cc <__ssprint_r>
   1ef98:	880516e3          	bnez	a0,1e824 <_svfiprintf_r+0x360>
   1ef9c:	01000f13          	li	t5,16
   1efa0:	ff04041b          	addw	s0,s0,-16
   1efa4:	08013603          	ld	a2,128(sp)
   1efa8:	07812783          	lw	a5,120(sp)
   1efac:	000a8693          	mv	a3,s5
   1efb0:	00700393          	li	t2,7
   1efb4:	fa8f4ae3          	blt	t5,s0,1ef68 <_svfiprintf_r+0xaa4>
   1efb8:	00040713          	mv	a4,s0
   1efbc:	01813283          	ld	t0,24(sp)
   1efc0:	00068413          	mv	s0,a3
   1efc4:	02013f83          	ld	t6,32(sp)
   1efc8:	02813883          	ld	a7,40(sp)
   1efcc:	04813e03          	ld	t3,72(sp)
   1efd0:	05013303          	ld	t1,80(sp)
   1efd4:	05813683          	ld	a3,88(sp)
   1efd8:	00048e93          	mv	t4,s1
   1efdc:	00060493          	mv	s1,a2
   1efe0:	00e484b3          	add	s1,s1,a4
   1efe4:	0017879b          	addw	a5,a5,1
   1efe8:	00e43423          	sd	a4,8(s0)
   1efec:	01d43023          	sd	t4,0(s0)
   1eff0:	08913023          	sd	s1,128(sp)
   1eff4:	06f12c23          	sw	a5,120(sp)
   1eff8:	00700713          	li	a4,7
   1effc:	01040413          	add	s0,s0,16
   1f000:	e8f75463          	bge	a4,a5,1e688 <_svfiprintf_r+0x1c4>
   1f004:	07010613          	add	a2,sp,112
   1f008:	000a0593          	mv	a1,s4
   1f00c:	000b0513          	mv	a0,s6
   1f010:	04d13c23          	sd	a3,88(sp)
   1f014:	04613823          	sd	t1,80(sp)
   1f018:	05c13423          	sd	t3,72(sp)
   1f01c:	03113423          	sd	a7,40(sp)
   1f020:	03f13023          	sd	t6,32(sp)
   1f024:	00513c23          	sd	t0,24(sp)
   1f028:	aa4ff0ef          	jal	1e2cc <__ssprint_r>
   1f02c:	fe051c63          	bnez	a0,1e824 <_svfiprintf_r+0x360>
   1f030:	08013483          	ld	s1,128(sp)
   1f034:	07812783          	lw	a5,120(sp)
   1f038:	05813683          	ld	a3,88(sp)
   1f03c:	05013303          	ld	t1,80(sp)
   1f040:	04813e03          	ld	t3,72(sp)
   1f044:	02813883          	ld	a7,40(sp)
   1f048:	02013f83          	ld	t6,32(sp)
   1f04c:	01813283          	ld	t0,24(sp)
   1f050:	000a8413          	mv	s0,s5
   1f054:	e34ff06f          	j	1e688 <_svfiprintf_r+0x1c4>
   1f058:	07010613          	add	a2,sp,112
   1f05c:	000a0593          	mv	a1,s4
   1f060:	000b0513          	mv	a0,s6
   1f064:	04d13823          	sd	a3,80(sp)
   1f068:	04613423          	sd	t1,72(sp)
   1f06c:	03c13423          	sd	t3,40(sp)
   1f070:	03113023          	sd	a7,32(sp)
   1f074:	01f13c23          	sd	t6,24(sp)
   1f078:	a54ff0ef          	jal	1e2cc <__ssprint_r>
   1f07c:	fa051463          	bnez	a0,1e824 <_svfiprintf_r+0x360>
   1f080:	08013483          	ld	s1,128(sp)
   1f084:	07812783          	lw	a5,120(sp)
   1f088:	05013683          	ld	a3,80(sp)
   1f08c:	04813303          	ld	t1,72(sp)
   1f090:	02813e03          	ld	t3,40(sp)
   1f094:	02013883          	ld	a7,32(sp)
   1f098:	01813f83          	ld	t6,24(sp)
   1f09c:	000a8413          	mv	s0,s5
   1f0a0:	e4cff06f          	j	1e6ec <_svfiprintf_r+0x228>
   1f0a4:	00024eb7          	lui	t4,0x24
   1f0a8:	01000713          	li	a4,16
   1f0ac:	07812783          	lw	a5,120(sp)
   1f0b0:	918e8e93          	add	t4,t4,-1768 # 23918 <blanks.1>
   1f0b4:	09275c63          	bge	a4,s2,1f14c <_svfiprintf_r+0xc88>
   1f0b8:	00040713          	mv	a4,s0
   1f0bc:	01000c13          	li	s8,16
   1f0c0:	00090413          	mv	s0,s2
   1f0c4:	00700c93          	li	s9,7
   1f0c8:	00068913          	mv	s2,a3
   1f0cc:	01113c23          	sd	a7,24(sp)
   1f0d0:	00048693          	mv	a3,s1
   1f0d4:	03c13023          	sd	t3,32(sp)
   1f0d8:	000e8493          	mv	s1,t4
   1f0dc:	00c0006f          	j	1f0e8 <_svfiprintf_r+0xc24>
   1f0e0:	ff04041b          	addw	s0,s0,-16
   1f0e4:	048c5663          	bge	s8,s0,1f130 <_svfiprintf_r+0xc6c>
   1f0e8:	0017879b          	addw	a5,a5,1
   1f0ec:	01068693          	add	a3,a3,16
   1f0f0:	00973023          	sd	s1,0(a4)
   1f0f4:	01873423          	sd	s8,8(a4)
   1f0f8:	08d13023          	sd	a3,128(sp)
   1f0fc:	06f12c23          	sw	a5,120(sp)
   1f100:	01070713          	add	a4,a4,16
   1f104:	fcfcdee3          	bge	s9,a5,1f0e0 <_svfiprintf_r+0xc1c>
   1f108:	07010613          	add	a2,sp,112
   1f10c:	000a0593          	mv	a1,s4
   1f110:	000b0513          	mv	a0,s6
   1f114:	9b8ff0ef          	jal	1e2cc <__ssprint_r>
   1f118:	f0051663          	bnez	a0,1e824 <_svfiprintf_r+0x360>
   1f11c:	ff04041b          	addw	s0,s0,-16
   1f120:	08013683          	ld	a3,128(sp)
   1f124:	07812783          	lw	a5,120(sp)
   1f128:	000a8713          	mv	a4,s5
   1f12c:	fa8c4ee3          	blt	s8,s0,1f0e8 <_svfiprintf_r+0xc24>
   1f130:	01813883          	ld	a7,24(sp)
   1f134:	02013e03          	ld	t3,32(sp)
   1f138:	00048e93          	mv	t4,s1
   1f13c:	00068493          	mv	s1,a3
   1f140:	00090693          	mv	a3,s2
   1f144:	00040913          	mv	s2,s0
   1f148:	00070413          	mv	s0,a4
   1f14c:	0017871b          	addw	a4,a5,1
   1f150:	012484b3          	add	s1,s1,s2
   1f154:	01d43023          	sd	t4,0(s0)
   1f158:	01243423          	sd	s2,8(s0)
   1f15c:	08913023          	sd	s1,128(sp)
   1f160:	06e12c23          	sw	a4,120(sp)
   1f164:	00700793          	li	a5,7
   1f168:	dce7d463          	bge	a5,a4,1e730 <_svfiprintf_r+0x26c>
   1f16c:	07010613          	add	a2,sp,112
   1f170:	000a0593          	mv	a1,s4
   1f174:	000b0513          	mv	a0,s6
   1f178:	02d13423          	sd	a3,40(sp)
   1f17c:	03c13023          	sd	t3,32(sp)
   1f180:	01113c23          	sd	a7,24(sp)
   1f184:	948ff0ef          	jal	1e2cc <__ssprint_r>
   1f188:	e8051e63          	bnez	a0,1e824 <_svfiprintf_r+0x360>
   1f18c:	08013483          	ld	s1,128(sp)
   1f190:	02813683          	ld	a3,40(sp)
   1f194:	02013e03          	ld	t3,32(sp)
   1f198:	01813883          	ld	a7,24(sp)
   1f19c:	d94ff06f          	j	1e730 <_svfiprintf_r+0x26c>
   1f1a0:	00060693          	mv	a3,a2
   1f1a4:	0ec10313          	add	t1,sp,236
   1f1a8:	00030913          	mv	s2,t1
   1f1ac:	00777793          	and	a5,a4,7
   1f1b0:	03078793          	add	a5,a5,48
   1f1b4:	fef90fa3          	sb	a5,-1(s2)
   1f1b8:	00375713          	srl	a4,a4,0x3
   1f1bc:	00090613          	mv	a2,s2
   1f1c0:	fff90913          	add	s2,s2,-1
   1f1c4:	fe0714e3          	bnez	a4,1f1ac <_svfiprintf_r+0xce8>
   1f1c8:	001cf713          	and	a4,s9,1
   1f1cc:	02070463          	beqz	a4,1f1f4 <_svfiprintf_r+0xd30>
   1f1d0:	03000713          	li	a4,48
   1f1d4:	02e78063          	beq	a5,a4,1f1f4 <_svfiprintf_r+0xd30>
   1f1d8:	ffe60613          	add	a2,a2,-2
   1f1dc:	40c3033b          	subw	t1,t1,a2
   1f1e0:	fee90fa3          	sb	a4,-1(s2)
   1f1e4:	00030e1b          	sext.w	t3,t1
   1f1e8:	0f834e63          	blt	t1,s8,1f2e4 <_svfiprintf_r+0xe20>
   1f1ec:	00060913          	mv	s2,a2
   1f1f0:	f44ff06f          	j	1e934 <_svfiprintf_r+0x470>
   1f1f4:	4123033b          	subw	t1,t1,s2
   1f1f8:	00030e1b          	sext.w	t3,t1
   1f1fc:	f3835c63          	bge	t1,s8,1e934 <_svfiprintf_r+0x470>
   1f200:	000c0e1b          	sext.w	t3,s8
   1f204:	f30ff06f          	j	1e934 <_svfiprintf_r+0x470>
   1f208:	00000e13          	li	t3,0
   1f20c:	00000313          	li	t1,0
   1f210:	0ec10913          	add	s2,sp,236
   1f214:	f20ff06f          	j	1e934 <_svfiprintf_r+0x470>
   1f218:	0ec10313          	add	t1,sp,236
   1f21c:	03813803          	ld	a6,56(sp)
   1f220:	400cff13          	and	t5,s9,1024
   1f224:	00000593          	li	a1,0
   1f228:	00030613          	mv	a2,t1
   1f22c:	00a00693          	li	a3,10
   1f230:	00900e13          	li	t3,9
   1f234:	0ff00f93          	li	t6,255
   1f238:	0140006f          	j	1f24c <_svfiprintf_r+0xd88>
   1f23c:	02d7d733          	divu	a4,a5,a3
   1f240:	02fe7a63          	bgeu	t3,a5,1f274 <_svfiprintf_r+0xdb0>
   1f244:	00070793          	mv	a5,a4
   1f248:	00090613          	mv	a2,s2
   1f24c:	fff60913          	add	s2,a2,-1
   1f250:	0015859b          	addw	a1,a1,1
   1f254:	02d7f733          	remu	a4,a5,a3
   1f258:	0307071b          	addw	a4,a4,48
   1f25c:	fee60fa3          	sb	a4,-1(a2)
   1f260:	fc0f0ee3          	beqz	t5,1f23c <_svfiprintf_r+0xd78>
   1f264:	00084703          	lbu	a4,0(a6)
   1f268:	fcb71ae3          	bne	a4,a1,1f23c <_svfiprintf_r+0xd78>
   1f26c:	fdf708e3          	beq	a4,t6,1f23c <_svfiprintf_r+0xd78>
   1f270:	16fe6463          	bltu	t3,a5,1f3d8 <_svfiprintf_r+0xf14>
   1f274:	4123033b          	subw	t1,t1,s2
   1f278:	03013c23          	sd	a6,56(sp)
   1f27c:	00030e1b          	sext.w	t3,t1
   1f280:	13834663          	blt	t1,s8,1f3ac <_svfiprintf_r+0xee8>
   1f284:	000e8693          	mv	a3,t4
   1f288:	eacff06f          	j	1e934 <_svfiprintf_r+0x470>
   1f28c:	00000e13          	li	t3,0
   1f290:	0ec10913          	add	s2,sp,236
   1f294:	ea0ff06f          	j	1e934 <_svfiprintf_r+0x470>
   1f298:	000dc783          	lbu	a5,0(s11)
   1f29c:	b4070463          	beqz	a4,1e5e4 <_svfiprintf_r+0x120>
   1f2a0:	00074703          	lbu	a4,0(a4)
   1f2a4:	b4070063          	beqz	a4,1e5e4 <_svfiprintf_r+0x120>
   1f2a8:	400cec93          	or	s9,s9,1024
   1f2ac:	000c8c9b          	sext.w	s9,s9
   1f2b0:	b34ff06f          	j	1e5e4 <_svfiprintf_r+0x120>
   1f2b4:	04037713          	and	a4,t1,64
   1f2b8:	0006a783          	lw	a5,0(a3)
   1f2bc:	20070063          	beqz	a4,1f4bc <_svfiprintf_r+0xff8>
   1f2c0:	03079793          	sll	a5,a5,0x30
   1f2c4:	0307d793          	srl	a5,a5,0x30
   1f2c8:	ff8ff06f          	j	1eac0 <_svfiprintf_r+0x5fc>
   1f2cc:	0407f593          	and	a1,a5,64
   1f2d0:	0006a703          	lw	a4,0(a3)
   1f2d4:	1e058c63          	beqz	a1,1f4cc <_svfiprintf_r+0x1008>
   1f2d8:	03071713          	sll	a4,a4,0x30
   1f2dc:	03075713          	srl	a4,a4,0x30
   1f2e0:	f78ff06f          	j	1ea58 <_svfiprintf_r+0x594>
   1f2e4:	000c0e1b          	sext.w	t3,s8
   1f2e8:	00060913          	mv	s2,a2
   1f2ec:	e48ff06f          	j	1e934 <_svfiprintf_r+0x470>
   1f2f0:	00023737          	lui	a4,0x23
   1f2f4:	b6870713          	add	a4,a4,-1176 # 22b68 <__clz_tab+0x120>
   1f2f8:	00e13823          	sd	a4,16(sp)
   1f2fc:	020cf713          	and	a4,s9,32
   1f300:	00868613          	add	a2,a3,8
   1f304:	06071c63          	bnez	a4,1f37c <_svfiprintf_r+0xeb8>
   1f308:	010cf713          	and	a4,s9,16
   1f30c:	06071863          	bnez	a4,1f37c <_svfiprintf_r+0xeb8>
   1f310:	040cf593          	and	a1,s9,64
   1f314:	0006a703          	lw	a4,0(a3)
   1f318:	18058a63          	beqz	a1,1f4ac <_svfiprintf_r+0xfe8>
   1f31c:	03071713          	sll	a4,a4,0x30
   1f320:	03075713          	srl	a4,a4,0x30
   1f324:	001cf693          	and	a3,s9,1
   1f328:	00068e63          	beqz	a3,1f344 <_svfiprintf_r+0xe80>
   1f32c:	00070c63          	beqz	a4,1f344 <_svfiprintf_r+0xe80>
   1f330:	002cec93          	or	s9,s9,2
   1f334:	03000693          	li	a3,48
   1f338:	06d10423          	sb	a3,104(sp)
   1f33c:	06f104a3          	sb	a5,105(sp)
   1f340:	000c8c9b          	sext.w	s9,s9
   1f344:	bffcfc93          	and	s9,s9,-1025
   1f348:	000c8c9b          	sext.w	s9,s9
   1f34c:	00060693          	mv	a3,a2
   1f350:	ea0ff06f          	j	1e9f0 <_svfiprintf_r+0x52c>
   1f354:	000c8793          	mv	a5,s9
   1f358:	ee8ff06f          	j	1ea40 <_svfiprintf_r+0x57c>
   1f35c:	000c8313          	mv	t1,s9
   1f360:	f48ff06f          	j	1eaa8 <_svfiprintf_r+0x5e4>
   1f364:	00023737          	lui	a4,0x23
   1f368:	b8070713          	add	a4,a4,-1152 # 22b80 <__clz_tab+0x138>
   1f36c:	00e13823          	sd	a4,16(sp)
   1f370:	020cf713          	and	a4,s9,32
   1f374:	00868613          	add	a2,a3,8
   1f378:	f80708e3          	beqz	a4,1f308 <_svfiprintf_r+0xe44>
   1f37c:	0006b703          	ld	a4,0(a3)
   1f380:	fa5ff06f          	j	1f324 <_svfiprintf_r+0xe60>
   1f384:	00090513          	mv	a0,s2
   1f388:	e1df90ef          	jal	191a4 <strlen>
   1f38c:	0005031b          	sext.w	t1,a0
   1f390:	fff34e13          	not	t3,t1
   1f394:	43fe5e13          	sra	t3,t3,0x3f
   1f398:	02013683          	ld	a3,32(sp)
   1f39c:	01813883          	ld	a7,24(sp)
   1f3a0:	006e7e33          	and	t3,t3,t1
   1f3a4:	00000c13          	li	s8,0
   1f3a8:	d8cff06f          	j	1e934 <_svfiprintf_r+0x470>
   1f3ac:	000c0e1b          	sext.w	t3,s8
   1f3b0:	000e8693          	mv	a3,t4
   1f3b4:	d80ff06f          	j	1e934 <_svfiprintf_r+0x470>
   1f3b8:	04000593          	li	a1,64
   1f3bc:	cc5f70ef          	jal	17080 <_malloc_r>
   1f3c0:	00aa3023          	sd	a0,0(s4)
   1f3c4:	00aa3c23          	sd	a0,24(s4)
   1f3c8:	18050a63          	beqz	a0,1f55c <_svfiprintf_r+0x1098>
   1f3cc:	04000713          	li	a4,64
   1f3d0:	02ea2023          	sw	a4,32(s4)
   1f3d4:	94cff06f          	j	1e520 <_svfiprintf_r+0x5c>
   1f3d8:	04f13423          	sd	a5,72(sp)
   1f3dc:	03013783          	ld	a5,48(sp)
   1f3e0:	04013583          	ld	a1,64(sp)
   1f3e4:	04613823          	sd	t1,80(sp)
   1f3e8:	40f90933          	sub	s2,s2,a5
   1f3ec:	00078613          	mv	a2,a5
   1f3f0:	00090513          	mv	a0,s2
   1f3f4:	03d13c23          	sd	t4,56(sp)
   1f3f8:	03e13423          	sd	t5,40(sp)
   1f3fc:	03113023          	sd	a7,32(sp)
   1f400:	01013c23          	sd	a6,24(sp)
   1f404:	e69f90ef          	jal	1926c <strncpy>
   1f408:	01813803          	ld	a6,24(sp)
   1f40c:	04813783          	ld	a5,72(sp)
   1f410:	00a00713          	li	a4,10
   1f414:	00184603          	lbu	a2,1(a6)
   1f418:	02e7d733          	divu	a4,a5,a4
   1f41c:	02013883          	ld	a7,32(sp)
   1f420:	00c037b3          	snez	a5,a2
   1f424:	02813f03          	ld	t5,40(sp)
   1f428:	03813e83          	ld	t4,56(sp)
   1f42c:	05013303          	ld	t1,80(sp)
   1f430:	00f80833          	add	a6,a6,a5
   1f434:	00000593          	li	a1,0
   1f438:	00a00693          	li	a3,10
   1f43c:	00900e13          	li	t3,9
   1f440:	0ff00f93          	li	t6,255
   1f444:	e01ff06f          	j	1f244 <_svfiprintf_r+0xd80>
   1f448:	00078c93          	mv	s9,a5
   1f44c:	00000793          	li	a5,0
   1f450:	00060693          	mv	a3,a2
   1f454:	d40788e3          	beqz	a5,1f1a4 <_svfiprintf_r+0xce0>
   1f458:	a89ff06f          	j	1eee0 <_svfiprintf_r+0xa1c>
   1f45c:	200cec93          	or	s9,s9,512
   1f460:	001dc783          	lbu	a5,1(s11)
   1f464:	000c8c9b          	sext.w	s9,s9
   1f468:	001d8d93          	add	s11,s11,1
   1f46c:	978ff06f          	j	1e5e4 <_svfiprintf_r+0x120>
   1f470:	020cec93          	or	s9,s9,32
   1f474:	001dc783          	lbu	a5,1(s11)
   1f478:	000c8c9b          	sext.w	s9,s9
   1f47c:	001d8d93          	add	s11,s11,1
   1f480:	964ff06f          	j	1e5e4 <_svfiprintf_r+0x120>
   1f484:	00600793          	li	a5,6
   1f488:	000c031b          	sext.w	t1,s8
   1f48c:	0187f463          	bgeu	a5,s8,1f494 <_svfiprintf_r+0xfd0>
   1f490:	00600313          	li	t1,6
   1f494:	00023937          	lui	s2,0x23
   1f498:	00030e13          	mv	t3,t1
   1f49c:	b9890913          	add	s2,s2,-1128 # 22b98 <__clz_tab+0x150>
   1f4a0:	9c4ff06f          	j	1e664 <_svfiprintf_r+0x1a0>
   1f4a4:	00000713          	li	a4,0
   1f4a8:	a39ff06f          	j	1eee0 <_svfiprintf_r+0xa1c>
   1f4ac:	200cf693          	and	a3,s9,512
   1f4b0:	06068c63          	beqz	a3,1f528 <_svfiprintf_r+0x1064>
   1f4b4:	0ff77713          	zext.b	a4,a4
   1f4b8:	e6dff06f          	j	1f324 <_svfiprintf_r+0xe60>
   1f4bc:	20037713          	and	a4,t1,512
   1f4c0:	04070e63          	beqz	a4,1f51c <_svfiprintf_r+0x1058>
   1f4c4:	0ff7f793          	zext.b	a5,a5
   1f4c8:	df8ff06f          	j	1eac0 <_svfiprintf_r+0x5fc>
   1f4cc:	2007f693          	and	a3,a5,512
   1f4d0:	04068063          	beqz	a3,1f510 <_svfiprintf_r+0x104c>
   1f4d4:	0ff77713          	zext.b	a4,a4
   1f4d8:	d80ff06f          	j	1ea58 <_svfiprintf_r+0x594>
   1f4dc:	200cf713          	and	a4,s9,512
   1f4e0:	02070263          	beqz	a4,1f504 <_svfiprintf_r+0x1040>
   1f4e4:	0187979b          	sllw	a5,a5,0x18
   1f4e8:	4187d79b          	sraw	a5,a5,0x18
   1f4ec:	00078713          	mv	a4,a5
   1f4f0:	aa075863          	bgez	a4,1e7a0 <_svfiprintf_r+0x2dc>
   1f4f4:	bf8ff06f          	j	1e8ec <_svfiprintf_r+0x428>
   1f4f8:	01a71023          	sh	s10,0(a4)
   1f4fc:	00868693          	add	a3,a3,8
   1f500:	86cff06f          	j	1e56c <_svfiprintf_r+0xa8>
   1f504:	00078713          	mv	a4,a5
   1f508:	a8075c63          	bgez	a4,1e7a0 <_svfiprintf_r+0x2dc>
   1f50c:	be0ff06f          	j	1e8ec <_svfiprintf_r+0x428>
   1f510:	02071713          	sll	a4,a4,0x20
   1f514:	02075713          	srl	a4,a4,0x20
   1f518:	d40ff06f          	j	1ea58 <_svfiprintf_r+0x594>
   1f51c:	02079793          	sll	a5,a5,0x20
   1f520:	0207d793          	srl	a5,a5,0x20
   1f524:	d9cff06f          	j	1eac0 <_svfiprintf_r+0x5fc>
   1f528:	02071713          	sll	a4,a4,0x20
   1f52c:	02075713          	srl	a4,a4,0x20
   1f530:	df5ff06f          	j	1f324 <_svfiprintf_r+0xe60>
   1f534:	000c0e13          	mv	t3,s8
   1f538:	000c0313          	mv	t1,s8
   1f53c:	00000c13          	li	s8,0
   1f540:	bf4ff06f          	j	1e934 <_svfiprintf_r+0x470>
   1f544:	000e8693          	mv	a3,t4
   1f548:	03000793          	li	a5,48
   1f54c:	bd0ff06f          	j	1e91c <_svfiprintf_r+0x458>
   1f550:	01a72023          	sw	s10,0(a4)
   1f554:	00868693          	add	a3,a3,8
   1f558:	814ff06f          	j	1e56c <_svfiprintf_r+0xa8>
   1f55c:	00c00793          	li	a5,12
   1f560:	00fb2023          	sw	a5,0(s6)
   1f564:	fff00c93          	li	s9,-1
   1f568:	accff06f          	j	1e834 <_svfiprintf_r+0x370>
   1f56c:	0006a783          	lw	a5,0(a3)
   1f570:	00868693          	add	a3,a3,8
   1f574:	00078c1b          	sext.w	s8,a5
   1f578:	0007d463          	bgez	a5,1f580 <_svfiprintf_r+0x10bc>
   1f57c:	fff00c13          	li	s8,-1
   1f580:	001dc783          	lbu	a5,1(s11)
   1f584:	00070d93          	mv	s11,a4
   1f588:	85cff06f          	j	1e5e4 <_svfiprintf_r+0x120>

000000000001f58c <__swbuf_r>:
   1f58c:	fd010113          	add	sp,sp,-48
   1f590:	02813023          	sd	s0,32(sp)
   1f594:	00913c23          	sd	s1,24(sp)
   1f598:	01213823          	sd	s2,16(sp)
   1f59c:	02113423          	sd	ra,40(sp)
   1f5a0:	01313423          	sd	s3,8(sp)
   1f5a4:	00050913          	mv	s2,a0
   1f5a8:	00058493          	mv	s1,a1
   1f5ac:	00060413          	mv	s0,a2
   1f5b0:	00050663          	beqz	a0,1f5bc <__swbuf_r+0x30>
   1f5b4:	05052783          	lw	a5,80(a0)
   1f5b8:	14078063          	beqz	a5,1f6f8 <__swbuf_r+0x16c>
   1f5bc:	02842783          	lw	a5,40(s0)
   1f5c0:	01041703          	lh	a4,16(s0)
   1f5c4:	00f42623          	sw	a5,12(s0)
   1f5c8:	00877793          	and	a5,a4,8
   1f5cc:	08078263          	beqz	a5,1f650 <__swbuf_r+0xc4>
   1f5d0:	01843783          	ld	a5,24(s0)
   1f5d4:	06078e63          	beqz	a5,1f650 <__swbuf_r+0xc4>
   1f5d8:	0ff4f993          	zext.b	s3,s1
   1f5dc:	03271693          	sll	a3,a4,0x32
   1f5e0:	00098493          	mv	s1,s3
   1f5e4:	0806da63          	bgez	a3,1f678 <__swbuf_r+0xec>
   1f5e8:	00043703          	ld	a4,0(s0)
   1f5ec:	02042683          	lw	a3,32(s0)
   1f5f0:	40f707bb          	subw	a5,a4,a5
   1f5f4:	0ad7da63          	bge	a5,a3,1f6a8 <__swbuf_r+0x11c>
   1f5f8:	00c42683          	lw	a3,12(s0)
   1f5fc:	00170613          	add	a2,a4,1
   1f600:	00c43023          	sd	a2,0(s0)
   1f604:	fff6869b          	addw	a3,a3,-1
   1f608:	00d42623          	sw	a3,12(s0)
   1f60c:	01370023          	sb	s3,0(a4)
   1f610:	02042703          	lw	a4,32(s0)
   1f614:	0017879b          	addw	a5,a5,1
   1f618:	0cf70463          	beq	a4,a5,1f6e0 <__swbuf_r+0x154>
   1f61c:	01045783          	lhu	a5,16(s0)
   1f620:	0017f793          	and	a5,a5,1
   1f624:	00078663          	beqz	a5,1f630 <__swbuf_r+0xa4>
   1f628:	00a00793          	li	a5,10
   1f62c:	0af48a63          	beq	s1,a5,1f6e0 <__swbuf_r+0x154>
   1f630:	02813083          	ld	ra,40(sp)
   1f634:	02013403          	ld	s0,32(sp)
   1f638:	01013903          	ld	s2,16(sp)
   1f63c:	00813983          	ld	s3,8(sp)
   1f640:	00048513          	mv	a0,s1
   1f644:	01813483          	ld	s1,24(sp)
   1f648:	03010113          	add	sp,sp,48
   1f64c:	00008067          	ret
   1f650:	00040593          	mv	a1,s0
   1f654:	00090513          	mv	a0,s2
   1f658:	b11f30ef          	jal	13168 <__swsetup_r>
   1f65c:	08051a63          	bnez	a0,1f6f0 <__swbuf_r+0x164>
   1f660:	01041703          	lh	a4,16(s0)
   1f664:	0ff4f993          	zext.b	s3,s1
   1f668:	01843783          	ld	a5,24(s0)
   1f66c:	03271693          	sll	a3,a4,0x32
   1f670:	00098493          	mv	s1,s3
   1f674:	f606cae3          	bltz	a3,1f5e8 <__swbuf_r+0x5c>
   1f678:	0ac42683          	lw	a3,172(s0)
   1f67c:	00002637          	lui	a2,0x2
   1f680:	00c76733          	or	a4,a4,a2
   1f684:	ffffe637          	lui	a2,0xffffe
   1f688:	fff60613          	add	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd847f>
   1f68c:	00c6f6b3          	and	a3,a3,a2
   1f690:	00e41823          	sh	a4,16(s0)
   1f694:	00043703          	ld	a4,0(s0)
   1f698:	0ad42623          	sw	a3,172(s0)
   1f69c:	02042683          	lw	a3,32(s0)
   1f6a0:	40f707bb          	subw	a5,a4,a5
   1f6a4:	f4d7cae3          	blt	a5,a3,1f5f8 <__swbuf_r+0x6c>
   1f6a8:	00040593          	mv	a1,s0
   1f6ac:	00090513          	mv	a0,s2
   1f6b0:	f6df30ef          	jal	1361c <_fflush_r>
   1f6b4:	02051e63          	bnez	a0,1f6f0 <__swbuf_r+0x164>
   1f6b8:	00043703          	ld	a4,0(s0)
   1f6bc:	00c42683          	lw	a3,12(s0)
   1f6c0:	00100793          	li	a5,1
   1f6c4:	00170613          	add	a2,a4,1
   1f6c8:	fff6869b          	addw	a3,a3,-1
   1f6cc:	00c43023          	sd	a2,0(s0)
   1f6d0:	00d42623          	sw	a3,12(s0)
   1f6d4:	01370023          	sb	s3,0(a4)
   1f6d8:	02042703          	lw	a4,32(s0)
   1f6dc:	f4f710e3          	bne	a4,a5,1f61c <__swbuf_r+0x90>
   1f6e0:	00040593          	mv	a1,s0
   1f6e4:	00090513          	mv	a0,s2
   1f6e8:	f35f30ef          	jal	1361c <_fflush_r>
   1f6ec:	f40502e3          	beqz	a0,1f630 <__swbuf_r+0xa4>
   1f6f0:	fff00493          	li	s1,-1
   1f6f4:	f3dff06f          	j	1f630 <__swbuf_r+0xa4>
   1f6f8:	b40f40ef          	jal	13a38 <__sinit>
   1f6fc:	ec1ff06f          	j	1f5bc <__swbuf_r+0x30>

000000000001f700 <__swbuf>:
   1f700:	00050793          	mv	a5,a0
   1f704:	7581b503          	ld	a0,1880(gp) # 25ad8 <_impure_ptr>
   1f708:	00058613          	mv	a2,a1
   1f70c:	00078593          	mv	a1,a5
   1f710:	e7dff06f          	j	1f58c <__swbuf_r>

000000000001f714 <_wcrtomb_r>:
   1f714:	fd010113          	add	sp,sp,-48
   1f718:	02813023          	sd	s0,32(sp)
   1f71c:	00913c23          	sd	s1,24(sp)
   1f720:	02113423          	sd	ra,40(sp)
   1f724:	e281b783          	ld	a5,-472(gp) # 251a8 <__global_locale+0xe0>
   1f728:	00050413          	mv	s0,a0
   1f72c:	00068493          	mv	s1,a3
   1f730:	02058263          	beqz	a1,1f754 <_wcrtomb_r+0x40>
   1f734:	000780e7          	jalr	a5
   1f738:	fff00793          	li	a5,-1
   1f73c:	02f50663          	beq	a0,a5,1f768 <_wcrtomb_r+0x54>
   1f740:	02813083          	ld	ra,40(sp)
   1f744:	02013403          	ld	s0,32(sp)
   1f748:	01813483          	ld	s1,24(sp)
   1f74c:	03010113          	add	sp,sp,48
   1f750:	00008067          	ret
   1f754:	00000613          	li	a2,0
   1f758:	00010593          	mv	a1,sp
   1f75c:	000780e7          	jalr	a5
   1f760:	fff00793          	li	a5,-1
   1f764:	fcf51ee3          	bne	a0,a5,1f740 <_wcrtomb_r+0x2c>
   1f768:	0004a023          	sw	zero,0(s1)
   1f76c:	08a00793          	li	a5,138
   1f770:	02813083          	ld	ra,40(sp)
   1f774:	00f42023          	sw	a5,0(s0)
   1f778:	02013403          	ld	s0,32(sp)
   1f77c:	01813483          	ld	s1,24(sp)
   1f780:	03010113          	add	sp,sp,48
   1f784:	00008067          	ret

000000000001f788 <wcrtomb>:
   1f788:	fd010113          	add	sp,sp,-48
   1f78c:	02813023          	sd	s0,32(sp)
   1f790:	00913c23          	sd	s1,24(sp)
   1f794:	02113423          	sd	ra,40(sp)
   1f798:	7581b483          	ld	s1,1880(gp) # 25ad8 <_impure_ptr>
   1f79c:	e281b783          	ld	a5,-472(gp) # 251a8 <__global_locale+0xe0>
   1f7a0:	00060413          	mv	s0,a2
   1f7a4:	02050a63          	beqz	a0,1f7d8 <wcrtomb+0x50>
   1f7a8:	00058613          	mv	a2,a1
   1f7ac:	00040693          	mv	a3,s0
   1f7b0:	00050593          	mv	a1,a0
   1f7b4:	00048513          	mv	a0,s1
   1f7b8:	000780e7          	jalr	a5
   1f7bc:	fff00793          	li	a5,-1
   1f7c0:	02f50a63          	beq	a0,a5,1f7f4 <wcrtomb+0x6c>
   1f7c4:	02813083          	ld	ra,40(sp)
   1f7c8:	02013403          	ld	s0,32(sp)
   1f7cc:	01813483          	ld	s1,24(sp)
   1f7d0:	03010113          	add	sp,sp,48
   1f7d4:	00008067          	ret
   1f7d8:	00060693          	mv	a3,a2
   1f7dc:	00010593          	mv	a1,sp
   1f7e0:	00000613          	li	a2,0
   1f7e4:	00048513          	mv	a0,s1
   1f7e8:	000780e7          	jalr	a5
   1f7ec:	fff00793          	li	a5,-1
   1f7f0:	fcf51ae3          	bne	a0,a5,1f7c4 <wcrtomb+0x3c>
   1f7f4:	00042023          	sw	zero,0(s0)
   1f7f8:	02813083          	ld	ra,40(sp)
   1f7fc:	02013403          	ld	s0,32(sp)
   1f800:	08a00793          	li	a5,138
   1f804:	00f4a023          	sw	a5,0(s1)
   1f808:	01813483          	ld	s1,24(sp)
   1f80c:	03010113          	add	sp,sp,48
   1f810:	00008067          	ret

000000000001f814 <abort>:
   1f814:	ff010113          	add	sp,sp,-16
   1f818:	00600513          	li	a0,6
   1f81c:	00113423          	sd	ra,8(sp)
   1f820:	344000ef          	jal	1fb64 <raise>
   1f824:	00100513          	li	a0,1
   1f828:	674000ef          	jal	1fe9c <_exit>

000000000001f82c <__register_exitproc>:
   1f82c:	7481b703          	ld	a4,1864(gp) # 25ac8 <_global_impure_ptr>
   1f830:	1f873783          	ld	a5,504(a4)
   1f834:	06078063          	beqz	a5,1f894 <__register_exitproc+0x68>
   1f838:	0087a703          	lw	a4,8(a5)
   1f83c:	01f00813          	li	a6,31
   1f840:	08e84663          	blt	a6,a4,1f8cc <__register_exitproc+0xa0>
   1f844:	02050863          	beqz	a0,1f874 <__register_exitproc+0x48>
   1f848:	00371813          	sll	a6,a4,0x3
   1f84c:	01078833          	add	a6,a5,a6
   1f850:	10c83823          	sd	a2,272(a6)
   1f854:	3107a883          	lw	a7,784(a5)
   1f858:	00100613          	li	a2,1
   1f85c:	00e6163b          	sllw	a2,a2,a4
   1f860:	00c8e8b3          	or	a7,a7,a2
   1f864:	3117a823          	sw	a7,784(a5)
   1f868:	20d83823          	sd	a3,528(a6)
   1f86c:	00200693          	li	a3,2
   1f870:	02d50863          	beq	a0,a3,1f8a0 <__register_exitproc+0x74>
   1f874:	00270693          	add	a3,a4,2
   1f878:	00369693          	sll	a3,a3,0x3
   1f87c:	0017071b          	addw	a4,a4,1
   1f880:	00e7a423          	sw	a4,8(a5)
   1f884:	00d787b3          	add	a5,a5,a3
   1f888:	00b7b023          	sd	a1,0(a5)
   1f88c:	00000513          	li	a0,0
   1f890:	00008067          	ret
   1f894:	20070793          	add	a5,a4,512
   1f898:	1ef73c23          	sd	a5,504(a4)
   1f89c:	f9dff06f          	j	1f838 <__register_exitproc+0xc>
   1f8a0:	3147a683          	lw	a3,788(a5)
   1f8a4:	00000513          	li	a0,0
   1f8a8:	00c6e6b3          	or	a3,a3,a2
   1f8ac:	30d7aa23          	sw	a3,788(a5)
   1f8b0:	00270693          	add	a3,a4,2
   1f8b4:	00369693          	sll	a3,a3,0x3
   1f8b8:	0017071b          	addw	a4,a4,1
   1f8bc:	00e7a423          	sw	a4,8(a5)
   1f8c0:	00d787b3          	add	a5,a5,a3
   1f8c4:	00b7b023          	sd	a1,0(a5)
   1f8c8:	00008067          	ret
   1f8cc:	fff00513          	li	a0,-1
   1f8d0:	00008067          	ret

000000000001f8d4 <_init_signal_r>:
   1f8d4:	51853783          	ld	a5,1304(a0)
   1f8d8:	00078663          	beqz	a5,1f8e4 <_init_signal_r+0x10>
   1f8dc:	00000513          	li	a0,0
   1f8e0:	00008067          	ret
   1f8e4:	ff010113          	add	sp,sp,-16
   1f8e8:	10000593          	li	a1,256
   1f8ec:	00813023          	sd	s0,0(sp)
   1f8f0:	00113423          	sd	ra,8(sp)
   1f8f4:	00050413          	mv	s0,a0
   1f8f8:	f88f70ef          	jal	17080 <_malloc_r>
   1f8fc:	50a43c23          	sd	a0,1304(s0)
   1f900:	02050463          	beqz	a0,1f928 <_init_signal_r+0x54>
   1f904:	10050793          	add	a5,a0,256
   1f908:	00053023          	sd	zero,0(a0)
   1f90c:	00850513          	add	a0,a0,8
   1f910:	fef51ce3          	bne	a0,a5,1f908 <_init_signal_r+0x34>
   1f914:	00000513          	li	a0,0
   1f918:	00813083          	ld	ra,8(sp)
   1f91c:	00013403          	ld	s0,0(sp)
   1f920:	01010113          	add	sp,sp,16
   1f924:	00008067          	ret
   1f928:	fff00513          	li	a0,-1
   1f92c:	fedff06f          	j	1f918 <_init_signal_r+0x44>

000000000001f930 <_signal_r>:
   1f930:	fd010113          	add	sp,sp,-48
   1f934:	00913c23          	sd	s1,24(sp)
   1f938:	02113423          	sd	ra,40(sp)
   1f93c:	02813023          	sd	s0,32(sp)
   1f940:	01f00793          	li	a5,31
   1f944:	00050493          	mv	s1,a0
   1f948:	02b7ea63          	bltu	a5,a1,1f97c <_signal_r+0x4c>
   1f94c:	51853783          	ld	a5,1304(a0)
   1f950:	00058413          	mv	s0,a1
   1f954:	02078c63          	beqz	a5,1f98c <_signal_r+0x5c>
   1f958:	00341413          	sll	s0,s0,0x3
   1f95c:	008787b3          	add	a5,a5,s0
   1f960:	0007b503          	ld	a0,0(a5)
   1f964:	00c7b023          	sd	a2,0(a5)
   1f968:	02813083          	ld	ra,40(sp)
   1f96c:	02013403          	ld	s0,32(sp)
   1f970:	01813483          	ld	s1,24(sp)
   1f974:	03010113          	add	sp,sp,48
   1f978:	00008067          	ret
   1f97c:	01600793          	li	a5,22
   1f980:	00f52023          	sw	a5,0(a0)
   1f984:	fff00513          	li	a0,-1
   1f988:	fe1ff06f          	j	1f968 <_signal_r+0x38>
   1f98c:	10000593          	li	a1,256
   1f990:	00c13423          	sd	a2,8(sp)
   1f994:	eecf70ef          	jal	17080 <_malloc_r>
   1f998:	50a4bc23          	sd	a0,1304(s1)
   1f99c:	00813603          	ld	a2,8(sp)
   1f9a0:	00050793          	mv	a5,a0
   1f9a4:	00050713          	mv	a4,a0
   1f9a8:	10050693          	add	a3,a0,256
   1f9ac:	fc050ce3          	beqz	a0,1f984 <_signal_r+0x54>
   1f9b0:	00073023          	sd	zero,0(a4)
   1f9b4:	00870713          	add	a4,a4,8
   1f9b8:	fed71ce3          	bne	a4,a3,1f9b0 <_signal_r+0x80>
   1f9bc:	f9dff06f          	j	1f958 <_signal_r+0x28>

000000000001f9c0 <_raise_r>:
   1f9c0:	fe010113          	add	sp,sp,-32
   1f9c4:	00913423          	sd	s1,8(sp)
   1f9c8:	00113c23          	sd	ra,24(sp)
   1f9cc:	00813823          	sd	s0,16(sp)
   1f9d0:	01f00793          	li	a5,31
   1f9d4:	00050493          	mv	s1,a0
   1f9d8:	08b7ee63          	bltu	a5,a1,1fa74 <_raise_r+0xb4>
   1f9dc:	51853783          	ld	a5,1304(a0)
   1f9e0:	00058413          	mv	s0,a1
   1f9e4:	04078463          	beqz	a5,1fa2c <_raise_r+0x6c>
   1f9e8:	00359713          	sll	a4,a1,0x3
   1f9ec:	00e787b3          	add	a5,a5,a4
   1f9f0:	0007b703          	ld	a4,0(a5)
   1f9f4:	02070c63          	beqz	a4,1fa2c <_raise_r+0x6c>
   1f9f8:	00100693          	li	a3,1
   1f9fc:	00d70c63          	beq	a4,a3,1fa14 <_raise_r+0x54>
   1fa00:	fff00693          	li	a3,-1
   1fa04:	04d70863          	beq	a4,a3,1fa54 <_raise_r+0x94>
   1fa08:	0007b023          	sd	zero,0(a5)
   1fa0c:	00058513          	mv	a0,a1
   1fa10:	000700e7          	jalr	a4
   1fa14:	00000513          	li	a0,0
   1fa18:	01813083          	ld	ra,24(sp)
   1fa1c:	01013403          	ld	s0,16(sp)
   1fa20:	00813483          	ld	s1,8(sp)
   1fa24:	02010113          	add	sp,sp,32
   1fa28:	00008067          	ret
   1fa2c:	00048513          	mv	a0,s1
   1fa30:	424000ef          	jal	1fe54 <_getpid_r>
   1fa34:	00040613          	mv	a2,s0
   1fa38:	01013403          	ld	s0,16(sp)
   1fa3c:	01813083          	ld	ra,24(sp)
   1fa40:	00050593          	mv	a1,a0
   1fa44:	00048513          	mv	a0,s1
   1fa48:	00813483          	ld	s1,8(sp)
   1fa4c:	02010113          	add	sp,sp,32
   1fa50:	3a00006f          	j	1fdf0 <_kill_r>
   1fa54:	01813083          	ld	ra,24(sp)
   1fa58:	01013403          	ld	s0,16(sp)
   1fa5c:	01600793          	li	a5,22
   1fa60:	00f52023          	sw	a5,0(a0)
   1fa64:	00813483          	ld	s1,8(sp)
   1fa68:	00100513          	li	a0,1
   1fa6c:	02010113          	add	sp,sp,32
   1fa70:	00008067          	ret
   1fa74:	01600793          	li	a5,22
   1fa78:	00f52023          	sw	a5,0(a0)
   1fa7c:	fff00513          	li	a0,-1
   1fa80:	f99ff06f          	j	1fa18 <_raise_r+0x58>

000000000001fa84 <__sigtramp_r>:
   1fa84:	01f00793          	li	a5,31
   1fa88:	0cb7ea63          	bltu	a5,a1,1fb5c <__sigtramp_r+0xd8>
   1fa8c:	51853783          	ld	a5,1304(a0)
   1fa90:	fe010113          	add	sp,sp,-32
   1fa94:	00813823          	sd	s0,16(sp)
   1fa98:	00913423          	sd	s1,8(sp)
   1fa9c:	00113c23          	sd	ra,24(sp)
   1faa0:	00058413          	mv	s0,a1
   1faa4:	00050493          	mv	s1,a0
   1faa8:	08078063          	beqz	a5,1fb28 <__sigtramp_r+0xa4>
   1faac:	00341713          	sll	a4,s0,0x3
   1fab0:	00e787b3          	add	a5,a5,a4
   1fab4:	0007b703          	ld	a4,0(a5)
   1fab8:	02070c63          	beqz	a4,1faf0 <__sigtramp_r+0x6c>
   1fabc:	fff00693          	li	a3,-1
   1fac0:	06d70063          	beq	a4,a3,1fb20 <__sigtramp_r+0x9c>
   1fac4:	00100693          	li	a3,1
   1fac8:	04d70063          	beq	a4,a3,1fb08 <__sigtramp_r+0x84>
   1facc:	00040513          	mv	a0,s0
   1fad0:	0007b023          	sd	zero,0(a5)
   1fad4:	000700e7          	jalr	a4
   1fad8:	00000513          	li	a0,0
   1fadc:	01813083          	ld	ra,24(sp)
   1fae0:	01013403          	ld	s0,16(sp)
   1fae4:	00813483          	ld	s1,8(sp)
   1fae8:	02010113          	add	sp,sp,32
   1faec:	00008067          	ret
   1faf0:	01813083          	ld	ra,24(sp)
   1faf4:	01013403          	ld	s0,16(sp)
   1faf8:	00813483          	ld	s1,8(sp)
   1fafc:	00100513          	li	a0,1
   1fb00:	02010113          	add	sp,sp,32
   1fb04:	00008067          	ret
   1fb08:	01813083          	ld	ra,24(sp)
   1fb0c:	01013403          	ld	s0,16(sp)
   1fb10:	00813483          	ld	s1,8(sp)
   1fb14:	00300513          	li	a0,3
   1fb18:	02010113          	add	sp,sp,32
   1fb1c:	00008067          	ret
   1fb20:	00200513          	li	a0,2
   1fb24:	fb9ff06f          	j	1fadc <__sigtramp_r+0x58>
   1fb28:	10000593          	li	a1,256
   1fb2c:	d54f70ef          	jal	17080 <_malloc_r>
   1fb30:	50a4bc23          	sd	a0,1304(s1)
   1fb34:	00050793          	mv	a5,a0
   1fb38:	00050e63          	beqz	a0,1fb54 <__sigtramp_r+0xd0>
   1fb3c:	00050713          	mv	a4,a0
   1fb40:	10050693          	add	a3,a0,256
   1fb44:	00073023          	sd	zero,0(a4)
   1fb48:	00870713          	add	a4,a4,8
   1fb4c:	fee69ce3          	bne	a3,a4,1fb44 <__sigtramp_r+0xc0>
   1fb50:	f5dff06f          	j	1faac <__sigtramp_r+0x28>
   1fb54:	fff00513          	li	a0,-1
   1fb58:	f85ff06f          	j	1fadc <__sigtramp_r+0x58>
   1fb5c:	fff00513          	li	a0,-1
   1fb60:	00008067          	ret

000000000001fb64 <raise>:
   1fb64:	fe010113          	add	sp,sp,-32
   1fb68:	00913423          	sd	s1,8(sp)
   1fb6c:	00113c23          	sd	ra,24(sp)
   1fb70:	00813823          	sd	s0,16(sp)
   1fb74:	01f00793          	li	a5,31
   1fb78:	7581b483          	ld	s1,1880(gp) # 25ad8 <_impure_ptr>
   1fb7c:	08a7ec63          	bltu	a5,a0,1fc14 <raise+0xb0>
   1fb80:	5184b783          	ld	a5,1304(s1)
   1fb84:	00050413          	mv	s0,a0
   1fb88:	04078263          	beqz	a5,1fbcc <raise+0x68>
   1fb8c:	00351713          	sll	a4,a0,0x3
   1fb90:	00e787b3          	add	a5,a5,a4
   1fb94:	0007b703          	ld	a4,0(a5)
   1fb98:	02070a63          	beqz	a4,1fbcc <raise+0x68>
   1fb9c:	00100693          	li	a3,1
   1fba0:	00d70a63          	beq	a4,a3,1fbb4 <raise+0x50>
   1fba4:	fff00693          	li	a3,-1
   1fba8:	04d70663          	beq	a4,a3,1fbf4 <raise+0x90>
   1fbac:	0007b023          	sd	zero,0(a5)
   1fbb0:	000700e7          	jalr	a4
   1fbb4:	00000513          	li	a0,0
   1fbb8:	01813083          	ld	ra,24(sp)
   1fbbc:	01013403          	ld	s0,16(sp)
   1fbc0:	00813483          	ld	s1,8(sp)
   1fbc4:	02010113          	add	sp,sp,32
   1fbc8:	00008067          	ret
   1fbcc:	00048513          	mv	a0,s1
   1fbd0:	284000ef          	jal	1fe54 <_getpid_r>
   1fbd4:	00040613          	mv	a2,s0
   1fbd8:	01013403          	ld	s0,16(sp)
   1fbdc:	01813083          	ld	ra,24(sp)
   1fbe0:	00050593          	mv	a1,a0
   1fbe4:	00048513          	mv	a0,s1
   1fbe8:	00813483          	ld	s1,8(sp)
   1fbec:	02010113          	add	sp,sp,32
   1fbf0:	2000006f          	j	1fdf0 <_kill_r>
   1fbf4:	01813083          	ld	ra,24(sp)
   1fbf8:	01013403          	ld	s0,16(sp)
   1fbfc:	01600793          	li	a5,22
   1fc00:	00f4a023          	sw	a5,0(s1)
   1fc04:	00100513          	li	a0,1
   1fc08:	00813483          	ld	s1,8(sp)
   1fc0c:	02010113          	add	sp,sp,32
   1fc10:	00008067          	ret
   1fc14:	01600793          	li	a5,22
   1fc18:	00f4a023          	sw	a5,0(s1)
   1fc1c:	fff00513          	li	a0,-1
   1fc20:	f99ff06f          	j	1fbb8 <raise+0x54>

000000000001fc24 <signal>:
   1fc24:	fe010113          	add	sp,sp,-32
   1fc28:	01213023          	sd	s2,0(sp)
   1fc2c:	00113c23          	sd	ra,24(sp)
   1fc30:	00813823          	sd	s0,16(sp)
   1fc34:	00913423          	sd	s1,8(sp)
   1fc38:	01f00793          	li	a5,31
   1fc3c:	7581b903          	ld	s2,1880(gp) # 25ad8 <_impure_ptr>
   1fc40:	02a7ee63          	bltu	a5,a0,1fc7c <signal+0x58>
   1fc44:	00050413          	mv	s0,a0
   1fc48:	51893503          	ld	a0,1304(s2)
   1fc4c:	00058493          	mv	s1,a1
   1fc50:	02050e63          	beqz	a0,1fc8c <signal+0x68>
   1fc54:	00341413          	sll	s0,s0,0x3
   1fc58:	008507b3          	add	a5,a0,s0
   1fc5c:	0007b503          	ld	a0,0(a5)
   1fc60:	0097b023          	sd	s1,0(a5)
   1fc64:	01813083          	ld	ra,24(sp)
   1fc68:	01013403          	ld	s0,16(sp)
   1fc6c:	00813483          	ld	s1,8(sp)
   1fc70:	00013903          	ld	s2,0(sp)
   1fc74:	02010113          	add	sp,sp,32
   1fc78:	00008067          	ret
   1fc7c:	01600793          	li	a5,22
   1fc80:	00f92023          	sw	a5,0(s2)
   1fc84:	fff00513          	li	a0,-1
   1fc88:	fddff06f          	j	1fc64 <signal+0x40>
   1fc8c:	10000593          	li	a1,256
   1fc90:	00090513          	mv	a0,s2
   1fc94:	becf70ef          	jal	17080 <_malloc_r>
   1fc98:	50a93c23          	sd	a0,1304(s2)
   1fc9c:	00050793          	mv	a5,a0
   1fca0:	10050713          	add	a4,a0,256
   1fca4:	fe0500e3          	beqz	a0,1fc84 <signal+0x60>
   1fca8:	0007b023          	sd	zero,0(a5)
   1fcac:	00878793          	add	a5,a5,8
   1fcb0:	fee79ce3          	bne	a5,a4,1fca8 <signal+0x84>
   1fcb4:	fa1ff06f          	j	1fc54 <signal+0x30>

000000000001fcb8 <_init_signal>:
   1fcb8:	ff010113          	add	sp,sp,-16
   1fcbc:	00813023          	sd	s0,0(sp)
   1fcc0:	7581b403          	ld	s0,1880(gp) # 25ad8 <_impure_ptr>
   1fcc4:	00113423          	sd	ra,8(sp)
   1fcc8:	51843783          	ld	a5,1304(s0)
   1fccc:	00078c63          	beqz	a5,1fce4 <_init_signal+0x2c>
   1fcd0:	00000513          	li	a0,0
   1fcd4:	00813083          	ld	ra,8(sp)
   1fcd8:	00013403          	ld	s0,0(sp)
   1fcdc:	01010113          	add	sp,sp,16
   1fce0:	00008067          	ret
   1fce4:	10000593          	li	a1,256
   1fce8:	00040513          	mv	a0,s0
   1fcec:	b94f70ef          	jal	17080 <_malloc_r>
   1fcf0:	50a43c23          	sd	a0,1304(s0)
   1fcf4:	00050c63          	beqz	a0,1fd0c <_init_signal+0x54>
   1fcf8:	10050793          	add	a5,a0,256
   1fcfc:	00053023          	sd	zero,0(a0)
   1fd00:	00850513          	add	a0,a0,8
   1fd04:	fef51ce3          	bne	a0,a5,1fcfc <_init_signal+0x44>
   1fd08:	fc9ff06f          	j	1fcd0 <_init_signal+0x18>
   1fd0c:	fff00513          	li	a0,-1
   1fd10:	fc5ff06f          	j	1fcd4 <_init_signal+0x1c>

000000000001fd14 <__sigtramp>:
   1fd14:	fe010113          	add	sp,sp,-32
   1fd18:	00913423          	sd	s1,8(sp)
   1fd1c:	00113c23          	sd	ra,24(sp)
   1fd20:	00813823          	sd	s0,16(sp)
   1fd24:	01f00793          	li	a5,31
   1fd28:	7581b483          	ld	s1,1880(gp) # 25ad8 <_impure_ptr>
   1fd2c:	0aa7ee63          	bltu	a5,a0,1fde8 <__sigtramp+0xd4>
   1fd30:	5184b783          	ld	a5,1304(s1)
   1fd34:	00050413          	mv	s0,a0
   1fd38:	08078063          	beqz	a5,1fdb8 <__sigtramp+0xa4>
   1fd3c:	00341713          	sll	a4,s0,0x3
   1fd40:	00e787b3          	add	a5,a5,a4
   1fd44:	0007b703          	ld	a4,0(a5)
   1fd48:	02070c63          	beqz	a4,1fd80 <__sigtramp+0x6c>
   1fd4c:	fff00693          	li	a3,-1
   1fd50:	06d70063          	beq	a4,a3,1fdb0 <__sigtramp+0x9c>
   1fd54:	00100693          	li	a3,1
   1fd58:	04d70063          	beq	a4,a3,1fd98 <__sigtramp+0x84>
   1fd5c:	00040513          	mv	a0,s0
   1fd60:	0007b023          	sd	zero,0(a5)
   1fd64:	000700e7          	jalr	a4
   1fd68:	00000513          	li	a0,0
   1fd6c:	01813083          	ld	ra,24(sp)
   1fd70:	01013403          	ld	s0,16(sp)
   1fd74:	00813483          	ld	s1,8(sp)
   1fd78:	02010113          	add	sp,sp,32
   1fd7c:	00008067          	ret
   1fd80:	01813083          	ld	ra,24(sp)
   1fd84:	01013403          	ld	s0,16(sp)
   1fd88:	00813483          	ld	s1,8(sp)
   1fd8c:	00100513          	li	a0,1
   1fd90:	02010113          	add	sp,sp,32
   1fd94:	00008067          	ret
   1fd98:	01813083          	ld	ra,24(sp)
   1fd9c:	01013403          	ld	s0,16(sp)
   1fda0:	00813483          	ld	s1,8(sp)
   1fda4:	00300513          	li	a0,3
   1fda8:	02010113          	add	sp,sp,32
   1fdac:	00008067          	ret
   1fdb0:	00200513          	li	a0,2
   1fdb4:	fb9ff06f          	j	1fd6c <__sigtramp+0x58>
   1fdb8:	10000593          	li	a1,256
   1fdbc:	00048513          	mv	a0,s1
   1fdc0:	ac0f70ef          	jal	17080 <_malloc_r>
   1fdc4:	50a4bc23          	sd	a0,1304(s1)
   1fdc8:	00050793          	mv	a5,a0
   1fdcc:	00050e63          	beqz	a0,1fde8 <__sigtramp+0xd4>
   1fdd0:	00050713          	mv	a4,a0
   1fdd4:	10050693          	add	a3,a0,256
   1fdd8:	00073023          	sd	zero,0(a4)
   1fddc:	00870713          	add	a4,a4,8
   1fde0:	fee69ce3          	bne	a3,a4,1fdd8 <__sigtramp+0xc4>
   1fde4:	f59ff06f          	j	1fd3c <__sigtramp+0x28>
   1fde8:	fff00513          	li	a0,-1
   1fdec:	f81ff06f          	j	1fd6c <__sigtramp+0x58>

000000000001fdf0 <_kill_r>:
   1fdf0:	fe010113          	add	sp,sp,-32
   1fdf4:	00058713          	mv	a4,a1
   1fdf8:	00813823          	sd	s0,16(sp)
   1fdfc:	00913423          	sd	s1,8(sp)
   1fe00:	00050413          	mv	s0,a0
   1fe04:	00060593          	mv	a1,a2
   1fe08:	00070513          	mv	a0,a4
   1fe0c:	00113c23          	sd	ra,24(sp)
   1fe10:	7801a823          	sw	zero,1936(gp) # 25b10 <errno>
   1fe14:	164000ef          	jal	1ff78 <_kill>
   1fe18:	fff00793          	li	a5,-1
   1fe1c:	00f50c63          	beq	a0,a5,1fe34 <_kill_r+0x44>
   1fe20:	01813083          	ld	ra,24(sp)
   1fe24:	01013403          	ld	s0,16(sp)
   1fe28:	00813483          	ld	s1,8(sp)
   1fe2c:	02010113          	add	sp,sp,32
   1fe30:	00008067          	ret
   1fe34:	7901a783          	lw	a5,1936(gp) # 25b10 <errno>
   1fe38:	fe0784e3          	beqz	a5,1fe20 <_kill_r+0x30>
   1fe3c:	01813083          	ld	ra,24(sp)
   1fe40:	00f42023          	sw	a5,0(s0)
   1fe44:	01013403          	ld	s0,16(sp)
   1fe48:	00813483          	ld	s1,8(sp)
   1fe4c:	02010113          	add	sp,sp,32
   1fe50:	00008067          	ret

000000000001fe54 <_getpid_r>:
   1fe54:	0dc0006f          	j	1ff30 <_getpid>

000000000001fe58 <_close>:
   1fe58:	ff010113          	add	sp,sp,-16
   1fe5c:	00113423          	sd	ra,8(sp)
   1fe60:	00813023          	sd	s0,0(sp)
   1fe64:	03900893          	li	a7,57
   1fe68:	00000073          	ecall
   1fe6c:	00050413          	mv	s0,a0
   1fe70:	00054c63          	bltz	a0,1fe88 <_close+0x30>
   1fe74:	0005051b          	sext.w	a0,a0
   1fe78:	00813083          	ld	ra,8(sp)
   1fe7c:	00013403          	ld	s0,0(sp)
   1fe80:	01010113          	add	sp,sp,16
   1fe84:	00008067          	ret
   1fe88:	8f8fd0ef          	jal	1cf80 <__errno>
   1fe8c:	4080043b          	negw	s0,s0
   1fe90:	00852023          	sw	s0,0(a0)
   1fe94:	fff00513          	li	a0,-1
   1fe98:	fe1ff06f          	j	1fe78 <_close+0x20>

000000000001fe9c <_exit>:
   1fe9c:	05d00893          	li	a7,93
   1fea0:	00000073          	ecall
   1fea4:	00054463          	bltz	a0,1feac <_exit+0x10>
   1fea8:	0000006f          	j	1fea8 <_exit+0xc>
   1feac:	ff010113          	add	sp,sp,-16
   1feb0:	00813023          	sd	s0,0(sp)
   1feb4:	00050413          	mv	s0,a0
   1feb8:	00113423          	sd	ra,8(sp)
   1febc:	4080043b          	negw	s0,s0
   1fec0:	8c0fd0ef          	jal	1cf80 <__errno>
   1fec4:	00852023          	sw	s0,0(a0)
   1fec8:	0000006f          	j	1fec8 <_exit+0x2c>

000000000001fecc <_fstat>:
   1fecc:	f6010113          	add	sp,sp,-160
   1fed0:	08913423          	sd	s1,136(sp)
   1fed4:	08113c23          	sd	ra,152(sp)
   1fed8:	00058493          	mv	s1,a1
   1fedc:	08813823          	sd	s0,144(sp)
   1fee0:	05000893          	li	a7,80
   1fee4:	00010593          	mv	a1,sp
   1fee8:	00000073          	ecall
   1feec:	00050413          	mv	s0,a0
   1fef0:	02054663          	bltz	a0,1ff1c <_fstat+0x50>
   1fef4:	0005041b          	sext.w	s0,a0
   1fef8:	00048513          	mv	a0,s1
   1fefc:	00010593          	mv	a1,sp
   1ff00:	1e0000ef          	jal	200e0 <_conv_stat>
   1ff04:	09813083          	ld	ra,152(sp)
   1ff08:	00040513          	mv	a0,s0
   1ff0c:	09013403          	ld	s0,144(sp)
   1ff10:	08813483          	ld	s1,136(sp)
   1ff14:	0a010113          	add	sp,sp,160
   1ff18:	00008067          	ret
   1ff1c:	4080043b          	negw	s0,s0
   1ff20:	860fd0ef          	jal	1cf80 <__errno>
   1ff24:	00852023          	sw	s0,0(a0)
   1ff28:	fff00413          	li	s0,-1
   1ff2c:	fcdff06f          	j	1fef8 <_fstat+0x2c>

000000000001ff30 <_getpid>:
   1ff30:	00100513          	li	a0,1
   1ff34:	00008067          	ret

000000000001ff38 <_isatty>:
   1ff38:	f8010113          	add	sp,sp,-128
   1ff3c:	00810593          	add	a1,sp,8
   1ff40:	06113c23          	sd	ra,120(sp)
   1ff44:	f89ff0ef          	jal	1fecc <_fstat>
   1ff48:	fff00793          	li	a5,-1
   1ff4c:	00f50e63          	beq	a0,a5,1ff68 <_isatty+0x30>
   1ff50:	00c12503          	lw	a0,12(sp)
   1ff54:	07813083          	ld	ra,120(sp)
   1ff58:	40d5551b          	sraw	a0,a0,0xd
   1ff5c:	00157513          	and	a0,a0,1
   1ff60:	08010113          	add	sp,sp,128
   1ff64:	00008067          	ret
   1ff68:	07813083          	ld	ra,120(sp)
   1ff6c:	00000513          	li	a0,0
   1ff70:	08010113          	add	sp,sp,128
   1ff74:	00008067          	ret

000000000001ff78 <_kill>:
   1ff78:	ff010113          	add	sp,sp,-16
   1ff7c:	00113423          	sd	ra,8(sp)
   1ff80:	800fd0ef          	jal	1cf80 <__errno>
   1ff84:	00813083          	ld	ra,8(sp)
   1ff88:	01600793          	li	a5,22
   1ff8c:	00f52023          	sw	a5,0(a0)
   1ff90:	fff00513          	li	a0,-1
   1ff94:	01010113          	add	sp,sp,16
   1ff98:	00008067          	ret

000000000001ff9c <_lseek>:
   1ff9c:	ff010113          	add	sp,sp,-16
   1ffa0:	00113423          	sd	ra,8(sp)
   1ffa4:	00813023          	sd	s0,0(sp)
   1ffa8:	03e00893          	li	a7,62
   1ffac:	00000073          	ecall
   1ffb0:	00050413          	mv	s0,a0
   1ffb4:	00054c63          	bltz	a0,1ffcc <_lseek+0x30>
   1ffb8:	00813083          	ld	ra,8(sp)
   1ffbc:	00040513          	mv	a0,s0
   1ffc0:	00013403          	ld	s0,0(sp)
   1ffc4:	01010113          	add	sp,sp,16
   1ffc8:	00008067          	ret
   1ffcc:	4080043b          	negw	s0,s0
   1ffd0:	fb1fc0ef          	jal	1cf80 <__errno>
   1ffd4:	00852023          	sw	s0,0(a0)
   1ffd8:	fff00413          	li	s0,-1
   1ffdc:	fddff06f          	j	1ffb8 <_lseek+0x1c>

000000000001ffe0 <_read>:
   1ffe0:	ff010113          	add	sp,sp,-16
   1ffe4:	00113423          	sd	ra,8(sp)
   1ffe8:	00813023          	sd	s0,0(sp)
   1ffec:	03f00893          	li	a7,63
   1fff0:	00000073          	ecall
   1fff4:	00050413          	mv	s0,a0
   1fff8:	00054c63          	bltz	a0,20010 <_read+0x30>
   1fffc:	00813083          	ld	ra,8(sp)
   20000:	00040513          	mv	a0,s0
   20004:	00013403          	ld	s0,0(sp)
   20008:	01010113          	add	sp,sp,16
   2000c:	00008067          	ret
   20010:	4080043b          	negw	s0,s0
   20014:	f6dfc0ef          	jal	1cf80 <__errno>
   20018:	00852023          	sw	s0,0(a0)
   2001c:	fff00413          	li	s0,-1
   20020:	fddff06f          	j	1fffc <_read+0x1c>

0000000000020024 <_sbrk>:
   20024:	7981b703          	ld	a4,1944(gp) # 25b18 <heap_end.0>
   20028:	ff010113          	add	sp,sp,-16
   2002c:	00113423          	sd	ra,8(sp)
   20030:	00050793          	mv	a5,a0
   20034:	02071063          	bnez	a4,20054 <_sbrk+0x30>
   20038:	0d600893          	li	a7,214
   2003c:	00000513          	li	a0,0
   20040:	00000073          	ecall
   20044:	fff00613          	li	a2,-1
   20048:	00050713          	mv	a4,a0
   2004c:	02c50a63          	beq	a0,a2,20080 <_sbrk+0x5c>
   20050:	78a1bc23          	sd	a0,1944(gp) # 25b18 <heap_end.0>
   20054:	0d600893          	li	a7,214
   20058:	00e78533          	add	a0,a5,a4
   2005c:	00000073          	ecall
   20060:	7981b703          	ld	a4,1944(gp) # 25b18 <heap_end.0>
   20064:	00e787b3          	add	a5,a5,a4
   20068:	00f51c63          	bne	a0,a5,20080 <_sbrk+0x5c>
   2006c:	00813083          	ld	ra,8(sp)
   20070:	78a1bc23          	sd	a0,1944(gp) # 25b18 <heap_end.0>
   20074:	00070513          	mv	a0,a4
   20078:	01010113          	add	sp,sp,16
   2007c:	00008067          	ret
   20080:	f01fc0ef          	jal	1cf80 <__errno>
   20084:	00813083          	ld	ra,8(sp)
   20088:	00c00793          	li	a5,12
   2008c:	00f52023          	sw	a5,0(a0)
   20090:	fff00513          	li	a0,-1
   20094:	01010113          	add	sp,sp,16
   20098:	00008067          	ret

000000000002009c <_write>:
   2009c:	ff010113          	add	sp,sp,-16
   200a0:	00113423          	sd	ra,8(sp)
   200a4:	00813023          	sd	s0,0(sp)
   200a8:	04000893          	li	a7,64
   200ac:	00000073          	ecall
   200b0:	00050413          	mv	s0,a0
   200b4:	00054c63          	bltz	a0,200cc <_write+0x30>
   200b8:	00813083          	ld	ra,8(sp)
   200bc:	00040513          	mv	a0,s0
   200c0:	00013403          	ld	s0,0(sp)
   200c4:	01010113          	add	sp,sp,16
   200c8:	00008067          	ret
   200cc:	4080043b          	negw	s0,s0
   200d0:	eb1fc0ef          	jal	1cf80 <__errno>
   200d4:	00852023          	sw	s0,0(a0)
   200d8:	fff00413          	li	s0,-1
   200dc:	fddff06f          	j	200b8 <_write+0x1c>

00000000000200e0 <_conv_stat>:
   200e0:	0185d703          	lhu	a4,24(a1)
   200e4:	0145d783          	lhu	a5,20(a1)
   200e8:	01c5a603          	lw	a2,28(a1)
   200ec:	0205b683          	ld	a3,32(a1)
   200f0:	0005b303          	ld	t1,0(a1)
   200f4:	0085b883          	ld	a7,8(a1)
   200f8:	0105a803          	lw	a6,16(a1)
   200fc:	0107171b          	sllw	a4,a4,0x10
   20100:	00e7e7b3          	or	a5,a5,a4
   20104:	00c51623          	sh	a2,12(a0)
   20108:	00d51723          	sh	a3,14(a0)
   2010c:	00651023          	sh	t1,0(a0)
   20110:	01151123          	sh	a7,2(a0)
   20114:	01052223          	sw	a6,4(a0)
   20118:	00f52423          	sw	a5,8(a0)
   2011c:	0305b703          	ld	a4,48(a1)
   20120:	0485b783          	ld	a5,72(a1)
   20124:	0405b603          	ld	a2,64(a1)
   20128:	0385a683          	lw	a3,56(a1)
   2012c:	00e53823          	sd	a4,16(a0)
   20130:	00f53c23          	sd	a5,24(a0)
   20134:	0585b703          	ld	a4,88(a1)
   20138:	0685b783          	ld	a5,104(a1)
   2013c:	04c53823          	sd	a2,80(a0)
   20140:	04d53423          	sd	a3,72(a0)
   20144:	02e53423          	sd	a4,40(a0)
   20148:	02f53c23          	sd	a5,56(a0)
   2014c:	00008067          	ret

0000000000020150 <__divdf3>:
   20150:	fb010113          	add	sp,sp,-80
   20154:	01613823          	sd	s6,16(sp)
   20158:	04113423          	sd	ra,72(sp)
   2015c:	04813023          	sd	s0,64(sp)
   20160:	02913c23          	sd	s1,56(sp)
   20164:	03213823          	sd	s2,48(sp)
   20168:	03313423          	sd	s3,40(sp)
   2016c:	03413023          	sd	s4,32(sp)
   20170:	01513c23          	sd	s5,24(sp)
   20174:	01713423          	sd	s7,8(sp)
   20178:	00058b13          	mv	s6,a1
   2017c:	00202a73          	frrm	s4
   20180:	03455993          	srl	s3,a0,0x34
   20184:	00c51913          	sll	s2,a0,0xc
   20188:	7ff9f993          	and	s3,s3,2047
   2018c:	000a0a1b          	sext.w	s4,s4
   20190:	00c95913          	srl	s2,s2,0xc
   20194:	03f55a93          	srl	s5,a0,0x3f
   20198:	02098663          	beqz	s3,201c4 <__divdf3+0x74>
   2019c:	7ff00793          	li	a5,2047
   201a0:	04f98463          	beq	s3,a5,201e8 <__divdf3+0x98>
   201a4:	00100793          	li	a5,1
   201a8:	00391913          	sll	s2,s2,0x3
   201ac:	03779793          	sll	a5,a5,0x37
   201b0:	00f96933          	or	s2,s2,a5
   201b4:	c0198993          	add	s3,s3,-1023
   201b8:	00000b93          	li	s7,0
   201bc:	00000493          	li	s1,0
   201c0:	0440006f          	j	20204 <__divdf3+0xb4>
   201c4:	0a090863          	beqz	s2,20274 <__divdf3+0x124>
   201c8:	00090513          	mv	a0,s2
   201cc:	e74f00ef          	jal	10840 <__clzdi2>
   201d0:	0005079b          	sext.w	a5,a0
   201d4:	c0d00993          	li	s3,-1011
   201d8:	ff85051b          	addw	a0,a0,-8
   201dc:	00a91933          	sll	s2,s2,a0
   201e0:	40f989b3          	sub	s3,s3,a5
   201e4:	fd5ff06f          	j	201b8 <__divdf3+0x68>
   201e8:	08090c63          	beqz	s2,20280 <__divdf3+0x130>
   201ec:	00100493          	li	s1,1
   201f0:	03349493          	sll	s1,s1,0x33
   201f4:	009934b3          	sltu	s1,s2,s1
   201f8:	0044949b          	sllw	s1,s1,0x4
   201fc:	7ff00993          	li	s3,2047
   20200:	00300b93          	li	s7,3
   20204:	034b5793          	srl	a5,s6,0x34
   20208:	fff00713          	li	a4,-1
   2020c:	00c75413          	srl	s0,a4,0xc
   20210:	7ff7f793          	and	a5,a5,2047
   20214:	01647433          	and	s0,s0,s6
   20218:	03fb5b13          	srl	s6,s6,0x3f
   2021c:	06078863          	beqz	a5,2028c <__divdf3+0x13c>
   20220:	7ff00693          	li	a3,2047
   20224:	08d78663          	beq	a5,a3,202b0 <__divdf3+0x160>
   20228:	00100713          	li	a4,1
   2022c:	00341413          	sll	s0,s0,0x3
   20230:	03771713          	sll	a4,a4,0x37
   20234:	00e46433          	or	s0,s0,a4
   20238:	c0178793          	add	a5,a5,-1023
   2023c:	00000693          	li	a3,0
   20240:	40f989b3          	sub	s3,s3,a5
   20244:	002b9793          	sll	a5,s7,0x2
   20248:	00d7e7b3          	or	a5,a5,a3
   2024c:	fff78793          	add	a5,a5,-1
   20250:	00e00613          	li	a2,14
   20254:	016ac733          	xor	a4,s5,s6
   20258:	0af66a63          	bltu	a2,a5,2030c <__divdf3+0x1bc>
   2025c:	00024637          	lui	a2,0x24
   20260:	00279793          	sll	a5,a5,0x2
   20264:	92860613          	add	a2,a2,-1752 # 23928 <blanks.1+0x10>
   20268:	00c787b3          	add	a5,a5,a2
   2026c:	0007a783          	lw	a5,0(a5)
   20270:	00078067          	jr	a5
   20274:	00000993          	li	s3,0
   20278:	00100b93          	li	s7,1
   2027c:	f41ff06f          	j	201bc <__divdf3+0x6c>
   20280:	7ff00993          	li	s3,2047
   20284:	00200b93          	li	s7,2
   20288:	f35ff06f          	j	201bc <__divdf3+0x6c>
   2028c:	04040063          	beqz	s0,202cc <__divdf3+0x17c>
   20290:	00040513          	mv	a0,s0
   20294:	dacf00ef          	jal	10840 <__clzdi2>
   20298:	0005071b          	sext.w	a4,a0
   2029c:	c0d00793          	li	a5,-1011
   202a0:	ff85051b          	addw	a0,a0,-8
   202a4:	00a41433          	sll	s0,s0,a0
   202a8:	40e787b3          	sub	a5,a5,a4
   202ac:	f91ff06f          	j	2023c <__divdf3+0xec>
   202b0:	02040463          	beqz	s0,202d8 <__divdf3+0x188>
   202b4:	00d75713          	srl	a4,a4,0xd
   202b8:	7ff00793          	li	a5,2047
   202bc:	00300693          	li	a3,3
   202c0:	f88760e3          	bltu	a4,s0,20240 <__divdf3+0xf0>
   202c4:	01000493          	li	s1,16
   202c8:	f79ff06f          	j	20240 <__divdf3+0xf0>
   202cc:	00000793          	li	a5,0
   202d0:	00100693          	li	a3,1
   202d4:	f6dff06f          	j	20240 <__divdf3+0xf0>
   202d8:	7ff00793          	li	a5,2047
   202dc:	00200693          	li	a3,2
   202e0:	f61ff06f          	j	20240 <__divdf3+0xf0>
   202e4:	000b0713          	mv	a4,s6
   202e8:	00100793          	li	a5,1
   202ec:	3af68463          	beq	a3,a5,20694 <__divdf3+0x544>
   202f0:	0c068263          	beqz	a3,203b4 <__divdf3+0x264>
   202f4:	00200613          	li	a2,2
   202f8:	3ac68463          	beq	a3,a2,206a0 <__divdf3+0x550>
   202fc:	03379793          	sll	a5,a5,0x33
   20300:	7ff00693          	li	a3,2047
   20304:	00000713          	li	a4,0
   20308:	1140006f          	j	2041c <__divdf3+0x2cc>
   2030c:	00841613          	sll	a2,s0,0x8
   20310:	14897a63          	bgeu	s2,s0,20464 <__divdf3+0x314>
   20314:	fff98993          	add	s3,s3,-1
   20318:	00000793          	li	a5,0
   2031c:	02065593          	srl	a1,a2,0x20
   20320:	02b95833          	divu	a6,s2,a1
   20324:	fff00693          	li	a3,-1
   20328:	0206d693          	srl	a3,a3,0x20
   2032c:	00d676b3          	and	a3,a2,a3
   20330:	0207d793          	srl	a5,a5,0x20
   20334:	02b97933          	remu	s2,s2,a1
   20338:	00080413          	mv	s0,a6
   2033c:	03068533          	mul	a0,a3,a6
   20340:	02091913          	sll	s2,s2,0x20
   20344:	0127e7b3          	or	a5,a5,s2
   20348:	00a7fe63          	bgeu	a5,a0,20364 <__divdf3+0x214>
   2034c:	00f607b3          	add	a5,a2,a5
   20350:	fff80413          	add	s0,a6,-1
   20354:	00c7e863          	bltu	a5,a2,20364 <__divdf3+0x214>
   20358:	00a7f663          	bgeu	a5,a0,20364 <__divdf3+0x214>
   2035c:	ffe80413          	add	s0,a6,-2
   20360:	00c787b3          	add	a5,a5,a2
   20364:	40a787b3          	sub	a5,a5,a0
   20368:	02b7d533          	divu	a0,a5,a1
   2036c:	02b7f7b3          	remu	a5,a5,a1
   20370:	00050593          	mv	a1,a0
   20374:	02a686b3          	mul	a3,a3,a0
   20378:	02079793          	sll	a5,a5,0x20
   2037c:	02d7f263          	bgeu	a5,a3,203a0 <__divdf3+0x250>
   20380:	00c78833          	add	a6,a5,a2
   20384:	00f838b3          	sltu	a7,a6,a5
   20388:	fff50593          	add	a1,a0,-1
   2038c:	00080793          	mv	a5,a6
   20390:	00089863          	bnez	a7,203a0 <__divdf3+0x250>
   20394:	00d87663          	bgeu	a6,a3,203a0 <__divdf3+0x250>
   20398:	ffe50593          	add	a1,a0,-2
   2039c:	00c807b3          	add	a5,a6,a2
   203a0:	02041413          	sll	s0,s0,0x20
   203a4:	40d787b3          	sub	a5,a5,a3
   203a8:	00b46433          	or	s0,s0,a1
   203ac:	00f037b3          	snez	a5,a5
   203b0:	00f46433          	or	s0,s0,a5
   203b4:	3ff98693          	add	a3,s3,1023
   203b8:	03f71513          	sll	a0,a4,0x3f
   203bc:	14d05263          	blez	a3,20500 <__divdf3+0x3b0>
   203c0:	00747793          	and	a5,s0,7
   203c4:	02078663          	beqz	a5,203f0 <__divdf3+0x2a0>
   203c8:	00200793          	li	a5,2
   203cc:	0014e493          	or	s1,s1,1
   203d0:	0cfa0a63          	beq	s4,a5,204a4 <__divdf3+0x354>
   203d4:	00300793          	li	a5,3
   203d8:	0cfa0063          	beq	s4,a5,20498 <__divdf3+0x348>
   203dc:	000a1a63          	bnez	s4,203f0 <__divdf3+0x2a0>
   203e0:	00f47793          	and	a5,s0,15
   203e4:	00400613          	li	a2,4
   203e8:	00c78463          	beq	a5,a2,203f0 <__divdf3+0x2a0>
   203ec:	00440413          	add	s0,s0,4
   203f0:	03845793          	srl	a5,s0,0x38
   203f4:	0017f793          	and	a5,a5,1
   203f8:	00078c63          	beqz	a5,20410 <__divdf3+0x2c0>
   203fc:	fff00793          	li	a5,-1
   20400:	03879793          	sll	a5,a5,0x38
   20404:	fff78793          	add	a5,a5,-1
   20408:	00f47433          	and	s0,s0,a5
   2040c:	40098693          	add	a3,s3,1024
   20410:	7fe00793          	li	a5,2046
   20414:	08d7cc63          	blt	a5,a3,204ac <__divdf3+0x35c>
   20418:	00345793          	srl	a5,s0,0x3
   2041c:	00c79793          	sll	a5,a5,0xc
   20420:	03469693          	sll	a3,a3,0x34
   20424:	00c7d793          	srl	a5,a5,0xc
   20428:	00f6e6b3          	or	a3,a3,a5
   2042c:	03f71713          	sll	a4,a4,0x3f
   20430:	00e6e533          	or	a0,a3,a4
   20434:	0a049c63          	bnez	s1,204ec <__divdf3+0x39c>
   20438:	04813083          	ld	ra,72(sp)
   2043c:	04013403          	ld	s0,64(sp)
   20440:	03813483          	ld	s1,56(sp)
   20444:	03013903          	ld	s2,48(sp)
   20448:	02813983          	ld	s3,40(sp)
   2044c:	02013a03          	ld	s4,32(sp)
   20450:	01813a83          	ld	s5,24(sp)
   20454:	01013b03          	ld	s6,16(sp)
   20458:	00813b83          	ld	s7,8(sp)
   2045c:	05010113          	add	sp,sp,80
   20460:	00008067          	ret
   20464:	03f91793          	sll	a5,s2,0x3f
   20468:	00195913          	srl	s2,s2,0x1
   2046c:	eb1ff06f          	j	2031c <__divdf3+0x1cc>
   20470:	7ff00513          	li	a0,2047
   20474:	0084e493          	or	s1,s1,8
   20478:	03f71713          	sll	a4,a4,0x3f
   2047c:	03451513          	sll	a0,a0,0x34
   20480:	00a76533          	or	a0,a4,a0
   20484:	0680006f          	j	204ec <__divdf3+0x39c>
   20488:	000a8713          	mv	a4,s5
   2048c:	00090413          	mv	s0,s2
   20490:	000b8693          	mv	a3,s7
   20494:	e55ff06f          	j	202e8 <__divdf3+0x198>
   20498:	f4071ce3          	bnez	a4,203f0 <__divdf3+0x2a0>
   2049c:	00840413          	add	s0,s0,8
   204a0:	f51ff06f          	j	203f0 <__divdf3+0x2a0>
   204a4:	f40706e3          	beqz	a4,203f0 <__divdf3+0x2a0>
   204a8:	ff5ff06f          	j	2049c <__divdf3+0x34c>
   204ac:	00200793          	li	a5,2
   204b0:	04fa0263          	beq	s4,a5,204f4 <__divdf3+0x3a4>
   204b4:	00300793          	li	a5,3
   204b8:	00fa0a63          	beq	s4,a5,204cc <__divdf3+0x37c>
   204bc:	020a0e63          	beqz	s4,204f8 <__divdf3+0x3a8>
   204c0:	fff00713          	li	a4,-1
   204c4:	7fe00793          	li	a5,2046
   204c8:	00c0006f          	j	204d4 <__divdf3+0x384>
   204cc:	fe071ae3          	bnez	a4,204c0 <__divdf3+0x370>
   204d0:	7ff00793          	li	a5,2047
   204d4:	00c71713          	sll	a4,a4,0xc
   204d8:	03479793          	sll	a5,a5,0x34
   204dc:	00c75713          	srl	a4,a4,0xc
   204e0:	00e7e7b3          	or	a5,a5,a4
   204e4:	0054e493          	or	s1,s1,5
   204e8:	00a7e533          	or	a0,a5,a0
   204ec:	0014a073          	csrs	fflags,s1
   204f0:	f49ff06f          	j	20438 <__divdf3+0x2e8>
   204f4:	fc0706e3          	beqz	a4,204c0 <__divdf3+0x370>
   204f8:	00000713          	li	a4,0
   204fc:	fd5ff06f          	j	204d0 <__divdf3+0x380>
   20500:	0c069463          	bnez	a3,205c8 <__divdf3+0x478>
   20504:	00747693          	and	a3,s0,7
   20508:	00040793          	mv	a5,s0
   2050c:	02068663          	beqz	a3,20538 <__divdf3+0x3e8>
   20510:	00200693          	li	a3,2
   20514:	0014e493          	or	s1,s1,1
   20518:	0ada0463          	beq	s4,a3,205c0 <__divdf3+0x470>
   2051c:	00300693          	li	a3,3
   20520:	08da0a63          	beq	s4,a3,205b4 <__divdf3+0x464>
   20524:	000a1a63          	bnez	s4,20538 <__divdf3+0x3e8>
   20528:	00f47693          	and	a3,s0,15
   2052c:	00400613          	li	a2,4
   20530:	00c68463          	beq	a3,a2,20538 <__divdf3+0x3e8>
   20534:	00440793          	add	a5,s0,4
   20538:	0387d693          	srl	a3,a5,0x38
   2053c:	0016c693          	xor	a3,a3,1
   20540:	0016f693          	and	a3,a3,1
   20544:	00100593          	li	a1,1
   20548:	04000613          	li	a2,64
   2054c:	40b6063b          	subw	a2,a2,a1
   20550:	00c41633          	sll	a2,s0,a2
   20554:	00c03633          	snez	a2,a2
   20558:	00b457b3          	srl	a5,s0,a1
   2055c:	00c7e7b3          	or	a5,a5,a2
   20560:	0077f613          	and	a2,a5,7
   20564:	02060663          	beqz	a2,20590 <__divdf3+0x440>
   20568:	00200613          	li	a2,2
   2056c:	0014e493          	or	s1,s1,1
   20570:	06ca0e63          	beq	s4,a2,205ec <__divdf3+0x49c>
   20574:	00300613          	li	a2,3
   20578:	06ca0463          	beq	s4,a2,205e0 <__divdf3+0x490>
   2057c:	000a1a63          	bnez	s4,20590 <__divdf3+0x440>
   20580:	00f7f613          	and	a2,a5,15
   20584:	00400593          	li	a1,4
   20588:	00b60463          	beq	a2,a1,20590 <__divdf3+0x440>
   2058c:	00478793          	add	a5,a5,4
   20590:	00100613          	li	a2,1
   20594:	03761593          	sll	a1,a2,0x37
   20598:	00b7f5b3          	and	a1,a5,a1
   2059c:	04058c63          	beqz	a1,205f4 <__divdf3+0x4a4>
   205a0:	0014e493          	or	s1,s1,1
   205a4:	08069063          	bnez	a3,20624 <__divdf3+0x4d4>
   205a8:	03461613          	sll	a2,a2,0x34
   205ac:	00c56533          	or	a0,a0,a2
   205b0:	f3dff06f          	j	204ec <__divdf3+0x39c>
   205b4:	f80712e3          	bnez	a4,20538 <__divdf3+0x3e8>
   205b8:	00840793          	add	a5,s0,8
   205bc:	f7dff06f          	j	20538 <__divdf3+0x3e8>
   205c0:	f6070ce3          	beqz	a4,20538 <__divdf3+0x3e8>
   205c4:	ff5ff06f          	j	205b8 <__divdf3+0x468>
   205c8:	00100593          	li	a1,1
   205cc:	40d585b3          	sub	a1,a1,a3
   205d0:	03800793          	li	a5,56
   205d4:	04b7ce63          	blt	a5,a1,20630 <__divdf3+0x4e0>
   205d8:	00100693          	li	a3,1
   205dc:	f6dff06f          	j	20548 <__divdf3+0x3f8>
   205e0:	fa0718e3          	bnez	a4,20590 <__divdf3+0x440>
   205e4:	00878793          	add	a5,a5,8
   205e8:	fa9ff06f          	j	20590 <__divdf3+0x440>
   205ec:	fa0702e3          	beqz	a4,20590 <__divdf3+0x440>
   205f0:	ff5ff06f          	j	205e4 <__divdf3+0x494>
   205f4:	0037d793          	srl	a5,a5,0x3
   205f8:	0a068063          	beqz	a3,20698 <__divdf3+0x548>
   205fc:	0014f613          	and	a2,s1,1
   20600:	00000693          	li	a3,0
   20604:	e0060ce3          	beqz	a2,2041c <__divdf3+0x2cc>
   20608:	00000713          	li	a4,0
   2060c:	00c79793          	sll	a5,a5,0xc
   20610:	03471713          	sll	a4,a4,0x34
   20614:	00c7d793          	srl	a5,a5,0xc
   20618:	0024e493          	or	s1,s1,2
   2061c:	00f76733          	or	a4,a4,a5
   20620:	e61ff06f          	j	20480 <__divdf3+0x330>
   20624:	00000793          	li	a5,0
   20628:	00100713          	li	a4,1
   2062c:	fe1ff06f          	j	2060c <__divdf3+0x4bc>
   20630:	02040463          	beqz	s0,20658 <__divdf3+0x508>
   20634:	00200793          	li	a5,2
   20638:	0014e493          	or	s1,s1,1
   2063c:	02fa0c63          	beq	s4,a5,20674 <__divdf3+0x524>
   20640:	00300793          	li	a5,3
   20644:	02fa0063          	beq	s4,a5,20664 <__divdf3+0x514>
   20648:	00500413          	li	s0,5
   2064c:	000a0463          	beqz	s4,20654 <__divdf3+0x504>
   20650:	00100413          	li	s0,1
   20654:	00345413          	srl	s0,s0,0x3
   20658:	0024e493          	or	s1,s1,2
   2065c:	00856533          	or	a0,a0,s0
   20660:	e8dff06f          	j	204ec <__divdf3+0x39c>
   20664:	00100413          	li	s0,1
   20668:	fe0716e3          	bnez	a4,20654 <__divdf3+0x504>
   2066c:	00900413          	li	s0,9
   20670:	fe5ff06f          	j	20654 <__divdf3+0x504>
   20674:	00100413          	li	s0,1
   20678:	fc070ee3          	beqz	a4,20654 <__divdf3+0x504>
   2067c:	ff1ff06f          	j	2066c <__divdf3+0x51c>
   20680:	7301b503          	ld	a0,1840(gp) # 25ab0 <mask+0x8>
   20684:	01000493          	li	s1,16
   20688:	e65ff06f          	j	204ec <__divdf3+0x39c>
   2068c:	00100793          	li	a5,1
   20690:	c6dff06f          	j	202fc <__divdf3+0x1ac>
   20694:	00000793          	li	a5,0
   20698:	00000693          	li	a3,0
   2069c:	d81ff06f          	j	2041c <__divdf3+0x2cc>
   206a0:	00000793          	li	a5,0
   206a4:	7ff00693          	li	a3,2047
   206a8:	d75ff06f          	j	2041c <__divdf3+0x2cc>

00000000000206ac <__muldf3>:
   206ac:	fb010113          	add	sp,sp,-80
   206b0:	01713423          	sd	s7,8(sp)
   206b4:	04113423          	sd	ra,72(sp)
   206b8:	04813023          	sd	s0,64(sp)
   206bc:	02913c23          	sd	s1,56(sp)
   206c0:	03213823          	sd	s2,48(sp)
   206c4:	03313423          	sd	s3,40(sp)
   206c8:	03413023          	sd	s4,32(sp)
   206cc:	01513c23          	sd	s5,24(sp)
   206d0:	01613823          	sd	s6,16(sp)
   206d4:	00058b93          	mv	s7,a1
   206d8:	002029f3          	frrm	s3
   206dc:	03455a13          	srl	s4,a0,0x34
   206e0:	00c51913          	sll	s2,a0,0xc
   206e4:	7ffa7a13          	and	s4,s4,2047
   206e8:	0009899b          	sext.w	s3,s3
   206ec:	00c95913          	srl	s2,s2,0xc
   206f0:	03f55a93          	srl	s5,a0,0x3f
   206f4:	020a0663          	beqz	s4,20720 <__muldf3+0x74>
   206f8:	7ff00793          	li	a5,2047
   206fc:	04fa0463          	beq	s4,a5,20744 <__muldf3+0x98>
   20700:	00100793          	li	a5,1
   20704:	00391913          	sll	s2,s2,0x3
   20708:	03779793          	sll	a5,a5,0x37
   2070c:	00f96933          	or	s2,s2,a5
   20710:	c01a0a13          	add	s4,s4,-1023
   20714:	00000b13          	li	s6,0
   20718:	00000493          	li	s1,0
   2071c:	0440006f          	j	20760 <__muldf3+0xb4>
   20720:	0c090a63          	beqz	s2,207f4 <__muldf3+0x148>
   20724:	00090513          	mv	a0,s2
   20728:	918f00ef          	jal	10840 <__clzdi2>
   2072c:	0005079b          	sext.w	a5,a0
   20730:	c0d00a13          	li	s4,-1011
   20734:	ff85051b          	addw	a0,a0,-8
   20738:	00a91933          	sll	s2,s2,a0
   2073c:	40fa0a33          	sub	s4,s4,a5
   20740:	fd5ff06f          	j	20714 <__muldf3+0x68>
   20744:	0a090e63          	beqz	s2,20800 <__muldf3+0x154>
   20748:	00100493          	li	s1,1
   2074c:	03349493          	sll	s1,s1,0x33
   20750:	009934b3          	sltu	s1,s2,s1
   20754:	0044949b          	sllw	s1,s1,0x4
   20758:	7ff00a13          	li	s4,2047
   2075c:	00300b13          	li	s6,3
   20760:	034bd793          	srl	a5,s7,0x34
   20764:	fff00713          	li	a4,-1
   20768:	00c75413          	srl	s0,a4,0xc
   2076c:	7ff7f793          	and	a5,a5,2047
   20770:	01747433          	and	s0,s0,s7
   20774:	03fbdb93          	srl	s7,s7,0x3f
   20778:	08078a63          	beqz	a5,2080c <__muldf3+0x160>
   2077c:	7ff00693          	li	a3,2047
   20780:	0ad78863          	beq	a5,a3,20830 <__muldf3+0x184>
   20784:	00100713          	li	a4,1
   20788:	00341413          	sll	s0,s0,0x3
   2078c:	03771713          	sll	a4,a4,0x37
   20790:	00e46433          	or	s0,s0,a4
   20794:	c0178793          	add	a5,a5,-1023
   20798:	00000693          	li	a3,0
   2079c:	00fa0a33          	add	s4,s4,a5
   207a0:	002b1793          	sll	a5,s6,0x2
   207a4:	00d7e7b3          	or	a5,a5,a3
   207a8:	00a00593          	li	a1,10
   207ac:	017ac733          	xor	a4,s5,s7
   207b0:	001a0613          	add	a2,s4,1
   207b4:	20f5ca63          	blt	a1,a5,209c8 <__muldf3+0x31c>
   207b8:	00200593          	li	a1,2
   207bc:	0af5c463          	blt	a1,a5,20864 <__muldf3+0x1b8>
   207c0:	fff78793          	add	a5,a5,-1
   207c4:	00100593          	li	a1,1
   207c8:	0af5ee63          	bltu	a1,a5,20884 <__muldf3+0x1d8>
   207cc:	00068b13          	mv	s6,a3
   207d0:	00200793          	li	a5,2
   207d4:	40fb0c63          	beq	s6,a5,20bec <__muldf3+0x540>
   207d8:	00300793          	li	a5,3
   207dc:	40fb0e63          	beq	s6,a5,20bf8 <__muldf3+0x54c>
   207e0:	00100793          	li	a5,1
   207e4:	12fb1a63          	bne	s6,a5,20918 <__muldf3+0x26c>
   207e8:	00000793          	li	a5,0
   207ec:	00000693          	li	a3,0
   207f0:	1900006f          	j	20980 <__muldf3+0x2d4>
   207f4:	00000a13          	li	s4,0
   207f8:	00100b13          	li	s6,1
   207fc:	f1dff06f          	j	20718 <__muldf3+0x6c>
   20800:	7ff00a13          	li	s4,2047
   20804:	00200b13          	li	s6,2
   20808:	f11ff06f          	j	20718 <__muldf3+0x6c>
   2080c:	04040063          	beqz	s0,2084c <__muldf3+0x1a0>
   20810:	00040513          	mv	a0,s0
   20814:	82cf00ef          	jal	10840 <__clzdi2>
   20818:	0005071b          	sext.w	a4,a0
   2081c:	c0d00793          	li	a5,-1011
   20820:	ff85051b          	addw	a0,a0,-8
   20824:	00a41433          	sll	s0,s0,a0
   20828:	40e787b3          	sub	a5,a5,a4
   2082c:	f6dff06f          	j	20798 <__muldf3+0xec>
   20830:	02040463          	beqz	s0,20858 <__muldf3+0x1ac>
   20834:	00d75713          	srl	a4,a4,0xd
   20838:	7ff00793          	li	a5,2047
   2083c:	00300693          	li	a3,3
   20840:	f4876ee3          	bltu	a4,s0,2079c <__muldf3+0xf0>
   20844:	01000493          	li	s1,16
   20848:	f55ff06f          	j	2079c <__muldf3+0xf0>
   2084c:	00000793          	li	a5,0
   20850:	00100693          	li	a3,1
   20854:	f49ff06f          	j	2079c <__muldf3+0xf0>
   20858:	7ff00793          	li	a5,2047
   2085c:	00200693          	li	a3,2
   20860:	f3dff06f          	j	2079c <__muldf3+0xf0>
   20864:	00100513          	li	a0,1
   20868:	00f517b3          	sll	a5,a0,a5
   2086c:	5307f593          	and	a1,a5,1328
   20870:	16059663          	bnez	a1,209dc <__muldf3+0x330>
   20874:	2407f593          	and	a1,a5,576
   20878:	16059663          	bnez	a1,209e4 <__muldf3+0x338>
   2087c:	0887f793          	and	a5,a5,136
   20880:	16079a63          	bnez	a5,209f4 <__muldf3+0x348>
   20884:	fff00693          	li	a3,-1
   20888:	0206d693          	srl	a3,a3,0x20
   2088c:	02095593          	srl	a1,s2,0x20
   20890:	02045793          	srl	a5,s0,0x20
   20894:	00d97933          	and	s2,s2,a3
   20898:	00d476b3          	and	a3,s0,a3
   2089c:	02d90833          	mul	a6,s2,a3
   208a0:	02d586b3          	mul	a3,a1,a3
   208a4:	02f585b3          	mul	a1,a1,a5
   208a8:	032787b3          	mul	a5,a5,s2
   208ac:	00d78533          	add	a0,a5,a3
   208b0:	02085793          	srl	a5,a6,0x20
   208b4:	00a787b3          	add	a5,a5,a0
   208b8:	00d7f863          	bgeu	a5,a3,208c8 <__muldf3+0x21c>
   208bc:	00100693          	li	a3,1
   208c0:	02069693          	sll	a3,a3,0x20
   208c4:	00d585b3          	add	a1,a1,a3
   208c8:	fff00513          	li	a0,-1
   208cc:	02055513          	srl	a0,a0,0x20
   208d0:	00a7f6b3          	and	a3,a5,a0
   208d4:	02069693          	sll	a3,a3,0x20
   208d8:	00a87833          	and	a6,a6,a0
   208dc:	010686b3          	add	a3,a3,a6
   208e0:	00969413          	sll	s0,a3,0x9
   208e4:	0207d793          	srl	a5,a5,0x20
   208e8:	00803433          	snez	s0,s0
   208ec:	0376d693          	srl	a3,a3,0x37
   208f0:	00b787b3          	add	a5,a5,a1
   208f4:	00979793          	sll	a5,a5,0x9
   208f8:	00d46433          	or	s0,s0,a3
   208fc:	0087e433          	or	s0,a5,s0
   20900:	0387d793          	srl	a5,a5,0x38
   20904:	0017f793          	and	a5,a5,1
   20908:	0e078a63          	beqz	a5,209fc <__muldf3+0x350>
   2090c:	00145793          	srl	a5,s0,0x1
   20910:	00147413          	and	s0,s0,1
   20914:	0087e433          	or	s0,a5,s0
   20918:	3ff60693          	add	a3,a2,1023
   2091c:	03f71513          	sll	a0,a4,0x3f
   20920:	14d05463          	blez	a3,20a68 <__muldf3+0x3bc>
   20924:	00747793          	and	a5,s0,7
   20928:	02078663          	beqz	a5,20954 <__muldf3+0x2a8>
   2092c:	00200793          	li	a5,2
   20930:	0014e493          	or	s1,s1,1
   20934:	0cf98e63          	beq	s3,a5,20a10 <__muldf3+0x364>
   20938:	00300793          	li	a5,3
   2093c:	0cf98463          	beq	s3,a5,20a04 <__muldf3+0x358>
   20940:	00099a63          	bnez	s3,20954 <__muldf3+0x2a8>
   20944:	00f47793          	and	a5,s0,15
   20948:	00400593          	li	a1,4
   2094c:	00b78463          	beq	a5,a1,20954 <__muldf3+0x2a8>
   20950:	00440413          	add	s0,s0,4
   20954:	03845793          	srl	a5,s0,0x38
   20958:	0017f793          	and	a5,a5,1
   2095c:	00078c63          	beqz	a5,20974 <__muldf3+0x2c8>
   20960:	fff00793          	li	a5,-1
   20964:	03879793          	sll	a5,a5,0x38
   20968:	fff78793          	add	a5,a5,-1
   2096c:	00f47433          	and	s0,s0,a5
   20970:	40060693          	add	a3,a2,1024
   20974:	7fe00793          	li	a5,2046
   20978:	0ad7c063          	blt	a5,a3,20a18 <__muldf3+0x36c>
   2097c:	00345793          	srl	a5,s0,0x3
   20980:	00c79793          	sll	a5,a5,0xc
   20984:	03469693          	sll	a3,a3,0x34
   20988:	00c7d793          	srl	a5,a5,0xc
   2098c:	00f6e6b3          	or	a3,a3,a5
   20990:	03f71713          	sll	a4,a4,0x3f
   20994:	00e6e533          	or	a0,a3,a4
   20998:	04049a63          	bnez	s1,209ec <__muldf3+0x340>
   2099c:	04813083          	ld	ra,72(sp)
   209a0:	04013403          	ld	s0,64(sp)
   209a4:	03813483          	ld	s1,56(sp)
   209a8:	03013903          	ld	s2,48(sp)
   209ac:	02813983          	ld	s3,40(sp)
   209b0:	02013a03          	ld	s4,32(sp)
   209b4:	01813a83          	ld	s5,24(sp)
   209b8:	01013b03          	ld	s6,16(sp)
   209bc:	00813b83          	ld	s7,8(sp)
   209c0:	05010113          	add	sp,sp,80
   209c4:	00008067          	ret
   209c8:	00f00713          	li	a4,15
   209cc:	22e78663          	beq	a5,a4,20bf8 <__muldf3+0x54c>
   209d0:	00b00713          	li	a4,11
   209d4:	02e78063          	beq	a5,a4,209f4 <__muldf3+0x348>
   209d8:	000a8713          	mv	a4,s5
   209dc:	00090413          	mv	s0,s2
   209e0:	df1ff06f          	j	207d0 <__muldf3+0x124>
   209e4:	7301b503          	ld	a0,1840(gp) # 25ab0 <mask+0x8>
   209e8:	01000493          	li	s1,16
   209ec:	0014a073          	csrs	fflags,s1
   209f0:	fadff06f          	j	2099c <__muldf3+0x2f0>
   209f4:	000b8713          	mv	a4,s7
   209f8:	dd5ff06f          	j	207cc <__muldf3+0x120>
   209fc:	000a0613          	mv	a2,s4
   20a00:	f19ff06f          	j	20918 <__muldf3+0x26c>
   20a04:	f40718e3          	bnez	a4,20954 <__muldf3+0x2a8>
   20a08:	00840413          	add	s0,s0,8
   20a0c:	f49ff06f          	j	20954 <__muldf3+0x2a8>
   20a10:	f40702e3          	beqz	a4,20954 <__muldf3+0x2a8>
   20a14:	ff5ff06f          	j	20a08 <__muldf3+0x35c>
   20a18:	00200793          	li	a5,2
   20a1c:	04f98063          	beq	s3,a5,20a5c <__muldf3+0x3b0>
   20a20:	00300793          	li	a5,3
   20a24:	00f98a63          	beq	s3,a5,20a38 <__muldf3+0x38c>
   20a28:	02098c63          	beqz	s3,20a60 <__muldf3+0x3b4>
   20a2c:	fff00713          	li	a4,-1
   20a30:	7fe00793          	li	a5,2046
   20a34:	00c0006f          	j	20a40 <__muldf3+0x394>
   20a38:	fe071ae3          	bnez	a4,20a2c <__muldf3+0x380>
   20a3c:	7ff00793          	li	a5,2047
   20a40:	00c71713          	sll	a4,a4,0xc
   20a44:	03479793          	sll	a5,a5,0x34
   20a48:	00c75713          	srl	a4,a4,0xc
   20a4c:	00e7e7b3          	or	a5,a5,a4
   20a50:	0054e493          	or	s1,s1,5
   20a54:	00a7e533          	or	a0,a5,a0
   20a58:	f95ff06f          	j	209ec <__muldf3+0x340>
   20a5c:	fc0708e3          	beqz	a4,20a2c <__muldf3+0x380>
   20a60:	00000713          	li	a4,0
   20a64:	fd9ff06f          	j	20a3c <__muldf3+0x390>
   20a68:	0c069463          	bnez	a3,20b30 <__muldf3+0x484>
   20a6c:	00747693          	and	a3,s0,7
   20a70:	00040793          	mv	a5,s0
   20a74:	02068663          	beqz	a3,20aa0 <__muldf3+0x3f4>
   20a78:	00200693          	li	a3,2
   20a7c:	0014e493          	or	s1,s1,1
   20a80:	0ad98463          	beq	s3,a3,20b28 <__muldf3+0x47c>
   20a84:	00300693          	li	a3,3
   20a88:	08d98a63          	beq	s3,a3,20b1c <__muldf3+0x470>
   20a8c:	00099a63          	bnez	s3,20aa0 <__muldf3+0x3f4>
   20a90:	00f47693          	and	a3,s0,15
   20a94:	00400613          	li	a2,4
   20a98:	00c68463          	beq	a3,a2,20aa0 <__muldf3+0x3f4>
   20a9c:	00440793          	add	a5,s0,4
   20aa0:	0387d693          	srl	a3,a5,0x38
   20aa4:	0016c693          	xor	a3,a3,1
   20aa8:	0016f693          	and	a3,a3,1
   20aac:	00100593          	li	a1,1
   20ab0:	04000613          	li	a2,64
   20ab4:	40b6063b          	subw	a2,a2,a1
   20ab8:	00c41633          	sll	a2,s0,a2
   20abc:	00c03633          	snez	a2,a2
   20ac0:	00b457b3          	srl	a5,s0,a1
   20ac4:	00c7e7b3          	or	a5,a5,a2
   20ac8:	0077f613          	and	a2,a5,7
   20acc:	02060663          	beqz	a2,20af8 <__muldf3+0x44c>
   20ad0:	00200613          	li	a2,2
   20ad4:	0014e493          	or	s1,s1,1
   20ad8:	06c98e63          	beq	s3,a2,20b54 <__muldf3+0x4a8>
   20adc:	00300613          	li	a2,3
   20ae0:	06c98463          	beq	s3,a2,20b48 <__muldf3+0x49c>
   20ae4:	00099a63          	bnez	s3,20af8 <__muldf3+0x44c>
   20ae8:	00f7f613          	and	a2,a5,15
   20aec:	00400593          	li	a1,4
   20af0:	00b60463          	beq	a2,a1,20af8 <__muldf3+0x44c>
   20af4:	00478793          	add	a5,a5,4
   20af8:	00100613          	li	a2,1
   20afc:	03761593          	sll	a1,a2,0x37
   20b00:	00b7f5b3          	and	a1,a5,a1
   20b04:	04058c63          	beqz	a1,20b5c <__muldf3+0x4b0>
   20b08:	0014e493          	or	s1,s1,1
   20b0c:	08069263          	bnez	a3,20b90 <__muldf3+0x4e4>
   20b10:	03461613          	sll	a2,a2,0x34
   20b14:	00c56533          	or	a0,a0,a2
   20b18:	ed5ff06f          	j	209ec <__muldf3+0x340>
   20b1c:	f80712e3          	bnez	a4,20aa0 <__muldf3+0x3f4>
   20b20:	00840793          	add	a5,s0,8
   20b24:	f7dff06f          	j	20aa0 <__muldf3+0x3f4>
   20b28:	f6070ce3          	beqz	a4,20aa0 <__muldf3+0x3f4>
   20b2c:	ff5ff06f          	j	20b20 <__muldf3+0x474>
   20b30:	00100593          	li	a1,1
   20b34:	40d585b3          	sub	a1,a1,a3
   20b38:	03800793          	li	a5,56
   20b3c:	06b7c063          	blt	a5,a1,20b9c <__muldf3+0x4f0>
   20b40:	00100693          	li	a3,1
   20b44:	f6dff06f          	j	20ab0 <__muldf3+0x404>
   20b48:	fa0718e3          	bnez	a4,20af8 <__muldf3+0x44c>
   20b4c:	00878793          	add	a5,a5,8
   20b50:	fa9ff06f          	j	20af8 <__muldf3+0x44c>
   20b54:	fa0702e3          	beqz	a4,20af8 <__muldf3+0x44c>
   20b58:	ff5ff06f          	j	20b4c <__muldf3+0x4a0>
   20b5c:	0037d793          	srl	a5,a5,0x3
   20b60:	c80686e3          	beqz	a3,207ec <__muldf3+0x140>
   20b64:	0014f613          	and	a2,s1,1
   20b68:	00000693          	li	a3,0
   20b6c:	e0060ae3          	beqz	a2,20980 <__muldf3+0x2d4>
   20b70:	00000713          	li	a4,0
   20b74:	00c79793          	sll	a5,a5,0xc
   20b78:	03471713          	sll	a4,a4,0x34
   20b7c:	00c7d793          	srl	a5,a5,0xc
   20b80:	00f76733          	or	a4,a4,a5
   20b84:	0024e493          	or	s1,s1,2
   20b88:	00a76533          	or	a0,a4,a0
   20b8c:	e61ff06f          	j	209ec <__muldf3+0x340>
   20b90:	00000793          	li	a5,0
   20b94:	00100713          	li	a4,1
   20b98:	fddff06f          	j	20b74 <__muldf3+0x4c8>
   20b9c:	02040463          	beqz	s0,20bc4 <__muldf3+0x518>
   20ba0:	00200793          	li	a5,2
   20ba4:	0014e493          	or	s1,s1,1
   20ba8:	02f98c63          	beq	s3,a5,20be0 <__muldf3+0x534>
   20bac:	00300793          	li	a5,3
   20bb0:	02f98063          	beq	s3,a5,20bd0 <__muldf3+0x524>
   20bb4:	00500413          	li	s0,5
   20bb8:	00098463          	beqz	s3,20bc0 <__muldf3+0x514>
   20bbc:	00100413          	li	s0,1
   20bc0:	00345413          	srl	s0,s0,0x3
   20bc4:	0024e493          	or	s1,s1,2
   20bc8:	00856533          	or	a0,a0,s0
   20bcc:	e21ff06f          	j	209ec <__muldf3+0x340>
   20bd0:	00100413          	li	s0,1
   20bd4:	fe0716e3          	bnez	a4,20bc0 <__muldf3+0x514>
   20bd8:	00900413          	li	s0,9
   20bdc:	fe5ff06f          	j	20bc0 <__muldf3+0x514>
   20be0:	00100413          	li	s0,1
   20be4:	fc070ee3          	beqz	a4,20bc0 <__muldf3+0x514>
   20be8:	ff1ff06f          	j	20bd8 <__muldf3+0x52c>
   20bec:	00000793          	li	a5,0
   20bf0:	7ff00693          	li	a3,2047
   20bf4:	d8dff06f          	j	20980 <__muldf3+0x2d4>
   20bf8:	00100793          	li	a5,1
   20bfc:	03379793          	sll	a5,a5,0x33
   20c00:	7ff00693          	li	a3,2047
   20c04:	00000713          	li	a4,0
   20c08:	d79ff06f          	j	20980 <__muldf3+0x2d4>

0000000000020c0c <__eqtf2>:
   20c0c:	002027f3          	frrm	a5
   20c10:	000087b7          	lui	a5,0x8
   20c14:	0305d813          	srl	a6,a1,0x30
   20c18:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   20c1c:	fff00e13          	li	t3,-1
   20c20:	010e5713          	srl	a4,t3,0x10
   20c24:	0306d313          	srl	t1,a3,0x30
   20c28:	00f87833          	and	a6,a6,a5
   20c2c:	00e5f8b3          	and	a7,a1,a4
   20c30:	00f37333          	and	t1,t1,a5
   20c34:	00e6f733          	and	a4,a3,a4
   20c38:	03f5d593          	srl	a1,a1,0x3f
   20c3c:	03f6d693          	srl	a3,a3,0x3f
   20c40:	02f81663          	bne	a6,a5,20c6c <__eqtf2+0x60>
   20c44:	00a8e533          	or	a0,a7,a0
   20c48:	04051863          	bnez	a0,20c98 <__eqtf2+0x8c>
   20c4c:	00100793          	li	a5,1
   20c50:	01031a63          	bne	t1,a6,20c64 <__eqtf2+0x58>
   20c54:	00c76633          	or	a2,a4,a2
   20c58:	02061263          	bnez	a2,20c7c <__eqtf2+0x70>
   20c5c:	40d585b3          	sub	a1,a1,a3
   20c60:	00b037b3          	snez	a5,a1
   20c64:	00078513          	mv	a0,a5
   20c68:	0480006f          	j	20cb0 <__eqtf2+0xa4>
   20c6c:	04f31463          	bne	t1,a5,20cb4 <__eqtf2+0xa8>
   20c70:	00c76633          	or	a2,a4,a2
   20c74:	00100793          	li	a5,1
   20c78:	fe0606e3          	beqz	a2,20c64 <__eqtf2+0x58>
   20c7c:	fff00793          	li	a5,-1
   20c80:	0117d793          	srl	a5,a5,0x11
   20c84:	00100513          	li	a0,1
   20c88:	02e7e463          	bltu	a5,a4,20cb0 <__eqtf2+0xa4>
   20c8c:	00186073          	csrs	fflags,16
   20c90:	00100513          	li	a0,1
   20c94:	00008067          	ret
   20c98:	011e5e13          	srl	t3,t3,0x11
   20c9c:	ff1e78e3          	bgeu	t3,a7,20c8c <__eqtf2+0x80>
   20ca0:	00100513          	li	a0,1
   20ca4:	01031663          	bne	t1,a6,20cb0 <__eqtf2+0xa4>
   20ca8:	00c76633          	or	a2,a4,a2
   20cac:	fc0618e3          	bnez	a2,20c7c <__eqtf2+0x70>
   20cb0:	00008067          	ret
   20cb4:	00100793          	li	a5,1
   20cb8:	fa6816e3          	bne	a6,t1,20c64 <__eqtf2+0x58>
   20cbc:	fae894e3          	bne	a7,a4,20c64 <__eqtf2+0x58>
   20cc0:	fac512e3          	bne	a0,a2,20c64 <__eqtf2+0x58>
   20cc4:	00d58a63          	beq	a1,a3,20cd8 <__eqtf2+0xcc>
   20cc8:	f8081ee3          	bnez	a6,20c64 <__eqtf2+0x58>
   20ccc:	00a8e8b3          	or	a7,a7,a0
   20cd0:	011037b3          	snez	a5,a7
   20cd4:	f91ff06f          	j	20c64 <__eqtf2+0x58>
   20cd8:	00000793          	li	a5,0
   20cdc:	f89ff06f          	j	20c64 <__eqtf2+0x58>

0000000000020ce0 <__getf2>:
   20ce0:	00050313          	mv	t1,a0
   20ce4:	002027f3          	frrm	a5
   20ce8:	00008e37          	lui	t3,0x8
   20cec:	0305d893          	srl	a7,a1,0x30
   20cf0:	fffe0e13          	add	t3,t3,-1 # 7fff <exit-0x80e9>
   20cf4:	fff00713          	li	a4,-1
   20cf8:	01075713          	srl	a4,a4,0x10
   20cfc:	0306d793          	srl	a5,a3,0x30
   20d00:	01c8f8b3          	and	a7,a7,t3
   20d04:	00e5f833          	and	a6,a1,a4
   20d08:	01c7f533          	and	a0,a5,t3
   20d0c:	00e6f733          	and	a4,a3,a4
   20d10:	03f5d593          	srl	a1,a1,0x3f
   20d14:	03f6d693          	srl	a3,a3,0x3f
   20d18:	03c89a63          	bne	a7,t3,20d4c <__getf2+0x6c>
   20d1c:	00686833          	or	a6,a6,t1
   20d20:	0c081063          	bnez	a6,20de0 <__getf2+0x100>
   20d24:	01150a63          	beq	a0,a7,20d38 <__getf2+0x58>
   20d28:	00100513          	li	a0,1
   20d2c:	0a058863          	beqz	a1,20ddc <__getf2+0xfc>
   20d30:	fff00513          	li	a0,-1
   20d34:	00008067          	ret
   20d38:	00c76733          	or	a4,a4,a2
   20d3c:	0a071263          	bnez	a4,20de0 <__getf2+0x100>
   20d40:	fed594e3          	bne	a1,a3,20d28 <__getf2+0x48>
   20d44:	00000513          	li	a0,0
   20d48:	00008067          	ret
   20d4c:	03c51e63          	bne	a0,t3,20d88 <__getf2+0xa8>
   20d50:	00c76733          	or	a4,a4,a2
   20d54:	08071663          	bnez	a4,20de0 <__getf2+0x100>
   20d58:	00088c63          	beqz	a7,20d70 <__getf2+0x90>
   20d5c:	fcd596e3          	bne	a1,a3,20d28 <__getf2+0x48>
   20d60:	fff00513          	li	a0,-1
   20d64:	06058c63          	beqz	a1,20ddc <__getf2+0xfc>
   20d68:	00058513          	mv	a0,a1
   20d6c:	00008067          	ret
   20d70:	00686833          	or	a6,a6,t1
   20d74:	fe0814e3          	bnez	a6,20d5c <__getf2+0x7c>
   20d78:	fff00513          	li	a0,-1
   20d7c:	06068063          	beqz	a3,20ddc <__getf2+0xfc>
   20d80:	00068513          	mv	a0,a3
   20d84:	00008067          	ret
   20d88:	02088663          	beqz	a7,20db4 <__getf2+0xd4>
   20d8c:	f8050ee3          	beqz	a0,20d28 <__getf2+0x48>
   20d90:	f8d59ce3          	bne	a1,a3,20d28 <__getf2+0x48>
   20d94:	f9154ae3          	blt	a0,a7,20d28 <__getf2+0x48>
   20d98:	fca8c4e3          	blt	a7,a0,20d60 <__getf2+0x80>
   20d9c:	f90766e3          	bltu	a4,a6,20d28 <__getf2+0x48>
   20da0:	fce810e3          	bne	a6,a4,20d60 <__getf2+0x80>
   20da4:	f86662e3          	bltu	a2,t1,20d28 <__getf2+0x48>
   20da8:	00000513          	li	a0,0
   20dac:	02c37863          	bgeu	t1,a2,20ddc <__getf2+0xfc>
   20db0:	fb1ff06f          	j	20d60 <__getf2+0x80>
   20db4:	006867b3          	or	a5,a6,t1
   20db8:	00050663          	beqz	a0,20dc4 <__getf2+0xe4>
   20dbc:	fa078ee3          	beqz	a5,20d78 <__getf2+0x98>
   20dc0:	f9dff06f          	j	20d5c <__getf2+0x7c>
   20dc4:	00c768b3          	or	a7,a4,a2
   20dc8:	00088863          	beqz	a7,20dd8 <__getf2+0xf8>
   20dcc:	fa0786e3          	beqz	a5,20d78 <__getf2+0x98>
   20dd0:	fcd586e3          	beq	a1,a3,20d9c <__getf2+0xbc>
   20dd4:	f55ff06f          	j	20d28 <__getf2+0x48>
   20dd8:	f40798e3          	bnez	a5,20d28 <__getf2+0x48>
   20ddc:	00008067          	ret
   20de0:	00186073          	csrs	fflags,16
   20de4:	ffe00513          	li	a0,-2
   20de8:	00008067          	ret

0000000000020dec <__letf2>:
   20dec:	00050313          	mv	t1,a0
   20df0:	002027f3          	frrm	a5
   20df4:	00008e37          	lui	t3,0x8
   20df8:	0305d893          	srl	a7,a1,0x30
   20dfc:	fffe0e13          	add	t3,t3,-1 # 7fff <exit-0x80e9>
   20e00:	fff00713          	li	a4,-1
   20e04:	01075713          	srl	a4,a4,0x10
   20e08:	0306d793          	srl	a5,a3,0x30
   20e0c:	01c8f8b3          	and	a7,a7,t3
   20e10:	00e5f833          	and	a6,a1,a4
   20e14:	01c7f533          	and	a0,a5,t3
   20e18:	00e6f733          	and	a4,a3,a4
   20e1c:	03f5d593          	srl	a1,a1,0x3f
   20e20:	03f6d693          	srl	a3,a3,0x3f
   20e24:	03c89a63          	bne	a7,t3,20e58 <__letf2+0x6c>
   20e28:	00686833          	or	a6,a6,t1
   20e2c:	0c081063          	bnez	a6,20eec <__letf2+0x100>
   20e30:	01150a63          	beq	a0,a7,20e44 <__letf2+0x58>
   20e34:	00100513          	li	a0,1
   20e38:	0a058863          	beqz	a1,20ee8 <__letf2+0xfc>
   20e3c:	fff00513          	li	a0,-1
   20e40:	00008067          	ret
   20e44:	00c76733          	or	a4,a4,a2
   20e48:	0a071263          	bnez	a4,20eec <__letf2+0x100>
   20e4c:	fed594e3          	bne	a1,a3,20e34 <__letf2+0x48>
   20e50:	00000513          	li	a0,0
   20e54:	00008067          	ret
   20e58:	03c51e63          	bne	a0,t3,20e94 <__letf2+0xa8>
   20e5c:	00c76733          	or	a4,a4,a2
   20e60:	08071663          	bnez	a4,20eec <__letf2+0x100>
   20e64:	00088c63          	beqz	a7,20e7c <__letf2+0x90>
   20e68:	fcd596e3          	bne	a1,a3,20e34 <__letf2+0x48>
   20e6c:	fff00513          	li	a0,-1
   20e70:	06058c63          	beqz	a1,20ee8 <__letf2+0xfc>
   20e74:	00058513          	mv	a0,a1
   20e78:	00008067          	ret
   20e7c:	00686833          	or	a6,a6,t1
   20e80:	fe0814e3          	bnez	a6,20e68 <__letf2+0x7c>
   20e84:	fff00513          	li	a0,-1
   20e88:	06068063          	beqz	a3,20ee8 <__letf2+0xfc>
   20e8c:	00068513          	mv	a0,a3
   20e90:	00008067          	ret
   20e94:	02088663          	beqz	a7,20ec0 <__letf2+0xd4>
   20e98:	f8050ee3          	beqz	a0,20e34 <__letf2+0x48>
   20e9c:	f8d59ce3          	bne	a1,a3,20e34 <__letf2+0x48>
   20ea0:	f9154ae3          	blt	a0,a7,20e34 <__letf2+0x48>
   20ea4:	fca8c4e3          	blt	a7,a0,20e6c <__letf2+0x80>
   20ea8:	f90766e3          	bltu	a4,a6,20e34 <__letf2+0x48>
   20eac:	fce810e3          	bne	a6,a4,20e6c <__letf2+0x80>
   20eb0:	f86662e3          	bltu	a2,t1,20e34 <__letf2+0x48>
   20eb4:	00000513          	li	a0,0
   20eb8:	02c37863          	bgeu	t1,a2,20ee8 <__letf2+0xfc>
   20ebc:	fb1ff06f          	j	20e6c <__letf2+0x80>
   20ec0:	006867b3          	or	a5,a6,t1
   20ec4:	00050663          	beqz	a0,20ed0 <__letf2+0xe4>
   20ec8:	fa078ee3          	beqz	a5,20e84 <__letf2+0x98>
   20ecc:	f9dff06f          	j	20e68 <__letf2+0x7c>
   20ed0:	00c768b3          	or	a7,a4,a2
   20ed4:	00088863          	beqz	a7,20ee4 <__letf2+0xf8>
   20ed8:	fa0786e3          	beqz	a5,20e84 <__letf2+0x98>
   20edc:	fcd586e3          	beq	a1,a3,20ea8 <__letf2+0xbc>
   20ee0:	f55ff06f          	j	20e34 <__letf2+0x48>
   20ee4:	f40798e3          	bnez	a5,20e34 <__letf2+0x48>
   20ee8:	00008067          	ret
   20eec:	00186073          	csrs	fflags,16
   20ef0:	00200513          	li	a0,2
   20ef4:	00008067          	ret

0000000000020ef8 <__multf3>:
   20ef8:	fa010113          	add	sp,sp,-96
   20efc:	04813823          	sd	s0,80(sp)
   20f00:	03413823          	sd	s4,48(sp)
   20f04:	01813823          	sd	s8,16(sp)
   20f08:	04113c23          	sd	ra,88(sp)
   20f0c:	04913423          	sd	s1,72(sp)
   20f10:	05213023          	sd	s2,64(sp)
   20f14:	03313c23          	sd	s3,56(sp)
   20f18:	03513423          	sd	s5,40(sp)
   20f1c:	03613023          	sd	s6,32(sp)
   20f20:	01713c23          	sd	s7,24(sp)
   20f24:	01913423          	sd	s9,8(sp)
   20f28:	00050413          	mv	s0,a0
   20f2c:	00060c13          	mv	s8,a2
   20f30:	00068a13          	mv	s4,a3
   20f34:	002029f3          	frrm	s3
   20f38:	00008737          	lui	a4,0x8
   20f3c:	0305d793          	srl	a5,a1,0x30
   20f40:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   20f44:	01059913          	sll	s2,a1,0x10
   20f48:	00e7f7b3          	and	a5,a5,a4
   20f4c:	0009899b          	sext.w	s3,s3
   20f50:	01095913          	srl	s2,s2,0x10
   20f54:	03f5da93          	srl	s5,a1,0x3f
   20f58:	04078063          	beqz	a5,20f98 <__multf3+0xa0>
   20f5c:	00078c9b          	sext.w	s9,a5
   20f60:	0ae78463          	beq	a5,a4,21008 <__multf3+0x110>
   20f64:	00391913          	sll	s2,s2,0x3
   20f68:	03d55713          	srl	a4,a0,0x3d
   20f6c:	01276733          	or	a4,a4,s2
   20f70:	ffffccb7          	lui	s9,0xffffc
   20f74:	00100913          	li	s2,1
   20f78:	03391913          	sll	s2,s2,0x33
   20f7c:	001c8c93          	add	s9,s9,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd6481>
   20f80:	01276933          	or	s2,a4,s2
   20f84:	00351b13          	sll	s6,a0,0x3
   20f88:	01978cb3          	add	s9,a5,s9
   20f8c:	00000b93          	li	s7,0
   20f90:	00000493          	li	s1,0
   20f94:	0940006f          	j	21028 <__multf3+0x130>
   20f98:	00a96b33          	or	s6,s2,a0
   20f9c:	140b0063          	beqz	s6,210dc <__multf3+0x1e4>
   20fa0:	04090463          	beqz	s2,20fe8 <__multf3+0xf0>
   20fa4:	00090513          	mv	a0,s2
   20fa8:	899ef0ef          	jal	10840 <__clzdi2>
   20fac:	0005071b          	sext.w	a4,a0
   20fb0:	ff170793          	add	a5,a4,-15
   20fb4:	03d00693          	li	a3,61
   20fb8:	0037861b          	addw	a2,a5,3
   20fbc:	40f687bb          	subw	a5,a3,a5
   20fc0:	00c91933          	sll	s2,s2,a2
   20fc4:	00f457b3          	srl	a5,s0,a5
   20fc8:	0127e7b3          	or	a5,a5,s2
   20fcc:	00c41933          	sll	s2,s0,a2
   20fd0:	ffffccb7          	lui	s9,0xffffc
   20fd4:	011c8c93          	add	s9,s9,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd6491>
   20fd8:	00090b13          	mv	s6,s2
   20fdc:	40ec8cb3          	sub	s9,s9,a4
   20fe0:	00078913          	mv	s2,a5
   20fe4:	fa9ff06f          	j	20f8c <__multf3+0x94>
   20fe8:	859ef0ef          	jal	10840 <__clzdi2>
   20fec:	0405071b          	addw	a4,a0,64
   20ff0:	ff170793          	add	a5,a4,-15
   20ff4:	03c00693          	li	a3,60
   20ff8:	faf6dee3          	bge	a3,a5,20fb4 <__multf3+0xbc>
   20ffc:	fc37879b          	addw	a5,a5,-61
   21000:	00f417b3          	sll	a5,s0,a5
   21004:	fcdff06f          	j	20fd0 <__multf3+0xd8>
   21008:	00a96b33          	or	s6,s2,a0
   2100c:	0e0b0063          	beqz	s6,210ec <__multf3+0x1f4>
   21010:	00100493          	li	s1,1
   21014:	02f49493          	sll	s1,s1,0x2f
   21018:	009934b3          	sltu	s1,s2,s1
   2101c:	0044949b          	sllw	s1,s1,0x4
   21020:	00050b13          	mv	s6,a0
   21024:	00300b93          	li	s7,3
   21028:	000085b7          	lui	a1,0x8
   2102c:	030a5613          	srl	a2,s4,0x30
   21030:	fff00693          	li	a3,-1
   21034:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   21038:	0106d413          	srl	s0,a3,0x10
   2103c:	00b67633          	and	a2,a2,a1
   21040:	008a7433          	and	s0,s4,s0
   21044:	000c0793          	mv	a5,s8
   21048:	03fa5a13          	srl	s4,s4,0x3f
   2104c:	0a060663          	beqz	a2,210f8 <__multf3+0x200>
   21050:	0006071b          	sext.w	a4,a2
   21054:	10b60c63          	beq	a2,a1,2116c <__multf3+0x274>
   21058:	00341413          	sll	s0,s0,0x3
   2105c:	03dc5713          	srl	a4,s8,0x3d
   21060:	00876733          	or	a4,a4,s0
   21064:	00100413          	li	s0,1
   21068:	03341413          	sll	s0,s0,0x33
   2106c:	00876433          	or	s0,a4,s0
   21070:	ffffc737          	lui	a4,0xffffc
   21074:	00170713          	add	a4,a4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd6481>
   21078:	003c1793          	sll	a5,s8,0x3
   2107c:	00e60733          	add	a4,a2,a4
   21080:	00000893          	li	a7,0
   21084:	002b9693          	sll	a3,s7,0x2
   21088:	01970833          	add	a6,a4,s9
   2108c:	0116e6b3          	or	a3,a3,a7
   21090:	00a00713          	li	a4,10
   21094:	014ac633          	xor	a2,s5,s4
   21098:	00180593          	add	a1,a6,1
   2109c:	3ad74263          	blt	a4,a3,21440 <__multf3+0x548>
   210a0:	00200713          	li	a4,2
   210a4:	10d74463          	blt	a4,a3,211ac <__multf3+0x2b4>
   210a8:	fff68693          	add	a3,a3,-1
   210ac:	00100713          	li	a4,1
   210b0:	10d76e63          	bltu	a4,a3,211cc <__multf3+0x2d4>
   210b4:	00088b93          	mv	s7,a7
   210b8:	00200713          	li	a4,2
   210bc:	68eb8863          	beq	s7,a4,2174c <__multf3+0x854>
   210c0:	00300713          	li	a4,3
   210c4:	68eb8e63          	beq	s7,a4,21760 <__multf3+0x868>
   210c8:	00100713          	li	a4,1
   210cc:	32eb9263          	bne	s7,a4,213f0 <__multf3+0x4f8>
   210d0:	00000713          	li	a4,0
   210d4:	00000513          	li	a0,0
   210d8:	6380006f          	j	21710 <__multf3+0x818>
   210dc:	00000913          	li	s2,0
   210e0:	00000c93          	li	s9,0
   210e4:	00100b93          	li	s7,1
   210e8:	ea9ff06f          	j	20f90 <__multf3+0x98>
   210ec:	00000913          	li	s2,0
   210f0:	00200b93          	li	s7,2
   210f4:	e9dff06f          	j	20f90 <__multf3+0x98>
   210f8:	008c67b3          	or	a5,s8,s0
   210fc:	08078663          	beqz	a5,21188 <__multf3+0x290>
   21100:	04040463          	beqz	s0,21148 <__multf3+0x250>
   21104:	00040513          	mv	a0,s0
   21108:	f38ef0ef          	jal	10840 <__clzdi2>
   2110c:	0005051b          	sext.w	a0,a0
   21110:	ff150793          	add	a5,a0,-15
   21114:	03d00713          	li	a4,61
   21118:	0037861b          	addw	a2,a5,3
   2111c:	40f707bb          	subw	a5,a4,a5
   21120:	00c41433          	sll	s0,s0,a2
   21124:	00fc57b3          	srl	a5,s8,a5
   21128:	0087e6b3          	or	a3,a5,s0
   2112c:	00cc1433          	sll	s0,s8,a2
   21130:	ffffc737          	lui	a4,0xffffc
   21134:	01170713          	add	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd6491>
   21138:	00040793          	mv	a5,s0
   2113c:	40a70733          	sub	a4,a4,a0
   21140:	00068413          	mv	s0,a3
   21144:	f3dff06f          	j	21080 <__multf3+0x188>
   21148:	000c0513          	mv	a0,s8
   2114c:	ef4ef0ef          	jal	10840 <__clzdi2>
   21150:	0405051b          	addw	a0,a0,64
   21154:	ff150793          	add	a5,a0,-15
   21158:	03c00713          	li	a4,60
   2115c:	faf75ce3          	bge	a4,a5,21114 <__multf3+0x21c>
   21160:	fc37879b          	addw	a5,a5,-61
   21164:	00fc16b3          	sll	a3,s8,a5
   21168:	fc9ff06f          	j	21130 <__multf3+0x238>
   2116c:	008c6633          	or	a2,s8,s0
   21170:	02060663          	beqz	a2,2119c <__multf3+0x2a4>
   21174:	0116d693          	srl	a3,a3,0x11
   21178:	00300893          	li	a7,3
   2117c:	f086e4e3          	bltu	a3,s0,21084 <__multf3+0x18c>
   21180:	01000493          	li	s1,16
   21184:	f01ff06f          	j	21084 <__multf3+0x18c>
   21188:	00000413          	li	s0,0
   2118c:	00000793          	li	a5,0
   21190:	00000713          	li	a4,0
   21194:	00100893          	li	a7,1
   21198:	eedff06f          	j	21084 <__multf3+0x18c>
   2119c:	00000413          	li	s0,0
   211a0:	00000793          	li	a5,0
   211a4:	00200893          	li	a7,2
   211a8:	eddff06f          	j	21084 <__multf3+0x18c>
   211ac:	00100713          	li	a4,1
   211b0:	00d716b3          	sll	a3,a4,a3
   211b4:	5306f513          	and	a0,a3,1328
   211b8:	2a051263          	bnez	a0,2145c <__multf3+0x564>
   211bc:	2406f313          	and	t1,a3,576
   211c0:	56031a63          	bnez	t1,21734 <__multf3+0x83c>
   211c4:	0886f693          	and	a3,a3,136
   211c8:	28069663          	bnez	a3,21454 <__multf3+0x55c>
   211cc:	fff00693          	li	a3,-1
   211d0:	0206d693          	srl	a3,a3,0x20
   211d4:	00878f33          	add	t5,a5,s0
   211d8:	020b5513          	srl	a0,s6,0x20
   211dc:	0207d313          	srl	t1,a5,0x20
   211e0:	01690fb3          	add	t6,s2,s6
   211e4:	00ff3eb3          	sltu	t4,t5,a5
   211e8:	00db7b33          	and	s6,s6,a3
   211ec:	00d7f7b3          	and	a5,a5,a3
   211f0:	036782b3          	mul	t0,a5,s6
   211f4:	012fbe33          	sltu	t3,t6,s2
   211f8:	000e0893          	mv	a7,t3
   211fc:	000e8713          	mv	a4,t4
   21200:	02f507b3          	mul	a5,a0,a5
   21204:	026506b3          	mul	a3,a0,t1
   21208:	0202d513          	srl	a0,t0,0x20
   2120c:	03630333          	mul	t1,t1,s6
   21210:	00f30333          	add	t1,t1,a5
   21214:	00650533          	add	a0,a0,t1
   21218:	00f57863          	bgeu	a0,a5,21228 <__multf3+0x330>
   2121c:	00100793          	li	a5,1
   21220:	02079793          	sll	a5,a5,0x20
   21224:	00f686b3          	add	a3,a3,a5
   21228:	fff00793          	li	a5,-1
   2122c:	0207d793          	srl	a5,a5,0x20
   21230:	02055313          	srl	t1,a0,0x20
   21234:	00f57533          	and	a0,a0,a5
   21238:	00f2f2b3          	and	t0,t0,a5
   2123c:	02051513          	sll	a0,a0,0x20
   21240:	00fff3b3          	and	t2,t6,a5
   21244:	00d30333          	add	t1,t1,a3
   21248:	00ff77b3          	and	a5,t5,a5
   2124c:	020f5693          	srl	a3,t5,0x20
   21250:	00550533          	add	a0,a0,t0
   21254:	020fd293          	srl	t0,t6,0x20
   21258:	02778ab3          	mul	s5,a5,t2
   2125c:	02f287b3          	mul	a5,t0,a5
   21260:	020ada13          	srl	s4,s5,0x20
   21264:	02d282b3          	mul	t0,t0,a3
   21268:	027686b3          	mul	a3,a3,t2
   2126c:	00f686b3          	add	a3,a3,a5
   21270:	00da0a33          	add	s4,s4,a3
   21274:	00fa7863          	bgeu	s4,a5,21284 <__multf3+0x38c>
   21278:	00100793          	li	a5,1
   2127c:	02079793          	sll	a5,a5,0x20
   21280:	00f282b3          	add	t0,t0,a5
   21284:	fff00793          	li	a5,-1
   21288:	0207d793          	srl	a5,a5,0x20
   2128c:	020a5393          	srl	t2,s4,0x20
   21290:	00fa7a33          	and	s4,s4,a5
   21294:	00fafab3          	and	s5,s5,a5
   21298:	020a1a13          	sll	s4,s4,0x20
   2129c:	02045693          	srl	a3,s0,0x20
   212a0:	015a0a33          	add	s4,s4,s5
   212a4:	02095a93          	srl	s5,s2,0x20
   212a8:	00f97933          	and	s2,s2,a5
   212ac:	00f477b3          	and	a5,s0,a5
   212b0:	02f90b33          	mul	s6,s2,a5
   212b4:	02fa87b3          	mul	a5,s5,a5
   212b8:	020b5413          	srl	s0,s6,0x20
   212bc:	02da8ab3          	mul	s5,s5,a3
   212c0:	032686b3          	mul	a3,a3,s2
   212c4:	00f686b3          	add	a3,a3,a5
   212c8:	00d40433          	add	s0,s0,a3
   212cc:	00f47863          	bgeu	s0,a5,212dc <__multf3+0x3e4>
   212d0:	00100793          	li	a5,1
   212d4:	02079793          	sll	a5,a5,0x20
   212d8:	00fa8ab3          	add	s5,s5,a5
   212dc:	fff00913          	li	s2,-1
   212e0:	02095913          	srl	s2,s2,0x20
   212e4:	02045693          	srl	a3,s0,0x20
   212e8:	012477b3          	and	a5,s0,s2
   212ec:	40e00733          	neg	a4,a4
   212f0:	006a0433          	add	s0,s4,t1
   212f4:	01f77733          	and	a4,a4,t6
   212f8:	411008b3          	neg	a7,a7
   212fc:	01443fb3          	sltu	t6,s0,s4
   21300:	01e8f8b3          	and	a7,a7,t5
   21304:	01f38f33          	add	t5,t2,t6
   21308:	005f0f33          	add	t5,t5,t0
   2130c:	01de7e33          	and	t3,t3,t4
   21310:	01ff3fb3          	sltu	t6,t5,t6
   21314:	00ef0733          	add	a4,t5,a4
   21318:	01cf8fb3          	add	t6,t6,t3
   2131c:	01e73f33          	sltu	t5,a4,t5
   21320:	00e88733          	add	a4,a7,a4
   21324:	01ff0f33          	add	t5,t5,t6
   21328:	011738b3          	sltu	a7,a4,a7
   2132c:	40a40eb3          	sub	t4,s0,a0
   21330:	40670e33          	sub	t3,a4,t1
   21334:	02079793          	sll	a5,a5,0x20
   21338:	012b7b33          	and	s6,s6,s2
   2133c:	01e888b3          	add	a7,a7,t5
   21340:	01d43f33          	sltu	t5,s0,t4
   21344:	01c73fb3          	sltu	t6,a4,t3
   21348:	015686b3          	add	a3,a3,s5
   2134c:	41ee0e33          	sub	t3,t3,t5
   21350:	016787b3          	add	a5,a5,s6
   21354:	00000f13          	li	t5,0
   21358:	01d47663          	bgeu	s0,t4,21364 <__multf3+0x46c>
   2135c:	40e30333          	sub	t1,t1,a4
   21360:	00133f13          	seqz	t5,t1
   21364:	01ff6f33          	or	t5,t5,t6
   21368:	40fe8fb3          	sub	t6,t4,a5
   2136c:	00d888b3          	add	a7,a7,a3
   21370:	01feb733          	sltu	a4,t4,t6
   21374:	40de06b3          	sub	a3,t3,a3
   21378:	00de3e33          	sltu	t3,t3,a3
   2137c:	40e78733          	sub	a4,a5,a4
   21380:	00000313          	li	t1,0
   21384:	01fef463          	bgeu	t4,t6,2138c <__multf3+0x494>
   21388:	0016b313          	seqz	t1,a3
   2138c:	00e686b3          	add	a3,a3,a4
   21390:	00f6b733          	sltu	a4,a3,a5
   21394:	01170733          	add	a4,a4,a7
   21398:	41e70733          	sub	a4,a4,t5
   2139c:	01c36333          	or	t1,t1,t3
   213a0:	40670733          	sub	a4,a4,t1
   213a4:	00df9793          	sll	a5,t6,0xd
   213a8:	00d71713          	sll	a4,a4,0xd
   213ac:	0336d413          	srl	s0,a3,0x33
   213b0:	00a7e7b3          	or	a5,a5,a0
   213b4:	00876433          	or	s0,a4,s0
   213b8:	00f037b3          	snez	a5,a5
   213bc:	033fd513          	srl	a0,t6,0x33
   213c0:	03475713          	srl	a4,a4,0x34
   213c4:	00a7e7b3          	or	a5,a5,a0
   213c8:	00d69693          	sll	a3,a3,0xd
   213cc:	00177713          	and	a4,a4,1
   213d0:	00d7e7b3          	or	a5,a5,a3
   213d4:	08070a63          	beqz	a4,21468 <__multf3+0x570>
   213d8:	0017d713          	srl	a4,a5,0x1
   213dc:	0017f793          	and	a5,a5,1
   213e0:	00f76733          	or	a4,a4,a5
   213e4:	03f41793          	sll	a5,s0,0x3f
   213e8:	00f767b3          	or	a5,a4,a5
   213ec:	00145413          	srl	s0,s0,0x1
   213f0:	000046b7          	lui	a3,0x4
   213f4:	fff68693          	add	a3,a3,-1 # 3fff <exit-0xc0e9>
   213f8:	00d586b3          	add	a3,a1,a3
   213fc:	14d05c63          	blez	a3,21554 <__multf3+0x65c>
   21400:	0077f713          	and	a4,a5,7
   21404:	06070e63          	beqz	a4,21480 <__multf3+0x588>
   21408:	00200713          	li	a4,2
   2140c:	0014e493          	or	s1,s1,1
   21410:	06e98663          	beq	s3,a4,2147c <__multf3+0x584>
   21414:	00300713          	li	a4,3
   21418:	04e98c63          	beq	s3,a4,21470 <__multf3+0x578>
   2141c:	06099263          	bnez	s3,21480 <__multf3+0x588>
   21420:	00f7f713          	and	a4,a5,15
   21424:	00400513          	li	a0,4
   21428:	04a70c63          	beq	a4,a0,21480 <__multf3+0x588>
   2142c:	00478713          	add	a4,a5,4
   21430:	00f73533          	sltu	a0,a4,a5
   21434:	00a40433          	add	s0,s0,a0
   21438:	00070793          	mv	a5,a4
   2143c:	0440006f          	j	21480 <__multf3+0x588>
   21440:	00f00713          	li	a4,15
   21444:	30e68e63          	beq	a3,a4,21760 <__multf3+0x868>
   21448:	00b00713          	li	a4,11
   2144c:	000a8613          	mv	a2,s5
   21450:	00e69663          	bne	a3,a4,2145c <__multf3+0x564>
   21454:	000a0613          	mv	a2,s4
   21458:	c5dff06f          	j	210b4 <__multf3+0x1bc>
   2145c:	00090413          	mv	s0,s2
   21460:	000b0793          	mv	a5,s6
   21464:	c55ff06f          	j	210b8 <__multf3+0x1c0>
   21468:	00080593          	mv	a1,a6
   2146c:	f85ff06f          	j	213f0 <__multf3+0x4f8>
   21470:	00061863          	bnez	a2,21480 <__multf3+0x588>
   21474:	00878713          	add	a4,a5,8
   21478:	fb9ff06f          	j	21430 <__multf3+0x538>
   2147c:	fe061ce3          	bnez	a2,21474 <__multf3+0x57c>
   21480:	03445713          	srl	a4,s0,0x34
   21484:	00177713          	and	a4,a4,1
   21488:	00070e63          	beqz	a4,214a4 <__multf3+0x5ac>
   2148c:	fff00713          	li	a4,-1
   21490:	03471713          	sll	a4,a4,0x34
   21494:	fff70713          	add	a4,a4,-1
   21498:	000046b7          	lui	a3,0x4
   2149c:	00e47433          	and	s0,s0,a4
   214a0:	00d586b3          	add	a3,a1,a3
   214a4:	000085b7          	lui	a1,0x8
   214a8:	ffe58713          	add	a4,a1,-2 # 7ffe <exit-0x80ea>
   214ac:	06d74463          	blt	a4,a3,21514 <__multf3+0x61c>
   214b0:	0037d793          	srl	a5,a5,0x3
   214b4:	03d41513          	sll	a0,s0,0x3d
   214b8:	00f56533          	or	a0,a0,a5
   214bc:	00345713          	srl	a4,s0,0x3
   214c0:	00f6161b          	sllw	a2,a2,0xf
   214c4:	01071593          	sll	a1,a4,0x10
   214c8:	00c6e6b3          	or	a3,a3,a2
   214cc:	03069693          	sll	a3,a3,0x30
   214d0:	0105d593          	srl	a1,a1,0x10
   214d4:	00d5e5b3          	or	a1,a1,a3
   214d8:	00048463          	beqz	s1,214e0 <__multf3+0x5e8>
   214dc:	0014a073          	csrs	fflags,s1
   214e0:	05813083          	ld	ra,88(sp)
   214e4:	05013403          	ld	s0,80(sp)
   214e8:	04813483          	ld	s1,72(sp)
   214ec:	04013903          	ld	s2,64(sp)
   214f0:	03813983          	ld	s3,56(sp)
   214f4:	03013a03          	ld	s4,48(sp)
   214f8:	02813a83          	ld	s5,40(sp)
   214fc:	02013b03          	ld	s6,32(sp)
   21500:	01813b83          	ld	s7,24(sp)
   21504:	01013c03          	ld	s8,16(sp)
   21508:	00813c83          	ld	s9,8(sp)
   2150c:	06010113          	add	sp,sp,96
   21510:	00008067          	ret
   21514:	00200793          	li	a5,2
   21518:	02f98a63          	beq	s3,a5,2154c <__multf3+0x654>
   2151c:	00300793          	li	a5,3
   21520:	00f98a63          	beq	s3,a5,21534 <__multf3+0x63c>
   21524:	00098a63          	beqz	s3,21538 <__multf3+0x640>
   21528:	fff00513          	li	a0,-1
   2152c:	00070693          	mv	a3,a4
   21530:	0100006f          	j	21540 <__multf3+0x648>
   21534:	fe061ae3          	bnez	a2,21528 <__multf3+0x630>
   21538:	00000513          	li	a0,0
   2153c:	fff58693          	add	a3,a1,-1
   21540:	0054e493          	or	s1,s1,5
   21544:	00050713          	mv	a4,a0
   21548:	f79ff06f          	j	214c0 <__multf3+0x5c8>
   2154c:	fc060ee3          	beqz	a2,21528 <__multf3+0x630>
   21550:	fe9ff06f          	j	21538 <__multf3+0x640>
   21554:	0c069863          	bnez	a3,21624 <__multf3+0x72c>
   21558:	0077f693          	and	a3,a5,7
   2155c:	00040713          	mv	a4,s0
   21560:	04068863          	beqz	a3,215b0 <__multf3+0x6b8>
   21564:	00200693          	li	a3,2
   21568:	0014e493          	or	s1,s1,1
   2156c:	04d98063          	beq	s3,a3,215ac <__multf3+0x6b4>
   21570:	00300693          	li	a3,3
   21574:	02d98663          	beq	s3,a3,215a0 <__multf3+0x6a8>
   21578:	02099c63          	bnez	s3,215b0 <__multf3+0x6b8>
   2157c:	00f7f693          	and	a3,a5,15
   21580:	00400593          	li	a1,4
   21584:	02b68663          	beq	a3,a1,215b0 <__multf3+0x6b8>
   21588:	ffc7b713          	sltiu	a4,a5,-4
   2158c:	00174713          	xor	a4,a4,1
   21590:	02071713          	sll	a4,a4,0x20
   21594:	02075713          	srl	a4,a4,0x20
   21598:	00870733          	add	a4,a4,s0
   2159c:	0140006f          	j	215b0 <__multf3+0x6b8>
   215a0:	00061863          	bnez	a2,215b0 <__multf3+0x6b8>
   215a4:	ff87b713          	sltiu	a4,a5,-8
   215a8:	fe5ff06f          	j	2158c <__multf3+0x694>
   215ac:	fe061ce3          	bnez	a2,215a4 <__multf3+0x6ac>
   215b0:	03475713          	srl	a4,a4,0x34
   215b4:	00174713          	xor	a4,a4,1
   215b8:	00177593          	and	a1,a4,1
   215bc:	00100713          	li	a4,1
   215c0:	04000693          	li	a3,64
   215c4:	40e686bb          	subw	a3,a3,a4
   215c8:	00d41533          	sll	a0,s0,a3
   215cc:	00e7d833          	srl	a6,a5,a4
   215d0:	00d796b3          	sll	a3,a5,a3
   215d4:	01056533          	or	a0,a0,a6
   215d8:	00d036b3          	snez	a3,a3
   215dc:	00d56533          	or	a0,a0,a3
   215e0:	00e45733          	srl	a4,s0,a4
   215e4:	00757793          	and	a5,a0,7
   215e8:	0a078463          	beqz	a5,21690 <__multf3+0x798>
   215ec:	00200793          	li	a5,2
   215f0:	0014e493          	or	s1,s1,1
   215f4:	08f98c63          	beq	s3,a5,2168c <__multf3+0x794>
   215f8:	00300793          	li	a5,3
   215fc:	08f98263          	beq	s3,a5,21680 <__multf3+0x788>
   21600:	08099863          	bnez	s3,21690 <__multf3+0x798>
   21604:	00f57793          	and	a5,a0,15
   21608:	00400693          	li	a3,4
   2160c:	08d78263          	beq	a5,a3,21690 <__multf3+0x798>
   21610:	00450793          	add	a5,a0,4
   21614:	00a7b6b3          	sltu	a3,a5,a0
   21618:	00d70733          	add	a4,a4,a3
   2161c:	00078513          	mv	a0,a5
   21620:	0700006f          	j	21690 <__multf3+0x798>
   21624:	00100713          	li	a4,1
   21628:	40d70733          	sub	a4,a4,a3
   2162c:	07400693          	li	a3,116
   21630:	0ae6c663          	blt	a3,a4,216dc <__multf3+0x7e4>
   21634:	03f00693          	li	a3,63
   21638:	0007059b          	sext.w	a1,a4
   2163c:	00e6c663          	blt	a3,a4,21648 <__multf3+0x750>
   21640:	00100593          	li	a1,1
   21644:	f7dff06f          	j	215c0 <__multf3+0x6c8>
   21648:	fc05851b          	addw	a0,a1,-64
   2164c:	04000813          	li	a6,64
   21650:	00a45533          	srl	a0,s0,a0
   21654:	00000693          	li	a3,0
   21658:	01070863          	beq	a4,a6,21668 <__multf3+0x770>
   2165c:	08000693          	li	a3,128
   21660:	40b686bb          	subw	a3,a3,a1
   21664:	00d416b3          	sll	a3,s0,a3
   21668:	00f6e6b3          	or	a3,a3,a5
   2166c:	00d036b3          	snez	a3,a3
   21670:	00d56533          	or	a0,a0,a3
   21674:	00100593          	li	a1,1
   21678:	00000713          	li	a4,0
   2167c:	f69ff06f          	j	215e4 <__multf3+0x6ec>
   21680:	00061863          	bnez	a2,21690 <__multf3+0x798>
   21684:	00850793          	add	a5,a0,8
   21688:	f8dff06f          	j	21614 <__multf3+0x71c>
   2168c:	fe061ce3          	bnez	a2,21684 <__multf3+0x78c>
   21690:	03375793          	srl	a5,a4,0x33
   21694:	0017f793          	and	a5,a5,1
   21698:	02078063          	beqz	a5,216b8 <__multf3+0x7c0>
   2169c:	0014e493          	or	s1,s1,1
   216a0:	00000713          	li	a4,0
   216a4:	00000513          	li	a0,0
   216a8:	00100693          	li	a3,1
   216ac:	e0058ae3          	beqz	a1,214c0 <__multf3+0x5c8>
   216b0:	0024e493          	or	s1,s1,2
   216b4:	e0dff06f          	j	214c0 <__multf3+0x5c8>
   216b8:	03d71793          	sll	a5,a4,0x3d
   216bc:	00355513          	srl	a0,a0,0x3
   216c0:	00a7e533          	or	a0,a5,a0
   216c4:	00375713          	srl	a4,a4,0x3
   216c8:	00000693          	li	a3,0
   216cc:	de058ae3          	beqz	a1,214c0 <__multf3+0x5c8>
   216d0:	0014f793          	and	a5,s1,1
   216d4:	de0786e3          	beqz	a5,214c0 <__multf3+0x5c8>
   216d8:	fd9ff06f          	j	216b0 <__multf3+0x7b8>
   216dc:	0087e533          	or	a0,a5,s0
   216e0:	02050463          	beqz	a0,21708 <__multf3+0x810>
   216e4:	00200793          	li	a5,2
   216e8:	0014e493          	or	s1,s1,1
   216ec:	02f98e63          	beq	s3,a5,21728 <__multf3+0x830>
   216f0:	00300793          	li	a5,3
   216f4:	02f98263          	beq	s3,a5,21718 <__multf3+0x820>
   216f8:	00500513          	li	a0,5
   216fc:	00098463          	beqz	s3,21704 <__multf3+0x80c>
   21700:	00100513          	li	a0,1
   21704:	00355513          	srl	a0,a0,0x3
   21708:	0024e493          	or	s1,s1,2
   2170c:	00000713          	li	a4,0
   21710:	00000693          	li	a3,0
   21714:	dadff06f          	j	214c0 <__multf3+0x5c8>
   21718:	00100513          	li	a0,1
   2171c:	fe0614e3          	bnez	a2,21704 <__multf3+0x80c>
   21720:	00900513          	li	a0,9
   21724:	fe1ff06f          	j	21704 <__multf3+0x80c>
   21728:	00100513          	li	a0,1
   2172c:	fc060ce3          	beqz	a2,21704 <__multf3+0x80c>
   21730:	ff1ff06f          	j	21720 <__multf3+0x828>
   21734:	000086b7          	lui	a3,0x8
   21738:	02f71713          	sll	a4,a4,0x2f
   2173c:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   21740:	00000613          	li	a2,0
   21744:	01000493          	li	s1,16
   21748:	d79ff06f          	j	214c0 <__multf3+0x5c8>
   2174c:	000086b7          	lui	a3,0x8
   21750:	00000713          	li	a4,0
   21754:	00000513          	li	a0,0
   21758:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   2175c:	d65ff06f          	j	214c0 <__multf3+0x5c8>
   21760:	00100713          	li	a4,1
   21764:	000086b7          	lui	a3,0x8
   21768:	02f71713          	sll	a4,a4,0x2f
   2176c:	00000513          	li	a0,0
   21770:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   21774:	00000613          	li	a2,0
   21778:	d49ff06f          	j	214c0 <__multf3+0x5c8>

000000000002177c <__subtf3>:
   2177c:	fd010113          	add	sp,sp,-48
   21780:	02113423          	sd	ra,40(sp)
   21784:	02813023          	sd	s0,32(sp)
   21788:	00913c23          	sd	s1,24(sp)
   2178c:	01213823          	sd	s2,16(sp)
   21790:	01313423          	sd	s3,8(sp)
   21794:	01413023          	sd	s4,0(sp)
   21798:	00202973          	frrm	s2
   2179c:	fff00313          	li	t1,-1
   217a0:	01035313          	srl	t1,t1,0x10
   217a4:	0305d413          	srl	s0,a1,0x30
   217a8:	000088b7          	lui	a7,0x8
   217ac:	03f5d493          	srl	s1,a1,0x3f
   217b0:	0065f5b3          	and	a1,a1,t1
   217b4:	00359793          	sll	a5,a1,0x3
   217b8:	fff88893          	add	a7,a7,-1 # 7fff <exit-0x80e9>
   217bc:	03d55593          	srl	a1,a0,0x3d
   217c0:	0306d713          	srl	a4,a3,0x30
   217c4:	03f6d813          	srl	a6,a3,0x3f
   217c8:	0066f6b3          	and	a3,a3,t1
   217cc:	00f5e5b3          	or	a1,a1,a5
   217d0:	01177733          	and	a4,a4,a7
   217d4:	00369793          	sll	a5,a3,0x3
   217d8:	03d65693          	srl	a3,a2,0x3d
   217dc:	0009091b          	sext.w	s2,s2
   217e0:	01147433          	and	s0,s0,a7
   217e4:	00351513          	sll	a0,a0,0x3
   217e8:	00f6e6b3          	or	a3,a3,a5
   217ec:	00361613          	sll	a2,a2,0x3
   217f0:	07171463          	bne	a4,a7,21858 <__subtf3+0xdc>
   217f4:	ffff87b7          	lui	a5,0xffff8
   217f8:	0017879b          	addw	a5,a5,1 # ffffffffffff8001 <__BSS_END__+0xfffffffffffd2481>
   217fc:	00c6e8b3          	or	a7,a3,a2
   21800:	008787bb          	addw	a5,a5,s0
   21804:	02088c63          	beqz	a7,2183c <__subtf3+0xc0>
   21808:	00080313          	mv	t1,a6
   2180c:	63049663          	bne	s1,a6,21e38 <__subtf3+0x6bc>
   21810:	30078a63          	beqz	a5,21b24 <__subtf3+0x3a8>
   21814:	62041863          	bnez	s0,21e44 <__subtf3+0x6c8>
   21818:	00a5e833          	or	a6,a1,a0
   2181c:	28081663          	bnez	a6,21aa8 <__subtf3+0x32c>
   21820:	000085b7          	lui	a1,0x8
   21824:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   21828:	00000793          	li	a5,0
   2182c:	0eb71463          	bne	a4,a1,21914 <__subtf3+0x198>
   21830:	00c6e833          	or	a6,a3,a2
   21834:	3a080663          	beqz	a6,21be0 <__subtf3+0x464>
   21838:	60c0006f          	j	21e44 <__subtf3+0x6c8>
   2183c:	00184313          	xor	t1,a6,1
   21840:	60649c63          	bne	s1,t1,21e58 <__subtf3+0x6dc>
   21844:	2e078063          	beqz	a5,21b24 <__subtf3+0x3a8>
   21848:	fc0408e3          	beqz	s0,21818 <__subtf3+0x9c>
   2184c:	00000813          	li	a6,0
   21850:	00000593          	li	a1,0
   21854:	7400006f          	j	21f94 <__subtf3+0x818>
   21858:	00184313          	xor	t1,a6,1
   2185c:	40e407bb          	subw	a5,s0,a4
   21860:	00078813          	mv	a6,a5
   21864:	4e649063          	bne	s1,t1,21d44 <__subtf3+0x5c8>
   21868:	1ef05063          	blez	a5,21a48 <__subtf3+0x2cc>
   2186c:	12071e63          	bnez	a4,219a8 <__subtf3+0x22c>
   21870:	00c6e7b3          	or	a5,a3,a2
   21874:	00079a63          	bnez	a5,21888 <__subtf3+0x10c>
   21878:	07140c63          	beq	s0,a7,218f0 <__subtf3+0x174>
   2187c:	00058693          	mv	a3,a1
   21880:	00050613          	mv	a2,a0
   21884:	3140006f          	j	21b98 <__subtf3+0x41c>
   21888:	fff8079b          	addw	a5,a6,-1
   2188c:	06079063          	bnez	a5,218ec <__subtf3+0x170>
   21890:	00c50633          	add	a2,a0,a2
   21894:	00d586b3          	add	a3,a1,a3
   21898:	00a63533          	sltu	a0,a2,a0
   2189c:	00a686b3          	add	a3,a3,a0
   218a0:	00040713          	mv	a4,s0
   218a4:	0336d793          	srl	a5,a3,0x33
   218a8:	0017f793          	and	a5,a5,1
   218ac:	2c078c63          	beqz	a5,21b84 <__subtf3+0x408>
   218b0:	000087b7          	lui	a5,0x8
   218b4:	00170713          	add	a4,a4,1
   218b8:	fff78593          	add	a1,a5,-1 # 7fff <exit-0x80e9>
   218bc:	44b70463          	beq	a4,a1,21d04 <__subtf3+0x588>
   218c0:	fff00793          	li	a5,-1
   218c4:	03379793          	sll	a5,a5,0x33
   218c8:	fff78793          	add	a5,a5,-1
   218cc:	00f6f7b3          	and	a5,a3,a5
   218d0:	00165693          	srl	a3,a2,0x1
   218d4:	00167613          	and	a2,a2,1
   218d8:	00c6e6b3          	or	a3,a3,a2
   218dc:	03f79613          	sll	a2,a5,0x3f
   218e0:	00d66633          	or	a2,a2,a3
   218e4:	0017d693          	srl	a3,a5,0x1
   218e8:	29c0006f          	j	21b84 <__subtf3+0x408>
   218ec:	11141a63          	bne	s0,a7,21a00 <__subtf3+0x284>
   218f0:	00a5e833          	or	a6,a1,a0
   218f4:	2a080ce3          	beqz	a6,223ac <__subtf3+0xc30>
   218f8:	0325d793          	srl	a5,a1,0x32
   218fc:	0017c793          	xor	a5,a5,1
   21900:	0017f793          	and	a5,a5,1
   21904:	00479793          	sll	a5,a5,0x4
   21908:	00058693          	mv	a3,a1
   2190c:	00050613          	mv	a2,a0
   21910:	00040713          	mv	a4,s0
   21914:	00767593          	and	a1,a2,7
   21918:	20059ae3          	bnez	a1,2232c <__subtf3+0xbb0>
   2191c:	00068593          	mv	a1,a3
   21920:	00060513          	mv	a0,a2
   21924:	0335d693          	srl	a3,a1,0x33
   21928:	0016f693          	and	a3,a3,1
   2192c:	280686e3          	beqz	a3,223b8 <__subtf3+0xc3c>
   21930:	000086b7          	lui	a3,0x8
   21934:	00170713          	add	a4,a4,1
   21938:	fff68613          	add	a2,a3,-1 # 7fff <exit-0x80e9>
   2193c:	22c702e3          	beq	a4,a2,22360 <__subtf3+0xbe4>
   21940:	fff00693          	li	a3,-1
   21944:	03369693          	sll	a3,a3,0x33
   21948:	fff68693          	add	a3,a3,-1
   2194c:	00d5f5b3          	and	a1,a1,a3
   21950:	00355693          	srl	a3,a0,0x3
   21954:	03d59513          	sll	a0,a1,0x3d
   21958:	00d56533          	or	a0,a0,a3
   2195c:	0035d593          	srl	a1,a1,0x3
   21960:	03171713          	sll	a4,a4,0x31
   21964:	00f4949b          	sllw	s1,s1,0xf
   21968:	03175713          	srl	a4,a4,0x31
   2196c:	01059593          	sll	a1,a1,0x10
   21970:	00976733          	or	a4,a4,s1
   21974:	03071713          	sll	a4,a4,0x30
   21978:	0105d593          	srl	a1,a1,0x10
   2197c:	00e5e5b3          	or	a1,a1,a4
   21980:	00078463          	beqz	a5,21988 <__subtf3+0x20c>
   21984:	0017a073          	csrs	fflags,a5
   21988:	02813083          	ld	ra,40(sp)
   2198c:	02013403          	ld	s0,32(sp)
   21990:	01813483          	ld	s1,24(sp)
   21994:	01013903          	ld	s2,16(sp)
   21998:	00813983          	ld	s3,8(sp)
   2199c:	00013a03          	ld	s4,0(sp)
   219a0:	03010113          	add	sp,sp,48
   219a4:	00008067          	ret
   219a8:	f51404e3          	beq	s0,a7,218f0 <__subtf3+0x174>
   219ac:	07400713          	li	a4,116
   219b0:	04f74c63          	blt	a4,a5,21a08 <__subtf3+0x28c>
   219b4:	00100713          	li	a4,1
   219b8:	03371713          	sll	a4,a4,0x33
   219bc:	00e6e6b3          	or	a3,a3,a4
   219c0:	03f00713          	li	a4,63
   219c4:	04f74863          	blt	a4,a5,21a14 <__subtf3+0x298>
   219c8:	04000813          	li	a6,64
   219cc:	40f8083b          	subw	a6,a6,a5
   219d0:	01069733          	sll	a4,a3,a6
   219d4:	00f658b3          	srl	a7,a2,a5
   219d8:	01061833          	sll	a6,a2,a6
   219dc:	01176733          	or	a4,a4,a7
   219e0:	01003833          	snez	a6,a6
   219e4:	01076733          	or	a4,a4,a6
   219e8:	00f6d7b3          	srl	a5,a3,a5
   219ec:	00a70633          	add	a2,a4,a0
   219f0:	00b787b3          	add	a5,a5,a1
   219f4:	00e63733          	sltu	a4,a2,a4
   219f8:	00e786b3          	add	a3,a5,a4
   219fc:	ea5ff06f          	j	218a0 <__subtf3+0x124>
   21a00:	07400713          	li	a4,116
   21a04:	faf75ee3          	bge	a4,a5,219c0 <__subtf3+0x244>
   21a08:	00000793          	li	a5,0
   21a0c:	00100713          	li	a4,1
   21a10:	fddff06f          	j	219ec <__subtf3+0x270>
   21a14:	fc07871b          	addw	a4,a5,-64
   21a18:	04000893          	li	a7,64
   21a1c:	00e6d733          	srl	a4,a3,a4
   21a20:	00000813          	li	a6,0
   21a24:	01178863          	beq	a5,a7,21a34 <__subtf3+0x2b8>
   21a28:	08000813          	li	a6,128
   21a2c:	40f8083b          	subw	a6,a6,a5
   21a30:	01069833          	sll	a6,a3,a6
   21a34:	00c86833          	or	a6,a6,a2
   21a38:	01003833          	snez	a6,a6
   21a3c:	01076733          	or	a4,a4,a6
   21a40:	00000793          	li	a5,0
   21a44:	fa9ff06f          	j	219ec <__subtf3+0x270>
   21a48:	0c078e63          	beqz	a5,21b24 <__subtf3+0x3a8>
   21a4c:	dc0406e3          	beqz	s0,21818 <__subtf3+0x9c>
   21a50:	f8c00893          	li	a7,-116
   21a54:	0917c863          	blt	a5,a7,21ae4 <__subtf3+0x368>
   21a58:	00100813          	li	a6,1
   21a5c:	03381813          	sll	a6,a6,0x33
   21a60:	40f007bb          	negw	a5,a5
   21a64:	0105e5b3          	or	a1,a1,a6
   21a68:	03f00813          	li	a6,63
   21a6c:	08f84263          	blt	a6,a5,21af0 <__subtf3+0x374>
   21a70:	04000893          	li	a7,64
   21a74:	40f888bb          	subw	a7,a7,a5
   21a78:	00f55333          	srl	t1,a0,a5
   21a7c:	01159833          	sll	a6,a1,a7
   21a80:	011518b3          	sll	a7,a0,a7
   21a84:	00686833          	or	a6,a6,t1
   21a88:	011038b3          	snez	a7,a7
   21a8c:	01186533          	or	a0,a6,a7
   21a90:	00f5d7b3          	srl	a5,a1,a5
   21a94:	00c50633          	add	a2,a0,a2
   21a98:	00d787b3          	add	a5,a5,a3
   21a9c:	00a63533          	sltu	a0,a2,a0
   21aa0:	00a786b3          	add	a3,a5,a0
   21aa4:	e01ff06f          	j	218a4 <__subtf3+0x128>
   21aa8:	fff7c793          	not	a5,a5
   21aac:	00079c63          	bnez	a5,21ac4 <__subtf3+0x348>
   21ab0:	00c50633          	add	a2,a0,a2
   21ab4:	00d586b3          	add	a3,a1,a3
   21ab8:	00a63533          	sltu	a0,a2,a0
   21abc:	00a686b3          	add	a3,a3,a0
   21ac0:	de5ff06f          	j	218a4 <__subtf3+0x128>
   21ac4:	00008837          	lui	a6,0x8
   21ac8:	fff80813          	add	a6,a6,-1 # 7fff <exit-0x80e9>
   21acc:	01071863          	bne	a4,a6,21adc <__subtf3+0x360>
   21ad0:	00c6e833          	or	a6,a3,a2
   21ad4:	d6080ee3          	beqz	a6,21850 <__subtf3+0xd4>
   21ad8:	36c0006f          	j	21e44 <__subtf3+0x6c8>
   21adc:	07400813          	li	a6,116
   21ae0:	f8f854e3          	bge	a6,a5,21a68 <__subtf3+0x2ec>
   21ae4:	00000793          	li	a5,0
   21ae8:	00100513          	li	a0,1
   21aec:	fa9ff06f          	j	21a94 <__subtf3+0x318>
   21af0:	fc07881b          	addw	a6,a5,-64
   21af4:	04000313          	li	t1,64
   21af8:	0105d833          	srl	a6,a1,a6
   21afc:	00000893          	li	a7,0
   21b00:	00678863          	beq	a5,t1,21b10 <__subtf3+0x394>
   21b04:	08000893          	li	a7,128
   21b08:	40f888bb          	subw	a7,a7,a5
   21b0c:	011598b3          	sll	a7,a1,a7
   21b10:	00a8e8b3          	or	a7,a7,a0
   21b14:	011038b3          	snez	a7,a7
   21b18:	01186533          	or	a0,a6,a7
   21b1c:	00000793          	li	a5,0
   21b20:	f75ff06f          	j	21a94 <__subtf3+0x318>
   21b24:	000088b7          	lui	a7,0x8
   21b28:	ffe88813          	add	a6,a7,-2 # 7ffe <exit-0x80ea>
   21b2c:	00140793          	add	a5,s0,1
   21b30:	0107f333          	and	t1,a5,a6
   21b34:	fff88893          	add	a7,a7,-1
   21b38:	12031863          	bnez	t1,21c68 <__subtf3+0x4ec>
   21b3c:	00a5e833          	or	a6,a1,a0
   21b40:	04041663          	bnez	s0,21b8c <__subtf3+0x410>
   21b44:	6e080a63          	beqz	a6,22238 <__subtf3+0xabc>
   21b48:	00c6e7b3          	or	a5,a3,a2
   21b4c:	5e078863          	beqz	a5,2213c <__subtf3+0x9c0>
   21b50:	00c50633          	add	a2,a0,a2
   21b54:	00a637b3          	sltu	a5,a2,a0
   21b58:	00d586b3          	add	a3,a1,a3
   21b5c:	00f685b3          	add	a1,a3,a5
   21b60:	0335d793          	srl	a5,a1,0x33
   21b64:	0017f793          	and	a5,a5,1
   21b68:	00060513          	mv	a0,a2
   21b6c:	5c078863          	beqz	a5,2213c <__subtf3+0x9c0>
   21b70:	fff00693          	li	a3,-1
   21b74:	03369693          	sll	a3,a3,0x33
   21b78:	fff68693          	add	a3,a3,-1
   21b7c:	00d5f6b3          	and	a3,a1,a3
   21b80:	00100713          	li	a4,1
   21b84:	00000793          	li	a5,0
   21b88:	d8dff06f          	j	21914 <__subtf3+0x198>
   21b8c:	05141063          	bne	s0,a7,21bcc <__subtf3+0x450>
   21b90:	00081863          	bnez	a6,21ba0 <__subtf3+0x424>
   21b94:	f2870ee3          	beq	a4,s0,21ad0 <__subtf3+0x354>
   21b98:	00040713          	mv	a4,s0
   21b9c:	fe9ff06f          	j	21b84 <__subtf3+0x408>
   21ba0:	00100893          	li	a7,1
   21ba4:	03289893          	sll	a7,a7,0x32
   21ba8:	0115f7b3          	and	a5,a1,a7
   21bac:	00c6e333          	or	t1,a3,a2
   21bb0:	000788e3          	beqz	a5,223c0 <__subtf3+0xc44>
   21bb4:	00000793          	li	a5,0
   21bb8:	08871a63          	bne	a4,s0,21c4c <__subtf3+0x4d0>
   21bbc:	02031663          	bnez	t1,21be8 <__subtf3+0x46c>
   21bc0:	00058693          	mv	a3,a1
   21bc4:	00050613          	mv	a2,a0
   21bc8:	d4dff06f          	j	21914 <__subtf3+0x198>
   21bcc:	00000793          	li	a5,0
   21bd0:	07171c63          	bne	a4,a7,21c48 <__subtf3+0x4cc>
   21bd4:	00c6e8b3          	or	a7,a3,a2
   21bd8:	7e089a63          	bnez	a7,223cc <__subtf3+0xc50>
   21bdc:	fe0812e3          	bnez	a6,21bc0 <__subtf3+0x444>
   21be0:	00000593          	li	a1,0
   21be4:	0240006f          	j	21c08 <__subtf3+0x48c>
   21be8:	0116f8b3          	and	a7,a3,a7
   21bec:	06088a63          	beqz	a7,21c60 <__subtf3+0x4e4>
   21bf0:	00100593          	li	a1,1
   21bf4:	00008737          	lui	a4,0x8
   21bf8:	00000493          	li	s1,0
   21bfc:	03259593          	sll	a1,a1,0x32
   21c00:	00000813          	li	a6,0
   21c04:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   21c08:	000086b7          	lui	a3,0x8
   21c0c:	03d59513          	sll	a0,a1,0x3d
   21c10:	00385813          	srl	a6,a6,0x3
   21c14:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   21c18:	01056533          	or	a0,a0,a6
   21c1c:	0035d593          	srl	a1,a1,0x3
   21c20:	d4d710e3          	bne	a4,a3,21960 <__subtf3+0x1e4>
   21c24:	00b56533          	or	a0,a0,a1
   21c28:	00000593          	li	a1,0
   21c2c:	d2050ae3          	beqz	a0,21960 <__subtf3+0x1e4>
   21c30:	00100593          	li	a1,1
   21c34:	02f59593          	sll	a1,a1,0x2f
   21c38:	00000513          	li	a0,0
   21c3c:	00000493          	li	s1,0
   21c40:	d21ff06f          	j	21960 <__subtf3+0x1e4>
   21c44:	01000793          	li	a5,16
   21c48:	78080a63          	beqz	a6,223dc <__subtf3+0xc60>
   21c4c:	00c6e6b3          	or	a3,a3,a2
   21c50:	fa0690e3          	bnez	a3,21bf0 <__subtf3+0x474>
   21c54:	00058693          	mv	a3,a1
   21c58:	00050613          	mv	a2,a0
   21c5c:	7800006f          	j	223dc <__subtf3+0xc60>
   21c60:	01000793          	li	a5,16
   21c64:	fe9ff06f          	j	21c4c <__subtf3+0x4d0>
   21c68:	03178663          	beq	a5,a7,21c94 <__subtf3+0x518>
   21c6c:	00c50633          	add	a2,a0,a2
   21c70:	00a63533          	sltu	a0,a2,a0
   21c74:	00d586b3          	add	a3,a1,a3
   21c78:	00a686b3          	add	a3,a3,a0
   21c7c:	03f69713          	sll	a4,a3,0x3f
   21c80:	00165613          	srl	a2,a2,0x1
   21c84:	00c76633          	or	a2,a4,a2
   21c88:	0016d693          	srl	a3,a3,0x1
   21c8c:	00078713          	mv	a4,a5
   21c90:	ef5ff06f          	j	21b84 <__subtf3+0x408>
   21c94:	70090263          	beqz	s2,22398 <__subtf3+0xc1c>
   21c98:	00300713          	li	a4,3
   21c9c:	04e91463          	bne	s2,a4,21ce4 <__subtf3+0x568>
   21ca0:	6e048c63          	beqz	s1,22398 <__subtf3+0xc1c>
   21ca4:	00000693          	li	a3,0
   21ca8:	fff00593          	li	a1,-1
   21cac:	fff00513          	li	a0,-1
   21cb0:	00080713          	mv	a4,a6
   21cb4:	00500793          	li	a5,5
   21cb8:	00300613          	li	a2,3
   21cbc:	68c90463          	beq	s2,a2,22344 <__subtf3+0xbc8>
   21cc0:	68091463          	bnez	s2,22348 <__subtf3+0xbcc>
   21cc4:	00f57613          	and	a2,a0,15
   21cc8:	00400813          	li	a6,4
   21ccc:	67060e63          	beq	a2,a6,22348 <__subtf3+0xbcc>
   21cd0:	00450613          	add	a2,a0,4
   21cd4:	00a63833          	sltu	a6,a2,a0
   21cd8:	010585b3          	add	a1,a1,a6
   21cdc:	00060513          	mv	a0,a2
   21ce0:	6680006f          	j	22348 <__subtf3+0xbcc>
   21ce4:	00200713          	li	a4,2
   21ce8:	00e91463          	bne	s2,a4,21cf0 <__subtf3+0x574>
   21cec:	6a049663          	bnez	s1,22398 <__subtf3+0xc1c>
   21cf0:	fff00593          	li	a1,-1
   21cf4:	fff00513          	li	a0,-1
   21cf8:	00080713          	mv	a4,a6
   21cfc:	00500793          	li	a5,5
   21d00:	c25ff06f          	j	21924 <__subtf3+0x1a8>
   21d04:	68090c63          	beqz	s2,2239c <__subtf3+0xc20>
   21d08:	00300693          	li	a3,3
   21d0c:	00d91e63          	bne	s2,a3,21d28 <__subtf3+0x5ac>
   21d10:	68048663          	beqz	s1,2239c <__subtf3+0xc20>
   21d14:	00000693          	li	a3,0
   21d18:	fff00593          	li	a1,-1
   21d1c:	fff00513          	li	a0,-1
   21d20:	ffe78713          	add	a4,a5,-2
   21d24:	f91ff06f          	j	21cb4 <__subtf3+0x538>
   21d28:	00200693          	li	a3,2
   21d2c:	00d91463          	bne	s2,a3,21d34 <__subtf3+0x5b8>
   21d30:	66049663          	bnez	s1,2239c <__subtf3+0xc20>
   21d34:	fff00593          	li	a1,-1
   21d38:	fff00513          	li	a0,-1
   21d3c:	ffe78713          	add	a4,a5,-2
   21d40:	fbdff06f          	j	21cfc <__subtf3+0x580>
   21d44:	14f05463          	blez	a5,21e8c <__subtf3+0x710>
   21d48:	06071063          	bnez	a4,21da8 <__subtf3+0x62c>
   21d4c:	00c6e7b3          	or	a5,a3,a2
   21d50:	b20784e3          	beqz	a5,21878 <__subtf3+0xfc>
   21d54:	fff8079b          	addw	a5,a6,-1
   21d58:	02079c63          	bnez	a5,21d90 <__subtf3+0x614>
   21d5c:	40c50633          	sub	a2,a0,a2
   21d60:	40d586b3          	sub	a3,a1,a3
   21d64:	00c53533          	sltu	a0,a0,a2
   21d68:	40a686b3          	sub	a3,a3,a0
   21d6c:	00040713          	mv	a4,s0
   21d70:	0336d793          	srl	a5,a3,0x33
   21d74:	0017f793          	and	a5,a5,1
   21d78:	e00786e3          	beqz	a5,21b84 <__subtf3+0x408>
   21d7c:	00d69993          	sll	s3,a3,0xd
   21d80:	00d9d993          	srl	s3,s3,0xd
   21d84:	00060a13          	mv	s4,a2
   21d88:	00070413          	mv	s0,a4
   21d8c:	3580006f          	j	220e4 <__subtf3+0x968>
   21d90:	b71400e3          	beq	s0,a7,218f0 <__subtf3+0x174>
   21d94:	07400713          	li	a4,116
   21d98:	02f75463          	bge	a4,a5,21dc0 <__subtf3+0x644>
   21d9c:	00000793          	li	a5,0
   21da0:	00100713          	li	a4,1
   21da4:	0480006f          	j	21dec <__subtf3+0x670>
   21da8:	b51404e3          	beq	s0,a7,218f0 <__subtf3+0x174>
   21dac:	07400713          	li	a4,116
   21db0:	fef746e3          	blt	a4,a5,21d9c <__subtf3+0x620>
   21db4:	00100713          	li	a4,1
   21db8:	03371713          	sll	a4,a4,0x33
   21dbc:	00e6e6b3          	or	a3,a3,a4
   21dc0:	03f00713          	li	a4,63
   21dc4:	04f74063          	blt	a4,a5,21e04 <__subtf3+0x688>
   21dc8:	04000813          	li	a6,64
   21dcc:	40f8083b          	subw	a6,a6,a5
   21dd0:	01069733          	sll	a4,a3,a6
   21dd4:	00f658b3          	srl	a7,a2,a5
   21dd8:	01061833          	sll	a6,a2,a6
   21ddc:	01176733          	or	a4,a4,a7
   21de0:	01003833          	snez	a6,a6
   21de4:	01076733          	or	a4,a4,a6
   21de8:	00f6d7b3          	srl	a5,a3,a5
   21dec:	40e50733          	sub	a4,a0,a4
   21df0:	40f587b3          	sub	a5,a1,a5
   21df4:	00e536b3          	sltu	a3,a0,a4
   21df8:	00070613          	mv	a2,a4
   21dfc:	40d786b3          	sub	a3,a5,a3
   21e00:	f6dff06f          	j	21d6c <__subtf3+0x5f0>
   21e04:	fc07871b          	addw	a4,a5,-64
   21e08:	04000893          	li	a7,64
   21e0c:	00e6d733          	srl	a4,a3,a4
   21e10:	00000813          	li	a6,0
   21e14:	01178863          	beq	a5,a7,21e24 <__subtf3+0x6a8>
   21e18:	08000813          	li	a6,128
   21e1c:	40f8083b          	subw	a6,a6,a5
   21e20:	01069833          	sll	a6,a3,a6
   21e24:	00c86833          	or	a6,a6,a2
   21e28:	01003833          	snez	a6,a6
   21e2c:	01076733          	or	a4,a4,a6
   21e30:	00000793          	li	a5,0
   21e34:	fb9ff06f          	j	21dec <__subtf3+0x670>
   21e38:	12078063          	beqz	a5,21f58 <__subtf3+0x7dc>
   21e3c:	00080493          	mv	s1,a6
   21e40:	02040263          	beqz	s0,21e64 <__subtf3+0x6e8>
   21e44:	0326d793          	srl	a5,a3,0x32
   21e48:	0017c793          	xor	a5,a5,1
   21e4c:	0017f793          	and	a5,a5,1
   21e50:	00479793          	sll	a5,a5,0x4
   21e54:	ac1ff06f          	j	21914 <__subtf3+0x198>
   21e58:	10078063          	beqz	a5,21f58 <__subtf3+0x7dc>
   21e5c:	00030493          	mv	s1,t1
   21e60:	9e0416e3          	bnez	s0,2184c <__subtf3+0xd0>
   21e64:	00a5e833          	or	a6,a1,a0
   21e68:	9a080ce3          	beqz	a6,21820 <__subtf3+0xa4>
   21e6c:	fff7c793          	not	a5,a5
   21e70:	02079663          	bnez	a5,21e9c <__subtf3+0x720>
   21e74:	40a60533          	sub	a0,a2,a0
   21e78:	00a637b3          	sltu	a5,a2,a0
   21e7c:	40b686b3          	sub	a3,a3,a1
   21e80:	00050613          	mv	a2,a0
   21e84:	40f686b3          	sub	a3,a3,a5
   21e88:	ee9ff06f          	j	21d70 <__subtf3+0x5f4>
   21e8c:	0c078663          	beqz	a5,21f58 <__subtf3+0x7dc>
   21e90:	02041663          	bnez	s0,21ebc <__subtf3+0x740>
   21e94:	00030493          	mv	s1,t1
   21e98:	fcdff06f          	j	21e64 <__subtf3+0x6e8>
   21e9c:	00008837          	lui	a6,0x8
   21ea0:	fff80813          	add	a6,a6,-1 # 7fff <exit-0x80e9>
   21ea4:	c30706e3          	beq	a4,a6,21ad0 <__subtf3+0x354>
   21ea8:	07400813          	li	a6,116
   21eac:	02f85663          	bge	a6,a5,21ed8 <__subtf3+0x75c>
   21eb0:	00000793          	li	a5,0
   21eb4:	00100513          	li	a0,1
   21eb8:	04c0006f          	j	21f04 <__subtf3+0x788>
   21ebc:	f8c00893          	li	a7,-116
   21ec0:	0917c863          	blt	a5,a7,21f50 <__subtf3+0x7d4>
   21ec4:	00100813          	li	a6,1
   21ec8:	03381813          	sll	a6,a6,0x33
   21ecc:	40f007bb          	negw	a5,a5
   21ed0:	0105e5b3          	or	a1,a1,a6
   21ed4:	00030493          	mv	s1,t1
   21ed8:	03f00813          	li	a6,63
   21edc:	04f84063          	blt	a6,a5,21f1c <__subtf3+0x7a0>
   21ee0:	04000893          	li	a7,64
   21ee4:	40f888bb          	subw	a7,a7,a5
   21ee8:	00f55333          	srl	t1,a0,a5
   21eec:	01159833          	sll	a6,a1,a7
   21ef0:	011518b3          	sll	a7,a0,a7
   21ef4:	00686833          	or	a6,a6,t1
   21ef8:	011038b3          	snez	a7,a7
   21efc:	01186533          	or	a0,a6,a7
   21f00:	00f5d7b3          	srl	a5,a1,a5
   21f04:	40a60533          	sub	a0,a2,a0
   21f08:	00a635b3          	sltu	a1,a2,a0
   21f0c:	40f687b3          	sub	a5,a3,a5
   21f10:	00050613          	mv	a2,a0
   21f14:	40b786b3          	sub	a3,a5,a1
   21f18:	e59ff06f          	j	21d70 <__subtf3+0x5f4>
   21f1c:	fc07881b          	addw	a6,a5,-64
   21f20:	04000313          	li	t1,64
   21f24:	0105d833          	srl	a6,a1,a6
   21f28:	00000893          	li	a7,0
   21f2c:	00678863          	beq	a5,t1,21f3c <__subtf3+0x7c0>
   21f30:	08000893          	li	a7,128
   21f34:	40f888bb          	subw	a7,a7,a5
   21f38:	011598b3          	sll	a7,a1,a7
   21f3c:	00a8e8b3          	or	a7,a7,a0
   21f40:	011038b3          	snez	a7,a7
   21f44:	01186533          	or	a0,a6,a7
   21f48:	00000793          	li	a5,0
   21f4c:	fb9ff06f          	j	21f04 <__subtf3+0x788>
   21f50:	00030493          	mv	s1,t1
   21f54:	f5dff06f          	j	21eb0 <__subtf3+0x734>
   21f58:	00008e37          	lui	t3,0x8
   21f5c:	00140793          	add	a5,s0,1
   21f60:	ffee0813          	add	a6,t3,-2 # 7ffe <exit-0x80ea>
   21f64:	0107f7b3          	and	a5,a5,a6
   21f68:	14079463          	bnez	a5,220b0 <__subtf3+0x934>
   21f6c:	00c6e833          	or	a6,a3,a2
   21f70:	00a5e8b3          	or	a7,a1,a0
   21f74:	06041a63          	bnez	s0,21fe8 <__subtf3+0x86c>
   21f78:	02089263          	bnez	a7,21f9c <__subtf3+0x820>
   21f7c:	2c081463          	bnez	a6,22244 <__subtf3+0xac8>
   21f80:	ffe90493          	add	s1,s2,-2
   21f84:	0014b493          	seqz	s1,s1
   21f88:	00000593          	li	a1,0
   21f8c:	00000813          	li	a6,0
   21f90:	00000713          	li	a4,0
   21f94:	00000793          	li	a5,0
   21f98:	c71ff06f          	j	21c08 <__subtf3+0x48c>
   21f9c:	1a080063          	beqz	a6,2213c <__subtf3+0x9c0>
   21fa0:	40c50733          	sub	a4,a0,a2
   21fa4:	00e53833          	sltu	a6,a0,a4
   21fa8:	40d587b3          	sub	a5,a1,a3
   21fac:	410787b3          	sub	a5,a5,a6
   21fb0:	0337d813          	srl	a6,a5,0x33
   21fb4:	00187813          	and	a6,a6,1
   21fb8:	00080e63          	beqz	a6,21fd4 <__subtf3+0x858>
   21fbc:	40a60533          	sub	a0,a2,a0
   21fc0:	40b686b3          	sub	a3,a3,a1
   21fc4:	00a63633          	sltu	a2,a2,a0
   21fc8:	40c685b3          	sub	a1,a3,a2
   21fcc:	00030493          	mv	s1,t1
   21fd0:	16c0006f          	j	2213c <__subtf3+0x9c0>
   21fd4:	00f766b3          	or	a3,a4,a5
   21fd8:	fa0684e3          	beqz	a3,21f80 <__subtf3+0x804>
   21fdc:	00078593          	mv	a1,a5
   21fe0:	00070513          	mv	a0,a4
   21fe4:	1580006f          	j	2213c <__subtf3+0x9c0>
   21fe8:	fffe0e13          	add	t3,t3,-1
   21fec:	05c41e63          	bne	s0,t3,22048 <__subtf3+0x8cc>
   21ff0:	02089663          	bnez	a7,2201c <__subtf3+0x8a0>
   21ff4:	00000793          	li	a5,0
   21ff8:	08871863          	bne	a4,s0,22088 <__subtf3+0x90c>
   21ffc:	00100593          	li	a1,1
   22000:	03259593          	sll	a1,a1,0x32
   22004:	00000493          	li	s1,0
   22008:	04080e63          	beqz	a6,22064 <__subtf3+0x8e8>
   2200c:	00b6f5b3          	and	a1,a3,a1
   22010:	08058c63          	beqz	a1,220a8 <__subtf3+0x92c>
   22014:	00030493          	mv	s1,t1
   22018:	8fdff06f          	j	21914 <__subtf3+0x198>
   2201c:	00100613          	li	a2,1
   22020:	03261613          	sll	a2,a2,0x32
   22024:	00c5f7b3          	and	a5,a1,a2
   22028:	3c078063          	beqz	a5,223e8 <__subtf3+0xc6c>
   2202c:	00000793          	li	a5,0
   22030:	3c871663          	bne	a4,s0,223fc <__subtf3+0xc80>
   22034:	c20800e3          	beqz	a6,21c54 <__subtf3+0x4d8>
   22038:	00c6f633          	and	a2,a3,a2
   2203c:	ba061ae3          	bnez	a2,21bf0 <__subtf3+0x474>
   22040:	01000793          	li	a5,16
   22044:	3b80006f          	j	223fc <__subtf3+0xc80>
   22048:	00000793          	li	a5,0
   2204c:	03c71c63          	bne	a4,t3,22084 <__subtf3+0x908>
   22050:	00081e63          	bnez	a6,2206c <__subtf3+0x8f0>
   22054:	c00890e3          	bnez	a7,21c54 <__subtf3+0x4d8>
   22058:	00100593          	li	a1,1
   2205c:	00000493          	li	s1,0
   22060:	03259593          	sll	a1,a1,0x32
   22064:	01000793          	li	a5,16
   22068:	ba1ff06f          	j	21c08 <__subtf3+0x48c>
   2206c:	0326de13          	srl	t3,a3,0x32
   22070:	001e7e13          	and	t3,t3,1
   22074:	000e0663          	beqz	t3,22080 <__subtf3+0x904>
   22078:	b6089ce3          	bnez	a7,21bf0 <__subtf3+0x474>
   2207c:	f99ff06f          	j	22014 <__subtf3+0x898>
   22080:	01000793          	li	a5,16
   22084:	36089c63          	bnez	a7,223fc <__subtf3+0xc80>
   22088:	00030493          	mv	s1,t1
   2208c:	34081863          	bnez	a6,223dc <__subtf3+0xc60>
   22090:	00100593          	li	a1,1
   22094:	00008737          	lui	a4,0x8
   22098:	00000493          	li	s1,0
   2209c:	03259593          	sll	a1,a1,0x32
   220a0:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   220a4:	fc1ff06f          	j	22064 <__subtf3+0x8e8>
   220a8:	01000793          	li	a5,16
   220ac:	fddff06f          	j	22088 <__subtf3+0x90c>
   220b0:	40c507b3          	sub	a5,a0,a2
   220b4:	00f53733          	sltu	a4,a0,a5
   220b8:	40d589b3          	sub	s3,a1,a3
   220bc:	40e989b3          	sub	s3,s3,a4
   220c0:	0339d713          	srl	a4,s3,0x33
   220c4:	00177713          	and	a4,a4,1
   220c8:	00078a13          	mv	s4,a5
   220cc:	0e070463          	beqz	a4,221b4 <__subtf3+0xa38>
   220d0:	40a60a33          	sub	s4,a2,a0
   220d4:	40b689b3          	sub	s3,a3,a1
   220d8:	01463633          	sltu	a2,a2,s4
   220dc:	40c989b3          	sub	s3,s3,a2
   220e0:	00030493          	mv	s1,t1
   220e4:	0c098e63          	beqz	s3,221c0 <__subtf3+0xa44>
   220e8:	00098513          	mv	a0,s3
   220ec:	f54ee0ef          	jal	10840 <__clzdi2>
   220f0:	ff45071b          	addw	a4,a0,-12
   220f4:	04000693          	li	a3,64
   220f8:	40e686bb          	subw	a3,a3,a4
   220fc:	00e999b3          	sll	s3,s3,a4
   22100:	00da56b3          	srl	a3,s4,a3
   22104:	0136e6b3          	or	a3,a3,s3
   22108:	00ea19b3          	sll	s3,s4,a4
   2210c:	10874863          	blt	a4,s0,2221c <__subtf3+0xaa0>
   22110:	4087073b          	subw	a4,a4,s0
   22114:	0017071b          	addw	a4,a4,1
   22118:	04000793          	li	a5,64
   2211c:	40e787bb          	subw	a5,a5,a4
   22120:	00f69533          	sll	a0,a3,a5
   22124:	00e9d633          	srl	a2,s3,a4
   22128:	00f997b3          	sll	a5,s3,a5
   2212c:	00c56533          	or	a0,a0,a2
   22130:	00f037b3          	snez	a5,a5
   22134:	00f56533          	or	a0,a0,a5
   22138:	00e6d5b3          	srl	a1,a3,a4
   2213c:	00b567b3          	or	a5,a0,a1
   22140:	e40784e3          	beqz	a5,21f88 <__subtf3+0x80c>
   22144:	03f55793          	srl	a5,a0,0x3f
   22148:	00159713          	sll	a4,a1,0x1
   2214c:	00f70733          	add	a4,a4,a5
   22150:	00151793          	sll	a5,a0,0x1
   22154:	0077f613          	and	a2,a5,7
   22158:	00757693          	and	a3,a0,7
   2215c:	16060e63          	beqz	a2,222d8 <__subtf3+0xb5c>
   22160:	00200613          	li	a2,2
   22164:	12c90663          	beq	s2,a2,22290 <__subtf3+0xb14>
   22168:	00100613          	li	a2,1
   2216c:	00300813          	li	a6,3
   22170:	03461613          	sll	a2,a2,0x34
   22174:	0d090e63          	beq	s2,a6,22250 <__subtf3+0xad4>
   22178:	0c091e63          	bnez	s2,22254 <__subtf3+0xad8>
   2217c:	00f7f813          	and	a6,a5,15
   22180:	00400893          	li	a7,4
   22184:	0d180863          	beq	a6,a7,22254 <__subtf3+0xad8>
   22188:	ffc7b793          	sltiu	a5,a5,-4
   2218c:	0017c793          	xor	a5,a5,1
   22190:	02079793          	sll	a5,a5,0x20
   22194:	0207d793          	srl	a5,a5,0x20
   22198:	00e787b3          	add	a5,a5,a4
   2219c:	00c7f7b3          	and	a5,a5,a2
   221a0:	14079e63          	bnez	a5,222fc <__subtf3+0xb80>
   221a4:	12068663          	beqz	a3,222d0 <__subtf3+0xb54>
   221a8:	00100693          	li	a3,1
   221ac:	00000713          	li	a4,0
   221b0:	18c0006f          	j	2233c <__subtf3+0xbc0>
   221b4:	0137e7b3          	or	a5,a5,s3
   221b8:	f20796e3          	bnez	a5,220e4 <__subtf3+0x968>
   221bc:	dc5ff06f          	j	21f80 <__subtf3+0x804>
   221c0:	000a0513          	mv	a0,s4
   221c4:	e7cee0ef          	jal	10840 <__clzdi2>
   221c8:	0345071b          	addw	a4,a0,52
   221cc:	03f00593          	li	a1,63
   221d0:	f2e5d2e3          	bge	a1,a4,220f4 <__subtf3+0x978>
   221d4:	ff45069b          	addw	a3,a0,-12
   221d8:	00da16b3          	sll	a3,s4,a3
   221dc:	04874063          	blt	a4,s0,2221c <__subtf3+0xaa0>
   221e0:	408707bb          	subw	a5,a4,s0
   221e4:	0017871b          	addw	a4,a5,1
   221e8:	f2e5d8e3          	bge	a1,a4,22118 <__subtf3+0x99c>
   221ec:	fc17879b          	addw	a5,a5,-63
   221f0:	04000593          	li	a1,64
   221f4:	00f6d7b3          	srl	a5,a3,a5
   221f8:	00000513          	li	a0,0
   221fc:	00b70863          	beq	a4,a1,2220c <__subtf3+0xa90>
   22200:	08000513          	li	a0,128
   22204:	40e5053b          	subw	a0,a0,a4
   22208:	00a69533          	sll	a0,a3,a0
   2220c:	00a03533          	snez	a0,a0
   22210:	00f56533          	or	a0,a0,a5
   22214:	00000593          	li	a1,0
   22218:	f25ff06f          	j	2213c <__subtf3+0x9c0>
   2221c:	fff00793          	li	a5,-1
   22220:	03379793          	sll	a5,a5,0x33
   22224:	fff78793          	add	a5,a5,-1
   22228:	40e40733          	sub	a4,s0,a4
   2222c:	00f6f6b3          	and	a3,a3,a5
   22230:	00098613          	mv	a2,s3
   22234:	951ff06f          	j	21b84 <__subtf3+0x408>
   22238:	00068593          	mv	a1,a3
   2223c:	00060513          	mv	a0,a2
   22240:	efdff06f          	j	2213c <__subtf3+0x9c0>
   22244:	00068593          	mv	a1,a3
   22248:	00060513          	mv	a0,a2
   2224c:	d81ff06f          	j	21fcc <__subtf3+0x850>
   22250:	00048a63          	beqz	s1,22264 <__subtf3+0xae8>
   22254:	00c77733          	and	a4,a4,a2
   22258:	0a071263          	bnez	a4,222fc <__subtf3+0xb80>
   2225c:	f40696e3          	bnez	a3,221a8 <__subtf3+0xa2c>
   22260:	0280006f          	j	22288 <__subtf3+0xb0c>
   22264:	ff87b793          	sltiu	a5,a5,-8
   22268:	0017c793          	xor	a5,a5,1
   2226c:	02079793          	sll	a5,a5,0x20
   22270:	0207d793          	srl	a5,a5,0x20
   22274:	00e787b3          	add	a5,a5,a4
   22278:	00c7f7b3          	and	a5,a5,a2
   2227c:	08079063          	bnez	a5,222fc <__subtf3+0xb80>
   22280:	00000713          	li	a4,0
   22284:	0a069a63          	bnez	a3,22338 <__subtf3+0xbbc>
   22288:	00100793          	li	a5,1
   2228c:	0180006f          	j	222a4 <__subtf3+0xb28>
   22290:	00049e63          	bnez	s1,222ac <__subtf3+0xb30>
   22294:	03475713          	srl	a4,a4,0x34
   22298:	00177713          	and	a4,a4,1
   2229c:	00100793          	li	a5,1
   222a0:	06071063          	bnez	a4,22300 <__subtf3+0xb84>
   222a4:	0027e793          	or	a5,a5,2
   222a8:	e7cff06f          	j	21924 <__subtf3+0x1a8>
   222ac:	ff87b793          	sltiu	a5,a5,-8
   222b0:	0017c793          	xor	a5,a5,1
   222b4:	02079793          	sll	a5,a5,0x20
   222b8:	0207d793          	srl	a5,a5,0x20
   222bc:	00e787b3          	add	a5,a5,a4
   222c0:	0347d793          	srl	a5,a5,0x34
   222c4:	0017f793          	and	a5,a5,1
   222c8:	02079a63          	bnez	a5,222fc <__subtf3+0xb80>
   222cc:	08069263          	bnez	a3,22350 <__subtf3+0xbd4>
   222d0:	00000713          	li	a4,0
   222d4:	fb5ff06f          	j	22288 <__subtf3+0xb0c>
   222d8:	03475713          	srl	a4,a4,0x34
   222dc:	00177713          	and	a4,a4,1
   222e0:	04071263          	bnez	a4,22324 <__subtf3+0xba8>
   222e4:	00000793          	li	a5,0
   222e8:	e2068e63          	beqz	a3,21924 <__subtf3+0x1a8>
   222ec:	00100693          	li	a3,1
   222f0:	00000713          	li	a4,0
   222f4:	00000793          	li	a5,0
   222f8:	0140006f          	j	2230c <__subtf3+0xb90>
   222fc:	00100793          	li	a5,1
   22300:	00000713          	li	a4,0
   22304:	e2068063          	beqz	a3,21924 <__subtf3+0x1a8>
   22308:	00000693          	li	a3,0
   2230c:	00200613          	li	a2,2
   22310:	0017e793          	or	a5,a5,1
   22314:	9ac912e3          	bne	s2,a2,21cb8 <__subtf3+0x53c>
   22318:	02048863          	beqz	s1,22348 <__subtf3+0xbcc>
   2231c:	00850613          	add	a2,a0,8
   22320:	9b5ff06f          	j	21cd4 <__subtf3+0x558>
   22324:	00000793          	li	a5,0
   22328:	fd9ff06f          	j	22300 <__subtf3+0xb84>
   2232c:	00068593          	mv	a1,a3
   22330:	00060513          	mv	a0,a2
   22334:	fd5ff06f          	j	22308 <__subtf3+0xb8c>
   22338:	00100693          	li	a3,1
   2233c:	00100793          	li	a5,1
   22340:	979ff06f          	j	21cb8 <__subtf3+0x53c>
   22344:	fc048ce3          	beqz	s1,2231c <__subtf3+0xba0>
   22348:	f4069ee3          	bnez	a3,222a4 <__subtf3+0xb28>
   2234c:	dd8ff06f          	j	21924 <__subtf3+0x1a8>
   22350:	00100693          	li	a3,1
   22354:	00000713          	li	a4,0
   22358:	00100793          	li	a5,1
   2235c:	fbdff06f          	j	22318 <__subtf3+0xb9c>
   22360:	00000813          	li	a6,0
   22364:	00090863          	beqz	s2,22374 <__subtf3+0xbf8>
   22368:	00300613          	li	a2,3
   2236c:	00c91a63          	bne	s2,a2,22380 <__subtf3+0xc04>
   22370:	00049e63          	bnez	s1,2238c <__subtf3+0xc10>
   22374:	0057e793          	or	a5,a5,5
   22378:	00080593          	mv	a1,a6
   2237c:	88dff06f          	j	21c08 <__subtf3+0x48c>
   22380:	00200613          	li	a2,2
   22384:	00c91463          	bne	s2,a2,2238c <__subtf3+0xc10>
   22388:	fe0496e3          	bnez	s1,22374 <__subtf3+0xbf8>
   2238c:	fff00813          	li	a6,-1
   22390:	ffe68713          	add	a4,a3,-2
   22394:	fe1ff06f          	j	22374 <__subtf3+0xbf8>
   22398:	00078713          	mv	a4,a5
   2239c:	00000593          	li	a1,0
   223a0:	00000813          	li	a6,0
   223a4:	00500793          	li	a5,5
   223a8:	861ff06f          	j	21c08 <__subtf3+0x48c>
   223ac:	00000593          	li	a1,0
   223b0:	00040713          	mv	a4,s0
   223b4:	be1ff06f          	j	21f94 <__subtf3+0x818>
   223b8:	00050813          	mv	a6,a0
   223bc:	84dff06f          	j	21c08 <__subtf3+0x48c>
   223c0:	01000793          	li	a5,16
   223c4:	888714e3          	bne	a4,s0,21c4c <__subtf3+0x4d0>
   223c8:	fe030c63          	beqz	t1,21bc0 <__subtf3+0x444>
   223cc:	0326d713          	srl	a4,a3,0x32
   223d0:	00177713          	and	a4,a4,1
   223d4:	860708e3          	beqz	a4,21c44 <__subtf3+0x4c8>
   223d8:	80081ce3          	bnez	a6,21bf0 <__subtf3+0x474>
   223dc:	00008737          	lui	a4,0x8
   223e0:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   223e4:	d30ff06f          	j	21914 <__subtf3+0x198>
   223e8:	01000793          	li	a5,16
   223ec:	00871863          	bne	a4,s0,223fc <__subtf3+0xc80>
   223f0:	860802e3          	beqz	a6,21c54 <__subtf3+0x4d8>
   223f4:	00c6f633          	and	a2,a3,a2
   223f8:	fe061c63          	bnez	a2,21bf0 <__subtf3+0x474>
   223fc:	fe081a63          	bnez	a6,21bf0 <__subtf3+0x474>
   22400:	855ff06f          	j	21c54 <__subtf3+0x4d8>

0000000000022404 <__fixtfsi>:
   22404:	00050613          	mv	a2,a0
   22408:	002027f3          	frrm	a5
   2240c:	00004837          	lui	a6,0x4
   22410:	00159693          	sll	a3,a1,0x1
   22414:	01059793          	sll	a5,a1,0x10
   22418:	0316d693          	srl	a3,a3,0x31
   2241c:	ffe80713          	add	a4,a6,-2 # 3ffe <exit-0xc0ea>
   22420:	0107d793          	srl	a5,a5,0x10
   22424:	03f5d593          	srl	a1,a1,0x3f
   22428:	00d74c63          	blt	a4,a3,22440 <__fixtfsi+0x3c>
   2242c:	08069c63          	bnez	a3,224c4 <__fixtfsi+0xc0>
   22430:	00a7e7b3          	or	a5,a5,a0
   22434:	00000513          	li	a0,0
   22438:	08079263          	bnez	a5,224bc <__fixtfsi+0xb8>
   2243c:	00008067          	ret
   22440:	01d80713          	add	a4,a6,29
   22444:	02d75c63          	bge	a4,a3,2247c <__fixtfsi+0x78>
   22448:	80000737          	lui	a4,0x80000
   2244c:	fff74713          	not	a4,a4
   22450:	00b7053b          	addw	a0,a4,a1
   22454:	06058c63          	beqz	a1,224cc <__fixtfsi+0xc8>
   22458:	01e80813          	add	a6,a6,30
   2245c:	01000713          	li	a4,16
   22460:	07069863          	bne	a3,a6,224d0 <__fixtfsi+0xcc>
   22464:	0117d693          	srl	a3,a5,0x11
   22468:	06069463          	bnez	a3,224d0 <__fixtfsi+0xcc>
   2246c:	02f79793          	sll	a5,a5,0x2f
   22470:	00c7e7b3          	or	a5,a5,a2
   22474:	04079463          	bnez	a5,224bc <__fixtfsi+0xb8>
   22478:	00008067          	ret
   2247c:	00100713          	li	a4,1
   22480:	03071713          	sll	a4,a4,0x30
   22484:	00e7e7b3          	or	a5,a5,a4
   22488:	00004637          	lui	a2,0x4
   2248c:	ffffc737          	lui	a4,0xffffc
   22490:	0117071b          	addw	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd6491>
   22494:	02f6061b          	addw	a2,a2,47 # 402f <exit-0xc0b9>
   22498:	00d7073b          	addw	a4,a4,a3
   2249c:	40d606bb          	subw	a3,a2,a3
   224a0:	00e79733          	sll	a4,a5,a4
   224a4:	00d7d7b3          	srl	a5,a5,a3
   224a8:	00a76733          	or	a4,a4,a0
   224ac:	0007851b          	sext.w	a0,a5
   224b0:	00058463          	beqz	a1,224b8 <__fixtfsi+0xb4>
   224b4:	40a0053b          	negw	a0,a0
   224b8:	00070e63          	beqz	a4,224d4 <__fixtfsi+0xd0>
   224bc:	00100713          	li	a4,1
   224c0:	0100006f          	j	224d0 <__fixtfsi+0xcc>
   224c4:	00000513          	li	a0,0
   224c8:	ff5ff06f          	j	224bc <__fixtfsi+0xb8>
   224cc:	01000713          	li	a4,16
   224d0:	00172073          	csrs	fflags,a4
   224d4:	00008067          	ret

00000000000224d8 <__floatsitf>:
   224d8:	fe010113          	add	sp,sp,-32
   224dc:	00113c23          	sd	ra,24(sp)
   224e0:	00813823          	sd	s0,16(sp)
   224e4:	00913423          	sd	s1,8(sp)
   224e8:	06050463          	beqz	a0,22550 <__floatsitf+0x78>
   224ec:	0005079b          	sext.w	a5,a0
   224f0:	03f55493          	srl	s1,a0,0x3f
   224f4:	00055463          	bgez	a0,224fc <__floatsitf+0x24>
   224f8:	40f007bb          	negw	a5,a5
   224fc:	02079413          	sll	s0,a5,0x20
   22500:	02045413          	srl	s0,s0,0x20
   22504:	00040513          	mv	a0,s0
   22508:	b38ee0ef          	jal	10840 <__clzdi2>
   2250c:	000045b7          	lui	a1,0x4
   22510:	03e5859b          	addw	a1,a1,62 # 403e <exit-0xc0aa>
   22514:	40a585bb          	subw	a1,a1,a0
   22518:	ff15051b          	addw	a0,a0,-15
   2251c:	00a417b3          	sll	a5,s0,a0
   22520:	01813083          	ld	ra,24(sp)
   22524:	01013403          	ld	s0,16(sp)
   22528:	00f4949b          	sllw	s1,s1,0xf
   2252c:	0095e5b3          	or	a1,a1,s1
   22530:	01079793          	sll	a5,a5,0x10
   22534:	03059593          	sll	a1,a1,0x30
   22538:	0107d793          	srl	a5,a5,0x10
   2253c:	00813483          	ld	s1,8(sp)
   22540:	00000513          	li	a0,0
   22544:	00b7e5b3          	or	a1,a5,a1
   22548:	02010113          	add	sp,sp,32
   2254c:	00008067          	ret
   22550:	00000793          	li	a5,0
   22554:	00000593          	li	a1,0
   22558:	00000493          	li	s1,0
   2255c:	fc5ff06f          	j	22520 <__floatsitf+0x48>

0000000000022560 <__extenddftf2>:
   22560:	fe010113          	add	sp,sp,-32
   22564:	00113c23          	sd	ra,24(sp)
   22568:	00813823          	sd	s0,16(sp)
   2256c:	00913423          	sd	s1,8(sp)
   22570:	002027f3          	frrm	a5
   22574:	03455713          	srl	a4,a0,0x34
   22578:	7ff77713          	and	a4,a4,2047
   2257c:	00170793          	add	a5,a4,1
   22580:	00c51413          	sll	s0,a0,0xc
   22584:	7fe7f793          	and	a5,a5,2046
   22588:	00c45413          	srl	s0,s0,0xc
   2258c:	03f55493          	srl	s1,a0,0x3f
   22590:	02078063          	beqz	a5,225b0 <__extenddftf2+0x50>
   22594:	000047b7          	lui	a5,0x4
   22598:	c0078793          	add	a5,a5,-1024 # 3c00 <exit-0xc4e8>
   2259c:	00f70733          	add	a4,a4,a5
   225a0:	00445793          	srl	a5,s0,0x4
   225a4:	03c41413          	sll	s0,s0,0x3c
   225a8:	00000693          	li	a3,0
   225ac:	0840006f          	j	22630 <__extenddftf2+0xd0>
   225b0:	04071a63          	bnez	a4,22604 <__extenddftf2+0xa4>
   225b4:	00000793          	li	a5,0
   225b8:	fe0408e3          	beqz	s0,225a8 <__extenddftf2+0x48>
   225bc:	00040513          	mv	a0,s0
   225c0:	a80ee0ef          	jal	10840 <__clzdi2>
   225c4:	0005071b          	sext.w	a4,a0
   225c8:	00e00793          	li	a5,14
   225cc:	02e7c463          	blt	a5,a4,225f4 <__extenddftf2+0x94>
   225d0:	00f00793          	li	a5,15
   225d4:	40a787bb          	subw	a5,a5,a0
   225d8:	0315071b          	addw	a4,a0,49
   225dc:	00f457b3          	srl	a5,s0,a5
   225e0:	00e41433          	sll	s0,s0,a4
   225e4:	00004737          	lui	a4,0x4
   225e8:	c0c7071b          	addw	a4,a4,-1012 # 3c0c <exit-0xc4dc>
   225ec:	40a7073b          	subw	a4,a4,a0
   225f0:	fb9ff06f          	j	225a8 <__extenddftf2+0x48>
   225f4:	ff15079b          	addw	a5,a0,-15
   225f8:	00f417b3          	sll	a5,s0,a5
   225fc:	00000413          	li	s0,0
   22600:	fe5ff06f          	j	225e4 <__extenddftf2+0x84>
   22604:	06040263          	beqz	s0,22668 <__extenddftf2+0x108>
   22608:	00100713          	li	a4,1
   2260c:	03371693          	sll	a3,a4,0x33
   22610:	00445793          	srl	a5,s0,0x4
   22614:	02f71713          	sll	a4,a4,0x2f
   22618:	00d436b3          	sltu	a3,s0,a3
   2261c:	00e7e7b3          	or	a5,a5,a4
   22620:	00008737          	lui	a4,0x8
   22624:	0046969b          	sllw	a3,a3,0x4
   22628:	03c41413          	sll	s0,s0,0x3c
   2262c:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   22630:	00f4951b          	sllw	a0,s1,0xf
   22634:	01079593          	sll	a1,a5,0x10
   22638:	00a76733          	or	a4,a4,a0
   2263c:	03071713          	sll	a4,a4,0x30
   22640:	0105d593          	srl	a1,a1,0x10
   22644:	00e5e5b3          	or	a1,a1,a4
   22648:	00068463          	beqz	a3,22650 <__extenddftf2+0xf0>
   2264c:	00186073          	csrs	fflags,16
   22650:	01813083          	ld	ra,24(sp)
   22654:	00040513          	mv	a0,s0
   22658:	01013403          	ld	s0,16(sp)
   2265c:	00813483          	ld	s1,8(sp)
   22660:	02010113          	add	sp,sp,32
   22664:	00008067          	ret
   22668:	00008737          	lui	a4,0x8
   2266c:	00000793          	li	a5,0
   22670:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   22674:	f35ff06f          	j	225a8 <__extenddftf2+0x48>

0000000000022678 <__trunctfdf2>:
   22678:	002028f3          	frrm	a7
   2267c:	000087b7          	lui	a5,0x8
   22680:	0305d613          	srl	a2,a1,0x30
   22684:	fff78e13          	add	t3,a5,-1 # 7fff <exit-0x80e9>
   22688:	fff00713          	li	a4,-1
   2268c:	01075693          	srl	a3,a4,0x10
   22690:	01c67633          	and	a2,a2,t3
   22694:	03f5d813          	srl	a6,a1,0x3f
   22698:	00160313          	add	t1,a2,1
   2269c:	00d5f5b3          	and	a1,a1,a3
   226a0:	ffe78793          	add	a5,a5,-2
   226a4:	00359593          	sll	a1,a1,0x3
   226a8:	03d55693          	srl	a3,a0,0x3d
   226ac:	00f377b3          	and	a5,t1,a5
   226b0:	00b6e6b3          	or	a3,a3,a1
   226b4:	0008889b          	sext.w	a7,a7
   226b8:	00351593          	sll	a1,a0,0x3
   226bc:	16078463          	beqz	a5,22824 <__trunctfdf2+0x1ac>
   226c0:	ffffc7b7          	lui	a5,0xffffc
   226c4:	40078793          	add	a5,a5,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffd6880>
   226c8:	00f60633          	add	a2,a2,a5
   226cc:	7fe00793          	li	a5,2046
   226d0:	02c7de63          	bge	a5,a2,2270c <__trunctfdf2+0x94>
   226d4:	30088663          	beqz	a7,229e0 <__trunctfdf2+0x368>
   226d8:	00300793          	li	a5,3
   226dc:	00f89c63          	bne	a7,a5,226f4 <__trunctfdf2+0x7c>
   226e0:	32080463          	beqz	a6,22a08 <__trunctfdf2+0x390>
   226e4:	7fe00613          	li	a2,2046
   226e8:	fff00793          	li	a5,-1
   226ec:	00500593          	li	a1,5
   226f0:	2400006f          	j	22930 <__trunctfdf2+0x2b8>
   226f4:	00200793          	li	a5,2
   226f8:	00f89463          	bne	a7,a5,22700 <__trunctfdf2+0x88>
   226fc:	2c081c63          	bnez	a6,229d4 <__trunctfdf2+0x35c>
   22700:	fff00793          	li	a5,-1
   22704:	7fe00613          	li	a2,2046
   22708:	fe5ff06f          	j	226ec <__trunctfdf2+0x74>
   2270c:	0ec04463          	bgtz	a2,227f4 <__trunctfdf2+0x17c>
   22710:	fcc00793          	li	a5,-52
   22714:	12f64063          	blt	a2,a5,22834 <__trunctfdf2+0x1bc>
   22718:	00100793          	li	a5,1
   2271c:	03379793          	sll	a5,a5,0x33
   22720:	03d00313          	li	t1,61
   22724:	00f6e6b3          	or	a3,a3,a5
   22728:	40c30333          	sub	t1,t1,a2
   2272c:	03f00793          	li	a5,63
   22730:	0006071b          	sext.w	a4,a2
   22734:	0867c863          	blt	a5,t1,227c4 <__trunctfdf2+0x14c>
   22738:	03d00793          	li	a5,61
   2273c:	0037061b          	addw	a2,a4,3
   22740:	40e787bb          	subw	a5,a5,a4
   22744:	00f5d7b3          	srl	a5,a1,a5
   22748:	00c595b3          	sll	a1,a1,a2
   2274c:	00b035b3          	snez	a1,a1
   22750:	00b7e7b3          	or	a5,a5,a1
   22754:	00c696b3          	sll	a3,a3,a2
   22758:	00f6e7b3          	or	a5,a3,a5
   2275c:	00179713          	sll	a4,a5,0x1
   22760:	00777693          	and	a3,a4,7
   22764:	0c069c63          	bnez	a3,2283c <__trunctfdf2+0x1c4>
   22768:	0077f693          	and	a3,a5,7
   2276c:	00000613          	li	a2,0
   22770:	00100713          	li	a4,1
   22774:	00000593          	li	a1,0
   22778:	02068663          	beqz	a3,227a4 <__trunctfdf2+0x12c>
   2277c:	00200693          	li	a3,2
   22780:	1ed88063          	beq	a7,a3,22960 <__trunctfdf2+0x2e8>
   22784:	00300693          	li	a3,3
   22788:	18d88e63          	beq	a7,a3,22924 <__trunctfdf2+0x2ac>
   2278c:	1e089063          	bnez	a7,2296c <__trunctfdf2+0x2f4>
   22790:	00f7f693          	and	a3,a5,15
   22794:	00400593          	li	a1,4
   22798:	16b69c63          	bne	a3,a1,22910 <__trunctfdf2+0x298>
   2279c:	00100593          	li	a1,1
   227a0:	12071663          	bnez	a4,228cc <__trunctfdf2+0x254>
   227a4:	7ff00713          	li	a4,2047
   227a8:	0037d793          	srl	a5,a5,0x3
   227ac:	0ee61063          	bne	a2,a4,2288c <__trunctfdf2+0x214>
   227b0:	0c078e63          	beqz	a5,2288c <__trunctfdf2+0x214>
   227b4:	00100793          	li	a5,1
   227b8:	03379793          	sll	a5,a5,0x33
   227bc:	00000813          	li	a6,0
   227c0:	0cc0006f          	j	2288c <__trunctfdf2+0x214>
   227c4:	ffd00793          	li	a5,-3
   227c8:	40e787bb          	subw	a5,a5,a4
   227cc:	04000613          	li	a2,64
   227d0:	00f6d7b3          	srl	a5,a3,a5
   227d4:	00000513          	li	a0,0
   227d8:	00c30663          	beq	t1,a2,227e4 <__trunctfdf2+0x16c>
   227dc:	0437071b          	addw	a4,a4,67
   227e0:	00e69533          	sll	a0,a3,a4
   227e4:	00b56533          	or	a0,a0,a1
   227e8:	00a03533          	snez	a0,a0
   227ec:	00a7e7b3          	or	a5,a5,a0
   227f0:	f6dff06f          	j	2275c <__trunctfdf2+0xe4>
   227f4:	00751513          	sll	a0,a0,0x7
   227f8:	00a03533          	snez	a0,a0
   227fc:	03c5d593          	srl	a1,a1,0x3c
   22800:	00b56533          	or	a0,a0,a1
   22804:	00469693          	sll	a3,a3,0x4
   22808:	00a6e7b3          	or	a5,a3,a0
   2280c:	00757513          	and	a0,a0,7
   22810:	00000713          	li	a4,0
   22814:	f60514e3          	bnez	a0,2277c <__trunctfdf2+0x104>
   22818:	0037d793          	srl	a5,a5,0x3
   2281c:	00000593          	li	a1,0
   22820:	06c0006f          	j	2288c <__trunctfdf2+0x214>
   22824:	00b6e5b3          	or	a1,a3,a1
   22828:	02061e63          	bnez	a2,22864 <__trunctfdf2+0x1ec>
   2282c:	03f81513          	sll	a0,a6,0x3f
   22830:	06058e63          	beqz	a1,228ac <__trunctfdf2+0x234>
   22834:	00100793          	li	a5,1
   22838:	00200713          	li	a4,2
   2283c:	00200693          	li	a3,2
   22840:	0077f593          	and	a1,a5,7
   22844:	0cd88263          	beq	a7,a3,22908 <__trunctfdf2+0x290>
   22848:	00300693          	li	a3,3
   2284c:	08d88463          	beq	a7,a3,228d4 <__trunctfdf2+0x25c>
   22850:	06088063          	beqz	a7,228b0 <__trunctfdf2+0x238>
   22854:	00000613          	li	a2,0
   22858:	00100713          	li	a4,1
   2285c:	f20590e3          	bnez	a1,2277c <__trunctfdf2+0x104>
   22860:	06c0006f          	j	228cc <__trunctfdf2+0x254>
   22864:	18058863          	beqz	a1,229f4 <__trunctfdf2+0x37c>
   22868:	00000593          	li	a1,0
   2286c:	01c61863          	bne	a2,t3,2287c <__trunctfdf2+0x204>
   22870:	0326d693          	srl	a3,a3,0x32
   22874:	0016c693          	xor	a3,a3,1
   22878:	00469593          	sll	a1,a3,0x4
   2287c:	00100793          	li	a5,1
   22880:	00000813          	li	a6,0
   22884:	7ff00613          	li	a2,2047
   22888:	03379793          	sll	a5,a5,0x33
   2288c:	7ff67713          	and	a4,a2,2047
   22890:	00c79793          	sll	a5,a5,0xc
   22894:	03471713          	sll	a4,a4,0x34
   22898:	00c7d793          	srl	a5,a5,0xc
   2289c:	00f767b3          	or	a5,a4,a5
   228a0:	03f81513          	sll	a0,a6,0x3f
   228a4:	00a7e533          	or	a0,a5,a0
   228a8:	10059863          	bnez	a1,229b8 <__trunctfdf2+0x340>
   228ac:	00008067          	ret
   228b0:	00f77613          	and	a2,a4,15
   228b4:	00400693          	li	a3,4
   228b8:	00470713          	add	a4,a4,4
   228bc:	02d61063          	bne	a2,a3,228dc <__trunctfdf2+0x264>
   228c0:	00100713          	li	a4,1
   228c4:	00000613          	li	a2,0
   228c8:	ea059ee3          	bnez	a1,22784 <__trunctfdf2+0x10c>
   228cc:	00300593          	li	a1,3
   228d0:	ed5ff06f          	j	227a4 <__trunctfdf2+0x12c>
   228d4:	f80810e3          	bnez	a6,22854 <__trunctfdf2+0x1dc>
   228d8:	00870713          	add	a4,a4,8
   228dc:	00100693          	li	a3,1
   228e0:	03869693          	sll	a3,a3,0x38
   228e4:	00d776b3          	and	a3,a4,a3
   228e8:	0016b713          	seqz	a4,a3
   228ec:	00000613          	li	a2,0
   228f0:	e80596e3          	bnez	a1,2277c <__trunctfdf2+0x104>
   228f4:	00300593          	li	a1,3
   228f8:	ea0686e3          	beqz	a3,227a4 <__trunctfdf2+0x12c>
   228fc:	0037d793          	srl	a5,a5,0x3
   22900:	00100593          	li	a1,1
   22904:	f89ff06f          	j	2288c <__trunctfdf2+0x214>
   22908:	fc0818e3          	bnez	a6,228d8 <__trunctfdf2+0x260>
   2290c:	f49ff06f          	j	22854 <__trunctfdf2+0x1dc>
   22910:	00478793          	add	a5,a5,4
   22914:	00100593          	li	a1,1
   22918:	00070c63          	beqz	a4,22930 <__trunctfdf2+0x2b8>
   2291c:	00276593          	or	a1,a4,2
   22920:	0100006f          	j	22930 <__trunctfdf2+0x2b8>
   22924:	04080063          	beqz	a6,22964 <__trunctfdf2+0x2ec>
   22928:	00100593          	li	a1,1
   2292c:	04071663          	bnez	a4,22978 <__trunctfdf2+0x300>
   22930:	0377d713          	srl	a4,a5,0x37
   22934:	00177713          	and	a4,a4,1
   22938:	e60706e3          	beqz	a4,227a4 <__trunctfdf2+0x12c>
   2293c:	00160613          	add	a2,a2,1
   22940:	7ff00713          	li	a4,2047
   22944:	02e60e63          	beq	a2,a4,22980 <__trunctfdf2+0x308>
   22948:	1ff00713          	li	a4,511
   2294c:	03471713          	sll	a4,a4,0x34
   22950:	0037d793          	srl	a5,a5,0x3
   22954:	fff70713          	add	a4,a4,-1
   22958:	00e7f7b3          	and	a5,a5,a4
   2295c:	f31ff06f          	j	2288c <__trunctfdf2+0x214>
   22960:	fa080ae3          	beqz	a6,22914 <__trunctfdf2+0x29c>
   22964:	00878793          	add	a5,a5,8
   22968:	fadff06f          	j	22914 <__trunctfdf2+0x29c>
   2296c:	00100593          	li	a1,1
   22970:	fa0716e3          	bnez	a4,2291c <__trunctfdf2+0x2a4>
   22974:	fbdff06f          	j	22930 <__trunctfdf2+0x2b8>
   22978:	00100713          	li	a4,1
   2297c:	fa1ff06f          	j	2291c <__trunctfdf2+0x2a4>
   22980:	0055e593          	or	a1,a1,5
   22984:	02088e63          	beqz	a7,229c0 <__trunctfdf2+0x348>
   22988:	00300793          	li	a5,3
   2298c:	00f89e63          	bne	a7,a5,229a8 <__trunctfdf2+0x330>
   22990:	02080863          	beqz	a6,229c0 <__trunctfdf2+0x348>
   22994:	7ff00793          	li	a5,2047
   22998:	03479793          	sll	a5,a5,0x34
   2299c:	03f81513          	sll	a0,a6,0x3f
   229a0:	fff78793          	add	a5,a5,-1
   229a4:	0280006f          	j	229cc <__trunctfdf2+0x354>
   229a8:	00200793          	li	a5,2
   229ac:	fef894e3          	bne	a7,a5,22994 <__trunctfdf2+0x31c>
   229b0:	00081863          	bnez	a6,229c0 <__trunctfdf2+0x348>
   229b4:	7381b503          	ld	a0,1848(gp) # 25ab8 <mask+0x10>
   229b8:	0015a073          	csrs	fflags,a1
   229bc:	00008067          	ret
   229c0:	7ff00793          	li	a5,2047
   229c4:	03f81513          	sll	a0,a6,0x3f
   229c8:	03479793          	sll	a5,a5,0x34
   229cc:	00f56533          	or	a0,a0,a5
   229d0:	fe9ff06f          	j	229b8 <__trunctfdf2+0x340>
   229d4:	03471513          	sll	a0,a4,0x34
   229d8:	00500593          	li	a1,5
   229dc:	fddff06f          	j	229b8 <__trunctfdf2+0x340>
   229e0:	7ff00793          	li	a5,2047
   229e4:	03f81513          	sll	a0,a6,0x3f
   229e8:	03479793          	sll	a5,a5,0x34
   229ec:	00f56533          	or	a0,a0,a5
   229f0:	fe9ff06f          	j	229d8 <__trunctfdf2+0x360>
   229f4:	7ff00513          	li	a0,2047
   229f8:	03f81793          	sll	a5,a6,0x3f
   229fc:	03451513          	sll	a0,a0,0x34
   22a00:	00a7e533          	or	a0,a5,a0
   22a04:	00008067          	ret
   22a08:	7ff00513          	li	a0,2047
   22a0c:	03451513          	sll	a0,a0,0x34
   22a10:	fc9ff06f          	j	229d8 <__trunctfdf2+0x360>
