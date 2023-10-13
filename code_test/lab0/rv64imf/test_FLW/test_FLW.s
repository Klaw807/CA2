
/home/yangyx/desktop/CA2/code_test/lab0/rv64imf/test_FLW/test_FLW.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	3f4000ef          	jal	104f0 <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11ee0 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	61c000ef          	jal	10730 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	61850513          	add	a0,a0,1560 # 10618 <__libc_fini_array>
   10128:	54c0006f          	j	10674 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	e6818193          	add	gp,gp,-408 # 11f98 <__global_pointer$>
   10138:	f6018513          	add	a0,gp,-160 # 11ef8 <completed.1>
   1013c:	f9818613          	add	a2,gp,-104 # 11f30 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	2cc000ef          	jal	10414 <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	52850513          	add	a0,a0,1320 # 10674 <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	4c050513          	add	a0,a0,1216 # 10618 <__libc_fini_array>
   10160:	514000ef          	jal	10674 <atexit>
   10164:	214000ef          	jal	10378 <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	06c000ef          	jal	101e0 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f601c783          	lbu	a5,-160(gp) # 11ef8 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00011537          	lui	a0,0x11
   1019c:	77c50513          	add	a0,a0,1916 # 1177c <__EH_FRAME_BEGIN__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f6f18023          	sb	a5,-160(gp) # 11ef8 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00011537          	lui	a0,0x11
   101cc:	f6818593          	add	a1,gp,-152 # 11f00 <object.0>
   101d0:	77c50513          	add	a0,a0,1916 # 1177c <__EH_FRAME_BEGIN__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <main>:
   101e0:	fe010113          	add	sp,sp,-32
   101e4:	00113c23          	sd	ra,24(sp)
   101e8:	00813823          	sd	s0,16(sp)
   101ec:	02010413          	add	s0,sp,32
   101f0:	4640e2b7          	lui	t0,0x4640e
   101f4:	5002829b          	addw	t0,t0,1280 # 4640e500 <__global_pointer$+0x463fc568>
   101f8:	000103b7          	lui	t2,0x10
   101fc:	0053a023          	sw	t0,0(t2) # 10000 <exit-0xe8>
   10200:	0003a007          	flw	ft0,0(t2)
   10204:	0003a787          	flw	fa5,0(t2)
   10208:	fef42627          	fsw	fa5,-20(s0)
   1020c:	000107b7          	lui	a5,0x10
   10210:	76878513          	add	a0,a5,1896 # 10768 <__errno+0x8>
   10214:	060000ef          	jal	10274 <print_s>
   10218:	fec42507          	flw	fa0,-20(s0)
   1021c:	130000ef          	jal	1034c <print_f>
   10220:	000107b7          	lui	a5,0x10
   10224:	77878513          	add	a0,a5,1912 # 10778 <__errno+0x18>
   10228:	04c000ef          	jal	10274 <print_s>
   1022c:	09c000ef          	jal	102c8 <exit_proc>
   10230:	00000793          	li	a5,0
   10234:	00078513          	mv	a0,a5
   10238:	01813083          	ld	ra,24(sp)
   1023c:	01013403          	ld	s0,16(sp)
   10240:	02010113          	add	sp,sp,32
   10244:	00008067          	ret

0000000000010248 <print_d>:
   10248:	fe010113          	add	sp,sp,-32
   1024c:	00813c23          	sd	s0,24(sp)
   10250:	02010413          	add	s0,sp,32
   10254:	00050793          	mv	a5,a0
   10258:	fef42623          	sw	a5,-20(s0)
   1025c:	00200893          	li	a7,2
   10260:	00000073          	ecall
   10264:	00000013          	nop
   10268:	01813403          	ld	s0,24(sp)
   1026c:	02010113          	add	sp,sp,32
   10270:	00008067          	ret

