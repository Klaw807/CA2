
/home/yangyx/desktop/CA2/code_test/lab1/rv64imf/multiple/multiple.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	470000ef          	jal	1056c <__call_exitprocs>
   10100:	000127b7          	lui	a5,0x12
   10104:	f587b503          	ld	a0,-168(a5) # 11f58 <_global_impure_ptr>
   10108:	05853783          	ld	a5,88(a0)
   1010c:	00078463          	beqz	a5,10114 <exit+0x2c>
   10110:	000780e7          	jalr	a5
   10114:	00040513          	mv	a0,s0
   10118:	69c000ef          	jal	107b4 <_exit>

000000000001011c <register_fini>:
   1011c:	00000793          	li	a5,0
   10120:	00078863          	beqz	a5,10130 <register_fini+0x14>
   10124:	00010537          	lui	a0,0x10
   10128:	69850513          	add	a0,a0,1688 # 10698 <__libc_fini_array>
   1012c:	5c80006f          	j	106f4 <atexit>
   10130:	00008067          	ret

0000000000010134 <_start>:
   10134:	00002197          	auipc	gp,0x2
   10138:	61c18193          	add	gp,gp,1564 # 12750 <__global_pointer$>
   1013c:	82018513          	add	a0,gp,-2016 # 11f70 <completed.1>
   10140:	00004617          	auipc	a2,0x4
   10144:	da860613          	add	a2,a2,-600 # 13ee8 <__BSS_END__>
   10148:	40a60633          	sub	a2,a2,a0
   1014c:	00000593          	li	a1,0
   10150:	340000ef          	jal	10490 <memset>
   10154:	00000517          	auipc	a0,0x0
   10158:	5a050513          	add	a0,a0,1440 # 106f4 <atexit>
   1015c:	00050863          	beqz	a0,1016c <_start+0x38>
   10160:	00000517          	auipc	a0,0x0
   10164:	53850513          	add	a0,a0,1336 # 10698 <__libc_fini_array>
   10168:	58c000ef          	jal	106f4 <atexit>
   1016c:	288000ef          	jal	103f4 <__libc_init_array>
   10170:	00012503          	lw	a0,0(sp)
   10174:	00810593          	add	a1,sp,8
   10178:	00000613          	li	a2,0
   1017c:	070000ef          	jal	101ec <main>
   10180:	f69ff06f          	j	100e8 <exit>

0000000000010184 <__do_global_dtors_aux>:
   10184:	ff010113          	add	sp,sp,-16
   10188:	00813023          	sd	s0,0(sp)
   1018c:	8201c783          	lbu	a5,-2016(gp) # 11f70 <completed.1>
   10190:	00113423          	sd	ra,8(sp)
   10194:	02079263          	bnez	a5,101b8 <__do_global_dtors_aux+0x34>
   10198:	00000793          	li	a5,0
   1019c:	00078a63          	beqz	a5,101b0 <__do_global_dtors_aux+0x2c>
   101a0:	00011537          	lui	a0,0x11
   101a4:	7ec50513          	add	a0,a0,2028 # 117ec <__EH_FRAME_BEGIN__>
   101a8:	00000097          	auipc	ra,0x0
   101ac:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101b0:	00100793          	li	a5,1
   101b4:	82f18023          	sb	a5,-2016(gp) # 11f70 <completed.1>
   101b8:	00813083          	ld	ra,8(sp)
   101bc:	00013403          	ld	s0,0(sp)
   101c0:	01010113          	add	sp,sp,16
   101c4:	00008067          	ret

00000000000101c8 <frame_dummy>:
   101c8:	00000793          	li	a5,0
   101cc:	00078e63          	beqz	a5,101e8 <frame_dummy+0x20>
   101d0:	000125b7          	lui	a1,0x12
   101d4:	00011537          	lui	a0,0x11
   101d8:	f7858593          	add	a1,a1,-136 # 11f78 <object.0>
   101dc:	7ec50513          	add	a0,a0,2028 # 117ec <__EH_FRAME_BEGIN__>
   101e0:	00000317          	auipc	t1,0x0
   101e4:	00000067          	jr	zero # 0 <exit-0x100e8>
   101e8:	00008067          	ret

