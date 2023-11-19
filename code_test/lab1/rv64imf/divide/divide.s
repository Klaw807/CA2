
/home/yangyx/desktop/CA2/code_test/lab1/rv64imf/divide/divide.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	49c000ef          	jal	10598 <__call_exitprocs>
   10100:	000127b7          	lui	a5,0x12
   10104:	f887b503          	ld	a0,-120(a5) # 11f88 <_global_impure_ptr>
   10108:	05853783          	ld	a5,88(a0)
   1010c:	00078463          	beqz	a5,10114 <exit+0x2c>
   10110:	000780e7          	jalr	a5
   10114:	00040513          	mv	a0,s0
   10118:	6c8000ef          	jal	107e0 <_exit>

000000000001011c <register_fini>:
   1011c:	00000793          	li	a5,0
   10120:	00078863          	beqz	a5,10130 <register_fini+0x14>
   10124:	00010537          	lui	a0,0x10
   10128:	6c450513          	add	a0,a0,1732 # 106c4 <__libc_fini_array>
   1012c:	5f40006f          	j	10720 <atexit>
   10130:	00008067          	ret

0000000000010134 <_start>:
   10134:	00002197          	auipc	gp,0x2
   10138:	64c18193          	add	gp,gp,1612 # 12780 <__global_pointer$>
   1013c:	82018513          	add	a0,gp,-2016 # 11fa0 <completed.1>
   10140:	00004617          	auipc	a2,0x4
   10144:	dd860613          	add	a2,a2,-552 # 13f18 <__BSS_END__>
   10148:	40a60633          	sub	a2,a2,a0
   1014c:	00000593          	li	a1,0
   10150:	36c000ef          	jal	104bc <memset>
   10154:	00000517          	auipc	a0,0x0
   10158:	5cc50513          	add	a0,a0,1484 # 10720 <atexit>
   1015c:	00050863          	beqz	a0,1016c <_start+0x38>
   10160:	00000517          	auipc	a0,0x0
   10164:	56450513          	add	a0,a0,1380 # 106c4 <__libc_fini_array>
   10168:	5b8000ef          	jal	10720 <atexit>
   1016c:	2b4000ef          	jal	10420 <__libc_init_array>
   10170:	00012503          	lw	a0,0(sp)
   10174:	00810593          	add	a1,sp,8
   10178:	00000613          	li	a2,0
   1017c:	070000ef          	jal	101ec <main>
   10180:	f69ff06f          	j	100e8 <exit>

0000000000010184 <__do_global_dtors_aux>:
   10184:	ff010113          	add	sp,sp,-16
   10188:	00813023          	sd	s0,0(sp)
   1018c:	8201c783          	lbu	a5,-2016(gp) # 11fa0 <completed.1>
   10190:	00113423          	sd	ra,8(sp)
   10194:	02079263          	bnez	a5,101b8 <__do_global_dtors_aux+0x34>
   10198:	00000793          	li	a5,0
   1019c:	00078a63          	beqz	a5,101b0 <__do_global_dtors_aux+0x2c>
   101a0:	00012537          	lui	a0,0x12
   101a4:	81850513          	add	a0,a0,-2024 # 11818 <__EH_FRAME_BEGIN__>
   101a8:	00000097          	auipc	ra,0x0
   101ac:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101b0:	00100793          	li	a5,1
   101b4:	82f18023          	sb	a5,-2016(gp) # 11fa0 <completed.1>
   101b8:	00813083          	ld	ra,8(sp)
   101bc:	00013403          	ld	s0,0(sp)
   101c0:	01010113          	add	sp,sp,16
   101c4:	00008067          	ret

00000000000101c8 <frame_dummy>:
   101c8:	00000793          	li	a5,0
   101cc:	00078e63          	beqz	a5,101e8 <frame_dummy+0x20>
   101d0:	000125b7          	lui	a1,0x12
   101d4:	00012537          	lui	a0,0x12
   101d8:	fa858593          	add	a1,a1,-88 # 11fa8 <object.0>
   101dc:	81850513          	add	a0,a0,-2024 # 11818 <__EH_FRAME_BEGIN__>
   101e0:	00000317          	auipc	t1,0x0
   101e4:	00000067          	jr	zero # 0 <exit-0x100e8>
   101e8:	00008067          	ret

