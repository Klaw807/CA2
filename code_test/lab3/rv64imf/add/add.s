
/home/yangyx/desktop/CA2/code_test/lab3/rv64imf/add/add.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	49c000ef          	jal	10598 <__call_exitprocs>
   10100:	f701b503          	ld	a0,-144(gp) # 11fa0 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	6c4000ef          	jal	107d8 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	6c050513          	add	a0,a0,1728 # 106c0 <__libc_fini_array>
   10128:	5f40006f          	j	1071c <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	f0018193          	add	gp,gp,-256 # 12030 <__global_pointer$>
   10138:	f8818513          	add	a0,gp,-120 # 11fb8 <completed.1>
   1013c:	fc018613          	add	a2,gp,-64 # 11ff0 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	374000ef          	jal	104bc <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	5d050513          	add	a0,a0,1488 # 1071c <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	56850513          	add	a0,a0,1384 # 106c0 <__libc_fini_array>
   10160:	5bc000ef          	jal	1071c <atexit>
   10164:	2bc000ef          	jal	10420 <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	06c000ef          	jal	101e0 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f881c783          	lbu	a5,-120(gp) # 11fb8 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00012537          	lui	a0,0x12
   1019c:	81450513          	add	a0,a0,-2028 # 11814 <__EH_FRAME_BEGIN__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f8f18423          	sb	a5,-120(gp) # 11fb8 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00012537          	lui	a0,0x12
   101cc:	f9018593          	add	a1,gp,-112 # 11fc0 <object.0>
   101d0:	81450513          	add	a0,a0,-2028 # 11814 <__EH_FRAME_BEGIN__>
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
   10200:	83078713          	add	a4,a5,-2000 # 11830 <result>
   10204:	fec42783          	lw	a5,-20(s0)
   10208:	00279793          	sll	a5,a5,0x2
   1020c:	00f707b3          	add	a5,a4,a5
   10210:	0007a783          	lw	a5,0(a5)
   10214:	00a7879b          	addw	a5,a5,10
   10218:	0007871b          	sext.w	a4,a5
   1021c:	000127b7          	lui	a5,0x12
   10220:	83078693          	add	a3,a5,-2000 # 11830 <result>
   10224:	fec42783          	lw	a5,-20(s0)
   10228:	00279793          	sll	a5,a5,0x2
   1022c:	00f687b3          	add	a5,a3,a5
   10230:	00e7a023          	sw	a4,0(a5)
   10234:	000127b7          	lui	a5,0x12
   10238:	83078713          	add	a4,a5,-2000 # 11830 <result>
   1023c:	fec42783          	lw	a5,-20(s0)
   10240:	00279793          	sll	a5,a5,0x2
   10244:	00f707b3          	add	a5,a4,a5
   10248:	0007a783          	lw	a5,0(a5)
   1024c:	00078513          	mv	a0,a5
   10250:	0a4000ef          	jal	102f4 <print_d>
   10254:	000117b7          	lui	a5,0x11
   10258:	81078513          	add	a0,a5,-2032 # 10810 <__errno+0x8>
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
   1028c:	83078713          	add	a4,a5,-2000 # 11830 <result>
   10290:	fec42783          	lw	a5,-20(s0)
   10294:	00279793          	sll	a5,a5,0x2
   10298:	00f707b3          	add	a5,a4,a5
   1029c:	0007a783          	lw	a5,0(a5)
   102a0:	ffb7879b          	addw	a5,a5,-5
   102a4:	0007871b          	sext.w	a4,a5
   102a8:	000127b7          	lui	a5,0x12
   102ac:	83078693          	add	a3,a5,-2000 # 11830 <result>
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
   10434:	81878793          	add	a5,a5,-2024 # 11818 <__init_array_start>
   10438:	81840713          	add	a4,s0,-2024 # 11818 <__init_array_start>
   1043c:	00113c23          	sd	ra,24(sp)
   10440:	00913423          	sd	s1,8(sp)
   10444:	40e78933          	sub	s2,a5,a4
   10448:	02e78263          	beq	a5,a4,1046c <__libc_init_array+0x4c>
   1044c:	40395913          	sra	s2,s2,0x3
   10450:	81840413          	add	s0,s0,-2024
   10454:	00000493          	li	s1,0
   10458:	00043783          	ld	a5,0(s0)
   1045c:	00148493          	add	s1,s1,1
   10460:	00840413          	add	s0,s0,8
   10464:	000780e7          	jalr	a5
   10468:	ff24e8e3          	bltu	s1,s2,10458 <__libc_init_array+0x38>
   1046c:	00012437          	lui	s0,0x12
   10470:	000127b7          	lui	a5,0x12
   10474:	82878793          	add	a5,a5,-2008 # 11828 <__do_global_dtors_aux_fini_array_entry>
   10478:	81840713          	add	a4,s0,-2024 # 11818 <__init_array_start>
   1047c:	40e78933          	sub	s2,a5,a4
   10480:	40395913          	sra	s2,s2,0x3
   10484:	02e78063          	beq	a5,a4,104a4 <__libc_init_array+0x84>
   10488:	81840413          	add	s0,s0,-2024
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
   1059c:	03413023          	sd	s4,32(sp)
   105a0:	f701ba03          	ld	s4,-144(gp) # 11fa0 <_global_impure_ptr>
   105a4:	03213823          	sd	s2,48(sp)
   105a8:	04113423          	sd	ra,72(sp)
   105ac:	1f8a3903          	ld	s2,504(s4)
   105b0:	04813023          	sd	s0,64(sp)
   105b4:	02913c23          	sd	s1,56(sp)
   105b8:	03313423          	sd	s3,40(sp)
   105bc:	01513c23          	sd	s5,24(sp)
   105c0:	01613823          	sd	s6,16(sp)
   105c4:	01713423          	sd	s7,8(sp)
   105c8:	01813023          	sd	s8,0(sp)
   105cc:	04090063          	beqz	s2,1060c <__call_exitprocs+0x74>
   105d0:	00050b13          	mv	s6,a0
   105d4:	00058b93          	mv	s7,a1
   105d8:	00100a93          	li	s5,1
   105dc:	fff00993          	li	s3,-1
   105e0:	00892483          	lw	s1,8(s2)
   105e4:	fff4841b          	addw	s0,s1,-1
   105e8:	02044263          	bltz	s0,1060c <__call_exitprocs+0x74>
   105ec:	00349493          	sll	s1,s1,0x3
   105f0:	009904b3          	add	s1,s2,s1
   105f4:	040b8463          	beqz	s7,1063c <__call_exitprocs+0xa4>
   105f8:	2084b783          	ld	a5,520(s1)
   105fc:	05778063          	beq	a5,s7,1063c <__call_exitprocs+0xa4>
   10600:	fff4041b          	addw	s0,s0,-1
   10604:	ff848493          	add	s1,s1,-8
   10608:	ff3416e3          	bne	s0,s3,105f4 <__call_exitprocs+0x5c>
   1060c:	04813083          	ld	ra,72(sp)
   10610:	04013403          	ld	s0,64(sp)
   10614:	03813483          	ld	s1,56(sp)
   10618:	03013903          	ld	s2,48(sp)
   1061c:	02813983          	ld	s3,40(sp)
   10620:	02013a03          	ld	s4,32(sp)
   10624:	01813a83          	ld	s5,24(sp)
   10628:	01013b03          	ld	s6,16(sp)
   1062c:	00813b83          	ld	s7,8(sp)
   10630:	00013c03          	ld	s8,0(sp)
   10634:	05010113          	add	sp,sp,80
   10638:	00008067          	ret
   1063c:	00892783          	lw	a5,8(s2)
   10640:	0084b703          	ld	a4,8(s1)
   10644:	fff7879b          	addw	a5,a5,-1
   10648:	06878263          	beq	a5,s0,106ac <__call_exitprocs+0x114>
   1064c:	0004b423          	sd	zero,8(s1)
   10650:	fa0708e3          	beqz	a4,10600 <__call_exitprocs+0x68>
   10654:	31092783          	lw	a5,784(s2)
   10658:	008a96bb          	sllw	a3,s5,s0
   1065c:	00892c03          	lw	s8,8(s2)
   10660:	00d7f7b3          	and	a5,a5,a3
   10664:	0007879b          	sext.w	a5,a5
   10668:	02079263          	bnez	a5,1068c <__call_exitprocs+0xf4>
   1066c:	000700e7          	jalr	a4
   10670:	00892703          	lw	a4,8(s2)
   10674:	1f8a3783          	ld	a5,504(s4)
   10678:	01871463          	bne	a4,s8,10680 <__call_exitprocs+0xe8>
   1067c:	f92782e3          	beq	a5,s2,10600 <__call_exitprocs+0x68>
   10680:	f80786e3          	beqz	a5,1060c <__call_exitprocs+0x74>
   10684:	00078913          	mv	s2,a5
   10688:	f59ff06f          	j	105e0 <__call_exitprocs+0x48>
   1068c:	31492783          	lw	a5,788(s2)
   10690:	1084b583          	ld	a1,264(s1)
   10694:	00d7f7b3          	and	a5,a5,a3
   10698:	0007879b          	sext.w	a5,a5
   1069c:	00079c63          	bnez	a5,106b4 <__call_exitprocs+0x11c>
   106a0:	000b0513          	mv	a0,s6
   106a4:	000700e7          	jalr	a4
   106a8:	fc9ff06f          	j	10670 <__call_exitprocs+0xd8>
   106ac:	00892423          	sw	s0,8(s2)
   106b0:	fa1ff06f          	j	10650 <__call_exitprocs+0xb8>
   106b4:	00058513          	mv	a0,a1
   106b8:	000700e7          	jalr	a4
   106bc:	fb5ff06f          	j	10670 <__call_exitprocs+0xd8>

