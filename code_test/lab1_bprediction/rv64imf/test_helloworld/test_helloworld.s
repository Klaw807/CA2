
/home/yangyx/desktop/CA2/code_test/lab1/rv64imf/test_helloworld/test_helloworld.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	3b8000ef          	jal	104b4 <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11e90 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	5e0000ef          	jal	106f4 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	5dc50513          	add	a0,a0,1500 # 105dc <__libc_fini_array>
   10128:	5100006f          	j	10638 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	e1818193          	add	gp,gp,-488 # 11f48 <__global_pointer$>
   10138:	f6018513          	add	a0,gp,-160 # 11ea8 <completed.1>
   1013c:	f9818613          	add	a2,gp,-104 # 11ee0 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	290000ef          	jal	103d8 <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	4ec50513          	add	a0,a0,1260 # 10638 <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	48450513          	add	a0,a0,1156 # 105dc <__libc_fini_array>
   10160:	4d8000ef          	jal	10638 <atexit>
   10164:	1d8000ef          	jal	1033c <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	06c000ef          	jal	101e0 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f601c783          	lbu	a5,-160(gp) # 11ea8 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00011537          	lui	a0,0x11
   1019c:	72c50513          	add	a0,a0,1836 # 1172c <__EH_FRAME_BEGIN__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f6f18023          	sb	a5,-160(gp) # 11ea8 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00011537          	lui	a0,0x11
   101cc:	f6818593          	add	a1,gp,-152 # 11eb0 <object.0>
   101d0:	72c50513          	add	a0,a0,1836 # 1172c <__EH_FRAME_BEGIN__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <main>:
   101e0:	ff010113          	add	sp,sp,-16
   101e4:	00113423          	sd	ra,8(sp)
   101e8:	00813023          	sd	s0,0(sp)
   101ec:	01010413          	add	s0,sp,16
   101f0:	09c000ef          	jal	1028c <exit_proc>
   101f4:	00000793          	li	a5,0
   101f8:	00078513          	mv	a0,a5
   101fc:	00813083          	ld	ra,8(sp)
   10200:	00013403          	ld	s0,0(sp)
   10204:	01010113          	add	sp,sp,16
   10208:	00008067          	ret

000000000001020c <print_d>:
   1020c:	fe010113          	add	sp,sp,-32
   10210:	00813c23          	sd	s0,24(sp)
   10214:	02010413          	add	s0,sp,32
   10218:	00050793          	mv	a5,a0
   1021c:	fef42623          	sw	a5,-20(s0)
   10220:	00200893          	li	a7,2
   10224:	00000073          	ecall
   10228:	00000013          	nop
   1022c:	01813403          	ld	s0,24(sp)
   10230:	02010113          	add	sp,sp,32
   10234:	00008067          	ret

0000000000010238 <print_s>:
   10238:	fe010113          	add	sp,sp,-32
   1023c:	00813c23          	sd	s0,24(sp)
   10240:	02010413          	add	s0,sp,32
   10244:	fea43423          	sd	a0,-24(s0)
   10248:	00000893          	li	a7,0
   1024c:	00000073          	ecall
   10250:	00000013          	nop
   10254:	01813403          	ld	s0,24(sp)
   10258:	02010113          	add	sp,sp,32
   1025c:	00008067          	ret

0000000000010260 <print_c>:
   10260:	fe010113          	add	sp,sp,-32
   10264:	00813c23          	sd	s0,24(sp)
   10268:	02010413          	add	s0,sp,32
   1026c:	00050793          	mv	a5,a0
   10270:	fef407a3          	sb	a5,-17(s0)
   10274:	00100893          	li	a7,1
   10278:	00000073          	ecall
   1027c:	00000013          	nop
   10280:	01813403          	ld	s0,24(sp)
   10284:	02010113          	add	sp,sp,32
   10288:	00008067          	ret

000000000001028c <exit_proc>:
   1028c:	ff010113          	add	sp,sp,-16
   10290:	00813423          	sd	s0,8(sp)
   10294:	01010413          	add	s0,sp,16
   10298:	00300893          	li	a7,3
   1029c:	00000073          	ecall
   102a0:	00000013          	nop
   102a4:	00813403          	ld	s0,8(sp)
   102a8:	01010113          	add	sp,sp,16
   102ac:	00008067          	ret