00000000000101ec <main>:
   101ec:	fe010113          	add	sp,sp,-32
   101f0:	00113c23          	sd	ra,24(sp)
   101f4:	00813823          	sd	s0,16(sp)
   101f8:	02010413          	add	s0,sp,32
   101fc:	fe042623          	sw	zero,-20(s0)
   10200:	0580006f          	j	10258 <main+0x6c>
   10204:	fec42783          	lw	a5,-20(s0)
   10208:	0647879b          	addw	a5,a5,100
   1020c:	0007871b          	sext.w	a4,a5
   10210:	000127b7          	lui	a5,0x12
   10214:	fd878693          	add	a3,a5,-40 # 11fd8 <array1>
   10218:	fec42783          	lw	a5,-20(s0)
   1021c:	00279793          	sll	a5,a5,0x2
   10220:	00f687b3          	add	a5,a3,a5
   10224:	00e7a023          	sw	a4,0(a5)
   10228:	fec42783          	lw	a5,-20(s0)
   1022c:	0c87879b          	addw	a5,a5,200
   10230:	0007871b          	sext.w	a4,a5
   10234:	000137b7          	lui	a5,0x13
   10238:	f7878693          	add	a3,a5,-136 # 12f78 <array2>
   1023c:	fec42783          	lw	a5,-20(s0)
   10240:	00279793          	sll	a5,a5,0x2
   10244:	00f687b3          	add	a5,a3,a5
   10248:	00e7a023          	sw	a4,0(a5)
   1024c:	fec42783          	lw	a5,-20(s0)
   10250:	0017879b          	addw	a5,a5,1
   10254:	fef42623          	sw	a5,-20(s0)
   10258:	fec42703          	lw	a4,-20(s0)
   1025c:	3e800793          	li	a5,1000
   10260:	faf762e3          	bltu	a4,a5,10204 <main+0x18>
   10264:	fe042423          	sw	zero,-24(s0)
   10268:	0600006f          	j	102c8 <main+0xdc>
   1026c:	000137b7          	lui	a5,0x13
   10270:	f7878713          	add	a4,a5,-136 # 12f78 <array2>
   10274:	fe842783          	lw	a5,-24(s0)
   10278:	00279793          	sll	a5,a5,0x2
   1027c:	00f707b3          	add	a5,a4,a5
   10280:	0007a703          	lw	a4,0(a5)
   10284:	000127b7          	lui	a5,0x12
   10288:	fd878693          	add	a3,a5,-40 # 11fd8 <array1>
   1028c:	fe842783          	lw	a5,-24(s0)
   10290:	00279793          	sll	a5,a5,0x2
   10294:	00f687b3          	add	a5,a3,a5
   10298:	0007a783          	lw	a5,0(a5)
   1029c:	02f747bb          	divw	a5,a4,a5
   102a0:	0007871b          	sext.w	a4,a5
   102a4:	000127b7          	lui	a5,0x12
   102a8:	fd878693          	add	a3,a5,-40 # 11fd8 <array1>
   102ac:	fe842783          	lw	a5,-24(s0)
   102b0:	00279793          	sll	a5,a5,0x2
   102b4:	00f687b3          	add	a5,a3,a5
   102b8:	00e7a023          	sw	a4,0(a5)
   102bc:	fe842783          	lw	a5,-24(s0)
   102c0:	0017879b          	addw	a5,a5,1
   102c4:	fef42423          	sw	a5,-24(s0)
   102c8:	fe842703          	lw	a4,-24(s0)
   102cc:	3e800793          	li	a5,1000
   102d0:	f8f76ee3          	bltu	a4,a5,1026c <main+0x80>
   102d4:	09c000ef          	jal	10370 <exit_proc>
   102d8:	00000793          	li	a5,0
   102dc:	00078513          	mv	a0,a5
   102e0:	01813083          	ld	ra,24(sp)
   102e4:	01013403          	ld	s0,16(sp)
   102e8:	02010113          	add	sp,sp,32
   102ec:	00008067          	ret

