
/home/yangyx/desktop/CA2/code_test/lab0/rv64imf/test_register_2_asm/test_register_2_asm.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	41c000ef          	jal	10518 <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11ef8 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	644000ef          	jal	10758 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	64050513          	add	a0,a0,1600 # 10640 <__libc_fini_array>
   10128:	5740006f          	j	1069c <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	e8018193          	add	gp,gp,-384 # 11fb0 <__global_pointer$>
   10138:	f6018513          	add	a0,gp,-160 # 11f10 <completed.1>
   1013c:	f9818613          	add	a2,gp,-104 # 11f48 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	2f4000ef          	jal	1043c <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	55050513          	add	a0,a0,1360 # 1069c <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	4e850513          	add	a0,a0,1256 # 10640 <__libc_fini_array>
   10160:	53c000ef          	jal	1069c <atexit>
   10164:	23c000ef          	jal	103a0 <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	06c000ef          	jal	101e0 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f601c783          	lbu	a5,-160(gp) # 11f10 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00011537          	lui	a0,0x11
   1019c:	79450513          	add	a0,a0,1940 # 11794 <__EH_FRAME_BEGIN__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f6f18023          	sb	a5,-160(gp) # 11f10 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00011537          	lui	a0,0x11
   101cc:	f6818593          	add	a1,gp,-152 # 11f18 <object.0>
   101d0:	79450513          	add	a0,a0,1940 # 11794 <__EH_FRAME_BEGIN__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <main>:
   101e0:	fe010113          	add	sp,sp,-32
   101e4:	00113c23          	sd	ra,24(sp)
   101e8:	00813823          	sd	s0,16(sp)
   101ec:	02010413          	add	s0,sp,32
   101f0:	00500793          	li	a5,5
   101f4:	fef42623          	sw	a5,-20(s0)
   101f8:	00a00793          	li	a5,10
   101fc:	fef42423          	sw	a5,-24(s0)
   10200:	fec42783          	lw	a5,-20(s0)
   10204:	fe842703          	lw	a4,-24(s0)
   10208:	00e787b3          	add	a5,a5,a4
   1020c:	fef42223          	sw	a5,-28(s0)
   10210:	fec42783          	lw	a5,-20(s0)
   10214:	00078513          	mv	a0,a5
   10218:	05c000ef          	jal	10274 <print_d>
   1021c:	000107b7          	lui	a5,0x10
   10220:	79078513          	add	a0,a5,1936 # 10790 <__errno+0x8>
   10224:	07c000ef          	jal	102a0 <print_s>
   10228:	fe842783          	lw	a5,-24(s0)
   1022c:	00078513          	mv	a0,a5
   10230:	044000ef          	jal	10274 <print_d>
   10234:	000107b7          	lui	a5,0x10
   10238:	79078513          	add	a0,a5,1936 # 10790 <__errno+0x8>
   1023c:	064000ef          	jal	102a0 <print_s>
   10240:	fe442783          	lw	a5,-28(s0)
   10244:	00078513          	mv	a0,a5
   10248:	02c000ef          	jal	10274 <print_d>
   1024c:	000107b7          	lui	a5,0x10
   10250:	79078513          	add	a0,a5,1936 # 10790 <__errno+0x8>
   10254:	04c000ef          	jal	102a0 <print_s>
   10258:	09c000ef          	jal	102f4 <exit_proc>
   1025c:	00000793          	li	a5,0
   10260:	00078513          	mv	a0,a5
   10264:	01813083          	ld	ra,24(sp)
   10268:	01013403          	ld	s0,16(sp)
   1026c:	02010113          	add	sp,sp,32
   10270:	00008067          	ret

0000000000010274 <print_d>:
   10274:	fe010113          	add	sp,sp,-32
   10278:	00813c23          	sd	s0,24(sp)
   1027c:	02010413          	add	s0,sp,32
   10280:	00050793          	mv	a5,a0
   10284:	fef42623          	sw	a5,-20(s0)
   10288:	00200893          	li	a7,2
   1028c:	00000073          	ecall
   10290:	00000013          	nop
   10294:	01813403          	ld	s0,24(sp)
   10298:	02010113          	add	sp,sp,32
   1029c:	00008067          	ret

