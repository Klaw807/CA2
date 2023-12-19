
/home/yangyx/desktop/CA2/code_test/lab3/rv64imf/test_handler/test_handler.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	438000ef          	jal	10534 <__call_exitprocs>
   10100:	f701b503          	ld	a0,-144(gp) # 11f50 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	660000ef          	jal	10774 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	65c50513          	add	a0,a0,1628 # 1065c <__libc_fini_array>
   10128:	5900006f          	j	106b8 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	eb018193          	add	gp,gp,-336 # 11fe0 <__global_pointer$>
   10138:	f8818513          	add	a0,gp,-120 # 11f68 <completed.1>
   1013c:	fc018613          	add	a2,gp,-64 # 11fa0 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	310000ef          	jal	10458 <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	56c50513          	add	a0,a0,1388 # 106b8 <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	50450513          	add	a0,a0,1284 # 1065c <__libc_fini_array>
   10160:	558000ef          	jal	106b8 <atexit>
   10164:	258000ef          	jal	103bc <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	06c000ef          	jal	101e0 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f881c783          	lbu	a5,-120(gp) # 11f68 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00011537          	lui	a0,0x11
   1019c:	7c450513          	add	a0,a0,1988 # 117c4 <__EH_FRAME_BEGIN__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f8f18423          	sb	a5,-120(gp) # 11f68 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00011537          	lui	a0,0x11
   101cc:	f9018593          	add	a1,gp,-112 # 11f70 <object.0>
   101d0:	7c450513          	add	a0,a0,1988 # 117c4 <__EH_FRAME_BEGIN__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <main>:
   101e0:	fe010113          	add	sp,sp,-32
   101e4:	00113c23          	sd	ra,24(sp)
   101e8:	00813823          	sd	s0,16(sp)
   101ec:	02010413          	add	s0,sp,32
   101f0:	00000293          	li	t0,0
   101f4:	800002b7          	lui	t0,0x80000
   101f8:	30028293          	add	t0,t0,768 # ffffffff80000300 <__global_pointer$+0xffffffff7ffee320>
   101fc:	00000313          	li	t1,0
   10200:	0062a023          	sw	t1,0(t0)
   10204:	00100313          	li	t1,1
   10208:	0062a223          	sw	t1,4(t0)
   1020c:	00200313          	li	t1,2
   10210:	0062a423          	sw	t1,8(t0)
   10214:	00300313          	li	t1,3
   10218:	0062a623          	sw	t1,12(t0)
   1021c:	00400313          	li	t1,4
   10220:	0062a823          	sw	t1,16(t0)
   10224:	00500313          	li	t1,5
   10228:	0062aa23          	sw	t1,20(t0)
   1022c:	00600313          	li	t1,6
   10230:	0062ac23          	sw	t1,24(t0)
   10234:	00700313          	li	t1,7
   10238:	0062ae23          	sw	t1,28(t0)
   1023c:	00700893          	li	a7,7
   10240:	00028593          	mv	a1,t0
   10244:	00800613          	li	a2,8
   10248:	00000073          	ecall
   1024c:	00050793          	mv	a5,a0
   10250:	fef42623          	sw	a5,-20(s0)
   10254:	000107b7          	lui	a5,0x10
   10258:	7b078513          	add	a0,a5,1968 # 107b0 <__errno+0xc>
   1025c:	060000ef          	jal	102bc <print_s>
   10260:	fec42783          	lw	a5,-20(s0)
   10264:	00078513          	mv	a0,a5
   10268:	028000ef          	jal	10290 <print_d>
   1026c:	000107b7          	lui	a5,0x10
   10270:	7c078513          	add	a0,a5,1984 # 107c0 <__errno+0x1c>
   10274:	048000ef          	jal	102bc <print_s>
   10278:	00000793          	li	a5,0
   1027c:	00078513          	mv	a0,a5
   10280:	01813083          	ld	ra,24(sp)
   10284:	01013403          	ld	s0,16(sp)
   10288:	02010113          	add	sp,sp,32
   1028c:	00008067          	ret

