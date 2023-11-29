
/home/yangyx/desktop/CA2/code_test/lab1/rv64imf/add/add.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	4a0000ef          	jal	1059c <__call_exitprocs>
   10100:	f701b503          	ld	a0,-144(gp) # 11fa8 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	6c8000ef          	jal	107dc <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	6c450513          	add	a0,a0,1732 # 106c4 <__libc_fini_array>
   10128:	5f80006f          	j	10720 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	f0818193          	add	gp,gp,-248 # 12038 <__global_pointer$>
   10138:	f8818513          	add	a0,gp,-120 # 11fc0 <completed.1>
   1013c:	fc018613          	add	a2,gp,-64 # 11ff8 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	378000ef          	jal	104c0 <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	5d450513          	add	a0,a0,1492 # 10720 <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	56c50513          	add	a0,a0,1388 # 106c4 <__libc_fini_array>
   10160:	5c0000ef          	jal	10720 <atexit>
   10164:	2c0000ef          	jal	10424 <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	06c000ef          	jal	101e0 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f881c783          	lbu	a5,-120(gp) # 11fc0 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00012537          	lui	a0,0x12
   1019c:	81c50513          	add	a0,a0,-2020 # 1181c <__EH_FRAME_BEGIN__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f8f18423          	sb	a5,-120(gp) # 11fc0 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00012537          	lui	a0,0x12
   101cc:	f9018593          	add	a1,gp,-112 # 11fc8 <object.0>
   101d0:	81c50513          	add	a0,a0,-2020 # 1181c <__EH_FRAME_BEGIN__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <main>:
   101e0:	fe010113          	add	sp,sp,-32
   101e4:	00113c23          	sd	ra,24(sp)
   101e8:	00813823          	sd	s0,16(sp)
   101ec:	02010413          	add	s0,sp,32
   101f0:	fe042623          	sw	zero,-20(s0)
   101f4:	fe042623          	sw	zero,-20(s0)
   101f8:	0740006f          	j	1026c <main+0x8c>
   101fc:	000127b7          	lui	a5,0x12
   10200:	83878713          	add	a4,a5,-1992 # 11838 <result>
   10204:	fec42783          	lw	a5,-20(s0)
   10208:	00279793          	sll	a5,a5,0x2
   1020c:	00f707b3          	add	a5,a4,a5
   10210:	0007a783          	lw	a5,0(a5)
   10214:	00a7879b          	addw	a5,a5,10
   10218:	0007871b          	sext.w	a4,a5
   1021c:	000127b7          	lui	a5,0x12
   10220:	83878693          	add	a3,a5,-1992 # 11838 <result>
   10224:	fec42783          	lw	a5,-20(s0)
   10228:	00279793          	sll	a5,a5,0x2
   1022c:	00f687b3          	add	a5,a3,a5
   10230:	00e7a023          	sw	a4,0(a5)
   10234:	000127b7          	lui	a5,0x12
   10238:	83878713          	add	a4,a5,-1992 # 11838 <result>
   1023c:	fec42783          	lw	a5,-20(s0)
   10240:	00279793          	sll	a5,a5,0x2
   10244:	00f707b3          	add	a5,a4,a5
   10248:	0007a783          	lw	a5,0(a5)
   1024c:	00078513          	mv	a0,a5
   10250:	0a4000ef          	jal	102f4 <print_d>
   10254:	000117b7          	lui	a5,0x11
   10258:	81878513          	add	a0,a5,-2024 # 10818 <__errno+0xc>
   1025c:	0c4000ef          	jal	10320 <print_s>
   10260:	fec42783          	lw	a5,-20(s0)
   10264:	0017879b          	addw	a5,a5,1
   10268:	fef42623          	sw	a5,-20(s0)
   1026c:	fec42783          	lw	a5,-20(s0)
   10270:	0007871b          	sext.w	a4,a5
   10274:	00400793          	li	a5,4
   10278:	f8e7d2e3          	bge	a5,a4,101fc <main+0x1c>
   1027c:	00500793          	li	a5,5
   10280:	fef42623          	sw	a5,-20(s0)
   10284:	0480006f          	j	102cc <main+0xec>
   10288:	000127b7          	lui	a5,0x12
   1028c:	83878713          	add	a4,a5,-1992 # 11838 <result>
   10290:	fec42783          	lw	a5,-20(s0)
   10294:	00279793          	sll	a5,a5,0x2
   10298:	00f707b3          	add	a5,a4,a5
   1029c:	0007a783          	lw	a5,0(a5)
   102a0:	ffb7879b          	addw	a5,a5,-5
   102a4:	0007871b          	sext.w	a4,a5
   102a8:	000127b7          	lui	a5,0x12
   102ac:	83878693          	add	a3,a5,-1992 # 11838 <result>
   102b0:	fec42783          	lw	a5,-20(s0)
   102b4:	00279793          	sll	a5,a5,0x2
   102b8:	00f687b3          	add	a5,a3,a5
   102bc:	00e7a023          	sw	a4,0(a5)
   102c0:	fec42783          	lw	a5,-20(s0)
   102c4:	0017879b          	addw	a5,a5,1
   102c8:	fef42623          	sw	a5,-20(s0)
   102cc:	fec42783          	lw	a5,-20(s0)
   102d0:	0007871b          	sext.w	a4,a5
   102d4:	00900793          	li	a5,9
   102d8:	fae7d8e3          	bge	a5,a4,10288 <main+0xa8>
   102dc:	00000793          	li	a5,0
   102e0:	00078513          	mv	a0,a5
   102e4:	01813083          	ld	ra,24(sp)
   102e8:	01013403          	ld	s0,16(sp)
   102ec:	02010113          	add	sp,sp,32
   102f0:	00008067          	ret