00000000000106c0 <__libc_fini_array>:
   106c0:	fe010113          	add	sp,sp,-32
   106c4:	00813823          	sd	s0,16(sp)
   106c8:	000127b7          	lui	a5,0x12
   106cc:	00012437          	lui	s0,0x12
   106d0:	82878793          	add	a5,a5,-2008 # 11828 <__do_global_dtors_aux_fini_array_entry>
   106d4:	83040413          	add	s0,s0,-2000 # 11830 <result>
   106d8:	40f40433          	sub	s0,s0,a5
   106dc:	00913423          	sd	s1,8(sp)
   106e0:	00113c23          	sd	ra,24(sp)
   106e4:	40345493          	sra	s1,s0,0x3
   106e8:	02048063          	beqz	s1,10708 <__libc_fini_array+0x48>
   106ec:	ff840413          	add	s0,s0,-8
   106f0:	00f40433          	add	s0,s0,a5
   106f4:	00043783          	ld	a5,0(s0)
   106f8:	fff48493          	add	s1,s1,-1
   106fc:	ff840413          	add	s0,s0,-8
   10700:	000780e7          	jalr	a5
   10704:	fe0498e3          	bnez	s1,106f4 <__libc_fini_array+0x34>
   10708:	01813083          	ld	ra,24(sp)
   1070c:	01013403          	ld	s0,16(sp)
   10710:	00813483          	ld	s1,8(sp)
   10714:	02010113          	add	sp,sp,32
   10718:	00008067          	ret