00000000000101ec <main>:
   101ec:	fe010113          	add	sp,sp,-32
   101f0:	00113c23          	sd	ra,24(sp)
   101f4:	00813823          	sd	s0,16(sp)
   101f8:	02010413          	add	s0,sp,32
   101fc:	000127b7          	lui	a5,0x12
   10200:	fa878793          	add	a5,a5,-88 # 11fa8 <array1>
   10204:	05100713          	li	a4,81
   10208:	00e7a223          	sw	a4,4(a5)
   1020c:	fe042623          	sw	zero,-20(s0)
   10210:	0600006f          	j	10270 <main+0x84>
   10214:	fec42783          	lw	a5,-20(s0)
   10218:	0647879b          	addw	a5,a5,100
   1021c:	0007879b          	sext.w	a5,a5
   10220:	0007871b          	sext.w	a4,a5
   10224:	000127b7          	lui	a5,0x12
   10228:	fa878693          	add	a3,a5,-88 # 11fa8 <array1>
   1022c:	fec42783          	lw	a5,-20(s0)
   10230:	00279793          	sll	a5,a5,0x2
   10234:	00f687b3          	add	a5,a3,a5
   10238:	00e7a023          	sw	a4,0(a5)
   1023c:	fec42783          	lw	a5,-20(s0)
   10240:	0c87879b          	addw	a5,a5,200
   10244:	0007879b          	sext.w	a5,a5
   10248:	0007871b          	sext.w	a4,a5
   1024c:	000137b7          	lui	a5,0x13
   10250:	f4878693          	add	a3,a5,-184 # 12f48 <array2>
   10254:	fec42783          	lw	a5,-20(s0)
   10258:	00279793          	sll	a5,a5,0x2
   1025c:	00f687b3          	add	a5,a3,a5
   10260:	00e7a023          	sw	a4,0(a5)
   10264:	fec42783          	lw	a5,-20(s0)
   10268:	0017879b          	addw	a5,a5,1
   1026c:	fef42623          	sw	a5,-20(s0)
   10270:	fec42703          	lw	a4,-20(s0)
   10274:	3e800793          	li	a5,1000
   10278:	f8f76ee3          	bltu	a4,a5,10214 <main+0x28>
   1027c:	000127b7          	lui	a5,0x12
   10280:	fa878793          	add	a5,a5,-88 # 11fa8 <array1>
   10284:	0047a703          	lw	a4,4(a5)
   10288:	000137b7          	lui	a5,0x13
   1028c:	f4878793          	add	a5,a5,-184 # 12f48 <array2>
   10290:	0047a783          	lw	a5,4(a5)
   10294:	02f707bb          	mulw	a5,a4,a5
   10298:	0007871b          	sext.w	a4,a5
   1029c:	000127b7          	lui	a5,0x12
   102a0:	fa878793          	add	a5,a5,-88 # 11fa8 <array1>
   102a4:	00e7a223          	sw	a4,4(a5)
   102a8:	09c000ef          	jal	10344 <exit_proc>
   102ac:	00000793          	li	a5,0
   102b0:	00078513          	mv	a0,a5
   102b4:	01813083          	ld	ra,24(sp)
   102b8:	01013403          	ld	s0,16(sp)
   102bc:	02010113          	add	sp,sp,32
   102c0:	00008067          	ret

00000000000102c4 <print_d>:
   102c4:	fe010113          	add	sp,sp,-32
   102c8:	00813c23          	sd	s0,24(sp)
   102cc:	02010413          	add	s0,sp,32
   102d0:	00050793          	mv	a5,a0
   102d4:	fef42623          	sw	a5,-20(s0)
   102d8:	00200893          	li	a7,2
   102dc:	00000073          	ecall
   102e0:	00000013          	nop
   102e4:	01813403          	ld	s0,24(sp)
   102e8:	02010113          	add	sp,sp,32
   102ec:	00008067          	ret

