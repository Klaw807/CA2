
/home/yangyx/desktop/CA2/code_test/lab0/rv64imf/test_btype_original_bug/test_btype_original_bug.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	490000ef          	jal	1058c <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11f80 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	6b8000ef          	jal	107cc <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	6b450513          	add	a0,a0,1716 # 106b4 <__libc_fini_array>
   10128:	5e80006f          	j	10710 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	f0818193          	add	gp,gp,-248 # 12038 <__global_pointer$>
   10138:	f6018513          	add	a0,gp,-160 # 11f98 <completed.1>
   1013c:	f9818613          	add	a2,gp,-104 # 11fd0 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	368000ef          	jal	104b0 <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	5c450513          	add	a0,a0,1476 # 10710 <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	55c50513          	add	a0,a0,1372 # 106b4 <__libc_fini_array>
   10160:	5b0000ef          	jal	10710 <atexit>
   10164:	2b0000ef          	jal	10414 <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	134000ef          	jal	102a8 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f601c783          	lbu	a5,-160(gp) # 11f98 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00012537          	lui	a0,0x12
   1019c:	81850513          	add	a0,a0,-2024 # 11818 <__EH_FRAME_BEGIN__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f6f18023          	sb	a5,-160(gp) # 11f98 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00012537          	lui	a0,0x12
   101cc:	f6818593          	add	a1,gp,-152 # 11fa0 <object.0>
   101d0:	81850513          	add	a0,a0,-2024 # 11818 <__EH_FRAME_BEGIN__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <old>:
   101e0:	fe010113          	add	sp,sp,-32
   101e4:	00113c23          	sd	ra,24(sp)
   101e8:	00813823          	sd	s0,16(sp)
   101ec:	02010413          	add	s0,sp,32
   101f0:	00100793          	li	a5,1
   101f4:	fef42623          	sw	a5,-20(s0)
   101f8:	00200793          	li	a5,2
   101fc:	fef42423          	sw	a5,-24(s0)
   10200:	00300793          	li	a5,3
   10204:	fef42223          	sw	a5,-28(s0)
   10208:	00400793          	li	a5,4
   1020c:	fef42023          	sw	a5,-32(s0)
   10210:	000117b7          	lui	a5,0x11
   10214:	80878513          	add	a0,a5,-2040 # 10808 <__errno+0xc>
   10218:	0f8000ef          	jal	10310 <print_s>
   1021c:	000117b7          	lui	a5,0x11
   10220:	81078513          	add	a0,a5,-2032 # 10810 <__errno+0x14>
   10224:	0ec000ef          	jal	10310 <print_s>
   10228:	fec42783          	lw	a5,-20(s0)
   1022c:	00078713          	mv	a4,a5
   10230:	fe842783          	lw	a5,-24(s0)
   10234:	0007071b          	sext.w	a4,a4
   10238:	0007879b          	sext.w	a5,a5
   1023c:	04f71a63          	bne	a4,a5,10290 <old+0xb0>
   10240:	fec42783          	lw	a5,-20(s0)
   10244:	00078713          	mv	a4,a5
   10248:	fe442783          	lw	a5,-28(s0)
   1024c:	0007071b          	sext.w	a4,a4
   10250:	0007879b          	sext.w	a5,a5
   10254:	02f70063          	beq	a4,a5,10274 <old+0x94>
   10258:	fec42783          	lw	a5,-20(s0)
   1025c:	00078713          	mv	a4,a5
   10260:	fe042783          	lw	a5,-32(s0)
   10264:	0007071b          	sext.w	a4,a4
   10268:	0007879b          	sext.w	a5,a5
   1026c:	faf718e3          	bne	a4,a5,1021c <old+0x3c>
   10270:	fa1ff06f          	j	10210 <old+0x30>
   10274:	fec42783          	lw	a5,-20(s0)
   10278:	00078713          	mv	a4,a5
   1027c:	fe042783          	lw	a5,-32(s0)
   10280:	0007071b          	sext.w	a4,a4
   10284:	0007879b          	sext.w	a5,a5
   10288:	f8f70ae3          	beq	a4,a5,1021c <old+0x3c>
   1028c:	f85ff06f          	j	10210 <old+0x30>
   10290:	0d4000ef          	jal	10364 <exit_proc>
   10294:	00000013          	nop
   10298:	01813083          	ld	ra,24(sp)
   1029c:	01013403          	ld	s0,16(sp)
   102a0:	02010113          	add	sp,sp,32
   102a4:	00008067          	ret