00000000000102f0 <print_d>:
   102f0:	fe010113          	add	sp,sp,-32
   102f4:	00813c23          	sd	s0,24(sp)
   102f8:	02010413          	add	s0,sp,32
   102fc:	00050793          	mv	a5,a0
   10300:	fef42623          	sw	a5,-20(s0)
   10304:	00200893          	li	a7,2
   10308:	00000073          	ecall
   1030c:	00000013          	nop
   10310:	01813403          	ld	s0,24(sp)
   10314:	02010113          	add	sp,sp,32
   10318:	00008067          	ret

000000000001031c <print_s>:
   1031c:	fe010113          	add	sp,sp,-32
   10320:	00813c23          	sd	s0,24(sp)
   10324:	02010413          	add	s0,sp,32
   10328:	fea43423          	sd	a0,-24(s0)
   1032c:	00000893          	li	a7,0
   10330:	00000073          	ecall
   10334:	00000013          	nop
   10338:	01813403          	ld	s0,24(sp)
   1033c:	02010113          	add	sp,sp,32
   10340:	00008067          	ret

0000000000010344 <print_c>:
   10344:	fe010113          	add	sp,sp,-32
   10348:	00813c23          	sd	s0,24(sp)
   1034c:	02010413          	add	s0,sp,32
   10350:	00050793          	mv	a5,a0
   10354:	fef407a3          	sb	a5,-17(s0)
   10358:	00100893          	li	a7,1
   1035c:	00000073          	ecall
   10360:	00000013          	nop
   10364:	01813403          	ld	s0,24(sp)
   10368:	02010113          	add	sp,sp,32
   1036c:	00008067          	ret

0000000000010370 <exit_proc>:
   10370:	ff010113          	add	sp,sp,-16
   10374:	00813423          	sd	s0,8(sp)
   10378:	01010413          	add	s0,sp,16
   1037c:	00300893          	li	a7,3
   10380:	00000073          	ecall
   10384:	00000013          	nop
   10388:	00813403          	ld	s0,8(sp)
   1038c:	01010113          	add	sp,sp,16
   10390:	00008067          	ret

0000000000010394 <read_char>:
   10394:	fe010113          	add	sp,sp,-32
   10398:	00813c23          	sd	s0,24(sp)
   1039c:	02010413          	add	s0,sp,32
   103a0:	00400893          	li	a7,4
   103a4:	00000073          	ecall
   103a8:	00050793          	mv	a5,a0
   103ac:	fef407a3          	sb	a5,-17(s0)
   103b0:	fef44783          	lbu	a5,-17(s0)
   103b4:	00078513          	mv	a0,a5
   103b8:	01813403          	ld	s0,24(sp)
   103bc:	02010113          	add	sp,sp,32
   103c0:	00008067          	ret

00000000000103c4 <read_num>:
   103c4:	fe010113          	add	sp,sp,-32
   103c8:	00813c23          	sd	s0,24(sp)
   103cc:	02010413          	add	s0,sp,32
   103d0:	00500893          	li	a7,5
   103d4:	00000073          	ecall
   103d8:	00050793          	mv	a5,a0
   103dc:	fef43423          	sd	a5,-24(s0)
   103e0:	fe843783          	ld	a5,-24(s0)
   103e4:	00078513          	mv	a0,a5
   103e8:	01813403          	ld	s0,24(sp)
   103ec:	02010113          	add	sp,sp,32
   103f0:	00008067          	ret

00000000000103f4 <print_f>:
   103f4:	fe010113          	add	sp,sp,-32
   103f8:	00813c23          	sd	s0,24(sp)
   103fc:	02010413          	add	s0,sp,32
   10400:	fea42627          	fsw	fa0,-20(s0)
   10404:	e0050553          	fmv.x.w	a0,fa0
   10408:	00600893          	li	a7,6
   1040c:	00000073          	ecall
   10410:	00000013          	nop
   10414:	01813403          	ld	s0,24(sp)
   10418:	02010113          	add	sp,sp,32
   1041c:	00008067          	ret