00000000000102f0 <print_s>:
   102f0:	fe010113          	add	sp,sp,-32
   102f4:	00813c23          	sd	s0,24(sp)
   102f8:	02010413          	add	s0,sp,32
   102fc:	fea43423          	sd	a0,-24(s0)
   10300:	00000893          	li	a7,0
   10304:	00000073          	ecall
   10308:	00000013          	nop
   1030c:	01813403          	ld	s0,24(sp)
   10310:	02010113          	add	sp,sp,32
   10314:	00008067          	ret

0000000000010318 <print_c>:
   10318:	fe010113          	add	sp,sp,-32
   1031c:	00813c23          	sd	s0,24(sp)
   10320:	02010413          	add	s0,sp,32
   10324:	00050793          	mv	a5,a0
   10328:	fef407a3          	sb	a5,-17(s0)
   1032c:	00100893          	li	a7,1
   10330:	00000073          	ecall
   10334:	00000013          	nop
   10338:	01813403          	ld	s0,24(sp)
   1033c:	02010113          	add	sp,sp,32
   10340:	00008067          	ret

0000000000010344 <exit_proc>:
   10344:	ff010113          	add	sp,sp,-16
   10348:	00813423          	sd	s0,8(sp)
   1034c:	01010413          	add	s0,sp,16
   10350:	00300893          	li	a7,3
   10354:	00000073          	ecall
   10358:	00000013          	nop
   1035c:	00813403          	ld	s0,8(sp)
   10360:	01010113          	add	sp,sp,16
   10364:	00008067          	ret

0000000000010368 <read_char>:
   10368:	fe010113          	add	sp,sp,-32
   1036c:	00813c23          	sd	s0,24(sp)
   10370:	02010413          	add	s0,sp,32
   10374:	00400893          	li	a7,4
   10378:	00000073          	ecall
   1037c:	00050793          	mv	a5,a0
   10380:	fef407a3          	sb	a5,-17(s0)
   10384:	fef44783          	lbu	a5,-17(s0)
   10388:	00078513          	mv	a0,a5
   1038c:	01813403          	ld	s0,24(sp)
   10390:	02010113          	add	sp,sp,32
   10394:	00008067          	ret

0000000000010398 <read_num>:
   10398:	fe010113          	add	sp,sp,-32
   1039c:	00813c23          	sd	s0,24(sp)
   103a0:	02010413          	add	s0,sp,32
   103a4:	00500893          	li	a7,5
   103a8:	00000073          	ecall
   103ac:	00050793          	mv	a5,a0
   103b0:	fef43423          	sd	a5,-24(s0)
   103b4:	fe843783          	ld	a5,-24(s0)
   103b8:	00078513          	mv	a0,a5
   103bc:	01813403          	ld	s0,24(sp)
   103c0:	02010113          	add	sp,sp,32
   103c4:	00008067          	ret

00000000000103c8 <print_f>:
   103c8:	fe010113          	add	sp,sp,-32
   103cc:	00813c23          	sd	s0,24(sp)
   103d0:	02010413          	add	s0,sp,32
   103d4:	fea42627          	fsw	fa0,-20(s0)
   103d8:	e0050553          	fmv.x.w	a0,fa0
   103dc:	00600893          	li	a7,6
   103e0:	00000073          	ecall
   103e4:	00000013          	nop
   103e8:	01813403          	ld	s0,24(sp)
   103ec:	02010113          	add	sp,sp,32
   103f0:	00008067          	ret