00000000000102a8 <main>:
   102a8:	ff010113          	add	sp,sp,-16
   102ac:	00113423          	sd	ra,8(sp)
   102b0:	00813023          	sd	s0,0(sp)
   102b4:	01010413          	add	s0,sp,16

00000000000102b8 <start>:
   102b8:	00300e13          	li	t3,3
   102bc:	00300e93          	li	t4,3
   102c0:	ffce0ce3          	beq	t3,t3,102b8 <start>
   102c4:	01de1263          	bne	t3,t4,102c8 <end>

00000000000102c8 <end>:
   102c8:	09c000ef          	jal	10364 <exit_proc>
   102cc:	00000793          	li	a5,0
   102d0:	00078513          	mv	a0,a5
   102d4:	00813083          	ld	ra,8(sp)
   102d8:	00013403          	ld	s0,0(sp)
   102dc:	01010113          	add	sp,sp,16
   102e0:	00008067          	ret

00000000000102e4 <print_d>:
   102e4:	fe010113          	add	sp,sp,-32
   102e8:	00813c23          	sd	s0,24(sp)
   102ec:	02010413          	add	s0,sp,32
   102f0:	00050793          	mv	a5,a0
   102f4:	fef42623          	sw	a5,-20(s0)
   102f8:	00200893          	li	a7,2
   102fc:	00000073          	ecall
   10300:	00000013          	nop
   10304:	01813403          	ld	s0,24(sp)
   10308:	02010113          	add	sp,sp,32
   1030c:	00008067          	ret

0000000000010310 <print_s>:
   10310:	fe010113          	add	sp,sp,-32
   10314:	00813c23          	sd	s0,24(sp)
   10318:	02010413          	add	s0,sp,32
   1031c:	fea43423          	sd	a0,-24(s0)
   10320:	00000893          	li	a7,0
   10324:	00000073          	ecall
   10328:	00000013          	nop
   1032c:	01813403          	ld	s0,24(sp)
   10330:	02010113          	add	sp,sp,32
   10334:	00008067          	ret

0000000000010338 <print_c>:
   10338:	fe010113          	add	sp,sp,-32
   1033c:	00813c23          	sd	s0,24(sp)
   10340:	02010413          	add	s0,sp,32
   10344:	00050793          	mv	a5,a0
   10348:	fef407a3          	sb	a5,-17(s0)
   1034c:	00100893          	li	a7,1
   10350:	00000073          	ecall
   10354:	00000013          	nop
   10358:	01813403          	ld	s0,24(sp)
   1035c:	02010113          	add	sp,sp,32
   10360:	00008067          	ret

0000000000010364 <exit_proc>:
   10364:	ff010113          	add	sp,sp,-16
   10368:	00813423          	sd	s0,8(sp)
   1036c:	01010413          	add	s0,sp,16
   10370:	00300893          	li	a7,3
   10374:	00000073          	ecall
   10378:	00000013          	nop
   1037c:	00813403          	ld	s0,8(sp)
   10380:	01010113          	add	sp,sp,16
   10384:	00008067          	ret

0000000000010388 <read_char>:
   10388:	fe010113          	add	sp,sp,-32
   1038c:	00813c23          	sd	s0,24(sp)
   10390:	02010413          	add	s0,sp,32
   10394:	00400893          	li	a7,4
   10398:	00000073          	ecall
   1039c:	00050793          	mv	a5,a0
   103a0:	fef407a3          	sb	a5,-17(s0)
   103a4:	fef44783          	lbu	a5,-17(s0)
   103a8:	00078513          	mv	a0,a5
   103ac:	01813403          	ld	s0,24(sp)
   103b0:	02010113          	add	sp,sp,32
   103b4:	00008067          	ret