00000000000102a0 <print_s>:
   102a0:	fe010113          	add	sp,sp,-32
   102a4:	00813c23          	sd	s0,24(sp)
   102a8:	02010413          	add	s0,sp,32
   102ac:	fea43423          	sd	a0,-24(s0)
   102b0:	00000893          	li	a7,0
   102b4:	00000073          	ecall
   102b8:	00000013          	nop
   102bc:	01813403          	ld	s0,24(sp)
   102c0:	02010113          	add	sp,sp,32
   102c4:	00008067          	ret

00000000000102c8 <print_c>:
   102c8:	fe010113          	add	sp,sp,-32
   102cc:	00813c23          	sd	s0,24(sp)
   102d0:	02010413          	add	s0,sp,32
   102d4:	00050793          	mv	a5,a0
   102d8:	fef407a3          	sb	a5,-17(s0)
   102dc:	00100893          	li	a7,1
   102e0:	00000073          	ecall
   102e4:	00000013          	nop
   102e8:	01813403          	ld	s0,24(sp)
   102ec:	02010113          	add	sp,sp,32
   102f0:	00008067          	ret

00000000000102f4 <exit_proc>:
   102f4:	ff010113          	add	sp,sp,-16
   102f8:	00813423          	sd	s0,8(sp)
   102fc:	01010413          	add	s0,sp,16
   10300:	00300893          	li	a7,3
   10304:	00000073          	ecall
   10308:	00000013          	nop
   1030c:	00813403          	ld	s0,8(sp)
   10310:	01010113          	add	sp,sp,16
   10314:	00008067          	ret

0000000000010318 <read_char>:
   10318:	fe010113          	add	sp,sp,-32
   1031c:	00813c23          	sd	s0,24(sp)
   10320:	02010413          	add	s0,sp,32
   10324:	00400893          	li	a7,4
   10328:	00000073          	ecall
   1032c:	00050793          	mv	a5,a0
   10330:	fef407a3          	sb	a5,-17(s0)
   10334:	fef44783          	lbu	a5,-17(s0)
   10338:	00078513          	mv	a0,a5
   1033c:	01813403          	ld	s0,24(sp)
   10340:	02010113          	add	sp,sp,32
   10344:	00008067          	ret

0000000000010348 <read_num>:
   10348:	fe010113          	add	sp,sp,-32
   1034c:	00813c23          	sd	s0,24(sp)
   10350:	02010413          	add	s0,sp,32
   10354:	00500893          	li	a7,5
   10358:	00000073          	ecall
   1035c:	00050793          	mv	a5,a0
   10360:	fef43423          	sd	a5,-24(s0)
   10364:	fe843783          	ld	a5,-24(s0)
   10368:	00078513          	mv	a0,a5
   1036c:	01813403          	ld	s0,24(sp)
   10370:	02010113          	add	sp,sp,32
   10374:	00008067          	ret

0000000000010378 <print_f>:
   10378:	fe010113          	add	sp,sp,-32
   1037c:	00813c23          	sd	s0,24(sp)
   10380:	02010413          	add	s0,sp,32
   10384:	fea42627          	fsw	fa0,-20(s0)
   10388:	00600893          	li	a7,6
   1038c:	00000073          	ecall
   10390:	00000013          	nop
   10394:	01813403          	ld	s0,24(sp)
   10398:	02010113          	add	sp,sp,32
   1039c:	00008067          	ret

