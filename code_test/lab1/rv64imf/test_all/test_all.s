
/home/yangyx/desktop/CA2/code_test/lab0/rv64imf/test_all/test_all.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	440000ef          	jal	1053c <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11f28 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	668000ef          	jal	1077c <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	66450513          	add	a0,a0,1636 # 10664 <__libc_fini_array>
   10128:	5980006f          	j	106c0 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	eb018193          	add	gp,gp,-336 # 11fe0 <__global_pointer$>
   10138:	f6018513          	add	a0,gp,-160 # 11f40 <completed.1>
   1013c:	f9818613          	add	a2,gp,-104 # 11f78 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	318000ef          	jal	10460 <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	57450513          	add	a0,a0,1396 # 106c0 <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	50c50513          	add	a0,a0,1292 # 10664 <__libc_fini_array>
   10160:	560000ef          	jal	106c0 <atexit>
   10164:	260000ef          	jal	103c4 <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	06c000ef          	jal	101e0 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f601c783          	lbu	a5,-160(gp) # 11f40 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00011537          	lui	a0,0x11
   1019c:	7c050513          	add	a0,a0,1984 # 117c0 <__EH_FRAME_BEGIN__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f6f18023          	sb	a5,-160(gp) # 11f40 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00011537          	lui	a0,0x11
   101cc:	f6818593          	add	a1,gp,-152 # 11f48 <object.0>
   101d0:	7c050513          	add	a0,a0,1984 # 117c0 <__EH_FRAME_BEGIN__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <main>:
   101e0:	fd010113          	add	sp,sp,-48
   101e4:	02113423          	sd	ra,40(sp)
   101e8:	02813023          	sd	s0,32(sp)
   101ec:	03010413          	add	s0,sp,48
   101f0:	fe042623          	sw	zero,-20(s0)
   101f4:	4048f7b7          	lui	a5,0x4048f
   101f8:	5c378793          	add	a5,a5,1475 # 4048f5c3 <__global_pointer$+0x4047d5e3>
   101fc:	fef43023          	sd	a5,-32(s0)
   10200:	fc042e23          	sw	zero,-36(s0)
   10204:	fe043783          	ld	a5,-32(s0)
   10208:	f00787d3          	fmv.w.x	fa5,a5
   1020c:	fef42627          	fsw	fa5,-20(s0)
   10210:	fec42507          	flw	fa0,-20(s0)
   10214:	184000ef          	jal	10398 <print_f>
   10218:	000107b7          	lui	a5,0x10
   1021c:	7b878513          	add	a0,a5,1976 # 107b8 <__errno+0xc>
   10220:	0a0000ef          	jal	102c0 <print_s>
   10224:	fec42787          	flw	fa5,-20(s0)
   10228:	e00787d3          	fmv.x.w	a5,fa5
   1022c:	fef43023          	sd	a5,-32(s0)
   10230:	fe043783          	ld	a5,-32(s0)
   10234:	0007879b          	sext.w	a5,a5
   10238:	00078513          	mv	a0,a5
   1023c:	058000ef          	jal	10294 <print_d>
   10240:	000107b7          	lui	a5,0x10
   10244:	7b878513          	add	a0,a5,1976 # 107b8 <__errno+0xc>
   10248:	078000ef          	jal	102c0 <print_s>
   1024c:	000107b7          	lui	a5,0x10
   10250:	7bc7a787          	flw	fa5,1980(a5) # 107bc <__errno+0x10>
   10254:	fcf42e27          	fsw	fa5,-36(s0)
   10258:	fdc42787          	flw	fa5,-36(s0)
   1025c:	5807f7d3          	fsqrt.s	fa5,fa5
   10260:	fef42627          	fsw	fa5,-20(s0)
   10264:	fec42507          	flw	fa0,-20(s0)
   10268:	130000ef          	jal	10398 <print_f>
   1026c:	000107b7          	lui	a5,0x10
   10270:	7b878513          	add	a0,a5,1976 # 107b8 <__errno+0xc>
   10274:	04c000ef          	jal	102c0 <print_s>
   10278:	09c000ef          	jal	10314 <exit_proc>
   1027c:	00000793          	li	a5,0
   10280:	00078513          	mv	a0,a5
   10284:	02813083          	ld	ra,40(sp)
   10288:	02013403          	ld	s0,32(sp)
   1028c:	03010113          	add	sp,sp,48
   10290:	00008067          	ret