00000000000103b8 <read_num>:
   103b8:	fe010113          	add	sp,sp,-32
   103bc:	00813c23          	sd	s0,24(sp)
   103c0:	02010413          	add	s0,sp,32
   103c4:	00500893          	li	a7,5
   103c8:	00000073          	ecall
   103cc:	00050793          	mv	a5,a0
   103d0:	fef43423          	sd	a5,-24(s0)
   103d4:	fe843783          	ld	a5,-24(s0)
   103d8:	00078513          	mv	a0,a5
   103dc:	01813403          	ld	s0,24(sp)
   103e0:	02010113          	add	sp,sp,32
   103e4:	00008067          	ret

00000000000103e8 <print_f>:
   103e8:	fe010113          	add	sp,sp,-32
   103ec:	00813c23          	sd	s0,24(sp)
   103f0:	02010413          	add	s0,sp,32
   103f4:	fea42627          	fsw	fa0,-20(s0)
   103f8:	e0050553          	fmv.x.w	a0,fa0
   103fc:	00600893          	li	a7,6
   10400:	00000073          	ecall
   10404:	00000013          	nop
   10408:	01813403          	ld	s0,24(sp)
   1040c:	02010113          	add	sp,sp,32
   10410:	00008067          	ret

0000000000010414 <__libc_init_array>:
   10414:	fe010113          	add	sp,sp,-32
   10418:	00813823          	sd	s0,16(sp)
   1041c:	000127b7          	lui	a5,0x12
   10420:	00012437          	lui	s0,0x12
   10424:	01213023          	sd	s2,0(sp)
   10428:	81c78793          	add	a5,a5,-2020 # 1181c <__preinit_array_end>
   1042c:	81c40713          	add	a4,s0,-2020 # 1181c <__preinit_array_end>
   10430:	00113c23          	sd	ra,24(sp)
   10434:	00913423          	sd	s1,8(sp)
   10438:	40e78933          	sub	s2,a5,a4
   1043c:	02e78263          	beq	a5,a4,10460 <__libc_init_array+0x4c>
   10440:	40395913          	sra	s2,s2,0x3
   10444:	81c40413          	add	s0,s0,-2020
   10448:	00000493          	li	s1,0
   1044c:	00043783          	ld	a5,0(s0)
   10450:	00148493          	add	s1,s1,1
   10454:	00840413          	add	s0,s0,8
   10458:	000780e7          	jalr	a5
   1045c:	ff24e8e3          	bltu	s1,s2,1044c <__libc_init_array+0x38>
   10460:	00012437          	lui	s0,0x12
   10464:	000127b7          	lui	a5,0x12
   10468:	83078793          	add	a5,a5,-2000 # 11830 <__do_global_dtors_aux_fini_array_entry>
   1046c:	82040713          	add	a4,s0,-2016 # 11820 <__init_array_start>
   10470:	40e78933          	sub	s2,a5,a4
   10474:	40395913          	sra	s2,s2,0x3
   10478:	02e78063          	beq	a5,a4,10498 <__libc_init_array+0x84>
   1047c:	82040413          	add	s0,s0,-2016
   10480:	00000493          	li	s1,0
   10484:	00043783          	ld	a5,0(s0)
   10488:	00148493          	add	s1,s1,1
   1048c:	00840413          	add	s0,s0,8
   10490:	000780e7          	jalr	a5
   10494:	ff24e8e3          	bltu	s1,s2,10484 <__libc_init_array+0x70>
   10498:	01813083          	ld	ra,24(sp)
   1049c:	01013403          	ld	s0,16(sp)
   104a0:	00813483          	ld	s1,8(sp)
   104a4:	00013903          	ld	s2,0(sp)
   104a8:	02010113          	add	sp,sp,32
   104ac:	00008067          	ret