00000000000102b0 <read_char>:
   102b0:	fe010113          	add	sp,sp,-32
   102b4:	00813c23          	sd	s0,24(sp)
   102b8:	02010413          	add	s0,sp,32
   102bc:	00400893          	li	a7,4
   102c0:	00000073          	ecall
   102c4:	00050793          	mv	a5,a0
   102c8:	fef407a3          	sb	a5,-17(s0)
   102cc:	fef44783          	lbu	a5,-17(s0)
   102d0:	00078513          	mv	a0,a5
   102d4:	01813403          	ld	s0,24(sp)
   102d8:	02010113          	add	sp,sp,32
   102dc:	00008067          	ret

00000000000102e0 <read_num>:
   102e0:	fe010113          	add	sp,sp,-32
   102e4:	00813c23          	sd	s0,24(sp)
   102e8:	02010413          	add	s0,sp,32
   102ec:	00500893          	li	a7,5
   102f0:	00000073          	ecall
   102f4:	00050793          	mv	a5,a0
   102f8:	fef43423          	sd	a5,-24(s0)
   102fc:	fe843783          	ld	a5,-24(s0)
   10300:	00078513          	mv	a0,a5
   10304:	01813403          	ld	s0,24(sp)
   10308:	02010113          	add	sp,sp,32
   1030c:	00008067          	ret

0000000000010310 <print_f>:
   10310:	fe010113          	add	sp,sp,-32
   10314:	00813c23          	sd	s0,24(sp)
   10318:	02010413          	add	s0,sp,32
   1031c:	fea42627          	fsw	fa0,-20(s0)
   10320:	e0050553          	fmv.x.w	a0,fa0
   10324:	00600893          	li	a7,6
   10328:	00000073          	ecall
   1032c:	00000013          	nop
   10330:	01813403          	ld	s0,24(sp)
   10334:	02010113          	add	sp,sp,32
   10338:	00008067          	ret

000000000001033c <__libc_init_array>:
   1033c:	fe010113          	add	sp,sp,-32
   10340:	00813823          	sd	s0,16(sp)
   10344:	000117b7          	lui	a5,0x11
   10348:	00011437          	lui	s0,0x11
   1034c:	01213023          	sd	s2,0(sp)
   10350:	73078793          	add	a5,a5,1840 # 11730 <__init_array_start>
   10354:	73040713          	add	a4,s0,1840 # 11730 <__init_array_start>
   10358:	00113c23          	sd	ra,24(sp)
   1035c:	00913423          	sd	s1,8(sp)
   10360:	40e78933          	sub	s2,a5,a4
   10364:	02e78263          	beq	a5,a4,10388 <__libc_init_array+0x4c>
   10368:	40395913          	sra	s2,s2,0x3
   1036c:	73040413          	add	s0,s0,1840
   10370:	00000493          	li	s1,0
   10374:	00043783          	ld	a5,0(s0)
   10378:	00148493          	add	s1,s1,1
   1037c:	00840413          	add	s0,s0,8
   10380:	000780e7          	jalr	a5
   10384:	ff24e8e3          	bltu	s1,s2,10374 <__libc_init_array+0x38>
   10388:	00011437          	lui	s0,0x11
   1038c:	000117b7          	lui	a5,0x11
   10390:	74078793          	add	a5,a5,1856 # 11740 <__do_global_dtors_aux_fini_array_entry>
   10394:	73040713          	add	a4,s0,1840 # 11730 <__init_array_start>
   10398:	40e78933          	sub	s2,a5,a4
   1039c:	40395913          	sra	s2,s2,0x3
   103a0:	02e78063          	beq	a5,a4,103c0 <__libc_init_array+0x84>
   103a4:	73040413          	add	s0,s0,1840
   103a8:	00000493          	li	s1,0
   103ac:	00043783          	ld	a5,0(s0)
   103b0:	00148493          	add	s1,s1,1
   103b4:	00840413          	add	s0,s0,8
   103b8:	000780e7          	jalr	a5
   103bc:	ff24e8e3          	bltu	s1,s2,103ac <__libc_init_array+0x70>
   103c0:	01813083          	ld	ra,24(sp)
   103c4:	01013403          	ld	s0,16(sp)
   103c8:	00813483          	ld	s1,8(sp)
   103cc:	00013903          	ld	s2,0(sp)
   103d0:	02010113          	add	sp,sp,32
   103d4:	00008067          	ret