0000000000010294 <print_d>:
   10294:	fe010113          	add	sp,sp,-32
   10298:	00813c23          	sd	s0,24(sp)
   1029c:	02010413          	add	s0,sp,32
   102a0:	00050793          	mv	a5,a0
   102a4:	fef42623          	sw	a5,-20(s0)
   102a8:	00200893          	li	a7,2
   102ac:	00000073          	ecall
   102b0:	00000013          	nop
   102b4:	01813403          	ld	s0,24(sp)
   102b8:	02010113          	add	sp,sp,32
   102bc:	00008067          	ret

00000000000102c0 <print_s>:
   102c0:	fe010113          	add	sp,sp,-32
   102c4:	00813c23          	sd	s0,24(sp)
   102c8:	02010413          	add	s0,sp,32
   102cc:	fea43423          	sd	a0,-24(s0)
   102d0:	00000893          	li	a7,0
   102d4:	00000073          	ecall
   102d8:	00000013          	nop
   102dc:	01813403          	ld	s0,24(sp)
   102e0:	02010113          	add	sp,sp,32
   102e4:	00008067          	ret

00000000000102e8 <print_c>:
   102e8:	fe010113          	add	sp,sp,-32
   102ec:	00813c23          	sd	s0,24(sp)
   102f0:	02010413          	add	s0,sp,32
   102f4:	00050793          	mv	a5,a0
   102f8:	fef407a3          	sb	a5,-17(s0)
   102fc:	00100893          	li	a7,1
   10300:	00000073          	ecall
   10304:	00000013          	nop
   10308:	01813403          	ld	s0,24(sp)
   1030c:	02010113          	add	sp,sp,32
   10310:	00008067          	ret

0000000000010314 <exit_proc>:
   10314:	ff010113          	add	sp,sp,-16
   10318:	00813423          	sd	s0,8(sp)
   1031c:	01010413          	add	s0,sp,16
   10320:	00300893          	li	a7,3
   10324:	00000073          	ecall
   10328:	00000013          	nop
   1032c:	00813403          	ld	s0,8(sp)
   10330:	01010113          	add	sp,sp,16
   10334:	00008067          	ret

0000000000010338 <read_char>:
   10338:	fe010113          	add	sp,sp,-32
   1033c:	00813c23          	sd	s0,24(sp)
   10340:	02010413          	add	s0,sp,32
   10344:	00400893          	li	a7,4
   10348:	00000073          	ecall
   1034c:	00050793          	mv	a5,a0
   10350:	fef407a3          	sb	a5,-17(s0)
   10354:	fef44783          	lbu	a5,-17(s0)
   10358:	00078513          	mv	a0,a5
   1035c:	01813403          	ld	s0,24(sp)
   10360:	02010113          	add	sp,sp,32
   10364:	00008067          	ret

0000000000010368 <read_num>:
   10368:	fe010113          	add	sp,sp,-32
   1036c:	00813c23          	sd	s0,24(sp)
   10370:	02010413          	add	s0,sp,32
   10374:	00500893          	li	a7,5
   10378:	00000073          	ecall
   1037c:	00050793          	mv	a5,a0
   10380:	fef43423          	sd	a5,-24(s0)
   10384:	fe843783          	ld	a5,-24(s0)
   10388:	00078513          	mv	a0,a5
   1038c:	01813403          	ld	s0,24(sp)
   10390:	02010113          	add	sp,sp,32
   10394:	00008067          	ret

0000000000010398 <print_f>:
   10398:	fe010113          	add	sp,sp,-32
   1039c:	00813c23          	sd	s0,24(sp)
   103a0:	02010413          	add	s0,sp,32
   103a4:	fea42627          	fsw	fa0,-20(s0)
   103a8:	e0050553          	fmv.x.w	a0,fa0
   103ac:	00600893          	li	a7,6
   103b0:	00000073          	ecall
   103b4:	00000013          	nop
   103b8:	01813403          	ld	s0,24(sp)
   103bc:	02010113          	add	sp,sp,32
   103c0:	00008067          	ret

