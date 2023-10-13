
/home/yangyx/desktop/CA2/code_test/lab0/rv64imf/test_printFloat/test_printFloat.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	3e4000ef          	jal	104e0 <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11ed8 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	60c000ef          	jal	10720 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	60850513          	add	a0,a0,1544 # 10608 <__libc_fini_array>
   10128:	53c0006f          	j	10664 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	e6018193          	add	gp,gp,-416 # 11f90 <__global_pointer$>
   10138:	f6018513          	add	a0,gp,-160 # 11ef0 <completed.1>
   1013c:	f9818613          	add	a2,gp,-104 # 11f28 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	2bc000ef          	jal	10404 <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	51850513          	add	a0,a0,1304 # 10664 <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	4b050513          	add	a0,a0,1200 # 10608 <__libc_fini_array>
   10160:	504000ef          	jal	10664 <atexit>
   10164:	204000ef          	jal	10368 <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	06c000ef          	jal	101e0 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f601c783          	lbu	a5,-160(gp) # 11ef0 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00011537          	lui	a0,0x11
   1019c:	77050513          	add	a0,a0,1904 # 11770 <__EH_FRAME_BEGIN__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f6f18023          	sb	a5,-160(gp) # 11ef0 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00011537          	lui	a0,0x11
   101cc:	f6818593          	add	a1,gp,-152 # 11ef8 <object.0>
   101d0:	77050513          	add	a0,a0,1904 # 11770 <__EH_FRAME_BEGIN__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <main>:
   101e0:	fe010113          	add	sp,sp,-32
   101e4:	00113c23          	sd	ra,24(sp)
   101e8:	00813823          	sd	s0,16(sp)
   101ec:	02010413          	add	s0,sp,32
   101f0:	000107b7          	lui	a5,0x10
   101f4:	76c7a787          	flw	fa5,1900(a5) # 1076c <__errno+0x1c>
   101f8:	fef42627          	fsw	fa5,-20(s0)
   101fc:	000107b7          	lui	a5,0x10
   10200:	75878513          	add	a0,a5,1880 # 10758 <__errno+0x8>
   10204:	060000ef          	jal	10264 <print_s>
   10208:	fec42507          	flw	fa0,-20(s0)
   1020c:	130000ef          	jal	1033c <print_f>
   10210:	000107b7          	lui	a5,0x10
   10214:	76878513          	add	a0,a5,1896 # 10768 <__errno+0x18>
   10218:	04c000ef          	jal	10264 <print_s>
   1021c:	09c000ef          	jal	102b8 <exit_proc>
   10220:	00000793          	li	a5,0
   10224:	00078513          	mv	a0,a5
   10228:	01813083          	ld	ra,24(sp)
   1022c:	01013403          	ld	s0,16(sp)
   10230:	02010113          	add	sp,sp,32
   10234:	00008067          	ret

0000000000010238 <print_d>:
   10238:	fe010113          	add	sp,sp,-32
   1023c:	00813c23          	sd	s0,24(sp)
   10240:	02010413          	add	s0,sp,32
   10244:	00050793          	mv	a5,a0
   10248:	fef42623          	sw	a5,-20(s0)
   1024c:	00200893          	li	a7,2
   10250:	00000073          	ecall
   10254:	00000013          	nop
   10258:	01813403          	ld	s0,24(sp)
   1025c:	02010113          	add	sp,sp,32
   10260:	00008067          	ret

0000000000010264 <print_s>:
   10264:	fe010113          	add	sp,sp,-32
   10268:	00813c23          	sd	s0,24(sp)
   1026c:	02010413          	add	s0,sp,32
   10270:	fea43423          	sd	a0,-24(s0)
   10274:	00000893          	li	a7,0
   10278:	00000073          	ecall
   1027c:	00000013          	nop
   10280:	01813403          	ld	s0,24(sp)
   10284:	02010113          	add	sp,sp,32
   10288:	00008067          	ret

000000000001028c <print_c>:
   1028c:	fe010113          	add	sp,sp,-32
   10290:	00813c23          	sd	s0,24(sp)
   10294:	02010413          	add	s0,sp,32
   10298:	00050793          	mv	a5,a0
   1029c:	fef407a3          	sb	a5,-17(s0)
   102a0:	00100893          	li	a7,1
   102a4:	00000073          	ecall
   102a8:	00000013          	nop
   102ac:	01813403          	ld	s0,24(sp)
   102b0:	02010113          	add	sp,sp,32
   102b4:	00008067          	ret