0000000000010274 <print_s>:
   10274:	fe010113          	add	sp,sp,-32
   10278:	00813c23          	sd	s0,24(sp)
   1027c:	02010413          	add	s0,sp,32
   10280:	fea43423          	sd	a0,-24(s0)
   10284:	00000893          	li	a7,0
   10288:	00000073          	ecall
   1028c:	00000013          	nop
   10290:	01813403          	ld	s0,24(sp)
   10294:	02010113          	add	sp,sp,32
   10298:	00008067          	ret

000000000001029c <print_c>:
   1029c:	fe010113          	add	sp,sp,-32
   102a0:	00813c23          	sd	s0,24(sp)
   102a4:	02010413          	add	s0,sp,32
   102a8:	00050793          	mv	a5,a0
   102ac:	fef407a3          	sb	a5,-17(s0)
   102b0:	00100893          	li	a7,1
   102b4:	00000073          	ecall
   102b8:	00000013          	nop
   102bc:	01813403          	ld	s0,24(sp)
   102c0:	02010113          	add	sp,sp,32
   102c4:	00008067          	ret

00000000000102c8 <exit_proc>:
   102c8:	ff010113          	add	sp,sp,-16
   102cc:	00813423          	sd	s0,8(sp)
   102d0:	01010413          	add	s0,sp,16
   102d4:	00300893          	li	a7,3
   102d8:	00000073          	ecall
   102dc:	00000013          	nop
   102e0:	00813403          	ld	s0,8(sp)
   102e4:	01010113          	add	sp,sp,16
   102e8:	00008067          	ret

00000000000102ec <read_char>:
   102ec:	fe010113          	add	sp,sp,-32
   102f0:	00813c23          	sd	s0,24(sp)
   102f4:	02010413          	add	s0,sp,32
   102f8:	00400893          	li	a7,4
   102fc:	00000073          	ecall
   10300:	00050793          	mv	a5,a0
   10304:	fef407a3          	sb	a5,-17(s0)
   10308:	fef44783          	lbu	a5,-17(s0)
   1030c:	00078513          	mv	a0,a5
   10310:	01813403          	ld	s0,24(sp)
   10314:	02010113          	add	sp,sp,32
   10318:	00008067          	ret

000000000001031c <read_num>:
   1031c:	fe010113          	add	sp,sp,-32
   10320:	00813c23          	sd	s0,24(sp)
   10324:	02010413          	add	s0,sp,32
   10328:	00500893          	li	a7,5
   1032c:	00000073          	ecall
   10330:	00050793          	mv	a5,a0
   10334:	fef43423          	sd	a5,-24(s0)
   10338:	fe843783          	ld	a5,-24(s0)
   1033c:	00078513          	mv	a0,a5
   10340:	01813403          	ld	s0,24(sp)
   10344:	02010113          	add	sp,sp,32
   10348:	00008067          	ret

000000000001034c <print_f>:
   1034c:	fe010113          	add	sp,sp,-32
   10350:	00813c23          	sd	s0,24(sp)
   10354:	02010413          	add	s0,sp,32
   10358:	fea42627          	fsw	fa0,-20(s0)
   1035c:	e0050553          	fmv.x.w	a0,fa0
   10360:	00600893          	li	a7,6
   10364:	00000073          	ecall
   10368:	00000013          	nop
   1036c:	01813403          	ld	s0,24(sp)
   10370:	02010113          	add	sp,sp,32
   10374:	00008067          	ret