00000000000103c4 <__libc_init_array>:
   103c4:	fe010113          	add	sp,sp,-32
   103c8:	00813823          	sd	s0,16(sp)
   103cc:	000117b7          	lui	a5,0x11
   103d0:	00011437          	lui	s0,0x11
   103d4:	01213023          	sd	s2,0(sp)
   103d8:	7c478793          	add	a5,a5,1988 # 117c4 <__preinit_array_end>
   103dc:	7c440713          	add	a4,s0,1988 # 117c4 <__preinit_array_end>
   103e0:	00113c23          	sd	ra,24(sp)
   103e4:	00913423          	sd	s1,8(sp)
   103e8:	40e78933          	sub	s2,a5,a4
   103ec:	02e78263          	beq	a5,a4,10410 <__libc_init_array+0x4c>
   103f0:	40395913          	sra	s2,s2,0x3
   103f4:	7c440413          	add	s0,s0,1988
   103f8:	00000493          	li	s1,0
   103fc:	00043783          	ld	a5,0(s0)
   10400:	00148493          	add	s1,s1,1
   10404:	00840413          	add	s0,s0,8
   10408:	000780e7          	jalr	a5
   1040c:	ff24e8e3          	bltu	s1,s2,103fc <__libc_init_array+0x38>
   10410:	00011437          	lui	s0,0x11
   10414:	000117b7          	lui	a5,0x11
   10418:	7d878793          	add	a5,a5,2008 # 117d8 <__do_global_dtors_aux_fini_array_entry>
   1041c:	7c840713          	add	a4,s0,1992 # 117c8 <__init_array_start>
   10420:	40e78933          	sub	s2,a5,a4
   10424:	40395913          	sra	s2,s2,0x3
   10428:	02e78063          	beq	a5,a4,10448 <__libc_init_array+0x84>
   1042c:	7c840413          	add	s0,s0,1992
   10430:	00000493          	li	s1,0
   10434:	00043783          	ld	a5,0(s0)
   10438:	00148493          	add	s1,s1,1
   1043c:	00840413          	add	s0,s0,8
   10440:	000780e7          	jalr	a5
   10444:	ff24e8e3          	bltu	s1,s2,10434 <__libc_init_array+0x70>
   10448:	01813083          	ld	ra,24(sp)
   1044c:	01013403          	ld	s0,16(sp)
   10450:	00813483          	ld	s1,8(sp)
   10454:	00013903          	ld	s2,0(sp)
   10458:	02010113          	add	sp,sp,32
   1045c:	00008067          	ret