00000000000103d8 <memset>:
   103d8:	00f00313          	li	t1,15
   103dc:	00050713          	mv	a4,a0
   103e0:	02c37a63          	bgeu	t1,a2,10414 <memset+0x3c>
   103e4:	00f77793          	and	a5,a4,15
   103e8:	0a079063          	bnez	a5,10488 <memset+0xb0>
   103ec:	06059e63          	bnez	a1,10468 <memset+0x90>
   103f0:	ff067693          	and	a3,a2,-16
   103f4:	00f67613          	and	a2,a2,15
   103f8:	00e686b3          	add	a3,a3,a4
   103fc:	00b73023          	sd	a1,0(a4)
   10400:	00b73423          	sd	a1,8(a4)
   10404:	01070713          	add	a4,a4,16
   10408:	fed76ae3          	bltu	a4,a3,103fc <memset+0x24>
   1040c:	00061463          	bnez	a2,10414 <memset+0x3c>
   10410:	00008067          	ret
   10414:	40c306b3          	sub	a3,t1,a2
   10418:	00269693          	sll	a3,a3,0x2
   1041c:	00000297          	auipc	t0,0x0
   10420:	005686b3          	add	a3,a3,t0
   10424:	00c68067          	jr	12(a3)
   10428:	00b70723          	sb	a1,14(a4)
   1042c:	00b706a3          	sb	a1,13(a4)
   10430:	00b70623          	sb	a1,12(a4)
   10434:	00b705a3          	sb	a1,11(a4)
   10438:	00b70523          	sb	a1,10(a4)
   1043c:	00b704a3          	sb	a1,9(a4)
   10440:	00b70423          	sb	a1,8(a4)
   10444:	00b703a3          	sb	a1,7(a4)
   10448:	00b70323          	sb	a1,6(a4)
   1044c:	00b702a3          	sb	a1,5(a4)
   10450:	00b70223          	sb	a1,4(a4)
   10454:	00b701a3          	sb	a1,3(a4)
   10458:	00b70123          	sb	a1,2(a4)
   1045c:	00b700a3          	sb	a1,1(a4)
   10460:	00b70023          	sb	a1,0(a4)
   10464:	00008067          	ret
   10468:	0ff5f593          	zext.b	a1,a1
   1046c:	00859693          	sll	a3,a1,0x8
   10470:	00d5e5b3          	or	a1,a1,a3
   10474:	01059693          	sll	a3,a1,0x10
   10478:	00d5e5b3          	or	a1,a1,a3
   1047c:	02059693          	sll	a3,a1,0x20
   10480:	00d5e5b3          	or	a1,a1,a3
   10484:	f6dff06f          	j	103f0 <memset+0x18>
   10488:	00279693          	sll	a3,a5,0x2
   1048c:	00000297          	auipc	t0,0x0
   10490:	005686b3          	add	a3,a3,t0
   10494:	00008293          	mv	t0,ra
   10498:	f98680e7          	jalr	-104(a3)
   1049c:	00028093          	mv	ra,t0
   104a0:	ff078793          	add	a5,a5,-16
   104a4:	40f70733          	sub	a4,a4,a5
   104a8:	00f60633          	add	a2,a2,a5
   104ac:	f6c374e3          	bgeu	t1,a2,10414 <memset+0x3c>
   104b0:	f3dff06f          	j	103ec <memset+0x14>