0000000000010290 <print_d>:
   10290:	fe010113          	add	sp,sp,-32
   10294:	00813c23          	sd	s0,24(sp)
   10298:	02010413          	add	s0,sp,32
   1029c:	00050793          	mv	a5,a0
   102a0:	fef42623          	sw	a5,-20(s0)
   102a4:	00200893          	li	a7,2
   102a8:	00000073          	ecall
   102ac:	00000013          	nop
   102b0:	01813403          	ld	s0,24(sp)
   102b4:	02010113          	add	sp,sp,32
   102b8:	00008067          	ret

00000000000102bc <print_s>:
   102bc:	fe010113          	add	sp,sp,-32
   102c0:	00813c23          	sd	s0,24(sp)
   102c4:	02010413          	add	s0,sp,32
   102c8:	fea43423          	sd	a0,-24(s0)
   102cc:	00000893          	li	a7,0
   102d0:	00000073          	ecall
   102d4:	00000013          	nop
   102d8:	01813403          	ld	s0,24(sp)
   102dc:	02010113          	add	sp,sp,32
   102e0:	00008067          	ret

00000000000102e4 <print_c>:
   102e4:	fe010113          	add	sp,sp,-32
   102e8:	00813c23          	sd	s0,24(sp)
   102ec:	02010413          	add	s0,sp,32
   102f0:	00050793          	mv	a5,a0
   102f4:	fef407a3          	sb	a5,-17(s0)
   102f8:	00100893          	li	a7,1
   102fc:	00000073          	ecall
   10300:	00000013          	nop
   10304:	01813403          	ld	s0,24(sp)
   10308:	02010113          	add	sp,sp,32
   1030c:	00008067          	ret

0000000000010310 <exit_proc>:
   10310:	ff010113          	add	sp,sp,-16
   10314:	00813423          	sd	s0,8(sp)
   10318:	01010413          	add	s0,sp,16
   1031c:	00300893          	li	a7,3
   10320:	00000073          	ecall
   10324:	00000013          	nop
   10328:	00813403          	ld	s0,8(sp)
   1032c:	01010113          	add	sp,sp,16
   10330:	00008067          	ret

0000000000010334 <read_char>:
   10334:	fe010113          	add	sp,sp,-32
   10338:	00813c23          	sd	s0,24(sp)
   1033c:	02010413          	add	s0,sp,32
   10340:	00400893          	li	a7,4
   10344:	00000073          	ecall
   10348:	00050793          	mv	a5,a0
   1034c:	fef407a3          	sb	a5,-17(s0)
   10350:	fef44783          	lbu	a5,-17(s0)
   10354:	00078513          	mv	a0,a5
   10358:	01813403          	ld	s0,24(sp)
   1035c:	02010113          	add	sp,sp,32
   10360:	00008067          	ret

0000000000010364 <read_num>:
   10364:	fe010113          	add	sp,sp,-32
   10368:	00813c23          	sd	s0,24(sp)
   1036c:	02010413          	add	s0,sp,32
   10370:	00500893          	li	a7,5
   10374:	00000073          	ecall
   10378:	00050793          	mv	a5,a0
   1037c:	fef43423          	sd	a5,-24(s0)
   10380:	fe843783          	ld	a5,-24(s0)
   10384:	00078513          	mv	a0,a5
   10388:	01813403          	ld	s0,24(sp)
   1038c:	02010113          	add	sp,sp,32
   10390:	00008067          	ret

0000000000010394 <print_f>:
   10394:	fe010113          	add	sp,sp,-32
   10398:	00813c23          	sd	s0,24(sp)
   1039c:	02010413          	add	s0,sp,32
   103a0:	fea42627          	fsw	fa0,-20(s0)
   103a4:	00600893          	li	a7,6
   103a8:	00000073          	ecall
   103ac:	00000013          	nop
   103b0:	01813403          	ld	s0,24(sp)
   103b4:	02010113          	add	sp,sp,32
   103b8:	00008067          	ret