00000000000103f4 <__libc_init_array>:
   103f4:	fe010113          	add	sp,sp,-32
   103f8:	00813823          	sd	s0,16(sp)
   103fc:	000117b7          	lui	a5,0x11
   10400:	00011437          	lui	s0,0x11
   10404:	01213023          	sd	s2,0(sp)
   10408:	7f078793          	add	a5,a5,2032 # 117f0 <__init_array_start>
   1040c:	7f040713          	add	a4,s0,2032 # 117f0 <__init_array_start>
   10410:	00113c23          	sd	ra,24(sp)
   10414:	00913423          	sd	s1,8(sp)
   10418:	40e78933          	sub	s2,a5,a4
   1041c:	02e78263          	beq	a5,a4,10440 <__libc_init_array+0x4c>
   10420:	40395913          	sra	s2,s2,0x3
   10424:	7f040413          	add	s0,s0,2032
   10428:	00000493          	li	s1,0
   1042c:	00043783          	ld	a5,0(s0)
   10430:	00148493          	add	s1,s1,1
   10434:	00840413          	add	s0,s0,8
   10438:	000780e7          	jalr	a5
   1043c:	ff24e8e3          	bltu	s1,s2,1042c <__libc_init_array+0x38>
   10440:	00011437          	lui	s0,0x11
   10444:	000127b7          	lui	a5,0x12
   10448:	80078793          	add	a5,a5,-2048 # 11800 <__do_global_dtors_aux_fini_array_entry>
   1044c:	7f040713          	add	a4,s0,2032 # 117f0 <__init_array_start>
   10450:	40e78933          	sub	s2,a5,a4
   10454:	40395913          	sra	s2,s2,0x3
   10458:	02e78063          	beq	a5,a4,10478 <__libc_init_array+0x84>
   1045c:	7f040413          	add	s0,s0,2032
   10460:	00000493          	li	s1,0
   10464:	00043783          	ld	a5,0(s0)
   10468:	00148493          	add	s1,s1,1
   1046c:	00840413          	add	s0,s0,8
   10470:	000780e7          	jalr	a5
   10474:	ff24e8e3          	bltu	s1,s2,10464 <__libc_init_array+0x70>
   10478:	01813083          	ld	ra,24(sp)
   1047c:	01013403          	ld	s0,16(sp)
   10480:	00813483          	ld	s1,8(sp)
   10484:	00013903          	ld	s2,0(sp)
   10488:	02010113          	add	sp,sp,32
   1048c:	00008067          	ret

0000000000010490 <memset>:
   10490:	00f00313          	li	t1,15
   10494:	00050713          	mv	a4,a0
   10498:	02c37a63          	bgeu	t1,a2,104cc <memset+0x3c>
   1049c:	00f77793          	and	a5,a4,15
   104a0:	0a079063          	bnez	a5,10540 <memset+0xb0>
   104a4:	06059e63          	bnez	a1,10520 <memset+0x90>
   104a8:	ff067693          	and	a3,a2,-16
   104ac:	00f67613          	and	a2,a2,15
   104b0:	00e686b3          	add	a3,a3,a4
   104b4:	00b73023          	sd	a1,0(a4)
   104b8:	00b73423          	sd	a1,8(a4)
   104bc:	01070713          	add	a4,a4,16
   104c0:	fed76ae3          	bltu	a4,a3,104b4 <memset+0x24>
   104c4:	00061463          	bnez	a2,104cc <memset+0x3c>
   104c8:	00008067          	ret
   104cc:	40c306b3          	sub	a3,t1,a2
   104d0:	00269693          	sll	a3,a3,0x2
   104d4:	00000297          	auipc	t0,0x0
   104d8:	005686b3          	add	a3,a3,t0
   104dc:	00c68067          	jr	12(a3)
   104e0:	00b70723          	sb	a1,14(a4)
   104e4:	00b706a3          	sb	a1,13(a4)
   104e8:	00b70623          	sb	a1,12(a4)
   104ec:	00b705a3          	sb	a1,11(a4)
   104f0:	00b70523          	sb	a1,10(a4)
   104f4:	00b704a3          	sb	a1,9(a4)
   104f8:	00b70423          	sb	a1,8(a4)
   104fc:	00b703a3          	sb	a1,7(a4)
   10500:	00b70323          	sb	a1,6(a4)
   10504:	00b702a3          	sb	a1,5(a4)
   10508:	00b70223          	sb	a1,4(a4)
   1050c:	00b701a3          	sb	a1,3(a4)
   10510:	00b70123          	sb	a1,2(a4)
   10514:	00b700a3          	sb	a1,1(a4)
   10518:	00b70023          	sb	a1,0(a4)
   1051c:	00008067          	ret
   10520:	0ff5f593          	zext.b	a1,a1
   10524:	00859693          	sll	a3,a1,0x8
   10528:	00d5e5b3          	or	a1,a1,a3
   1052c:	01059693          	sll	a3,a1,0x10
   10530:	00d5e5b3          	or	a1,a1,a3
   10534:	02059693          	sll	a3,a1,0x20
   10538:	00d5e5b3          	or	a1,a1,a3
   1053c:	f6dff06f          	j	104a8 <memset+0x18>
   10540:	00279693          	sll	a3,a5,0x2
   10544:	00000297          	auipc	t0,0x0
   10548:	005686b3          	add	a3,a3,t0
   1054c:	00008293          	mv	t0,ra
   10550:	f98680e7          	jalr	-104(a3)
   10554:	00028093          	mv	ra,t0
   10558:	ff078793          	add	a5,a5,-16
   1055c:	40f70733          	sub	a4,a4,a5
   10560:	00f60633          	add	a2,a2,a5
   10564:	f6c374e3          	bgeu	t1,a2,104cc <memset+0x3c>
   10568:	f3dff06f          	j	104a4 <memset+0x14>