00000000000104b0 <memset>:
   104b0:	00f00313          	li	t1,15
   104b4:	00050713          	mv	a4,a0
   104b8:	02c37a63          	bgeu	t1,a2,104ec <memset+0x3c>
   104bc:	00f77793          	and	a5,a4,15
   104c0:	0a079063          	bnez	a5,10560 <memset+0xb0>
   104c4:	06059e63          	bnez	a1,10540 <memset+0x90>
   104c8:	ff067693          	and	a3,a2,-16
   104cc:	00f67613          	and	a2,a2,15
   104d0:	00e686b3          	add	a3,a3,a4
   104d4:	00b73023          	sd	a1,0(a4)
   104d8:	00b73423          	sd	a1,8(a4)
   104dc:	01070713          	add	a4,a4,16
   104e0:	fed76ae3          	bltu	a4,a3,104d4 <memset+0x24>
   104e4:	00061463          	bnez	a2,104ec <memset+0x3c>
   104e8:	00008067          	ret
   104ec:	40c306b3          	sub	a3,t1,a2
   104f0:	00269693          	sll	a3,a3,0x2
   104f4:	00000297          	auipc	t0,0x0
   104f8:	005686b3          	add	a3,a3,t0
   104fc:	00c68067          	jr	12(a3)
   10500:	00b70723          	sb	a1,14(a4)
   10504:	00b706a3          	sb	a1,13(a4)
   10508:	00b70623          	sb	a1,12(a4)
   1050c:	00b705a3          	sb	a1,11(a4)
   10510:	00b70523          	sb	a1,10(a4)
   10514:	00b704a3          	sb	a1,9(a4)
   10518:	00b70423          	sb	a1,8(a4)
   1051c:	00b703a3          	sb	a1,7(a4)
   10520:	00b70323          	sb	a1,6(a4)
   10524:	00b702a3          	sb	a1,5(a4)
   10528:	00b70223          	sb	a1,4(a4)
   1052c:	00b701a3          	sb	a1,3(a4)
   10530:	00b70123          	sb	a1,2(a4)
   10534:	00b700a3          	sb	a1,1(a4)
   10538:	00b70023          	sb	a1,0(a4)
   1053c:	00008067          	ret
   10540:	0ff5f593          	zext.b	a1,a1
   10544:	00859693          	sll	a3,a1,0x8
   10548:	00d5e5b3          	or	a1,a1,a3
   1054c:	01059693          	sll	a3,a1,0x10
   10550:	00d5e5b3          	or	a1,a1,a3
   10554:	02059693          	sll	a3,a1,0x20
   10558:	00d5e5b3          	or	a1,a1,a3
   1055c:	f6dff06f          	j	104c8 <memset+0x18>
   10560:	00279693          	sll	a3,a5,0x2
   10564:	00000297          	auipc	t0,0x0
   10568:	005686b3          	add	a3,a3,t0
   1056c:	00008293          	mv	t0,ra
   10570:	f98680e7          	jalr	-104(a3)
   10574:	00028093          	mv	ra,t0
   10578:	ff078793          	add	a5,a5,-16
   1057c:	40f70733          	sub	a4,a4,a5
   10580:	00f60633          	add	a2,a2,a5
   10584:	f6c374e3          	bgeu	t1,a2,104ec <memset+0x3c>
   10588:	f3dff06f          	j	104c4 <memset+0x14>