00000000000103bc <__libc_init_array>:
   103bc:	fe010113          	add	sp,sp,-32
   103c0:	00813823          	sd	s0,16(sp)
   103c4:	000117b7          	lui	a5,0x11
   103c8:	00011437          	lui	s0,0x11
   103cc:	01213023          	sd	s2,0(sp)
   103d0:	7c878793          	add	a5,a5,1992 # 117c8 <__init_array_start>
   103d4:	7c840713          	add	a4,s0,1992 # 117c8 <__init_array_start>
   103d8:	00113c23          	sd	ra,24(sp)
   103dc:	00913423          	sd	s1,8(sp)
   103e0:	40e78933          	sub	s2,a5,a4
   103e4:	02e78263          	beq	a5,a4,10408 <__libc_init_array+0x4c>
   103e8:	40395913          	sra	s2,s2,0x3
   103ec:	7c840413          	add	s0,s0,1992
   103f0:	00000493          	li	s1,0
   103f4:	00043783          	ld	a5,0(s0)
   103f8:	00148493          	add	s1,s1,1
   103fc:	00840413          	add	s0,s0,8
   10400:	000780e7          	jalr	a5
   10404:	ff24e8e3          	bltu	s1,s2,103f4 <__libc_init_array+0x38>
   10408:	00011437          	lui	s0,0x11
   1040c:	000117b7          	lui	a5,0x11
   10410:	7d878793          	add	a5,a5,2008 # 117d8 <__do_global_dtors_aux_fini_array_entry>
   10414:	7c840713          	add	a4,s0,1992 # 117c8 <__init_array_start>
   10418:	40e78933          	sub	s2,a5,a4
   1041c:	40395913          	sra	s2,s2,0x3
   10420:	02e78063          	beq	a5,a4,10440 <__libc_init_array+0x84>
   10424:	7c840413          	add	s0,s0,1992
   10428:	00000493          	li	s1,0
   1042c:	00043783          	ld	a5,0(s0)
   10430:	00148493          	add	s1,s1,1
   10434:	00840413          	add	s0,s0,8
   10438:	000780e7          	jalr	a5
   1043c:	ff24e8e3          	bltu	s1,s2,1042c <__libc_init_array+0x70>
   10440:	01813083          	ld	ra,24(sp)
   10444:	01013403          	ld	s0,16(sp)
   10448:	00813483          	ld	s1,8(sp)
   1044c:	00013903          	ld	s2,0(sp)
   10450:	02010113          	add	sp,sp,32
   10454:	00008067          	ret