00000000000103a0 <__libc_init_array>:
   103a0:	fe010113          	add	sp,sp,-32
   103a4:	00813823          	sd	s0,16(sp)
   103a8:	000117b7          	lui	a5,0x11
   103ac:	00011437          	lui	s0,0x11
   103b0:	01213023          	sd	s2,0(sp)
   103b4:	79878793          	add	a5,a5,1944 # 11798 <__init_array_start>
   103b8:	79840713          	add	a4,s0,1944 # 11798 <__init_array_start>
   103bc:	00113c23          	sd	ra,24(sp)
   103c0:	00913423          	sd	s1,8(sp)
   103c4:	40e78933          	sub	s2,a5,a4
   103c8:	02e78263          	beq	a5,a4,103ec <__libc_init_array+0x4c>
   103cc:	40395913          	sra	s2,s2,0x3
   103d0:	79840413          	add	s0,s0,1944
   103d4:	00000493          	li	s1,0
   103d8:	00043783          	ld	a5,0(s0)
   103dc:	00148493          	add	s1,s1,1
   103e0:	00840413          	add	s0,s0,8
   103e4:	000780e7          	jalr	a5
   103e8:	ff24e8e3          	bltu	s1,s2,103d8 <__libc_init_array+0x38>
   103ec:	00011437          	lui	s0,0x11
   103f0:	000117b7          	lui	a5,0x11
   103f4:	7a878793          	add	a5,a5,1960 # 117a8 <__do_global_dtors_aux_fini_array_entry>
   103f8:	79840713          	add	a4,s0,1944 # 11798 <__init_array_start>
   103fc:	40e78933          	sub	s2,a5,a4
   10400:	40395913          	sra	s2,s2,0x3
   10404:	02e78063          	beq	a5,a4,10424 <__libc_init_array+0x84>
   10408:	79840413          	add	s0,s0,1944
   1040c:	00000493          	li	s1,0
   10410:	00043783          	ld	a5,0(s0)
   10414:	00148493          	add	s1,s1,1
   10418:	00840413          	add	s0,s0,8
   1041c:	000780e7          	jalr	a5
   10420:	ff24e8e3          	bltu	s1,s2,10410 <__libc_init_array+0x70>
   10424:	01813083          	ld	ra,24(sp)
   10428:	01013403          	ld	s0,16(sp)
   1042c:	00813483          	ld	s1,8(sp)
   10430:	00013903          	ld	s2,0(sp)
   10434:	02010113          	add	sp,sp,32
   10438:	00008067          	ret