00000000000102b8 <exit_proc>:
   102b8:	ff010113          	add	sp,sp,-16
   102bc:	00813423          	sd	s0,8(sp)
   102c0:	01010413          	add	s0,sp,16
   102c4:	00300893          	li	a7,3
   102c8:	00000073          	ecall
   102cc:	00000013          	nop
   102d0:	00813403          	ld	s0,8(sp)
   102d4:	01010113          	add	sp,sp,16
   102d8:	00008067          	ret

00000000000102dc <read_char>:
   102dc:	fe010113          	add	sp,sp,-32
   102e0:	00813c23          	sd	s0,24(sp)
   102e4:	02010413          	add	s0,sp,32
   102e8:	00400893          	li	a7,4
   102ec:	00000073          	ecall
   102f0:	00050793          	mv	a5,a0
   102f4:	fef407a3          	sb	a5,-17(s0)
   102f8:	fef44783          	lbu	a5,-17(s0)
   102fc:	00078513          	mv	a0,a5
   10300:	01813403          	ld	s0,24(sp)
   10304:	02010113          	add	sp,sp,32
   10308:	00008067          	ret

000000000001030c <read_num>:
   1030c:	fe010113          	add	sp,sp,-32
   10310:	00813c23          	sd	s0,24(sp)
   10314:	02010413          	add	s0,sp,32
   10318:	00500893          	li	a7,5
   1031c:	00000073          	ecall
   10320:	00050793          	mv	a5,a0
   10324:	fef43423          	sd	a5,-24(s0)
   10328:	fe843783          	ld	a5,-24(s0)
   1032c:	00078513          	mv	a0,a5
   10330:	01813403          	ld	s0,24(sp)
   10334:	02010113          	add	sp,sp,32
   10338:	00008067          	ret

000000000001033c <print_f>:
   1033c:	fe010113          	add	sp,sp,-32
   10340:	00813c23          	sd	s0,24(sp)
   10344:	02010413          	add	s0,sp,32
   10348:	fea42627          	fsw	fa0,-20(s0)
   1034c:	e0050553          	fmv.x.w	a0,fa0
   10350:	00600893          	li	a7,6
   10354:	00000073          	ecall
   10358:	00000013          	nop
   1035c:	01813403          	ld	s0,24(sp)
   10360:	02010113          	add	sp,sp,32
   10364:	00008067          	ret

0000000000010368 <__libc_init_array>:
   10368:	fe010113          	add	sp,sp,-32
   1036c:	00813823          	sd	s0,16(sp)
   10370:	000117b7          	lui	a5,0x11
   10374:	00011437          	lui	s0,0x11
   10378:	01213023          	sd	s2,0(sp)
   1037c:	77478793          	add	a5,a5,1908 # 11774 <__preinit_array_end>
   10380:	77440713          	add	a4,s0,1908 # 11774 <__preinit_array_end>
   10384:	00113c23          	sd	ra,24(sp)
   10388:	00913423          	sd	s1,8(sp)
   1038c:	40e78933          	sub	s2,a5,a4
   10390:	02e78263          	beq	a5,a4,103b4 <__libc_init_array+0x4c>
   10394:	40395913          	sra	s2,s2,0x3
   10398:	77440413          	add	s0,s0,1908
   1039c:	00000493          	li	s1,0
   103a0:	00043783          	ld	a5,0(s0)
   103a4:	00148493          	add	s1,s1,1
   103a8:	00840413          	add	s0,s0,8
   103ac:	000780e7          	jalr	a5
   103b0:	ff24e8e3          	bltu	s1,s2,103a0 <__libc_init_array+0x38>
   103b4:	00011437          	lui	s0,0x11
   103b8:	000117b7          	lui	a5,0x11
   103bc:	78878793          	add	a5,a5,1928 # 11788 <__do_global_dtors_aux_fini_array_entry>
   103c0:	77840713          	add	a4,s0,1912 # 11778 <__init_array_start>
   103c4:	40e78933          	sub	s2,a5,a4
   103c8:	40395913          	sra	s2,s2,0x3
   103cc:	02e78063          	beq	a5,a4,103ec <__libc_init_array+0x84>
   103d0:	77840413          	add	s0,s0,1912
   103d4:	00000493          	li	s1,0
   103d8:	00043783          	ld	a5,0(s0)
   103dc:	00148493          	add	s1,s1,1
   103e0:	00840413          	add	s0,s0,8
   103e4:	000780e7          	jalr	a5
   103e8:	ff24e8e3          	bltu	s1,s2,103d8 <__libc_init_array+0x70>
   103ec:	01813083          	ld	ra,24(sp)
   103f0:	01013403          	ld	s0,16(sp)
   103f4:	00813483          	ld	s1,8(sp)
   103f8:	00013903          	ld	s2,0(sp)
   103fc:	02010113          	add	sp,sp,32
   10400:	00008067          	ret