0000000000010420 <__libc_init_array>:
   10420:	fe010113          	add	sp,sp,-32
   10424:	00813823          	sd	s0,16(sp)
   10428:	000127b7          	lui	a5,0x12
   1042c:	00012437          	lui	s0,0x12
   10430:	01213023          	sd	s2,0(sp)
   10434:	81c78793          	add	a5,a5,-2020 # 1181c <__preinit_array_end>
   10438:	81c40713          	add	a4,s0,-2020 # 1181c <__preinit_array_end>
   1043c:	00113c23          	sd	ra,24(sp)
   10440:	00913423          	sd	s1,8(sp)
   10444:	40e78933          	sub	s2,a5,a4
   10448:	02e78263          	beq	a5,a4,1046c <__libc_init_array+0x4c>
   1044c:	40395913          	sra	s2,s2,0x3
   10450:	81c40413          	add	s0,s0,-2020
   10454:	00000493          	li	s1,0
   10458:	00043783          	ld	a5,0(s0)
   1045c:	00148493          	add	s1,s1,1
   10460:	00840413          	add	s0,s0,8
   10464:	000780e7          	jalr	a5
   10468:	ff24e8e3          	bltu	s1,s2,10458 <__libc_init_array+0x38>
   1046c:	00012437          	lui	s0,0x12
   10470:	000127b7          	lui	a5,0x12
   10474:	83078793          	add	a5,a5,-2000 # 11830 <__do_global_dtors_aux_fini_array_entry>
   10478:	82040713          	add	a4,s0,-2016 # 11820 <__init_array_start>
   1047c:	40e78933          	sub	s2,a5,a4
   10480:	40395913          	sra	s2,s2,0x3
   10484:	02e78063          	beq	a5,a4,104a4 <__libc_init_array+0x84>
   10488:	82040413          	add	s0,s0,-2016
   1048c:	00000493          	li	s1,0
   10490:	00043783          	ld	a5,0(s0)
   10494:	00148493          	add	s1,s1,1
   10498:	00840413          	add	s0,s0,8
   1049c:	000780e7          	jalr	a5
   104a0:	ff24e8e3          	bltu	s1,s2,10490 <__libc_init_array+0x70>
   104a4:	01813083          	ld	ra,24(sp)
   104a8:	01013403          	ld	s0,16(sp)
   104ac:	00813483          	ld	s1,8(sp)
   104b0:	00013903          	ld	s2,0(sp)
   104b4:	02010113          	add	sp,sp,32
   104b8:	00008067          	ret