0000000000010460 <memset>:
   10460:	00f00313          	li	t1,15
   10464:	00050713          	mv	a4,a0
   10468:	02c37a63          	bgeu	t1,a2,1049c <memset+0x3c>
   1046c:	00f77793          	and	a5,a4,15
   10470:	0a079063          	bnez	a5,10510 <memset+0xb0>
   10474:	06059e63          	bnez	a1,104f0 <memset+0x90>
   10478:	ff067693          	and	a3,a2,-16
   1047c:	00f67613          	and	a2,a2,15
   10480:	00e686b3          	add	a3,a3,a4
   10484:	00b73023          	sd	a1,0(a4)
   10488:	00b73423          	sd	a1,8(a4)
   1048c:	01070713          	add	a4,a4,16
   10490:	fed76ae3          	bltu	a4,a3,10484 <memset+0x24>
   10494:	00061463          	bnez	a2,1049c <memset+0x3c>
   10498:	00008067          	ret
   1049c:	40c306b3          	sub	a3,t1,a2
   104a0:	00269693          	sll	a3,a3,0x2
   104a4:	00000297          	auipc	t0,0x0
   104a8:	005686b3          	add	a3,a3,t0
   104ac:	00c68067          	jr	12(a3)
   104b0:	00b70723          	sb	a1,14(a4)
   104b4:	00b706a3          	sb	a1,13(a4)
   104b8:	00b70623          	sb	a1,12(a4)
   104bc:	00b705a3          	sb	a1,11(a4)
   104c0:	00b70523          	sb	a1,10(a4)
   104c4:	00b704a3          	sb	a1,9(a4)
   104c8:	00b70423          	sb	a1,8(a4)
   104cc:	00b703a3          	sb	a1,7(a4)
   104d0:	00b70323          	sb	a1,6(a4)
   104d4:	00b702a3          	sb	a1,5(a4)
   104d8:	00b70223          	sb	a1,4(a4)
   104dc:	00b701a3          	sb	a1,3(a4)
   104e0:	00b70123          	sb	a1,2(a4)
   104e4:	00b700a3          	sb	a1,1(a4)
   104e8:	00b70023          	sb	a1,0(a4)
   104ec:	00008067          	ret
   104f0:	0ff5f593          	zext.b	a1,a1
   104f4:	00859693          	sll	a3,a1,0x8
   104f8:	00d5e5b3          	or	a1,a1,a3
   104fc:	01059693          	sll	a3,a1,0x10
   10500:	00d5e5b3          	or	a1,a1,a3
   10504:	02059693          	sll	a3,a1,0x20
   10508:	00d5e5b3          	or	a1,a1,a3
   1050c:	f6dff06f          	j	10478 <memset+0x18>
   10510:	00279693          	sll	a3,a5,0x2
   10514:	00000297          	auipc	t0,0x0
   10518:	005686b3          	add	a3,a3,t0
   1051c:	00008293          	mv	t0,ra
   10520:	f98680e7          	jalr	-104(a3)
   10524:	00028093          	mv	ra,t0
   10528:	ff078793          	add	a5,a5,-16
   1052c:	40f70733          	sub	a4,a4,a5
   10530:	00f60633          	add	a2,a2,a5
   10534:	f6c374e3          	bgeu	t1,a2,1049c <memset+0x3c>
   10538:	f3dff06f          	j	10474 <memset+0x14>