000000000001056c <__call_exitprocs>:
   1056c:	fb010113          	add	sp,sp,-80
   10570:	000127b7          	lui	a5,0x12
   10574:	03413023          	sd	s4,32(sp)
   10578:	f587ba03          	ld	s4,-168(a5) # 11f58 <_global_impure_ptr>
   1057c:	03213823          	sd	s2,48(sp)
   10580:	04113423          	sd	ra,72(sp)
   10584:	1f8a3903          	ld	s2,504(s4)
   10588:	04813023          	sd	s0,64(sp)
   1058c:	02913c23          	sd	s1,56(sp)
   10590:	03313423          	sd	s3,40(sp)
   10594:	01513c23          	sd	s5,24(sp)
   10598:	01613823          	sd	s6,16(sp)
   1059c:	01713423          	sd	s7,8(sp)
   105a0:	01813023          	sd	s8,0(sp)
   105a4:	04090063          	beqz	s2,105e4 <__call_exitprocs+0x78>
   105a8:	00050b13          	mv	s6,a0
   105ac:	00058b93          	mv	s7,a1
   105b0:	00100a93          	li	s5,1
   105b4:	fff00993          	li	s3,-1
   105b8:	00892483          	lw	s1,8(s2)
   105bc:	fff4841b          	addw	s0,s1,-1
   105c0:	02044263          	bltz	s0,105e4 <__call_exitprocs+0x78>
   105c4:	00349493          	sll	s1,s1,0x3
   105c8:	009904b3          	add	s1,s2,s1
   105cc:	040b8463          	beqz	s7,10614 <__call_exitprocs+0xa8>
   105d0:	2084b783          	ld	a5,520(s1)
   105d4:	05778063          	beq	a5,s7,10614 <__call_exitprocs+0xa8>
   105d8:	fff4041b          	addw	s0,s0,-1
   105dc:	ff848493          	add	s1,s1,-8
   105e0:	ff3416e3          	bne	s0,s3,105cc <__call_exitprocs+0x60>
   105e4:	04813083          	ld	ra,72(sp)
   105e8:	04013403          	ld	s0,64(sp)
   105ec:	03813483          	ld	s1,56(sp)
   105f0:	03013903          	ld	s2,48(sp)
   105f4:	02813983          	ld	s3,40(sp)
   105f8:	02013a03          	ld	s4,32(sp)
   105fc:	01813a83          	ld	s5,24(sp)
   10600:	01013b03          	ld	s6,16(sp)
   10604:	00813b83          	ld	s7,8(sp)
   10608:	00013c03          	ld	s8,0(sp)
   1060c:	05010113          	add	sp,sp,80
   10610:	00008067          	ret
   10614:	00892783          	lw	a5,8(s2)
   10618:	0084b703          	ld	a4,8(s1)
   1061c:	fff7879b          	addw	a5,a5,-1
   10620:	06878263          	beq	a5,s0,10684 <__call_exitprocs+0x118>
   10624:	0004b423          	sd	zero,8(s1)
   10628:	fa0708e3          	beqz	a4,105d8 <__call_exitprocs+0x6c>
   1062c:	31092783          	lw	a5,784(s2)
   10630:	008a96bb          	sllw	a3,s5,s0
   10634:	00892c03          	lw	s8,8(s2)
   10638:	00d7f7b3          	and	a5,a5,a3
   1063c:	0007879b          	sext.w	a5,a5
   10640:	02079263          	bnez	a5,10664 <__call_exitprocs+0xf8>
   10644:	000700e7          	jalr	a4
   10648:	00892703          	lw	a4,8(s2)
   1064c:	1f8a3783          	ld	a5,504(s4)
   10650:	01871463          	bne	a4,s8,10658 <__call_exitprocs+0xec>
   10654:	f92782e3          	beq	a5,s2,105d8 <__call_exitprocs+0x6c>
   10658:	f80786e3          	beqz	a5,105e4 <__call_exitprocs+0x78>
   1065c:	00078913          	mv	s2,a5
   10660:	f59ff06f          	j	105b8 <__call_exitprocs+0x4c>
   10664:	31492783          	lw	a5,788(s2)
   10668:	1084b583          	ld	a1,264(s1)
   1066c:	00d7f7b3          	and	a5,a5,a3
   10670:	0007879b          	sext.w	a5,a5
   10674:	00079c63          	bnez	a5,1068c <__call_exitprocs+0x120>
   10678:	000b0513          	mv	a0,s6
   1067c:	000700e7          	jalr	a4
   10680:	fc9ff06f          	j	10648 <__call_exitprocs+0xdc>
   10684:	00892423          	sw	s0,8(s2)
   10688:	fa1ff06f          	j	10628 <__call_exitprocs+0xbc>
   1068c:	00058513          	mv	a0,a1
   10690:	000700e7          	jalr	a4
   10694:	fb5ff06f          	j	10648 <__call_exitprocs+0xdc>