000000000001043c <memset>:
   1043c:	00f00313          	li	t1,15
   10440:	00050713          	mv	a4,a0
   10444:	02c37a63          	bgeu	t1,a2,10478 <memset+0x3c>
   10448:	00f77793          	and	a5,a4,15
   1044c:	0a079063          	bnez	a5,104ec <memset+0xb0>
   10450:	06059e63          	bnez	a1,104cc <memset+0x90>
   10454:	ff067693          	and	a3,a2,-16
   10458:	00f67613          	and	a2,a2,15
   1045c:	00e686b3          	add	a3,a3,a4
   10460:	00b73023          	sd	a1,0(a4)
   10464:	00b73423          	sd	a1,8(a4)
   10468:	01070713          	add	a4,a4,16
   1046c:	fed76ae3          	bltu	a4,a3,10460 <memset+0x24>
   10470:	00061463          	bnez	a2,10478 <memset+0x3c>
   10474:	00008067          	ret
   10478:	40c306b3          	sub	a3,t1,a2
   1047c:	00269693          	sll	a3,a3,0x2
   10480:	00000297          	auipc	t0,0x0
   10484:	005686b3          	add	a3,a3,t0
   10488:	00c68067          	jr	12(a3)
   1048c:	00b70723          	sb	a1,14(a4)
   10490:	00b706a3          	sb	a1,13(a4)
   10494:	00b70623          	sb	a1,12(a4)
   10498:	00b705a3          	sb	a1,11(a4)
   1049c:	00b70523          	sb	a1,10(a4)
   104a0:	00b704a3          	sb	a1,9(a4)
   104a4:	00b70423          	sb	a1,8(a4)
   104a8:	00b703a3          	sb	a1,7(a4)
   104ac:	00b70323          	sb	a1,6(a4)
   104b0:	00b702a3          	sb	a1,5(a4)
   104b4:	00b70223          	sb	a1,4(a4)
   104b8:	00b701a3          	sb	a1,3(a4)
   104bc:	00b70123          	sb	a1,2(a4)
   104c0:	00b700a3          	sb	a1,1(a4)
   104c4:	00b70023          	sb	a1,0(a4)
   104c8:	00008067          	ret
   104cc:	0ff5f593          	zext.b	a1,a1
   104d0:	00859693          	sll	a3,a1,0x8
   104d4:	00d5e5b3          	or	a1,a1,a3
   104d8:	01059693          	sll	a3,a1,0x10
   104dc:	00d5e5b3          	or	a1,a1,a3
   104e0:	02059693          	sll	a3,a1,0x20
   104e4:	00d5e5b3          	or	a1,a1,a3
   104e8:	f6dff06f          	j	10454 <memset+0x18>
   104ec:	00279693          	sll	a3,a5,0x2
   104f0:	00000297          	auipc	t0,0x0
   104f4:	005686b3          	add	a3,a3,t0
   104f8:	00008293          	mv	t0,ra
   104fc:	f98680e7          	jalr	-104(a3)
   10500:	00028093          	mv	ra,t0
   10504:	ff078793          	add	a5,a5,-16
   10508:	40f70733          	sub	a4,a4,a5
   1050c:	00f60633          	add	a2,a2,a5
   10510:	f6c374e3          	bgeu	t1,a2,10478 <memset+0x3c>
   10514:	f3dff06f          	j	10450 <memset+0x14>