00000000000102f4 <print_d>:
   102f4:	fe010113          	add	sp,sp,-32
   102f8:	00813c23          	sd	s0,24(sp)
   102fc:	02010413          	add	s0,sp,32
   10300:	00050793          	mv	a5,a0
   10304:	fef42623          	sw	a5,-20(s0)
   10308:	00200893          	li	a7,2
   1030c:	00000073          	ecall
   10310:	00000013          	nop
   10314:	01813403          	ld	s0,24(sp)
   10318:	02010113          	add	sp,sp,32
   1031c:	00008067          	ret

0000000000010320 <print_s>:
   10320:	fe010113          	add	sp,sp,-32
   10324:	00813c23          	sd	s0,24(sp)
   10328:	02010413          	add	s0,sp,32
   1032c:	fea43423          	sd	a0,-24(s0)
   10330:	00000893          	li	a7,0
   10334:	00000073          	ecall
   10338:	00000013          	nop
   1033c:	01813403          	ld	s0,24(sp)
   10340:	02010113          	add	sp,sp,32
   10344:	00008067          	ret

0000000000010348 <print_c>:
   10348:	fe010113          	add	sp,sp,-32
   1034c:	00813c23          	sd	s0,24(sp)
   10350:	02010413          	add	s0,sp,32
   10354:	00050793          	mv	a5,a0
   10358:	fef407a3          	sb	a5,-17(s0)
   1035c:	00100893          	li	a7,1
   10360:	00000073          	ecall
   10364:	00000013          	nop
   10368:	01813403          	ld	s0,24(sp)
   1036c:	02010113          	add	sp,sp,32
   10370:	00008067          	ret

0000000000010374 <exit_proc>:
   10374:	ff010113          	add	sp,sp,-16
   10378:	00813423          	sd	s0,8(sp)
   1037c:	01010413          	add	s0,sp,16
   10380:	00300893          	li	a7,3
   10384:	00000073          	ecall
   10388:	00000013          	nop
   1038c:	00813403          	ld	s0,8(sp)
   10390:	01010113          	add	sp,sp,16
   10394:	00008067          	ret

0000000000010398 <read_char>:
   10398:	fe010113          	add	sp,sp,-32
   1039c:	00813c23          	sd	s0,24(sp)
   103a0:	02010413          	add	s0,sp,32
   103a4:	00400893          	li	a7,4
   103a8:	00000073          	ecall
   103ac:	00050793          	mv	a5,a0
   103b0:	fef407a3          	sb	a5,-17(s0)
   103b4:	fef44783          	lbu	a5,-17(s0)
   103b8:	00078513          	mv	a0,a5
   103bc:	01813403          	ld	s0,24(sp)
   103c0:	02010113          	add	sp,sp,32
   103c4:	00008067          	ret

00000000000103c8 <read_num>:
   103c8:	fe010113          	add	sp,sp,-32
   103cc:	00813c23          	sd	s0,24(sp)
   103d0:	02010413          	add	s0,sp,32
   103d4:	00500893          	li	a7,5
   103d8:	00000073          	ecall
   103dc:	00050793          	mv	a5,a0
   103e0:	fef43423          	sd	a5,-24(s0)
   103e4:	fe843783          	ld	a5,-24(s0)
   103e8:	00078513          	mv	a0,a5
   103ec:	01813403          	ld	s0,24(sp)
   103f0:	02010113          	add	sp,sp,32
   103f4:	00008067          	ret