000000000001058c <__call_exitprocs>:
   1058c:	fb010113          	add	sp,sp,-80
   10590:	03413023          	sd	s4,32(sp)
   10594:	f481ba03          	ld	s4,-184(gp) # 11f80 <_global_impure_ptr>
   10598:	03213823          	sd	s2,48(sp)
   1059c:	04113423          	sd	ra,72(sp)
   105a0:	1f8a3903          	ld	s2,504(s4)
   105a4:	04813023          	sd	s0,64(sp)
   105a8:	02913c23          	sd	s1,56(sp)
   105ac:	03313423          	sd	s3,40(sp)
   105b0:	01513c23          	sd	s5,24(sp)
   105b4:	01613823          	sd	s6,16(sp)
   105b8:	01713423          	sd	s7,8(sp)
   105bc:	01813023          	sd	s8,0(sp)
   105c0:	04090063          	beqz	s2,10600 <__call_exitprocs+0x74>
   105c4:	00050b13          	mv	s6,a0
   105c8:	00058b93          	mv	s7,a1
   105cc:	00100a93          	li	s5,1
   105d0:	fff00993          	li	s3,-1
   105d4:	00892483          	lw	s1,8(s2)
   105d8:	fff4841b          	addw	s0,s1,-1
   105dc:	02044263          	bltz	s0,10600 <__call_exitprocs+0x74>
   105e0:	00349493          	sll	s1,s1,0x3
   105e4:	009904b3          	add	s1,s2,s1
   105e8:	040b8463          	beqz	s7,10630 <__call_exitprocs+0xa4>
   105ec:	2084b783          	ld	a5,520(s1)
   105f0:	05778063          	beq	a5,s7,10630 <__call_exitprocs+0xa4>
   105f4:	fff4041b          	addw	s0,s0,-1
   105f8:	ff848493          	add	s1,s1,-8
   105fc:	ff3416e3          	bne	s0,s3,105e8 <__call_exitprocs+0x5c>
   10600:	04813083          	ld	ra,72(sp)
   10604:	04013403          	ld	s0,64(sp)
   10608:	03813483          	ld	s1,56(sp)
   1060c:	03013903          	ld	s2,48(sp)
   10610:	02813983          	ld	s3,40(sp)
   10614:	02013a03          	ld	s4,32(sp)
   10618:	01813a83          	ld	s5,24(sp)
   1061c:	01013b03          	ld	s6,16(sp)
   10620:	00813b83          	ld	s7,8(sp)
   10624:	00013c03          	ld	s8,0(sp)
   10628:	05010113          	add	sp,sp,80
   1062c:	00008067          	ret
   10630:	00892783          	lw	a5,8(s2)
   10634:	0084b703          	ld	a4,8(s1)
   10638:	fff7879b          	addw	a5,a5,-1
   1063c:	06878263          	beq	a5,s0,106a0 <__call_exitprocs+0x114>
   10640:	0004b423          	sd	zero,8(s1)
   10644:	fa0708e3          	beqz	a4,105f4 <__call_exitprocs+0x68>
   10648:	31092783          	lw	a5,784(s2)
   1064c:	008a96bb          	sllw	a3,s5,s0
   10650:	00892c03          	lw	s8,8(s2)
   10654:	00d7f7b3          	and	a5,a5,a3
   10658:	0007879b          	sext.w	a5,a5
   1065c:	02079263          	bnez	a5,10680 <__call_exitprocs+0xf4>
   10660:	000700e7          	jalr	a4
   10664:	00892703          	lw	a4,8(s2)
   10668:	1f8a3783          	ld	a5,504(s4)
   1066c:	01871463          	bne	a4,s8,10674 <__call_exitprocs+0xe8>
   10670:	f92782e3          	beq	a5,s2,105f4 <__call_exitprocs+0x68>
   10674:	f80786e3          	beqz	a5,10600 <__call_exitprocs+0x74>
   10678:	00078913          	mv	s2,a5
   1067c:	f59ff06f          	j	105d4 <__call_exitprocs+0x48>
   10680:	31492783          	lw	a5,788(s2)
   10684:	1084b583          	ld	a1,264(s1)
   10688:	00d7f7b3          	and	a5,a5,a3
   1068c:	0007879b          	sext.w	a5,a5
   10690:	00079c63          	bnez	a5,106a8 <__call_exitprocs+0x11c>
   10694:	000b0513          	mv	a0,s6
   10698:	000700e7          	jalr	a4
   1069c:	fc9ff06f          	j	10664 <__call_exitprocs+0xd8>
   106a0:	00892423          	sw	s0,8(s2)
   106a4:	fa1ff06f          	j	10644 <__call_exitprocs+0xb8>
   106a8:	00058513          	mv	a0,a1
   106ac:	000700e7          	jalr	a4
   106b0:	fb5ff06f          	j	10664 <__call_exitprocs+0xd8>

00000000000106b4 <__libc_fini_array>:
   106b4:	fe010113          	add	sp,sp,-32
   106b8:	00813823          	sd	s0,16(sp)
   106bc:	000127b7          	lui	a5,0x12
   106c0:	00012437          	lui	s0,0x12
   106c4:	83078793          	add	a5,a5,-2000 # 11830 <__do_global_dtors_aux_fini_array_entry>
   106c8:	83840413          	add	s0,s0,-1992 # 11838 <impure_data>
   106cc:	40f40433          	sub	s0,s0,a5
   106d0:	00913423          	sd	s1,8(sp)
   106d4:	00113c23          	sd	ra,24(sp)
   106d8:	40345493          	sra	s1,s0,0x3
   106dc:	02048063          	beqz	s1,106fc <__libc_fini_array+0x48>
   106e0:	ff840413          	add	s0,s0,-8
   106e4:	00f40433          	add	s0,s0,a5
   106e8:	00043783          	ld	a5,0(s0)
   106ec:	fff48493          	add	s1,s1,-1
   106f0:	ff840413          	add	s0,s0,-8
   106f4:	000780e7          	jalr	a5
   106f8:	fe0498e3          	bnez	s1,106e8 <__libc_fini_array+0x34>
   106fc:	01813083          	ld	ra,24(sp)
   10700:	01013403          	ld	s0,16(sp)
   10704:	00813483          	ld	s1,8(sp)
   10708:	02010113          	add	sp,sp,32
   1070c:	00008067          	ret