0000000000010518 <__call_exitprocs>:
   10518:	fb010113          	add	sp,sp,-80
   1051c:	03413023          	sd	s4,32(sp)
   10520:	f481ba03          	ld	s4,-184(gp) # 11ef8 <_global_impure_ptr>
   10524:	03213823          	sd	s2,48(sp)
   10528:	04113423          	sd	ra,72(sp)
   1052c:	1f8a3903          	ld	s2,504(s4)
   10530:	04813023          	sd	s0,64(sp)
   10534:	02913c23          	sd	s1,56(sp)
   10538:	03313423          	sd	s3,40(sp)
   1053c:	01513c23          	sd	s5,24(sp)
   10540:	01613823          	sd	s6,16(sp)
   10544:	01713423          	sd	s7,8(sp)
   10548:	01813023          	sd	s8,0(sp)
   1054c:	04090063          	beqz	s2,1058c <__call_exitprocs+0x74>
   10550:	00050b13          	mv	s6,a0
   10554:	00058b93          	mv	s7,a1
   10558:	00100a93          	li	s5,1
   1055c:	fff00993          	li	s3,-1
   10560:	00892483          	lw	s1,8(s2)
   10564:	fff4841b          	addw	s0,s1,-1
   10568:	02044263          	bltz	s0,1058c <__call_exitprocs+0x74>
   1056c:	00349493          	sll	s1,s1,0x3
   10570:	009904b3          	add	s1,s2,s1
   10574:	040b8463          	beqz	s7,105bc <__call_exitprocs+0xa4>
   10578:	2084b783          	ld	a5,520(s1)
   1057c:	05778063          	beq	a5,s7,105bc <__call_exitprocs+0xa4>
   10580:	fff4041b          	addw	s0,s0,-1
   10584:	ff848493          	add	s1,s1,-8
   10588:	ff3416e3          	bne	s0,s3,10574 <__call_exitprocs+0x5c>
   1058c:	04813083          	ld	ra,72(sp)
   10590:	04013403          	ld	s0,64(sp)
   10594:	03813483          	ld	s1,56(sp)
   10598:	03013903          	ld	s2,48(sp)
   1059c:	02813983          	ld	s3,40(sp)
   105a0:	02013a03          	ld	s4,32(sp)
   105a4:	01813a83          	ld	s5,24(sp)
   105a8:	01013b03          	ld	s6,16(sp)
   105ac:	00813b83          	ld	s7,8(sp)
   105b0:	00013c03          	ld	s8,0(sp)
   105b4:	05010113          	add	sp,sp,80
   105b8:	00008067          	ret
   105bc:	00892783          	lw	a5,8(s2)
   105c0:	0084b703          	ld	a4,8(s1)
   105c4:	fff7879b          	addw	a5,a5,-1
   105c8:	06878263          	beq	a5,s0,1062c <__call_exitprocs+0x114>
   105cc:	0004b423          	sd	zero,8(s1)
   105d0:	fa0708e3          	beqz	a4,10580 <__call_exitprocs+0x68>
   105d4:	31092783          	lw	a5,784(s2)
   105d8:	008a96bb          	sllw	a3,s5,s0
   105dc:	00892c03          	lw	s8,8(s2)
   105e0:	00d7f7b3          	and	a5,a5,a3
   105e4:	0007879b          	sext.w	a5,a5
   105e8:	02079263          	bnez	a5,1060c <__call_exitprocs+0xf4>
   105ec:	000700e7          	jalr	a4
   105f0:	00892703          	lw	a4,8(s2)
   105f4:	1f8a3783          	ld	a5,504(s4)
   105f8:	01871463          	bne	a4,s8,10600 <__call_exitprocs+0xe8>
   105fc:	f92782e3          	beq	a5,s2,10580 <__call_exitprocs+0x68>
   10600:	f80786e3          	beqz	a5,1058c <__call_exitprocs+0x74>
   10604:	00078913          	mv	s2,a5
   10608:	f59ff06f          	j	10560 <__call_exitprocs+0x48>
   1060c:	31492783          	lw	a5,788(s2)
   10610:	1084b583          	ld	a1,264(s1)
   10614:	00d7f7b3          	and	a5,a5,a3
   10618:	0007879b          	sext.w	a5,a5
   1061c:	00079c63          	bnez	a5,10634 <__call_exitprocs+0x11c>
   10620:	000b0513          	mv	a0,s6
   10624:	000700e7          	jalr	a4
   10628:	fc9ff06f          	j	105f0 <__call_exitprocs+0xd8>
   1062c:	00892423          	sw	s0,8(s2)
   10630:	fa1ff06f          	j	105d0 <__call_exitprocs+0xb8>
   10634:	00058513          	mv	a0,a1
   10638:	000700e7          	jalr	a4
   1063c:	fb5ff06f          	j	105f0 <__call_exitprocs+0xd8>

0000000000010640 <__libc_fini_array>:
   10640:	fe010113          	add	sp,sp,-32
   10644:	00813823          	sd	s0,16(sp)
   10648:	000117b7          	lui	a5,0x11
   1064c:	00011437          	lui	s0,0x11
   10650:	7a878793          	add	a5,a5,1960 # 117a8 <__do_global_dtors_aux_fini_array_entry>
   10654:	7b040413          	add	s0,s0,1968 # 117b0 <impure_data>
   10658:	40f40433          	sub	s0,s0,a5
   1065c:	00913423          	sd	s1,8(sp)
   10660:	00113c23          	sd	ra,24(sp)
   10664:	40345493          	sra	s1,s0,0x3
   10668:	02048063          	beqz	s1,10688 <__libc_fini_array+0x48>
   1066c:	ff840413          	add	s0,s0,-8
   10670:	00f40433          	add	s0,s0,a5
   10674:	00043783          	ld	a5,0(s0)
   10678:	fff48493          	add	s1,s1,-1
   1067c:	ff840413          	add	s0,s0,-8
   10680:	000780e7          	jalr	a5
   10684:	fe0498e3          	bnez	s1,10674 <__libc_fini_array+0x34>
   10688:	01813083          	ld	ra,24(sp)
   1068c:	01013403          	ld	s0,16(sp)
   10690:	00813483          	ld	s1,8(sp)
   10694:	02010113          	add	sp,sp,32
   10698:	00008067          	ret