00000000000104bc <memset>:
   104bc:	00f00313          	li	t1,15
   104c0:	00050713          	mv	a4,a0
   104c4:	02c37a63          	bgeu	t1,a2,104f8 <memset+0x3c>
   104c8:	00f77793          	and	a5,a4,15
   104cc:	0a079063          	bnez	a5,1056c <memset+0xb0>
   104d0:	06059e63          	bnez	a1,1054c <memset+0x90>
   104d4:	ff067693          	and	a3,a2,-16
   104d8:	00f67613          	and	a2,a2,15
   104dc:	00e686b3          	add	a3,a3,a4
   104e0:	00b73023          	sd	a1,0(a4)
   104e4:	00b73423          	sd	a1,8(a4)
   104e8:	01070713          	add	a4,a4,16
   104ec:	fed76ae3          	bltu	a4,a3,104e0 <memset+0x24>
   104f0:	00061463          	bnez	a2,104f8 <memset+0x3c>
   104f4:	00008067          	ret
   104f8:	40c306b3          	sub	a3,t1,a2
   104fc:	00269693          	sll	a3,a3,0x2
   10500:	00000297          	auipc	t0,0x0
   10504:	005686b3          	add	a3,a3,t0
   10508:	00c68067          	jr	12(a3)
   1050c:	00b70723          	sb	a1,14(a4)
   10510:	00b706a3          	sb	a1,13(a4)
   10514:	00b70623          	sb	a1,12(a4)
   10518:	00b705a3          	sb	a1,11(a4)
   1051c:	00b70523          	sb	a1,10(a4)
   10520:	00b704a3          	sb	a1,9(a4)
   10524:	00b70423          	sb	a1,8(a4)
   10528:	00b703a3          	sb	a1,7(a4)
   1052c:	00b70323          	sb	a1,6(a4)
   10530:	00b702a3          	sb	a1,5(a4)
   10534:	00b70223          	sb	a1,4(a4)
   10538:	00b701a3          	sb	a1,3(a4)
   1053c:	00b70123          	sb	a1,2(a4)
   10540:	00b700a3          	sb	a1,1(a4)
   10544:	00b70023          	sb	a1,0(a4)
   10548:	00008067          	ret
   1054c:	0ff5f593          	zext.b	a1,a1
   10550:	00859693          	sll	a3,a1,0x8
   10554:	00d5e5b3          	or	a1,a1,a3
   10558:	01059693          	sll	a3,a1,0x10
   1055c:	00d5e5b3          	or	a1,a1,a3
   10560:	02059693          	sll	a3,a1,0x20
   10564:	00d5e5b3          	or	a1,a1,a3
   10568:	f6dff06f          	j	104d4 <memset+0x18>
   1056c:	00279693          	sll	a3,a5,0x2
   10570:	00000297          	auipc	t0,0x0
   10574:	005686b3          	add	a3,a3,t0
   10578:	00008293          	mv	t0,ra
   1057c:	f98680e7          	jalr	-104(a3)
   10580:	00028093          	mv	ra,t0
   10584:	ff078793          	add	a5,a5,-16
   10588:	40f70733          	sub	a4,a4,a5
   1058c:	00f60633          	add	a2,a2,a5
   10590:	f6c374e3          	bgeu	t1,a2,104f8 <memset+0x3c>
   10594:	f3dff06f          	j	104d0 <memset+0x14>