0000000000010698 <__libc_fini_array>:
   10698:	fe010113          	add	sp,sp,-32
   1069c:	00813823          	sd	s0,16(sp)
   106a0:	000127b7          	lui	a5,0x12
   106a4:	00012437          	lui	s0,0x12
   106a8:	80078793          	add	a5,a5,-2048 # 11800 <__do_global_dtors_aux_fini_array_entry>
   106ac:	80840413          	add	s0,s0,-2040 # 11808 <impure_data>
   106b0:	40f40433          	sub	s0,s0,a5
   106b4:	00913423          	sd	s1,8(sp)
   106b8:	00113c23          	sd	ra,24(sp)
   106bc:	40345493          	sra	s1,s0,0x3
   106c0:	02048063          	beqz	s1,106e0 <__libc_fini_array+0x48>
   106c4:	ff840413          	add	s0,s0,-8
   106c8:	00f40433          	add	s0,s0,a5
   106cc:	00043783          	ld	a5,0(s0)
   106d0:	fff48493          	add	s1,s1,-1
   106d4:	ff840413          	add	s0,s0,-8
   106d8:	000780e7          	jalr	a5
   106dc:	fe0498e3          	bnez	s1,106cc <__libc_fini_array+0x34>
   106e0:	01813083          	ld	ra,24(sp)
   106e4:	01013403          	ld	s0,16(sp)
   106e8:	00813483          	ld	s1,8(sp)
   106ec:	02010113          	add	sp,sp,32
   106f0:	00008067          	ret