0000000000010458 <memset>:
   10458:	00f00313          	li	t1,15
   1045c:	00050713          	mv	a4,a0
   10460:	02c37a63          	bgeu	t1,a2,10494 <memset+0x3c>
   10464:	00f77793          	and	a5,a4,15
   10468:	0a079063          	bnez	a5,10508 <memset+0xb0>
   1046c:	06059e63          	bnez	a1,104e8 <memset+0x90>
   10470:	ff067693          	and	a3,a2,-16
   10474:	00f67613          	and	a2,a2,15
   10478:	00e686b3          	add	a3,a3,a4
   1047c:	00b73023          	sd	a1,0(a4)
   10480:	00b73423          	sd	a1,8(a4)
   10484:	01070713          	add	a4,a4,16
   10488:	fed76ae3          	bltu	a4,a3,1047c <memset+0x24>
   1048c:	00061463          	bnez	a2,10494 <memset+0x3c>
   10490:	00008067          	ret
   10494:	40c306b3          	sub	a3,t1,a2
   10498:	00269693          	sll	a3,a3,0x2
   1049c:	00000297          	auipc	t0,0x0
   104a0:	005686b3          	add	a3,a3,t0
   104a4:	00c68067          	jr	12(a3)
   104a8:	00b70723          	sb	a1,14(a4)
   104ac:	00b706a3          	sb	a1,13(a4)
   104b0:	00b70623          	sb	a1,12(a4)
   104b4:	00b705a3          	sb	a1,11(a4)
   104b8:	00b70523          	sb	a1,10(a4)
   104bc:	00b704a3          	sb	a1,9(a4)
   104c0:	00b70423          	sb	a1,8(a4)
   104c4:	00b703a3          	sb	a1,7(a4)
   104c8:	00b70323          	sb	a1,6(a4)
   104cc:	00b702a3          	sb	a1,5(a4)
   104d0:	00b70223          	sb	a1,4(a4)
   104d4:	00b701a3          	sb	a1,3(a4)
   104d8:	00b70123          	sb	a1,2(a4)
   104dc:	00b700a3          	sb	a1,1(a4)
   104e0:	00b70023          	sb	a1,0(a4)
   104e4:	00008067          	ret
   104e8:	0ff5f593          	zext.b	a1,a1
   104ec:	00859693          	sll	a3,a1,0x8
   104f0:	00d5e5b3          	or	a1,a1,a3
   104f4:	01059693          	sll	a3,a1,0x10
   104f8:	00d5e5b3          	or	a1,a1,a3
   104fc:	02059693          	sll	a3,a1,0x20
   10500:	00d5e5b3          	or	a1,a1,a3
   10504:	f6dff06f          	j	10470 <memset+0x18>
   10508:	00279693          	sll	a3,a5,0x2
   1050c:	00000297          	auipc	t0,0x0
   10510:	005686b3          	add	a3,a3,t0
   10514:	00008293          	mv	t0,ra
   10518:	f98680e7          	jalr	-104(a3)
   1051c:	00028093          	mv	ra,t0
   10520:	ff078793          	add	a5,a5,-16
   10524:	40f70733          	sub	a4,a4,a5
   10528:	00f60633          	add	a2,a2,a5
   1052c:	f6c374e3          	bgeu	t1,a2,10494 <memset+0x3c>
   10530:	f3dff06f          	j	1046c <memset+0x14>