0000000000010598 <__call_exitprocs>:
   10598:	fb010113          	add	sp,sp,-80
   1059c:	000127b7          	lui	a5,0x12
   105a0:	03413023          	sd	s4,32(sp)
   105a4:	f887ba03          	ld	s4,-120(a5) # 11f88 <_global_impure_ptr>
   105a8:	03213823          	sd	s2,48(sp)
   105ac:	04113423          	sd	ra,72(sp)
   105b0:	1f8a3903          	ld	s2,504(s4)
   105b4:	04813023          	sd	s0,64(sp)
   105b8:	02913c23          	sd	s1,56(sp)
   105bc:	03313423          	sd	s3,40(sp)
   105c0:	01513c23          	sd	s5,24(sp)
   105c4:	01613823          	sd	s6,16(sp)
   105c8:	01713423          	sd	s7,8(sp)
   105cc:	01813023          	sd	s8,0(sp)
   105d0:	04090063          	beqz	s2,10610 <__call_exitprocs+0x78>
   105d4:	00050b13          	mv	s6,a0
   105d8:	00058b93          	mv	s7,a1
   105dc:	00100a93          	li	s5,1
   105e0:	fff00993          	li	s3,-1
   105e4:	00892483          	lw	s1,8(s2)
   105e8:	fff4841b          	addw	s0,s1,-1
   105ec:	02044263          	bltz	s0,10610 <__call_exitprocs+0x78>
   105f0:	00349493          	sll	s1,s1,0x3
   105f4:	009904b3          	add	s1,s2,s1
   105f8:	040b8463          	beqz	s7,10640 <__call_exitprocs+0xa8>
   105fc:	2084b783          	ld	a5,520(s1)
   10600:	05778063          	beq	a5,s7,10640 <__call_exitprocs+0xa8>
   10604:	fff4041b          	addw	s0,s0,-1
   10608:	ff848493          	add	s1,s1,-8
   1060c:	ff3416e3          	bne	s0,s3,105f8 <__call_exitprocs+0x60>
   10610:	04813083          	ld	ra,72(sp)
   10614:	04013403          	ld	s0,64(sp)
   10618:	03813483          	ld	s1,56(sp)
   1061c:	03013903          	ld	s2,48(sp)
   10620:	02813983          	ld	s3,40(sp)
   10624:	02013a03          	ld	s4,32(sp)
   10628:	01813a83          	ld	s5,24(sp)
   1062c:	01013b03          	ld	s6,16(sp)
   10630:	00813b83          	ld	s7,8(sp)
   10634:	00013c03          	ld	s8,0(sp)
   10638:	05010113          	add	sp,sp,80
   1063c:	00008067          	ret
   10640:	00892783          	lw	a5,8(s2)
   10644:	0084b703          	ld	a4,8(s1)
   10648:	fff7879b          	addw	a5,a5,-1
   1064c:	06878263          	beq	a5,s0,106b0 <__call_exitprocs+0x118>
   10650:	0004b423          	sd	zero,8(s1)
   10654:	fa0708e3          	beqz	a4,10604 <__call_exitprocs+0x6c>
   10658:	31092783          	lw	a5,784(s2)
   1065c:	008a96bb          	sllw	a3,s5,s0
   10660:	00892c03          	lw	s8,8(s2)
   10664:	00d7f7b3          	and	a5,a5,a3
   10668:	0007879b          	sext.w	a5,a5
   1066c:	02079263          	bnez	a5,10690 <__call_exitprocs+0xf8>
   10670:	000700e7          	jalr	a4
   10674:	00892703          	lw	a4,8(s2)
   10678:	1f8a3783          	ld	a5,504(s4)
   1067c:	01871463          	bne	a4,s8,10684 <__call_exitprocs+0xec>
   10680:	f92782e3          	beq	a5,s2,10604 <__call_exitprocs+0x6c>
   10684:	f80786e3          	beqz	a5,10610 <__call_exitprocs+0x78>
   10688:	00078913          	mv	s2,a5
   1068c:	f59ff06f          	j	105e4 <__call_exitprocs+0x4c>
   10690:	31492783          	lw	a5,788(s2)
   10694:	1084b583          	ld	a1,264(s1)
   10698:	00d7f7b3          	and	a5,a5,a3
   1069c:	0007879b          	sext.w	a5,a5
   106a0:	00079c63          	bnez	a5,106b8 <__call_exitprocs+0x120>
   106a4:	000b0513          	mv	a0,s6
   106a8:	000700e7          	jalr	a4
   106ac:	fc9ff06f          	j	10674 <__call_exitprocs+0xdc>
   106b0:	00892423          	sw	s0,8(s2)
   106b4:	fa1ff06f          	j	10654 <__call_exitprocs+0xbc>
   106b8:	00058513          	mv	a0,a1
   106bc:	000700e7          	jalr	a4
   106c0:	fb5ff06f          	j	10674 <__call_exitprocs+0xdc>

00000000000106c4 <__libc_fini_array>:
   106c4:	fe010113          	add	sp,sp,-32
   106c8:	00813823          	sd	s0,16(sp)
   106cc:	000127b7          	lui	a5,0x12
   106d0:	00012437          	lui	s0,0x12
   106d4:	83078793          	add	a5,a5,-2000 # 11830 <__do_global_dtors_aux_fini_array_entry>
   106d8:	83840413          	add	s0,s0,-1992 # 11838 <impure_data>
   106dc:	40f40433          	sub	s0,s0,a5
   106e0:	00913423          	sd	s1,8(sp)
   106e4:	00113c23          	sd	ra,24(sp)
   106e8:	40345493          	sra	s1,s0,0x3
   106ec:	02048063          	beqz	s1,1070c <__libc_fini_array+0x48>
   106f0:	ff840413          	add	s0,s0,-8
   106f4:	00f40433          	add	s0,s0,a5
   106f8:	00043783          	ld	a5,0(s0)
   106fc:	fff48493          	add	s1,s1,-1
   10700:	ff840413          	add	s0,s0,-8
   10704:	000780e7          	jalr	a5
   10708:	fe0498e3          	bnez	s1,106f8 <__libc_fini_array+0x34>
   1070c:	01813083          	ld	ra,24(sp)
   10710:	01013403          	ld	s0,16(sp)
   10714:	00813483          	ld	s1,8(sp)
   10718:	02010113          	add	sp,sp,32
   1071c:	00008067          	ret