000000000001069c <atexit>:
   1069c:	00050593          	mv	a1,a0
   106a0:	00000693          	li	a3,0
   106a4:	00000613          	li	a2,0
   106a8:	00000513          	li	a0,0
   106ac:	0040006f          	j	106b0 <__register_exitproc>

00000000000106b0 <__register_exitproc>:
   106b0:	f481b703          	ld	a4,-184(gp) # 11ef8 <_global_impure_ptr>
   106b4:	1f873783          	ld	a5,504(a4)
   106b8:	06078063          	beqz	a5,10718 <__register_exitproc+0x68>
   106bc:	0087a703          	lw	a4,8(a5)
   106c0:	01f00813          	li	a6,31
   106c4:	08e84663          	blt	a6,a4,10750 <__register_exitproc+0xa0>
   106c8:	02050863          	beqz	a0,106f8 <__register_exitproc+0x48>
   106cc:	00371813          	sll	a6,a4,0x3
   106d0:	01078833          	add	a6,a5,a6
   106d4:	10c83823          	sd	a2,272(a6)
   106d8:	3107a883          	lw	a7,784(a5)
   106dc:	00100613          	li	a2,1
   106e0:	00e6163b          	sllw	a2,a2,a4
   106e4:	00c8e8b3          	or	a7,a7,a2
   106e8:	3117a823          	sw	a7,784(a5)
   106ec:	20d83823          	sd	a3,528(a6)
   106f0:	00200693          	li	a3,2
   106f4:	02d50863          	beq	a0,a3,10724 <__register_exitproc+0x74>
   106f8:	00270693          	add	a3,a4,2
   106fc:	00369693          	sll	a3,a3,0x3
   10700:	0017071b          	addw	a4,a4,1
   10704:	00e7a423          	sw	a4,8(a5)
   10708:	00d787b3          	add	a5,a5,a3
   1070c:	00b7b023          	sd	a1,0(a5)
   10710:	00000513          	li	a0,0
   10714:	00008067          	ret
   10718:	20070793          	add	a5,a4,512
   1071c:	1ef73c23          	sd	a5,504(a4)
   10720:	f9dff06f          	j	106bc <__register_exitproc+0xc>
   10724:	3147a683          	lw	a3,788(a5)
   10728:	00000513          	li	a0,0
   1072c:	00c6e6b3          	or	a3,a3,a2
   10730:	30d7aa23          	sw	a3,788(a5)
   10734:	00270693          	add	a3,a4,2
   10738:	00369693          	sll	a3,a3,0x3
   1073c:	0017071b          	addw	a4,a4,1
   10740:	00e7a423          	sw	a4,8(a5)
   10744:	00d787b3          	add	a5,a5,a3
   10748:	00b7b023          	sd	a1,0(a5)
   1074c:	00008067          	ret
   10750:	fff00513          	li	a0,-1
   10754:	00008067          	ret

0000000000010758 <_exit>:
   10758:	05d00893          	li	a7,93
   1075c:	00000073          	ecall
   10760:	00054463          	bltz	a0,10768 <_exit+0x10>
   10764:	0000006f          	j	10764 <_exit+0xc>
   10768:	ff010113          	add	sp,sp,-16
   1076c:	00813023          	sd	s0,0(sp)
   10770:	00050413          	mv	s0,a0
   10774:	00113423          	sd	ra,8(sp)
   10778:	4080043b          	negw	s0,s0
   1077c:	00c000ef          	jal	10788 <__errno>
   10780:	00852023          	sw	s0,0(a0)
   10784:	0000006f          	j	10784 <_exit+0x2c>

0000000000010788 <__errno>:
   10788:	f581b503          	ld	a0,-168(gp) # 11f08 <_impure_ptr>
   1078c:	00008067          	ret