0000000000010710 <atexit>:
   10710:	00050593          	mv	a1,a0
   10714:	00000693          	li	a3,0
   10718:	00000613          	li	a2,0
   1071c:	00000513          	li	a0,0
   10720:	0040006f          	j	10724 <__register_exitproc>

0000000000010724 <__register_exitproc>:
   10724:	f481b703          	ld	a4,-184(gp) # 11f80 <_global_impure_ptr>
   10728:	1f873783          	ld	a5,504(a4)
   1072c:	06078063          	beqz	a5,1078c <__register_exitproc+0x68>
   10730:	0087a703          	lw	a4,8(a5)
   10734:	01f00813          	li	a6,31
   10738:	08e84663          	blt	a6,a4,107c4 <__register_exitproc+0xa0>
   1073c:	02050863          	beqz	a0,1076c <__register_exitproc+0x48>
   10740:	00371813          	sll	a6,a4,0x3
   10744:	01078833          	add	a6,a5,a6
   10748:	10c83823          	sd	a2,272(a6)
   1074c:	3107a883          	lw	a7,784(a5)
   10750:	00100613          	li	a2,1
   10754:	00e6163b          	sllw	a2,a2,a4
   10758:	00c8e8b3          	or	a7,a7,a2
   1075c:	3117a823          	sw	a7,784(a5)
   10760:	20d83823          	sd	a3,528(a6)
   10764:	00200693          	li	a3,2
   10768:	02d50863          	beq	a0,a3,10798 <__register_exitproc+0x74>
   1076c:	00270693          	add	a3,a4,2
   10770:	00369693          	sll	a3,a3,0x3
   10774:	0017071b          	addw	a4,a4,1
   10778:	00e7a423          	sw	a4,8(a5)
   1077c:	00d787b3          	add	a5,a5,a3
   10780:	00b7b023          	sd	a1,0(a5)
   10784:	00000513          	li	a0,0
   10788:	00008067          	ret
   1078c:	20070793          	add	a5,a4,512
   10790:	1ef73c23          	sd	a5,504(a4)
   10794:	f9dff06f          	j	10730 <__register_exitproc+0xc>
   10798:	3147a683          	lw	a3,788(a5)
   1079c:	00000513          	li	a0,0
   107a0:	00c6e6b3          	or	a3,a3,a2
   107a4:	30d7aa23          	sw	a3,788(a5)
   107a8:	00270693          	add	a3,a4,2
   107ac:	00369693          	sll	a3,a3,0x3
   107b0:	0017071b          	addw	a4,a4,1
   107b4:	00e7a423          	sw	a4,8(a5)
   107b8:	00d787b3          	add	a5,a5,a3
   107bc:	00b7b023          	sd	a1,0(a5)
   107c0:	00008067          	ret
   107c4:	fff00513          	li	a0,-1
   107c8:	00008067          	ret

00000000000107cc <_exit>:
   107cc:	05d00893          	li	a7,93
   107d0:	00000073          	ecall
   107d4:	00054463          	bltz	a0,107dc <_exit+0x10>
   107d8:	0000006f          	j	107d8 <_exit+0xc>
   107dc:	ff010113          	add	sp,sp,-16
   107e0:	00813023          	sd	s0,0(sp)
   107e4:	00050413          	mv	s0,a0
   107e8:	00113423          	sd	ra,8(sp)
   107ec:	4080043b          	negw	s0,s0
   107f0:	00c000ef          	jal	107fc <__errno>
   107f4:	00852023          	sw	s0,0(a0)
   107f8:	0000006f          	j	107f8 <_exit+0x2c>

00000000000107fc <__errno>:
   107fc:	f581b503          	ld	a0,-168(gp) # 11f90 <_impure_ptr>
   10800:	00008067          	ret