000000000001071c <atexit>:
   1071c:	00050593          	mv	a1,a0
   10720:	00000693          	li	a3,0
   10724:	00000613          	li	a2,0
   10728:	00000513          	li	a0,0
   1072c:	0040006f          	j	10730 <__register_exitproc>

0000000000010730 <__register_exitproc>:
   10730:	f701b703          	ld	a4,-144(gp) # 11fa0 <_global_impure_ptr>
   10734:	1f873783          	ld	a5,504(a4)
   10738:	06078063          	beqz	a5,10798 <__register_exitproc+0x68>
   1073c:	0087a703          	lw	a4,8(a5)
   10740:	01f00813          	li	a6,31
   10744:	08e84663          	blt	a6,a4,107d0 <__register_exitproc+0xa0>
   10748:	02050863          	beqz	a0,10778 <__register_exitproc+0x48>
   1074c:	00371813          	sll	a6,a4,0x3
   10750:	01078833          	add	a6,a5,a6
   10754:	10c83823          	sd	a2,272(a6)
   10758:	3107a883          	lw	a7,784(a5)
   1075c:	00100613          	li	a2,1
   10760:	00e6163b          	sllw	a2,a2,a4
   10764:	00c8e8b3          	or	a7,a7,a2
   10768:	3117a823          	sw	a7,784(a5)
   1076c:	20d83823          	sd	a3,528(a6)
   10770:	00200693          	li	a3,2
   10774:	02d50863          	beq	a0,a3,107a4 <__register_exitproc+0x74>
   10778:	00270693          	add	a3,a4,2
   1077c:	00369693          	sll	a3,a3,0x3
   10780:	0017071b          	addw	a4,a4,1
   10784:	00e7a423          	sw	a4,8(a5)
   10788:	00d787b3          	add	a5,a5,a3
   1078c:	00b7b023          	sd	a1,0(a5)
   10790:	00000513          	li	a0,0
   10794:	00008067          	ret
   10798:	20070793          	add	a5,a4,512
   1079c:	1ef73c23          	sd	a5,504(a4)
   107a0:	f9dff06f          	j	1073c <__register_exitproc+0xc>
   107a4:	3147a683          	lw	a3,788(a5)
   107a8:	00000513          	li	a0,0
   107ac:	00c6e6b3          	or	a3,a3,a2
   107b0:	30d7aa23          	sw	a3,788(a5)
   107b4:	00270693          	add	a3,a4,2
   107b8:	00369693          	sll	a3,a3,0x3
   107bc:	0017071b          	addw	a4,a4,1
   107c0:	00e7a423          	sw	a4,8(a5)
   107c4:	00d787b3          	add	a5,a5,a3
   107c8:	00b7b023          	sd	a1,0(a5)
   107cc:	00008067          	ret
   107d0:	fff00513          	li	a0,-1
   107d4:	00008067          	ret

00000000000107d8 <_exit>:
   107d8:	05d00893          	li	a7,93
   107dc:	00000073          	ecall
   107e0:	00054463          	bltz	a0,107e8 <_exit+0x10>
   107e4:	0000006f          	j	107e4 <_exit+0xc>
   107e8:	ff010113          	add	sp,sp,-16
   107ec:	00813023          	sd	s0,0(sp)
   107f0:	00050413          	mv	s0,a0
   107f4:	00113423          	sd	ra,8(sp)
   107f8:	4080043b          	negw	s0,s0
   107fc:	00c000ef          	jal	10808 <__errno>
   10800:	00852023          	sw	s0,0(a0)
   10804:	0000006f          	j	10804 <_exit+0x2c>

0000000000010808 <__errno>:
   10808:	f801b503          	ld	a0,-128(gp) # 11fb0 <_impure_ptr>
   1080c:	00008067          	ret