0000000000010378 <__libc_init_array>:
   10378:	fe010113          	add	sp,sp,-32
   1037c:	00813823          	sd	s0,16(sp)
   10380:	000117b7          	lui	a5,0x11
   10384:	00011437          	lui	s0,0x11
   10388:	01213023          	sd	s2,0(sp)
   1038c:	78078793          	add	a5,a5,1920 # 11780 <__init_array_start>
   10390:	78040713          	add	a4,s0,1920 # 11780 <__init_array_start>
   10394:	00113c23          	sd	ra,24(sp)
   10398:	00913423          	sd	s1,8(sp)
   1039c:	40e78933          	sub	s2,a5,a4
   103a0:	02e78263          	beq	a5,a4,103c4 <__libc_init_array+0x4c>
   103a4:	40395913          	sra	s2,s2,0x3
   103a8:	78040413          	add	s0,s0,1920
   103ac:	00000493          	li	s1,0
   103b0:	00043783          	ld	a5,0(s0)
   103b4:	00148493          	add	s1,s1,1
   103b8:	00840413          	add	s0,s0,8
   103bc:	000780e7          	jalr	a5
   103c0:	ff24e8e3          	bltu	s1,s2,103b0 <__libc_init_array+0x38>
   103c4:	00011437          	lui	s0,0x11
   103c8:	000117b7          	lui	a5,0x11
   103cc:	79078793          	add	a5,a5,1936 # 11790 <__do_global_dtors_aux_fini_array_entry>
   103d0:	78040713          	add	a4,s0,1920 # 11780 <__init_array_start>
   103d4:	40e78933          	sub	s2,a5,a4
   103d8:	40395913          	sra	s2,s2,0x3
   103dc:	02e78063          	beq	a5,a4,103fc <__libc_init_array+0x84>
   103e0:	78040413          	add	s0,s0,1920
   103e4:	00000493          	li	s1,0
   103e8:	00043783          	ld	a5,0(s0)
   103ec:	00148493          	add	s1,s1,1
   103f0:	00840413          	add	s0,s0,8
   103f4:	000780e7          	jalr	a5
   103f8:	ff24e8e3          	bltu	s1,s2,103e8 <__libc_init_array+0x70>
   103fc:	01813083          	ld	ra,24(sp)
   10400:	01013403          	ld	s0,16(sp)
   10404:	00813483          	ld	s1,8(sp)
   10408:	00013903          	ld	s2,0(sp)
   1040c:	02010113          	add	sp,sp,32
   10410:	00008067          	ret

0000000000010414 <memset>:
   10414:	00f00313          	li	t1,15
   10418:	00050713          	mv	a4,a0
   1041c:	02c37a63          	bgeu	t1,a2,10450 <memset+0x3c>
   10420:	00f77793          	and	a5,a4,15
   10424:	0a079063          	bnez	a5,104c4 <memset+0xb0>
   10428:	06059e63          	bnez	a1,104a4 <memset+0x90>
   1042c:	ff067693          	and	a3,a2,-16
   10430:	00f67613          	and	a2,a2,15
   10434:	00e686b3          	add	a3,a3,a4
   10438:	00b73023          	sd	a1,0(a4)
   1043c:	00b73423          	sd	a1,8(a4)
   10440:	01070713          	add	a4,a4,16
   10444:	fed76ae3          	bltu	a4,a3,10438 <memset+0x24>
   10448:	00061463          	bnez	a2,10450 <memset+0x3c>
   1044c:	00008067          	ret
   10450:	40c306b3          	sub	a3,t1,a2
   10454:	00269693          	sll	a3,a3,0x2
   10458:	00000297          	auipc	t0,0x0
   1045c:	005686b3          	add	a3,a3,t0
   10460:	00c68067          	jr	12(a3)
   10464:	00b70723          	sb	a1,14(a4)
   10468:	00b706a3          	sb	a1,13(a4)
   1046c:	00b70623          	sb	a1,12(a4)
   10470:	00b705a3          	sb	a1,11(a4)
   10474:	00b70523          	sb	a1,10(a4)
   10478:	00b704a3          	sb	a1,9(a4)
   1047c:	00b70423          	sb	a1,8(a4)
   10480:	00b703a3          	sb	a1,7(a4)
   10484:	00b70323          	sb	a1,6(a4)
   10488:	00b702a3          	sb	a1,5(a4)
   1048c:	00b70223          	sb	a1,4(a4)
   10490:	00b701a3          	sb	a1,3(a4)
   10494:	00b70123          	sb	a1,2(a4)
   10498:	00b700a3          	sb	a1,1(a4)
   1049c:	00b70023          	sb	a1,0(a4)
   104a0:	00008067          	ret
   104a4:	0ff5f593          	zext.b	a1,a1
   104a8:	00859693          	sll	a3,a1,0x8
   104ac:	00d5e5b3          	or	a1,a1,a3
   104b0:	01059693          	sll	a3,a1,0x10
   104b4:	00d5e5b3          	or	a1,a1,a3
   104b8:	02059693          	sll	a3,a1,0x20
   104bc:	00d5e5b3          	or	a1,a1,a3
   104c0:	f6dff06f          	j	1042c <memset+0x18>
   104c4:	00279693          	sll	a3,a5,0x2
   104c8:	00000297          	auipc	t0,0x0
   104cc:	005686b3          	add	a3,a3,t0
   104d0:	00008293          	mv	t0,ra
   104d4:	f98680e7          	jalr	-104(a3)
   104d8:	00028093          	mv	ra,t0
   104dc:	ff078793          	add	a5,a5,-16
   104e0:	40f70733          	sub	a4,a4,a5
   104e4:	00f60633          	add	a2,a2,a5
   104e8:	f6c374e3          	bgeu	t1,a2,10450 <memset+0x3c>
   104ec:	f3dff06f          	j	10428 <memset+0x14>