0000000000010404 <memset>:
   10404:	00f00313          	li	t1,15
   10408:	00050713          	mv	a4,a0
   1040c:	02c37a63          	bgeu	t1,a2,10440 <memset+0x3c>
   10410:	00f77793          	and	a5,a4,15
   10414:	0a079063          	bnez	a5,104b4 <memset+0xb0>
   10418:	06059e63          	bnez	a1,10494 <memset+0x90>
   1041c:	ff067693          	and	a3,a2,-16
   10420:	00f67613          	and	a2,a2,15
   10424:	00e686b3          	add	a3,a3,a4
   10428:	00b73023          	sd	a1,0(a4)
   1042c:	00b73423          	sd	a1,8(a4)
   10430:	01070713          	add	a4,a4,16
   10434:	fed76ae3          	bltu	a4,a3,10428 <memset+0x24>
   10438:	00061463          	bnez	a2,10440 <memset+0x3c>
   1043c:	00008067          	ret
   10440:	40c306b3          	sub	a3,t1,a2
   10444:	00269693          	sll	a3,a3,0x2
   10448:	00000297          	auipc	t0,0x0
   1044c:	005686b3          	add	a3,a3,t0
   10450:	00c68067          	jr	12(a3)
   10454:	00b70723          	sb	a1,14(a4)
   10458:	00b706a3          	sb	a1,13(a4)
   1045c:	00b70623          	sb	a1,12(a4)
   10460:	00b705a3          	sb	a1,11(a4)
   10464:	00b70523          	sb	a1,10(a4)
   10468:	00b704a3          	sb	a1,9(a4)
   1046c:	00b70423          	sb	a1,8(a4)
   10470:	00b703a3          	sb	a1,7(a4)
   10474:	00b70323          	sb	a1,6(a4)
   10478:	00b702a3          	sb	a1,5(a4)
   1047c:	00b70223          	sb	a1,4(a4)
   10480:	00b701a3          	sb	a1,3(a4)
   10484:	00b70123          	sb	a1,2(a4)
   10488:	00b700a3          	sb	a1,1(a4)
   1048c:	00b70023          	sb	a1,0(a4)
   10490:	00008067          	ret
   10494:	0ff5f593          	zext.b	a1,a1
   10498:	00859693          	sll	a3,a1,0x8
   1049c:	00d5e5b3          	or	a1,a1,a3
   104a0:	01059693          	sll	a3,a1,0x10
   104a4:	00d5e5b3          	or	a1,a1,a3
   104a8:	02059693          	sll	a3,a1,0x20
   104ac:	00d5e5b3          	or	a1,a1,a3
   104b0:	f6dff06f          	j	1041c <memset+0x18>
   104b4:	00279693          	sll	a3,a5,0x2
   104b8:	00000297          	auipc	t0,0x0
   104bc:	005686b3          	add	a3,a3,t0
   104c0:	00008293          	mv	t0,ra
   104c4:	f98680e7          	jalr	-104(a3)
   104c8:	00028093          	mv	ra,t0
   104cc:	ff078793          	add	a5,a5,-16
   104d0:	40f70733          	sub	a4,a4,a5
   104d4:	00f60633          	add	a2,a2,a5
   104d8:	f6c374e3          	bgeu	t1,a2,10440 <memset+0x3c>
   104dc:	f3dff06f          	j	10418 <memset+0x14>