0000000000010720 <atexit>:
   10720:	00050593          	mv	a1,a0
   10724:	00000693          	li	a3,0
   10728:	00000613          	li	a2,0
   1072c:	00000513          	li	a0,0
   10730:	0040006f          	j	10734 <__register_exitproc>

0000000000010734 <__register_exitproc>:
   10734:	000127b7          	lui	a5,0x12
   10738:	f887b703          	ld	a4,-120(a5) # 11f88 <_global_impure_ptr>
   1073c:	1f873783          	ld	a5,504(a4)
   10740:	06078063          	beqz	a5,107a0 <__register_exitproc+0x6c>
   10744:	0087a703          	lw	a4,8(a5)
   10748:	01f00813          	li	a6,31
   1074c:	08e84663          	blt	a6,a4,107d8 <__register_exitproc+0xa4>
   10750:	02050863          	beqz	a0,10780 <__register_exitproc+0x4c>
   10754:	00371813          	sll	a6,a4,0x3
   10758:	01078833          	add	a6,a5,a6
   1075c:	10c83823          	sd	a2,272(a6)
   10760:	3107a883          	lw	a7,784(a5)
   10764:	00100613          	li	a2,1
   10768:	00e6163b          	sllw	a2,a2,a4
   1076c:	00c8e8b3          	or	a7,a7,a2
   10770:	3117a823          	sw	a7,784(a5)
   10774:	20d83823          	sd	a3,528(a6)
   10778:	00200693          	li	a3,2
   1077c:	02d50863          	beq	a0,a3,107ac <__register_exitproc+0x78>
   10780:	00270693          	add	a3,a4,2
   10784:	00369693          	sll	a3,a3,0x3
   10788:	0017071b          	addw	a4,a4,1
   1078c:	00e7a423          	sw	a4,8(a5)
   10790:	00d787b3          	add	a5,a5,a3
   10794:	00b7b023          	sd	a1,0(a5)
   10798:	00000513          	li	a0,0
   1079c:	00008067          	ret
   107a0:	20070793          	add	a5,a4,512
   107a4:	1ef73c23          	sd	a5,504(a4)
   107a8:	f9dff06f          	j	10744 <__register_exitproc+0x10>
   107ac:	3147a683          	lw	a3,788(a5)
   107b0:	00000513          	li	a0,0
   107b4:	00c6e6b3          	or	a3,a3,a2
   107b8:	30d7aa23          	sw	a3,788(a5)
   107bc:	00270693          	add	a3,a4,2
   107c0:	00369693          	sll	a3,a3,0x3
   107c4:	0017071b          	addw	a4,a4,1
   107c8:	00e7a423          	sw	a4,8(a5)
   107cc:	00d787b3          	add	a5,a5,a3
   107d0:	00b7b023          	sd	a1,0(a5)
   107d4:	00008067          	ret
   107d8:	fff00513          	li	a0,-1
   107dc:	00008067          	ret

00000000000107e0 <_exit>:
   107e0:	05d00893          	li	a7,93
   107e4:	00000073          	ecall
   107e8:	00054463          	bltz	a0,107f0 <_exit+0x10>
   107ec:	0000006f          	j	107ec <_exit+0xc>
   107f0:	ff010113          	add	sp,sp,-16
   107f4:	00813023          	sd	s0,0(sp)
   107f8:	00050413          	mv	s0,a0
   107fc:	00113423          	sd	ra,8(sp)
   10800:	4080043b          	negw	s0,s0
   10804:	00c000ef          	jal	10810 <__errno>
   10808:	00852023          	sw	s0,0(a0)
   1080c:	0000006f          	j	1080c <_exit+0x2c>

0000000000010810 <__errno>:
   10810:	8181b503          	ld	a0,-2024(gp) # 11f98 <_impure_ptr>
   10814:	00008067          	ret