00000000000104f0 <__call_exitprocs>:
   104f0:	fb010113          	add	sp,sp,-80
   104f4:	03413023          	sd	s4,32(sp)
   104f8:	f481ba03          	ld	s4,-184(gp) # 11ee0 <_global_impure_ptr>
   104fc:	03213823          	sd	s2,48(sp)
   10500:	04113423          	sd	ra,72(sp)
   10504:	1f8a3903          	ld	s2,504(s4)
   10508:	04813023          	sd	s0,64(sp)
   1050c:	02913c23          	sd	s1,56(sp)
   10510:	03313423          	sd	s3,40(sp)
   10514:	01513c23          	sd	s5,24(sp)
   10518:	01613823          	sd	s6,16(sp)
   1051c:	01713423          	sd	s7,8(sp)
   10520:	01813023          	sd	s8,0(sp)
   10524:	04090063          	beqz	s2,10564 <__call_exitprocs+0x74>
   10528:	00050b13          	mv	s6,a0
   1052c:	00058b93          	mv	s7,a1
   10530:	00100a93          	li	s5,1
   10534:	fff00993          	li	s3,-1
   10538:	00892483          	lw	s1,8(s2)
   1053c:	fff4841b          	addw	s0,s1,-1
   10540:	02044263          	bltz	s0,10564 <__call_exitprocs+0x74>
   10544:	00349493          	sll	s1,s1,0x3
   10548:	009904b3          	add	s1,s2,s1
   1054c:	040b8463          	beqz	s7,10594 <__call_exitprocs+0xa4>
   10550:	2084b783          	ld	a5,520(s1)
   10554:	05778063          	beq	a5,s7,10594 <__call_exitprocs+0xa4>
   10558:	fff4041b          	addw	s0,s0,-1
   1055c:	ff848493          	add	s1,s1,-8
   10560:	ff3416e3          	bne	s0,s3,1054c <__call_exitprocs+0x5c>
   10564:	04813083          	ld	ra,72(sp)
   10568:	04013403          	ld	s0,64(sp)
   1056c:	03813483          	ld	s1,56(sp)
   10570:	03013903          	ld	s2,48(sp)
   10574:	02813983          	ld	s3,40(sp)
   10578:	02013a03          	ld	s4,32(sp)
   1057c:	01813a83          	ld	s5,24(sp)
   10580:	01013b03          	ld	s6,16(sp)
   10584:	00813b83          	ld	s7,8(sp)
   10588:	00013c03          	ld	s8,0(sp)
   1058c:	05010113          	add	sp,sp,80
   10590:	00008067          	ret
   10594:	00892783          	lw	a5,8(s2)
   10598:	0084b703          	ld	a4,8(s1)
   1059c:	fff7879b          	addw	a5,a5,-1
   105a0:	06878263          	beq	a5,s0,10604 <__call_exitprocs+0x114>
   105a4:	0004b423          	sd	zero,8(s1)
   105a8:	fa0708e3          	beqz	a4,10558 <__call_exitprocs+0x68>
   105ac:	31092783          	lw	a5,784(s2)
   105b0:	008a96bb          	sllw	a3,s5,s0
   105b4:	00892c03          	lw	s8,8(s2)
   105b8:	00d7f7b3          	and	a5,a5,a3
   105bc:	0007879b          	sext.w	a5,a5
   105c0:	02079263          	bnez	a5,105e4 <__call_exitprocs+0xf4>
   105c4:	000700e7          	jalr	a4
   105c8:	00892703          	lw	a4,8(s2)
   105cc:	1f8a3783          	ld	a5,504(s4)
   105d0:	01871463          	bne	a4,s8,105d8 <__call_exitprocs+0xe8>
   105d4:	f92782e3          	beq	a5,s2,10558 <__call_exitprocs+0x68>
   105d8:	f80786e3          	beqz	a5,10564 <__call_exitprocs+0x74>
   105dc:	00078913          	mv	s2,a5
   105e0:	f59ff06f          	j	10538 <__call_exitprocs+0x48>
   105e4:	31492783          	lw	a5,788(s2)
   105e8:	1084b583          	ld	a1,264(s1)
   105ec:	00d7f7b3          	and	a5,a5,a3
   105f0:	0007879b          	sext.w	a5,a5
   105f4:	00079c63          	bnez	a5,1060c <__call_exitprocs+0x11c>
   105f8:	000b0513          	mv	a0,s6
   105fc:	000700e7          	jalr	a4
   10600:	fc9ff06f          	j	105c8 <__call_exitprocs+0xd8>
   10604:	00892423          	sw	s0,8(s2)
   10608:	fa1ff06f          	j	105a8 <__call_exitprocs+0xb8>
   1060c:	00058513          	mv	a0,a1
   10610:	000700e7          	jalr	a4
   10614:	fb5ff06f          	j	105c8 <__call_exitprocs+0xd8>