0000000000010534 <__call_exitprocs>:
   10534:	fb010113          	add	sp,sp,-80
   10538:	03413023          	sd	s4,32(sp)
   1053c:	f701ba03          	ld	s4,-144(gp) # 11f50 <_global_impure_ptr>
   10540:	03213823          	sd	s2,48(sp)
   10544:	04113423          	sd	ra,72(sp)
   10548:	1f8a3903          	ld	s2,504(s4)
   1054c:	04813023          	sd	s0,64(sp)
   10550:	02913c23          	sd	s1,56(sp)
   10554:	03313423          	sd	s3,40(sp)
   10558:	01513c23          	sd	s5,24(sp)
   1055c:	01613823          	sd	s6,16(sp)
   10560:	01713423          	sd	s7,8(sp)
   10564:	01813023          	sd	s8,0(sp)
   10568:	04090063          	beqz	s2,105a8 <__call_exitprocs+0x74>
   1056c:	00050b13          	mv	s6,a0
   10570:	00058b93          	mv	s7,a1
   10574:	00100a93          	li	s5,1
   10578:	fff00993          	li	s3,-1
   1057c:	00892483          	lw	s1,8(s2)
   10580:	fff4841b          	addw	s0,s1,-1
   10584:	02044263          	bltz	s0,105a8 <__call_exitprocs+0x74>
   10588:	00349493          	sll	s1,s1,0x3
   1058c:	009904b3          	add	s1,s2,s1
   10590:	040b8463          	beqz	s7,105d8 <__call_exitprocs+0xa4>
   10594:	2084b783          	ld	a5,520(s1)
   10598:	05778063          	beq	a5,s7,105d8 <__call_exitprocs+0xa4>
   1059c:	fff4041b          	addw	s0,s0,-1
   105a0:	ff848493          	add	s1,s1,-8
   105a4:	ff3416e3          	bne	s0,s3,10590 <__call_exitprocs+0x5c>
   105a8:	04813083          	ld	ra,72(sp)
   105ac:	04013403          	ld	s0,64(sp)
   105b0:	03813483          	ld	s1,56(sp)
   105b4:	03013903          	ld	s2,48(sp)
   105b8:	02813983          	ld	s3,40(sp)
   105bc:	02013a03          	ld	s4,32(sp)
   105c0:	01813a83          	ld	s5,24(sp)
   105c4:	01013b03          	ld	s6,16(sp)
   105c8:	00813b83          	ld	s7,8(sp)
   105cc:	00013c03          	ld	s8,0(sp)
   105d0:	05010113          	add	sp,sp,80
   105d4:	00008067          	ret
   105d8:	00892783          	lw	a5,8(s2)
   105dc:	0084b703          	ld	a4,8(s1)
   105e0:	fff7879b          	addw	a5,a5,-1
   105e4:	06878263          	beq	a5,s0,10648 <__call_exitprocs+0x114>
   105e8:	0004b423          	sd	zero,8(s1)
   105ec:	fa0708e3          	beqz	a4,1059c <__call_exitprocs+0x68>
   105f0:	31092783          	lw	a5,784(s2)
   105f4:	008a96bb          	sllw	a3,s5,s0
   105f8:	00892c03          	lw	s8,8(s2)
   105fc:	00d7f7b3          	and	a5,a5,a3
   10600:	0007879b          	sext.w	a5,a5
   10604:	02079263          	bnez	a5,10628 <__call_exitprocs+0xf4>
   10608:	000700e7          	jalr	a4
   1060c:	00892703          	lw	a4,8(s2)
   10610:	1f8a3783          	ld	a5,504(s4)
   10614:	01871463          	bne	a4,s8,1061c <__call_exitprocs+0xe8>
   10618:	f92782e3          	beq	a5,s2,1059c <__call_exitprocs+0x68>
   1061c:	f80786e3          	beqz	a5,105a8 <__call_exitprocs+0x74>
   10620:	00078913          	mv	s2,a5
   10624:	f59ff06f          	j	1057c <__call_exitprocs+0x48>
   10628:	31492783          	lw	a5,788(s2)
   1062c:	1084b583          	ld	a1,264(s1)
   10630:	00d7f7b3          	and	a5,a5,a3
   10634:	0007879b          	sext.w	a5,a5
   10638:	00079c63          	bnez	a5,10650 <__call_exitprocs+0x11c>
   1063c:	000b0513          	mv	a0,s6
   10640:	000700e7          	jalr	a4
   10644:	fc9ff06f          	j	1060c <__call_exitprocs+0xd8>
   10648:	00892423          	sw	s0,8(s2)
   1064c:	fa1ff06f          	j	105ec <__call_exitprocs+0xb8>
   10650:	00058513          	mv	a0,a1
   10654:	000700e7          	jalr	a4
   10658:	fb5ff06f          	j	1060c <__call_exitprocs+0xd8>

000000000001065c <__libc_fini_array>:
   1065c:	fe010113          	add	sp,sp,-32
   10660:	00813823          	sd	s0,16(sp)
   10664:	000117b7          	lui	a5,0x11
   10668:	00011437          	lui	s0,0x11
   1066c:	7d878793          	add	a5,a5,2008 # 117d8 <__do_global_dtors_aux_fini_array_entry>
   10670:	7e040413          	add	s0,s0,2016 # 117e0 <result>
   10674:	40f40433          	sub	s0,s0,a5
   10678:	00913423          	sd	s1,8(sp)
   1067c:	00113c23          	sd	ra,24(sp)
   10680:	40345493          	sra	s1,s0,0x3
   10684:	02048063          	beqz	s1,106a4 <__libc_fini_array+0x48>
   10688:	ff840413          	add	s0,s0,-8
   1068c:	00f40433          	add	s0,s0,a5
   10690:	00043783          	ld	a5,0(s0)
   10694:	fff48493          	add	s1,s1,-1
   10698:	ff840413          	add	s0,s0,-8
   1069c:	000780e7          	jalr	a5
   106a0:	fe0498e3          	bnez	s1,10690 <__libc_fini_array+0x34>
   106a4:	01813083          	ld	ra,24(sp)
   106a8:	01013403          	ld	s0,16(sp)
   106ac:	00813483          	ld	s1,8(sp)
   106b0:	02010113          	add	sp,sp,32
   106b4:	00008067          	ret