00000000000104b4 <__call_exitprocs>:
   104b4:	fb010113          	add	sp,sp,-80
   104b8:	03413023          	sd	s4,32(sp)
   104bc:	f481ba03          	ld	s4,-184(gp) # 11e90 <_global_impure_ptr>
   104c0:	03213823          	sd	s2,48(sp)
   104c4:	04113423          	sd	ra,72(sp)
   104c8:	1f8a3903          	ld	s2,504(s4)
   104cc:	04813023          	sd	s0,64(sp)
   104d0:	02913c23          	sd	s1,56(sp)
   104d4:	03313423          	sd	s3,40(sp)
   104d8:	01513c23          	sd	s5,24(sp)
   104dc:	01613823          	sd	s6,16(sp)
   104e0:	01713423          	sd	s7,8(sp)
   104e4:	01813023          	sd	s8,0(sp)
   104e8:	04090063          	beqz	s2,10528 <__call_exitprocs+0x74>
   104ec:	00050b13          	mv	s6,a0
   104f0:	00058b93          	mv	s7,a1
   104f4:	00100a93          	li	s5,1
   104f8:	fff00993          	li	s3,-1
   104fc:	00892483          	lw	s1,8(s2)
   10500:	fff4841b          	addw	s0,s1,-1
   10504:	02044263          	bltz	s0,10528 <__call_exitprocs+0x74>
   10508:	00349493          	sll	s1,s1,0x3
   1050c:	009904b3          	add	s1,s2,s1
   10510:	040b8463          	beqz	s7,10558 <__call_exitprocs+0xa4>
   10514:	2084b783          	ld	a5,520(s1)
   10518:	05778063          	beq	a5,s7,10558 <__call_exitprocs+0xa4>
   1051c:	fff4041b          	addw	s0,s0,-1
   10520:	ff848493          	add	s1,s1,-8
   10524:	ff3416e3          	bne	s0,s3,10510 <__call_exitprocs+0x5c>
   10528:	04813083          	ld	ra,72(sp)
   1052c:	04013403          	ld	s0,64(sp)
   10530:	03813483          	ld	s1,56(sp)
   10534:	03013903          	ld	s2,48(sp)
   10538:	02813983          	ld	s3,40(sp)
   1053c:	02013a03          	ld	s4,32(sp)
   10540:	01813a83          	ld	s5,24(sp)
   10544:	01013b03          	ld	s6,16(sp)
   10548:	00813b83          	ld	s7,8(sp)
   1054c:	00013c03          	ld	s8,0(sp)
   10550:	05010113          	add	sp,sp,80
   10554:	00008067          	ret
   10558:	00892783          	lw	a5,8(s2)
   1055c:	0084b703          	ld	a4,8(s1)
   10560:	fff7879b          	addw	a5,a5,-1
   10564:	06878263          	beq	a5,s0,105c8 <__call_exitprocs+0x114>
   10568:	0004b423          	sd	zero,8(s1)
   1056c:	fa0708e3          	beqz	a4,1051c <__call_exitprocs+0x68>
   10570:	31092783          	lw	a5,784(s2)
   10574:	008a96bb          	sllw	a3,s5,s0
   10578:	00892c03          	lw	s8,8(s2)
   1057c:	00d7f7b3          	and	a5,a5,a3
   10580:	0007879b          	sext.w	a5,a5
   10584:	02079263          	bnez	a5,105a8 <__call_exitprocs+0xf4>
   10588:	000700e7          	jalr	a4
   1058c:	00892703          	lw	a4,8(s2)
   10590:	1f8a3783          	ld	a5,504(s4)
   10594:	01871463          	bne	a4,s8,1059c <__call_exitprocs+0xe8>
   10598:	f92782e3          	beq	a5,s2,1051c <__call_exitprocs+0x68>
   1059c:	f80786e3          	beqz	a5,10528 <__call_exitprocs+0x74>
   105a0:	00078913          	mv	s2,a5
   105a4:	f59ff06f          	j	104fc <__call_exitprocs+0x48>
   105a8:	31492783          	lw	a5,788(s2)
   105ac:	1084b583          	ld	a1,264(s1)
   105b0:	00d7f7b3          	and	a5,a5,a3
   105b4:	0007879b          	sext.w	a5,a5
   105b8:	00079c63          	bnez	a5,105d0 <__call_exitprocs+0x11c>
   105bc:	000b0513          	mv	a0,s6
   105c0:	000700e7          	jalr	a4
   105c4:	fc9ff06f          	j	1058c <__call_exitprocs+0xd8>
   105c8:	00892423          	sw	s0,8(s2)
   105cc:	fa1ff06f          	j	1056c <__call_exitprocs+0xb8>
   105d0:	00058513          	mv	a0,a1
   105d4:	000700e7          	jalr	a4
   105d8:	fb5ff06f          	j	1058c <__call_exitprocs+0xd8>

00000000000105dc <__libc_fini_array>:
   105dc:	fe010113          	add	sp,sp,-32
   105e0:	00813823          	sd	s0,16(sp)
   105e4:	000117b7          	lui	a5,0x11
   105e8:	00011437          	lui	s0,0x11
   105ec:	74078793          	add	a5,a5,1856 # 11740 <__do_global_dtors_aux_fini_array_entry>
   105f0:	74840413          	add	s0,s0,1864 # 11748 <impure_data>
   105f4:	40f40433          	sub	s0,s0,a5
   105f8:	00913423          	sd	s1,8(sp)
   105fc:	00113c23          	sd	ra,24(sp)
   10600:	40345493          	sra	s1,s0,0x3
   10604:	02048063          	beqz	s1,10624 <__libc_fini_array+0x48>
   10608:	ff840413          	add	s0,s0,-8
   1060c:	00f40433          	add	s0,s0,a5
   10610:	00043783          	ld	a5,0(s0)
   10614:	fff48493          	add	s1,s1,-1
   10618:	ff840413          	add	s0,s0,-8
   1061c:	000780e7          	jalr	a5
   10620:	fe0498e3          	bnez	s1,10610 <__libc_fini_array+0x34>
   10624:	01813083          	ld	ra,24(sp)
   10628:	01013403          	ld	s0,16(sp)
   1062c:	00813483          	ld	s1,8(sp)
   10630:	02010113          	add	sp,sp,32
   10634:	00008067          	ret