0000000000010618 <__libc_fini_array>:
   10618:	fe010113          	add	sp,sp,-32
   1061c:	00813823          	sd	s0,16(sp)
   10620:	000117b7          	lui	a5,0x11
   10624:	00011437          	lui	s0,0x11
   10628:	79078793          	add	a5,a5,1936 # 11790 <__do_global_dtors_aux_fini_array_entry>
   1062c:	79840413          	add	s0,s0,1944 # 11798 <impure_data>
   10630:	40f40433          	sub	s0,s0,a5
   10634:	00913423          	sd	s1,8(sp)
   10638:	00113c23          	sd	ra,24(sp)
   1063c:	40345493          	sra	s1,s0,0x3
   10640:	02048063          	beqz	s1,10660 <__libc_fini_array+0x48>
   10644:	ff840413          	add	s0,s0,-8
   10648:	00f40433          	add	s0,s0,a5
   1064c:	00043783          	ld	a5,0(s0)
   10650:	fff48493          	add	s1,s1,-1
   10654:	ff840413          	add	s0,s0,-8
   10658:	000780e7          	jalr	a5
   1065c:	fe0498e3          	bnez	s1,1064c <__libc_fini_array+0x34>
   10660:	01813083          	ld	ra,24(sp)
   10664:	01013403          	ld	s0,16(sp)
   10668:	00813483          	ld	s1,8(sp)
   1066c:	02010113          	add	sp,sp,32
   10670:	00008067          	ret