00000000000104e0 <__call_exitprocs>:
   104e0:	fb010113          	add	sp,sp,-80
   104e4:	03413023          	sd	s4,32(sp)
   104e8:	f481ba03          	ld	s4,-184(gp) # 11ed8 <_global_impure_ptr>
   104ec:	03213823          	sd	s2,48(sp)
   104f0:	04113423          	sd	ra,72(sp)
   104f4:	1f8a3903          	ld	s2,504(s4)
   104f8:	04813023          	sd	s0,64(sp)
   104fc:	02913c23          	sd	s1,56(sp)
   10500:	03313423          	sd	s3,40(sp)
   10504:	01513c23          	sd	s5,24(sp)
   10508:	01613823          	sd	s6,16(sp)
   1050c:	01713423          	sd	s7,8(sp)
   10510:	01813023          	sd	s8,0(sp)
   10514:	04090063          	beqz	s2,10554 <__call_exitprocs+0x74>
   10518:	00050b13          	mv	s6,a0
   1051c:	00058b93          	mv	s7,a1
   10520:	00100a93          	li	s5,1
   10524:	fff00993          	li	s3,-1
   10528:	00892483          	lw	s1,8(s2)
   1052c:	fff4841b          	addw	s0,s1,-1
   10530:	02044263          	bltz	s0,10554 <__call_exitprocs+0x74>
   10534:	00349493          	sll	s1,s1,0x3
   10538:	009904b3          	add	s1,s2,s1
   1053c:	040b8463          	beqz	s7,10584 <__call_exitprocs+0xa4>
   10540:	2084b783          	ld	a5,520(s1)
   10544:	05778063          	beq	a5,s7,10584 <__call_exitprocs+0xa4>
   10548:	fff4041b          	addw	s0,s0,-1
   1054c:	ff848493          	add	s1,s1,-8
   10550:	ff3416e3          	bne	s0,s3,1053c <__call_exitprocs+0x5c>
   10554:	04813083          	ld	ra,72(sp)
   10558:	04013403          	ld	s0,64(sp)
   1055c:	03813483          	ld	s1,56(sp)
   10560:	03013903          	ld	s2,48(sp)
   10564:	02813983          	ld	s3,40(sp)
   10568:	02013a03          	ld	s4,32(sp)
   1056c:	01813a83          	ld	s5,24(sp)
   10570:	01013b03          	ld	s6,16(sp)
   10574:	00813b83          	ld	s7,8(sp)
   10578:	00013c03          	ld	s8,0(sp)
   1057c:	05010113          	add	sp,sp,80
   10580:	00008067          	ret
   10584:	00892783          	lw	a5,8(s2)
   10588:	0084b703          	ld	a4,8(s1)
   1058c:	fff7879b          	addw	a5,a5,-1
   10590:	06878263          	beq	a5,s0,105f4 <__call_exitprocs+0x114>
   10594:	0004b423          	sd	zero,8(s1)
   10598:	fa0708e3          	beqz	a4,10548 <__call_exitprocs+0x68>
   1059c:	31092783          	lw	a5,784(s2)
   105a0:	008a96bb          	sllw	a3,s5,s0
   105a4:	00892c03          	lw	s8,8(s2)
   105a8:	00d7f7b3          	and	a5,a5,a3
   105ac:	0007879b          	sext.w	a5,a5
   105b0:	02079263          	bnez	a5,105d4 <__call_exitprocs+0xf4>
   105b4:	000700e7          	jalr	a4
   105b8:	00892703          	lw	a4,8(s2)
   105bc:	1f8a3783          	ld	a5,504(s4)
   105c0:	01871463          	bne	a4,s8,105c8 <__call_exitprocs+0xe8>
   105c4:	f92782e3          	beq	a5,s2,10548 <__call_exitprocs+0x68>
   105c8:	f80786e3          	beqz	a5,10554 <__call_exitprocs+0x74>
   105cc:	00078913          	mv	s2,a5
   105d0:	f59ff06f          	j	10528 <__call_exitprocs+0x48>
   105d4:	31492783          	lw	a5,788(s2)
   105d8:	1084b583          	ld	a1,264(s1)
   105dc:	00d7f7b3          	and	a5,a5,a3
   105e0:	0007879b          	sext.w	a5,a5
   105e4:	00079c63          	bnez	a5,105fc <__call_exitprocs+0x11c>
   105e8:	000b0513          	mv	a0,s6
   105ec:	000700e7          	jalr	a4
   105f0:	fc9ff06f          	j	105b8 <__call_exitprocs+0xd8>
   105f4:	00892423          	sw	s0,8(s2)
   105f8:	fa1ff06f          	j	10598 <__call_exitprocs+0xb8>
   105fc:	00058513          	mv	a0,a1
   10600:	000700e7          	jalr	a4
   10604:	fb5ff06f          	j	105b8 <__call_exitprocs+0xd8>