0000000000010638 <atexit>:
   10638:	00050593          	mv	a1,a0
   1063c:	00000693          	li	a3,0
   10640:	00000613          	li	a2,0
   10644:	00000513          	li	a0,0
   10648:	0040006f          	j	1064c <__register_exitproc>

000000000001064c <__register_exitproc>:
   1064c:	f481b703          	ld	a4,-184(gp) # 11e90 <_global_impure_ptr>
   10650:	1f873783          	ld	a5,504(a4)
   10654:	06078063          	beqz	a5,106b4 <__register_exitproc+0x68>
   10658:	0087a703          	lw	a4,8(a5)
   1065c:	01f00813          	li	a6,31
   10660:	08e84663          	blt	a6,a4,106ec <__register_exitproc+0xa0>
   10664:	02050863          	beqz	a0,10694 <__register_exitproc+0x48>
   10668:	00371813          	sll	a6,a4,0x3
   1066c:	01078833          	add	a6,a5,a6
   10670:	10c83823          	sd	a2,272(a6)
   10674:	3107a883          	lw	a7,784(a5)
   10678:	00100613          	li	a2,1
   1067c:	00e6163b          	sllw	a2,a2,a4
   10680:	00c8e8b3          	or	a7,a7,a2
   10684:	3117a823          	sw	a7,784(a5)
   10688:	20d83823          	sd	a3,528(a6)
   1068c:	00200693          	li	a3,2
   10690:	02d50863          	beq	a0,a3,106c0 <__register_exitproc+0x74>
   10694:	00270693          	add	a3,a4,2
   10698:	00369693          	sll	a3,a3,0x3
   1069c:	0017071b          	addw	a4,a4,1
   106a0:	00e7a423          	sw	a4,8(a5)
   106a4:	00d787b3          	add	a5,a5,a3
   106a8:	00b7b023          	sd	a1,0(a5)
   106ac:	00000513          	li	a0,0
   106b0:	00008067          	ret
   106b4:	20070793          	add	a5,a4,512
   106b8:	1ef73c23          	sd	a5,504(a4)
   106bc:	f9dff06f          	j	10658 <__register_exitproc+0xc>
   106c0:	3147a683          	lw	a3,788(a5)
   106c4:	00000513          	li	a0,0
   106c8:	00c6e6b3          	or	a3,a3,a2
   106cc:	30d7aa23          	sw	a3,788(a5)
   106d0:	00270693          	add	a3,a4,2
   106d4:	00369693          	sll	a3,a3,0x3
   106d8:	0017071b          	addw	a4,a4,1
   106dc:	00e7a423          	sw	a4,8(a5)
   106e0:	00d787b3          	add	a5,a5,a3
   106e4:	00b7b023          	sd	a1,0(a5)
   106e8:	00008067          	ret
   106ec:	fff00513          	li	a0,-1
   106f0:	00008067          	ret

00000000000106f4 <_exit>:
   106f4:	05d00893          	li	a7,93
   106f8:	00000073          	ecall
   106fc:	00054463          	bltz	a0,10704 <_exit+0x10>
   10700:	0000006f          	j	10700 <_exit+0xc>
   10704:	ff010113          	add	sp,sp,-16
   10708:	00813023          	sd	s0,0(sp)
   1070c:	00050413          	mv	s0,a0
   10710:	00113423          	sd	ra,8(sp)
   10714:	4080043b          	negw	s0,s0
   10718:	00c000ef          	jal	10724 <__errno>
   1071c:	00852023          	sw	s0,0(a0)
   10720:	0000006f          	j	10720 <_exit+0x2c>

0000000000010724 <__errno>:
   10724:	f581b503          	ld	a0,-168(gp) # 11ea0 <_impure_ptr>
   10728:	00008067          	ret