00000000000103f8 <print_f>:
   103f8:	fe010113          	add	sp,sp,-32
   103fc:	00813c23          	sd	s0,24(sp)
   10400:	02010413          	add	s0,sp,32
   10404:	fea42627          	fsw	fa0,-20(s0)
   10408:	e0050553          	fmv.x.w	a0,fa0
   1040c:	00600893          	li	a7,6
   10410:	00000073          	ecall
   10414:	00000013          	nop
   10418:	01813403          	ld	s0,24(sp)
   1041c:	02010113          	add	sp,sp,32
   10420:	00008067          	ret

0000000000010424 <__libc_init_array>:
   10424:	fe010113          	add	sp,sp,-32
   10428:	00813823          	sd	s0,16(sp)
   1042c:	000127b7          	lui	a5,0x12
   10430:	00012437          	lui	s0,0x12
   10434:	01213023          	sd	s2,0(sp)
   10438:	82078793          	add	a5,a5,-2016 # 11820 <__init_array_start>
   1043c:	82040713          	add	a4,s0,-2016 # 11820 <__init_array_start>
   10440:	00113c23          	sd	ra,24(sp)
   10444:	00913423          	sd	s1,8(sp)
   10448:	40e78933          	sub	s2,a5,a4
   1044c:	02e78263          	beq	a5,a4,10470 <__libc_init_array+0x4c>
   10450:	40395913          	sra	s2,s2,0x3
   10454:	82040413          	add	s0,s0,-2016
   10458:	00000493          	li	s1,0
   1045c:	00043783          	ld	a5,0(s0)
   10460:	00148493          	add	s1,s1,1
   10464:	00840413          	add	s0,s0,8
   10468:	000780e7          	jalr	a5
   1046c:	ff24e8e3          	bltu	s1,s2,1045c <__libc_init_array+0x38>
   10470:	00012437          	lui	s0,0x12
   10474:	000127b7          	lui	a5,0x12
   10478:	83078793          	add	a5,a5,-2000 # 11830 <__do_global_dtors_aux_fini_array_entry>
   1047c:	82040713          	add	a4,s0,-2016 # 11820 <__init_array_start>
   10480:	40e78933          	sub	s2,a5,a4
   10484:	40395913          	sra	s2,s2,0x3
   10488:	02e78063          	beq	a5,a4,104a8 <__libc_init_array+0x84>
   1048c:	82040413          	add	s0,s0,-2016
   10490:	00000493          	li	s1,0
   10494:	00043783          	ld	a5,0(s0)
   10498:	00148493          	add	s1,s1,1
   1049c:	00840413          	add	s0,s0,8
   104a0:	000780e7          	jalr	a5
   104a4:	ff24e8e3          	bltu	s1,s2,10494 <__libc_init_array+0x70>
   104a8:	01813083          	ld	ra,24(sp)
   104ac:	01013403          	ld	s0,16(sp)
   104b0:	00813483          	ld	s1,8(sp)
   104b4:	00013903          	ld	s2,0(sp)
   104b8:	02010113          	add	sp,sp,32
   104bc:	00008067          	ret