00000000000106f4 <atexit>:
   106f4:	00050593          	mv	a1,a0
   106f8:	00000693          	li	a3,0
   106fc:	00000613          	li	a2,0
   10700:	00000513          	li	a0,0
   10704:	0040006f          	j	10708 <__register_exitproc>

0000000000010708 <__register_exitproc>:
   10708:	000127b7          	lui	a5,0x12
   1070c:	f587b703          	ld	a4,-168(a5) # 11f58 <_global_impure_ptr>
   10710:	1f873783          	ld	a5,504(a4)
   10714:	06078063          	beqz	a5,10774 <__register_exitproc+0x6c>
   10718:	0087a703          	lw	a4,8(a5)
   1071c:	01f00813          	li	a6,31
   10720:	08e84663          	blt	a6,a4,107ac <__register_exitproc+0xa4>
   10724:	02050863          	beqz	a0,10754 <__register_exitproc+0x4c>
   10728:	00371813          	sll	a6,a4,0x3
   1072c:	01078833          	add	a6,a5,a6
   10730:	10c83823          	sd	a2,272(a6)
   10734:	3107a883          	lw	a7,784(a5)
   10738:	00100613          	li	a2,1
   1073c:	00e6163b          	sllw	a2,a2,a4
   10740:	00c8e8b3          	or	a7,a7,a2
   10744:	3117a823          	sw	a7,784(a5)
   10748:	20d83823          	sd	a3,528(a6)
   1074c:	00200693          	li	a3,2
   10750:	02d50863          	beq	a0,a3,10780 <__register_exitproc+0x78>
   10754:	00270693          	add	a3,a4,2
   10758:	00369693          	sll	a3,a3,0x3
   1075c:	0017071b          	addw	a4,a4,1
   10760:	00e7a423          	sw	a4,8(a5)
   10764:	00d787b3          	add	a5,a5,a3
   10768:	00b7b023          	sd	a1,0(a5)
   1076c:	00000513          	li	a0,0
   10770:	00008067          	ret
   10774:	20070793          	add	a5,a4,512
   10778:	1ef73c23          	sd	a5,504(a4)
   1077c:	f9dff06f          	j	10718 <__register_exitproc+0x10>
   10780:	3147a683          	lw	a3,788(a5)
   10784:	00000513          	li	a0,0
   10788:	00c6e6b3          	or	a3,a3,a2
   1078c:	30d7aa23          	sw	a3,788(a5)
   10790:	00270693          	add	a3,a4,2
   10794:	00369693          	sll	a3,a3,0x3
   10798:	0017071b          	addw	a4,a4,1
   1079c:	00e7a423          	sw	a4,8(a5)
   107a0:	00d787b3          	add	a5,a5,a3
   107a4:	00b7b023          	sd	a1,0(a5)
   107a8:	00008067          	ret
   107ac:	fff00513          	li	a0,-1
   107b0:	00008067          	ret

00000000000107b4 <_exit>:
   107b4:	05d00893          	li	a7,93
   107b8:	00000073          	ecall
   107bc:	00054463          	bltz	a0,107c4 <_exit+0x10>
   107c0:	0000006f          	j	107c0 <_exit+0xc>
   107c4:	ff010113          	add	sp,sp,-16
   107c8:	00813023          	sd	s0,0(sp)
   107cc:	00050413          	mv	s0,a0
   107d0:	00113423          	sd	ra,8(sp)
   107d4:	4080043b          	negw	s0,s0
   107d8:	00c000ef          	jal	107e4 <__errno>
   107dc:	00852023          	sw	s0,0(a0)
   107e0:	0000006f          	j	107e0 <_exit+0x2c>

00000000000107e4 <__errno>:
   107e4:	8181b503          	ld	a0,-2024(gp) # 11f68 <_impure_ptr>
   107e8:	00008067          	ret