0000000000010608 <__libc_fini_array>:
   10608:	fe010113          	add	sp,sp,-32
   1060c:	00813823          	sd	s0,16(sp)
   10610:	000117b7          	lui	a5,0x11
   10614:	00011437          	lui	s0,0x11
   10618:	78878793          	add	a5,a5,1928 # 11788 <__do_global_dtors_aux_fini_array_entry>
   1061c:	79040413          	add	s0,s0,1936 # 11790 <impure_data>
   10620:	40f40433          	sub	s0,s0,a5
   10624:	00913423          	sd	s1,8(sp)
   10628:	00113c23          	sd	ra,24(sp)
   1062c:	40345493          	sra	s1,s0,0x3
   10630:	02048063          	beqz	s1,10650 <__libc_fini_array+0x48>
   10634:	ff840413          	add	s0,s0,-8
   10638:	00f40433          	add	s0,s0,a5
   1063c:	00043783          	ld	a5,0(s0)
   10640:	fff48493          	add	s1,s1,-1
   10644:	ff840413          	add	s0,s0,-8
   10648:	000780e7          	jalr	a5
   1064c:	fe0498e3          	bnez	s1,1063c <__libc_fini_array+0x34>
   10650:	01813083          	ld	ra,24(sp)
   10654:	01013403          	ld	s0,16(sp)
   10658:	00813483          	ld	s1,8(sp)
   1065c:	02010113          	add	sp,sp,32
   10660:	00008067          	ret

0000000000010664 <atexit>:
   10664:	00050593          	mv	a1,a0
   10668:	00000693          	li	a3,0
   1066c:	00000613          	li	a2,0
   10670:	00000513          	li	a0,0
   10674:	0040006f          	j	10678 <__register_exitproc>

0000000000010678 <__register_exitproc>:
   10678:	f481b703          	ld	a4,-184(gp) # 11ed8 <_global_impure_ptr>
   1067c:	1f873783          	ld	a5,504(a4)
   10680:	06078063          	beqz	a5,106e0 <__register_exitproc+0x68>
   10684:	0087a703          	lw	a4,8(a5)
   10688:	01f00813          	li	a6,31
   1068c:	08e84663          	blt	a6,a4,10718 <__register_exitproc+0xa0>
   10690:	02050863          	beqz	a0,106c0 <__register_exitproc+0x48>
   10694:	00371813          	sll	a6,a4,0x3
   10698:	01078833          	add	a6,a5,a6
   1069c:	10c83823          	sd	a2,272(a6)
   106a0:	3107a883          	lw	a7,784(a5)
   106a4:	00100613          	li	a2,1
   106a8:	00e6163b          	sllw	a2,a2,a4
   106ac:	00c8e8b3          	or	a7,a7,a2
   106b0:	3117a823          	sw	a7,784(a5)
   106b4:	20d83823          	sd	a3,528(a6)
   106b8:	00200693          	li	a3,2
   106bc:	02d50863          	beq	a0,a3,106ec <__register_exitproc+0x74>
   106c0:	00270693          	add	a3,a4,2
   106c4:	00369693          	sll	a3,a3,0x3
   106c8:	0017071b          	addw	a4,a4,1
   106cc:	00e7a423          	sw	a4,8(a5)
   106d0:	00d787b3          	add	a5,a5,a3
   106d4:	00b7b023          	sd	a1,0(a5)
   106d8:	00000513          	li	a0,0
   106dc:	00008067          	ret
   106e0:	20070793          	add	a5,a4,512
   106e4:	1ef73c23          	sd	a5,504(a4)
   106e8:	f9dff06f          	j	10684 <__register_exitproc+0xc>
   106ec:	3147a683          	lw	a3,788(a5)
   106f0:	00000513          	li	a0,0
   106f4:	00c6e6b3          	or	a3,a3,a2
   106f8:	30d7aa23          	sw	a3,788(a5)
   106fc:	00270693          	add	a3,a4,2
   10700:	00369693          	sll	a3,a3,0x3
   10704:	0017071b          	addw	a4,a4,1
   10708:	00e7a423          	sw	a4,8(a5)
   1070c:	00d787b3          	add	a5,a5,a3
   10710:	00b7b023          	sd	a1,0(a5)
   10714:	00008067          	ret
   10718:	fff00513          	li	a0,-1
   1071c:	00008067          	ret

0000000000010720 <_exit>:
   10720:	05d00893          	li	a7,93
   10724:	00000073          	ecall
   10728:	00054463          	bltz	a0,10730 <_exit+0x10>
   1072c:	0000006f          	j	1072c <_exit+0xc>
   10730:	ff010113          	add	sp,sp,-16
   10734:	00813023          	sd	s0,0(sp)
   10738:	00050413          	mv	s0,a0
   1073c:	00113423          	sd	ra,8(sp)
   10740:	4080043b          	negw	s0,s0
   10744:	00c000ef          	jal	10750 <__errno>
   10748:	00852023          	sw	s0,0(a0)
   1074c:	0000006f          	j	1074c <_exit+0x2c>

0000000000010750 <__errno>:
   10750:	f581b503          	ld	a0,-168(gp) # 11ee8 <_impure_ptr>
   10754:	00008067          	ret