00000000000104c0 <memset>:
   104c0:	00f00313          	li	t1,15
   104c4:	00050713          	mv	a4,a0
   104c8:	02c37a63          	bgeu	t1,a2,104fc <memset+0x3c>
   104cc:	00f77793          	and	a5,a4,15
   104d0:	0a079063          	bnez	a5,10570 <memset+0xb0>
   104d4:	06059e63          	bnez	a1,10550 <memset+0x90>
   104d8:	ff067693          	and	a3,a2,-16
   104dc:	00f67613          	and	a2,a2,15
   104e0:	00e686b3          	add	a3,a3,a4
   104e4:	00b73023          	sd	a1,0(a4)
   104e8:	00b73423          	sd	a1,8(a4)
   104ec:	01070713          	add	a4,a4,16
   104f0:	fed76ae3          	bltu	a4,a3,104e4 <memset+0x24>
   104f4:	00061463          	bnez	a2,104fc <memset+0x3c>
   104f8:	00008067          	ret
   104fc:	40c306b3          	sub	a3,t1,a2
   10500:	00269693          	sll	a3,a3,0x2
   10504:	00000297          	auipc	t0,0x0
   10508:	005686b3          	add	a3,a3,t0
   1050c:	00c68067          	jr	12(a3)
   10510:	00b70723          	sb	a1,14(a4)
   10514:	00b706a3          	sb	a1,13(a4)
   10518:	00b70623          	sb	a1,12(a4)
   1051c:	00b705a3          	sb	a1,11(a4)
   10520:	00b70523          	sb	a1,10(a4)
   10524:	00b704a3          	sb	a1,9(a4)
   10528:	00b70423          	sb	a1,8(a4)
   1052c:	00b703a3          	sb	a1,7(a4)
   10530:	00b70323          	sb	a1,6(a4)
   10534:	00b702a3          	sb	a1,5(a4)
   10538:	00b70223          	sb	a1,4(a4)
   1053c:	00b701a3          	sb	a1,3(a4)
   10540:	00b70123          	sb	a1,2(a4)
   10544:	00b700a3          	sb	a1,1(a4)
   10548:	00b70023          	sb	a1,0(a4)
   1054c:	00008067          	ret
   10550:	0ff5f593          	zext.b	a1,a1
   10554:	00859693          	sll	a3,a1,0x8
   10558:	00d5e5b3          	or	a1,a1,a3
   1055c:	01059693          	sll	a3,a1,0x10
   10560:	00d5e5b3          	or	a1,a1,a3
   10564:	02059693          	sll	a3,a1,0x20
   10568:	00d5e5b3          	or	a1,a1,a3
   1056c:	f6dff06f          	j	104d8 <memset+0x18>
   10570:	00279693          	sll	a3,a5,0x2
   10574:	00000297          	auipc	t0,0x0
   10578:	005686b3          	add	a3,a3,t0
   1057c:	00008293          	mv	t0,ra
   10580:	f98680e7          	jalr	-104(a3)
   10584:	00028093          	mv	ra,t0
   10588:	ff078793          	add	a5,a5,-16
   1058c:	40f70733          	sub	a4,a4,a5
   10590:	00f60633          	add	a2,a2,a5
   10594:	f6c374e3          	bgeu	t1,a2,104fc <memset+0x3c>
   10598:	f3dff06f          	j	104d4 <memset+0x14>

000000000001059c <__call_exitprocs>:
   1059c:	fb010113          	add	sp,sp,-80
   105a0:	03413023          	sd	s4,32(sp)
   105a4:	f701ba03          	ld	s4,-144(gp) # 11fa8 <_global_impure_ptr>
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
   105d0:	04090063          	beqz	s2,10610 <__call_exitprocs+0x74>
   105d4:	00050b13          	mv	s6,a0
   105d8:	00058b93          	mv	s7,a1
   105dc:	00100a93          	li	s5,1
   105e0:	fff00993          	li	s3,-1
   105e4:	00892483          	lw	s1,8(s2)
   105e8:	fff4841b          	addw	s0,s1,-1
   105ec:	02044263          	bltz	s0,10610 <__call_exitprocs+0x74>
   105f0:	00349493          	sll	s1,s1,0x3
   105f4:	009904b3          	add	s1,s2,s1
   105f8:	040b8463          	beqz	s7,10640 <__call_exitprocs+0xa4>
   105fc:	2084b783          	ld	a5,520(s1)
   10600:	05778063          	beq	a5,s7,10640 <__call_exitprocs+0xa4>
   10604:	fff4041b          	addw	s0,s0,-1
   10608:	ff848493          	add	s1,s1,-8
   1060c:	ff3416e3          	bne	s0,s3,105f8 <__call_exitprocs+0x5c>
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
   1064c:	06878263          	beq	a5,s0,106b0 <__call_exitprocs+0x114>
   10650:	0004b423          	sd	zero,8(s1)
   10654:	fa0708e3          	beqz	a4,10604 <__call_exitprocs+0x68>
   10658:	31092783          	lw	a5,784(s2)
   1065c:	008a96bb          	sllw	a3,s5,s0
   10660:	00892c03          	lw	s8,8(s2)
   10664:	00d7f7b3          	and	a5,a5,a3
   10668:	0007879b          	sext.w	a5,a5
   1066c:	02079263          	bnez	a5,10690 <__call_exitprocs+0xf4>
   10670:	000700e7          	jalr	a4
   10674:	00892703          	lw	a4,8(s2)
   10678:	1f8a3783          	ld	a5,504(s4)
   1067c:	01871463          	bne	a4,s8,10684 <__call_exitprocs+0xe8>
   10680:	f92782e3          	beq	a5,s2,10604 <__call_exitprocs+0x68>
   10684:	f80786e3          	beqz	a5,10610 <__call_exitprocs+0x74>
   10688:	00078913          	mv	s2,a5
   1068c:	f59ff06f          	j	105e4 <__call_exitprocs+0x48>
   10690:	31492783          	lw	a5,788(s2)
   10694:	1084b583          	ld	a1,264(s1)
   10698:	00d7f7b3          	and	a5,a5,a3
   1069c:	0007879b          	sext.w	a5,a5
   106a0:	00079c63          	bnez	a5,106b8 <__call_exitprocs+0x11c>
   106a4:	000b0513          	mv	a0,s6
   106a8:	000700e7          	jalr	a4
   106ac:	fc9ff06f          	j	10674 <__call_exitprocs+0xd8>
   106b0:	00892423          	sw	s0,8(s2)
   106b4:	fa1ff06f          	j	10654 <__call_exitprocs+0xb8>
   106b8:	00058513          	mv	a0,a1
   106bc:	000700e7          	jalr	a4
   106c0:	fb5ff06f          	j	10674 <__call_exitprocs+0xd8>