000000000001053c <__call_exitprocs>:
   1053c:	fb010113          	add	sp,sp,-80
   10540:	03413023          	sd	s4,32(sp)
   10544:	f481ba03          	ld	s4,-184(gp) # 11f28 <_global_impure_ptr>
   10548:	03213823          	sd	s2,48(sp)
   1054c:	04113423          	sd	ra,72(sp)
   10550:	1f8a3903          	ld	s2,504(s4)
   10554:	04813023          	sd	s0,64(sp)
   10558:	02913c23          	sd	s1,56(sp)
   1055c:	03313423          	sd	s3,40(sp)
   10560:	01513c23          	sd	s5,24(sp)
   10564:	01613823          	sd	s6,16(sp)
   10568:	01713423          	sd	s7,8(sp)
   1056c:	01813023          	sd	s8,0(sp)
   10570:	04090063          	beqz	s2,105b0 <__call_exitprocs+0x74>
   10574:	00050b13          	mv	s6,a0
   10578:	00058b93          	mv	s7,a1
   1057c:	00100a93          	li	s5,1
   10580:	fff00993          	li	s3,-1
   10584:	00892483          	lw	s1,8(s2)
   10588:	fff4841b          	addw	s0,s1,-1
   1058c:	02044263          	bltz	s0,105b0 <__call_exitprocs+0x74>
   10590:	00349493          	sll	s1,s1,0x3
   10594:	009904b3          	add	s1,s2,s1
   10598:	040b8463          	beqz	s7,105e0 <__call_exitprocs+0xa4>
   1059c:	2084b783          	ld	a5,520(s1)
   105a0:	05778063          	beq	a5,s7,105e0 <__call_exitprocs+0xa4>
   105a4:	fff4041b          	addw	s0,s0,-1
   105a8:	ff848493          	add	s1,s1,-8
   105ac:	ff3416e3          	bne	s0,s3,10598 <__call_exitprocs+0x5c>
   105b0:	04813083          	ld	ra,72(sp)
   105b4:	04013403          	ld	s0,64(sp)
   105b8:	03813483          	ld	s1,56(sp)
   105bc:	03013903          	ld	s2,48(sp)
   105c0:	02813983          	ld	s3,40(sp)
   105c4:	02013a03          	ld	s4,32(sp)
   105c8:	01813a83          	ld	s5,24(sp)
   105cc:	01013b03          	ld	s6,16(sp)
   105d0:	00813b83          	ld	s7,8(sp)
   105d4:	00013c03          	ld	s8,0(sp)
   105d8:	05010113          	add	sp,sp,80
   105dc:	00008067          	ret
   105e0:	00892783          	lw	a5,8(s2)
   105e4:	0084b703          	ld	a4,8(s1)
   105e8:	fff7879b          	addw	a5,a5,-1
   105ec:	06878263          	beq	a5,s0,10650 <__call_exitprocs+0x114>
   105f0:	0004b423          	sd	zero,8(s1)
   105f4:	fa0708e3          	beqz	a4,105a4 <__call_exitprocs+0x68>
   105f8:	31092783          	lw	a5,784(s2)
   105fc:	008a96bb          	sllw	a3,s5,s0
   10600:	00892c03          	lw	s8,8(s2)
   10604:	00d7f7b3          	and	a5,a5,a3
   10608:	0007879b          	sext.w	a5,a5
   1060c:	02079263          	bnez	a5,10630 <__call_exitprocs+0xf4>
   10610:	000700e7          	jalr	a4
   10614:	00892703          	lw	a4,8(s2)
   10618:	1f8a3783          	ld	a5,504(s4)
   1061c:	01871463          	bne	a4,s8,10624 <__call_exitprocs+0xe8>
   10620:	f92782e3          	beq	a5,s2,105a4 <__call_exitprocs+0x68>
   10624:	f80786e3          	beqz	a5,105b0 <__call_exitprocs+0x74>
   10628:	00078913          	mv	s2,a5
   1062c:	f59ff06f          	j	10584 <__call_exitprocs+0x48>
   10630:	31492783          	lw	a5,788(s2)
   10634:	1084b583          	ld	a1,264(s1)
   10638:	00d7f7b3          	and	a5,a5,a3
   1063c:	0007879b          	sext.w	a5,a5
   10640:	00079c63          	bnez	a5,10658 <__call_exitprocs+0x11c>
   10644:	000b0513          	mv	a0,s6
   10648:	000700e7          	jalr	a4
   1064c:	fc9ff06f          	j	10614 <__call_exitprocs+0xd8>
   10650:	00892423          	sw	s0,8(s2)
   10654:	fa1ff06f          	j	105f4 <__call_exitprocs+0xb8>
   10658:	00058513          	mv	a0,a1
   1065c:	000700e7          	jalr	a4
   10660:	fb5ff06f          	j	10614 <__call_exitprocs+0xd8>

0000000000010664 <__libc_fini_array>:
   10664:	fe010113          	add	sp,sp,-32
   10668:	00813823          	sd	s0,16(sp)
   1066c:	000117b7          	lui	a5,0x11
   10670:	00011437          	lui	s0,0x11
   10674:	7d878793          	add	a5,a5,2008 # 117d8 <__do_global_dtors_aux_fini_array_entry>
   10678:	7e040413          	add	s0,s0,2016 # 117e0 <impure_data>
   1067c:	40f40433          	sub	s0,s0,a5
   10680:	00913423          	sd	s1,8(sp)
   10684:	00113c23          	sd	ra,24(sp)
   10688:	40345493          	sra	s1,s0,0x3
   1068c:	02048063          	beqz	s1,106ac <__libc_fini_array+0x48>
   10690:	ff840413          	add	s0,s0,-8
   10694:	00f40433          	add	s0,s0,a5
   10698:	00043783          	ld	a5,0(s0)
   1069c:	fff48493          	add	s1,s1,-1
   106a0:	ff840413          	add	s0,s0,-8
   106a4:	000780e7          	jalr	a5
   106a8:	fe0498e3          	bnez	s1,10698 <__libc_fini_array+0x34>
   106ac:	01813083          	ld	ra,24(sp)
   106b0:	01013403          	ld	s0,16(sp)
   106b4:	00813483          	ld	s1,8(sp)
   106b8:	02010113          	add	sp,sp,32
   106bc:	00008067          	ret