0000000000010674 <atexit>:
   10674:	00050593          	mv	a1,a0
   10678:	00000693          	li	a3,0
   1067c:	00000613          	li	a2,0
   10680:	00000513          	li	a0,0
   10684:	0040006f          	j	10688 <__register_exitproc>

0000000000010688 <__register_exitproc>:
   10688:	f481b703          	ld	a4,-184(gp) # 11ee0 <_global_impure_ptr>
   1068c:	1f873783          	ld	a5,504(a4)
   10690:	06078063          	beqz	a5,106f0 <__register_exitproc+0x68>
   10694:	0087a703          	lw	a4,8(a5)
   10698:	01f00813          	li	a6,31
   1069c:	08e84663          	blt	a6,a4,10728 <__register_exitproc+0xa0>
   106a0:	02050863          	beqz	a0,106d0 <__register_exitproc+0x48>
   106a4:	00371813          	sll	a6,a4,0x3
   106a8:	01078833          	add	a6,a5,a6
   106ac:	10c83823          	sd	a2,272(a6)
   106b0:	3107a883          	lw	a7,784(a5)
   106b4:	00100613          	li	a2,1
   106b8:	00e6163b          	sllw	a2,a2,a4
   106bc:	00c8e8b3          	or	a7,a7,a2
   106c0:	3117a823          	sw	a7,784(a5)
   106c4:	20d83823          	sd	a3,528(a6)
   106c8:	00200693          	li	a3,2
   106cc:	02d50863          	beq	a0,a3,106fc <__register_exitproc+0x74>
   106d0:	00270693          	add	a3,a4,2
   106d4:	00369693          	sll	a3,a3,0x3
   106d8:	0017071b          	addw	a4,a4,1
   106dc:	00e7a423          	sw	a4,8(a5)
   106e0:	00d787b3          	add	a5,a5,a3
   106e4:	00b7b023          	sd	a1,0(a5)
   106e8:	00000513          	li	a0,0
   106ec:	00008067          	ret
   106f0:	20070793          	add	a5,a4,512
   106f4:	1ef73c23          	sd	a5,504(a4)
   106f8:	f9dff06f          	j	10694 <__register_exitproc+0xc>
   106fc:	3147a683          	lw	a3,788(a5)
   10700:	00000513          	li	a0,0
   10704:	00c6e6b3          	or	a3,a3,a2
   10708:	30d7aa23          	sw	a3,788(a5)
   1070c:	00270693          	add	a3,a4,2
   10710:	00369693          	sll	a3,a3,0x3
   10714:	0017071b          	addw	a4,a4,1
   10718:	00e7a423          	sw	a4,8(a5)
   1071c:	00d787b3          	add	a5,a5,a3
   10720:	00b7b023          	sd	a1,0(a5)
   10724:	00008067          	ret
   10728:	fff00513          	li	a0,-1
   1072c:	00008067          	ret

0000000000010730 <_exit>:
   10730:	05d00893          	li	a7,93
   10734:	00000073          	ecall
   10738:	00054463          	bltz	a0,10740 <_exit+0x10>
   1073c:	0000006f          	j	1073c <_exit+0xc>
   10740:	ff010113          	add	sp,sp,-16
   10744:	00813023          	sd	s0,0(sp)
   10748:	00050413          	mv	s0,a0
   1074c:	00113423          	sd	ra,8(sp)
   10750:	4080043b          	negw	s0,s0
   10754:	00c000ef          	jal	10760 <__errno>
   10758:	00852023          	sw	s0,0(a0)
   1075c:	0000006f          	j	1075c <_exit+0x2c>

0000000000010760 <__errno>:
   10760:	f581b503          	ld	a0,-168(gp) # 11ef0 <_impure_ptr>
   10764:	00008067          	ret