00000000000106c4 <__libc_fini_array>:
   106c4:	fe010113          	add	sp,sp,-32
   106c8:	00813823          	sd	s0,16(sp)
   106cc:	000127b7          	lui	a5,0x12
   106d0:	00012437          	lui	s0,0x12
   106d4:	83078793          	add	a5,a5,-2000 # 11830 <__do_global_dtors_aux_fini_array_entry>
   106d8:	83840413          	add	s0,s0,-1992 # 11838 <result>
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
   10734:	f701b703          	ld	a4,-144(gp) # 11fa8 <_global_impure_ptr>
   10738:	1f873783          	ld	a5,504(a4)
   1073c:	06078063          	beqz	a5,1079c <__register_exitproc+0x68>
   10740:	0087a703          	lw	a4,8(a5)
   10744:	01f00813          	li	a6,31
   10748:	08e84663          	blt	a6,a4,107d4 <__register_exitproc+0xa0>
   1074c:	02050863          	beqz	a0,1077c <__register_exitproc+0x48>
   10750:	00371813          	sll	a6,a4,0x3
   10754:	01078833          	add	a6,a5,a6
   10758:	10c83823          	sd	a2,272(a6)
   1075c:	3107a883          	lw	a7,784(a5)
   10760:	00100613          	li	a2,1
   10764:	00e6163b          	sllw	a2,a2,a4
   10768:	00c8e8b3          	or	a7,a7,a2
   1076c:	3117a823          	sw	a7,784(a5)
   10770:	20d83823          	sd	a3,528(a6)
   10774:	00200693          	li	a3,2
   10778:	02d50863          	beq	a0,a3,107a8 <__register_exitproc+0x74>
   1077c:	00270693          	add	a3,a4,2
   10780:	00369693          	sll	a3,a3,0x3
   10784:	0017071b          	addw	a4,a4,1
   10788:	00e7a423          	sw	a4,8(a5)
   1078c:	00d787b3          	add	a5,a5,a3
   10790:	00b7b023          	sd	a1,0(a5)
   10794:	00000513          	li	a0,0
   10798:	00008067          	ret
   1079c:	20070793          	add	a5,a4,512
   107a0:	1ef73c23          	sd	a5,504(a4)
   107a4:	f9dff06f          	j	10740 <__register_exitproc+0xc>
   107a8:	3147a683          	lw	a3,788(a5)
   107ac:	00000513          	li	a0,0
   107b0:	00c6e6b3          	or	a3,a3,a2
   107b4:	30d7aa23          	sw	a3,788(a5)
   107b8:	00270693          	add	a3,a4,2
   107bc:	00369693          	sll	a3,a3,0x3
   107c0:	0017071b          	addw	a4,a4,1
   107c4:	00e7a423          	sw	a4,8(a5)
   107c8:	00d787b3          	add	a5,a5,a3
   107cc:	00b7b023          	sd	a1,0(a5)
   107d0:	00008067          	ret
   107d4:	fff00513          	li	a0,-1
   107d8:	00008067          	ret

00000000000107dc <_exit>:
   107dc:	05d00893          	li	a7,93
   107e0:	00000073          	ecall
   107e4:	00054463          	bltz	a0,107ec <_exit+0x10>
   107e8:	0000006f          	j	107e8 <_exit+0xc>
   107ec:	ff010113          	add	sp,sp,-16
   107f0:	00813023          	sd	s0,0(sp)
   107f4:	00050413          	mv	s0,a0
   107f8:	00113423          	sd	ra,8(sp)
   107fc:	4080043b          	negw	s0,s0
   10800:	00c000ef          	jal	1080c <__errno>
   10804:	00852023          	sw	s0,0(a0)
   10808:	0000006f          	j	10808 <_exit+0x2c>

000000000001080c <__errno>:
   1080c:	f801b503          	ld	a0,-128(gp) # 11fb8 <_impure_ptr>
   10810:	00008067          	ret