00000000000106b8 <atexit>:
   106b8:	00050593          	mv	a1,a0
   106bc:	00000693          	li	a3,0
   106c0:	00000613          	li	a2,0
   106c4:	00000513          	li	a0,0
   106c8:	0040006f          	j	106cc <__register_exitproc>

00000000000106cc <__register_exitproc>:
   106cc:	f701b703          	ld	a4,-144(gp) # 11f50 <_global_impure_ptr>
   106d0:	1f873783          	ld	a5,504(a4)
   106d4:	06078063          	beqz	a5,10734 <__register_exitproc+0x68>
   106d8:	0087a703          	lw	a4,8(a5)
   106dc:	01f00813          	li	a6,31
   106e0:	08e84663          	blt	a6,a4,1076c <__register_exitproc+0xa0>
   106e4:	02050863          	beqz	a0,10714 <__register_exitproc+0x48>
   106e8:	00371813          	sll	a6,a4,0x3
   106ec:	01078833          	add	a6,a5,a6
   106f0:	10c83823          	sd	a2,272(a6)
   106f4:	3107a883          	lw	a7,784(a5)
   106f8:	00100613          	li	a2,1
   106fc:	00e6163b          	sllw	a2,a2,a4
   10700:	00c8e8b3          	or	a7,a7,a2
   10704:	3117a823          	sw	a7,784(a5)
   10708:	20d83823          	sd	a3,528(a6)
   1070c:	00200693          	li	a3,2
   10710:	02d50863          	beq	a0,a3,10740 <__register_exitproc+0x74>
   10714:	00270693          	add	a3,a4,2
   10718:	00369693          	sll	a3,a3,0x3
   1071c:	0017071b          	addw	a4,a4,1
   10720:	00e7a423          	sw	a4,8(a5)
   10724:	00d787b3          	add	a5,a5,a3
   10728:	00b7b023          	sd	a1,0(a5)
   1072c:	00000513          	li	a0,0
   10730:	00008067          	ret
   10734:	20070793          	add	a5,a4,512
   10738:	1ef73c23          	sd	a5,504(a4)
   1073c:	f9dff06f          	j	106d8 <__register_exitproc+0xc>
   10740:	3147a683          	lw	a3,788(a5)
   10744:	00000513          	li	a0,0
   10748:	00c6e6b3          	or	a3,a3,a2
   1074c:	30d7aa23          	sw	a3,788(a5)
   10750:	00270693          	add	a3,a4,2
   10754:	00369693          	sll	a3,a3,0x3
   10758:	0017071b          	addw	a4,a4,1
   1075c:	00e7a423          	sw	a4,8(a5)
   10760:	00d787b3          	add	a5,a5,a3
   10764:	00b7b023          	sd	a1,0(a5)
   10768:	00008067          	ret
   1076c:	fff00513          	li	a0,-1
   10770:	00008067          	ret

0000000000010774 <_exit>:
   10774:	05d00893          	li	a7,93
   10778:	00000073          	ecall
   1077c:	00054463          	bltz	a0,10784 <_exit+0x10>
   10780:	0000006f          	j	10780 <_exit+0xc>
   10784:	ff010113          	add	sp,sp,-16
   10788:	00813023          	sd	s0,0(sp)
   1078c:	00050413          	mv	s0,a0
   10790:	00113423          	sd	ra,8(sp)
   10794:	4080043b          	negw	s0,s0
   10798:	00c000ef          	jal	107a4 <__errno>
   1079c:	00852023          	sw	s0,0(a0)
   107a0:	0000006f          	j	107a0 <_exit+0x2c>

00000000000107a4 <__errno>:
   107a4:	f801b503          	ld	a0,-128(gp) # 11f60 <_impure_ptr>
   107a8:	00008067          	ret