00000000000106c0 <atexit>:
   106c0:	00050593          	mv	a1,a0
   106c4:	00000693          	li	a3,0
   106c8:	00000613          	li	a2,0
   106cc:	00000513          	li	a0,0
   106d0:	0040006f          	j	106d4 <__register_exitproc>

00000000000106d4 <__register_exitproc>:
   106d4:	f481b703          	ld	a4,-184(gp) # 11f28 <_global_impure_ptr>
   106d8:	1f873783          	ld	a5,504(a4)
   106dc:	06078063          	beqz	a5,1073c <__register_exitproc+0x68>
   106e0:	0087a703          	lw	a4,8(a5)
   106e4:	01f00813          	li	a6,31
   106e8:	08e84663          	blt	a6,a4,10774 <__register_exitproc+0xa0>
   106ec:	02050863          	beqz	a0,1071c <__register_exitproc+0x48>
   106f0:	00371813          	sll	a6,a4,0x3
   106f4:	01078833          	add	a6,a5,a6
   106f8:	10c83823          	sd	a2,272(a6)
   106fc:	3107a883          	lw	a7,784(a5)
   10700:	00100613          	li	a2,1
   10704:	00e6163b          	sllw	a2,a2,a4
   10708:	00c8e8b3          	or	a7,a7,a2
   1070c:	3117a823          	sw	a7,784(a5)
   10710:	20d83823          	sd	a3,528(a6)
   10714:	00200693          	li	a3,2
   10718:	02d50863          	beq	a0,a3,10748 <__register_exitproc+0x74>
   1071c:	00270693          	add	a3,a4,2
   10720:	00369693          	sll	a3,a3,0x3
   10724:	0017071b          	addw	a4,a4,1
   10728:	00e7a423          	sw	a4,8(a5)
   1072c:	00d787b3          	add	a5,a5,a3
   10730:	00b7b023          	sd	a1,0(a5)
   10734:	00000513          	li	a0,0
   10738:	00008067          	ret
   1073c:	20070793          	add	a5,a4,512
   10740:	1ef73c23          	sd	a5,504(a4)
   10744:	f9dff06f          	j	106e0 <__register_exitproc+0xc>
   10748:	3147a683          	lw	a3,788(a5)
   1074c:	00000513          	li	a0,0
   10750:	00c6e6b3          	or	a3,a3,a2
   10754:	30d7aa23          	sw	a3,788(a5)
   10758:	00270693          	add	a3,a4,2
   1075c:	00369693          	sll	a3,a3,0x3
   10760:	0017071b          	addw	a4,a4,1
   10764:	00e7a423          	sw	a4,8(a5)
   10768:	00d787b3          	add	a5,a5,a3
   1076c:	00b7b023          	sd	a1,0(a5)
   10770:	00008067          	ret
   10774:	fff00513          	li	a0,-1
   10778:	00008067          	ret

000000000001077c <_exit>:
   1077c:	05d00893          	li	a7,93
   10780:	00000073          	ecall
   10784:	00054463          	bltz	a0,1078c <_exit+0x10>
   10788:	0000006f          	j	10788 <_exit+0xc>
   1078c:	ff010113          	add	sp,sp,-16
   10790:	00813023          	sd	s0,0(sp)
   10794:	00050413          	mv	s0,a0
   10798:	00113423          	sd	ra,8(sp)
   1079c:	4080043b          	negw	s0,s0
   107a0:	00c000ef          	jal	107ac <__errno>
   107a4:	00852023          	sw	s0,0(a0)
   107a8:	0000006f          	j	107a8 <_exit+0x2c>

00000000000107ac <__errno>:
   107ac:	f581b503          	ld	a0,-168(gp) # 11f38 <_impure_ptr>
   107b0:	00008067          	ret
