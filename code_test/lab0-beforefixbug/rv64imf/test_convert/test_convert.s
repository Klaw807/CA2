
/home/yangyx/desktop/CA2/code_test/lab0/rv64imf/test_convert/test_convert.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	410000ef          	jal	1050c <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11ef8 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	638000ef          	jal	1074c <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	63450513          	add	a0,a0,1588 # 10634 <__libc_fini_array>
   10128:	5680006f          	j	10690 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	e8018193          	add	gp,gp,-384 # 11fb0 <__global_pointer$>
   10138:	f6018513          	add	a0,gp,-160 # 11f10 <completed.1>
   1013c:	f9818613          	add	a2,gp,-104 # 11f48 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	2e8000ef          	jal	10430 <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	54450513          	add	a0,a0,1348 # 10690 <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	4dc50513          	add	a0,a0,1244 # 10634 <__libc_fini_array>
   10160:	530000ef          	jal	10690 <atexit>
   10164:	230000ef          	jal	10394 <__libc_init_array>
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
   1019c:	79050513          	add	a0,a0,1936 # 11790 <__EH_FRAME_BEGIN__>
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
   101d0:	79050513          	add	a0,a0,1936 # 11790 <__EH_FRAME_BEGIN__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <main>:
   101e0:	fe010113          	add	sp,sp,-32
   101e4:	00113c23          	sd	ra,24(sp)
   101e8:	00813823          	sd	s0,16(sp)
   101ec:	02010413          	add	s0,sp,32
   101f0:	000107b7          	lui	a5,0x10
   101f4:	78c7a787          	flw	fa5,1932(a5) # 1078c <__errno+0x10>
   101f8:	fef42627          	fsw	fa5,-20(s0)
   101fc:	fec42787          	flw	fa5,-20(s0)
   10200:	c00797d3          	fcvt.w.s	a5,fa5,rtz
   10204:	fef42423          	sw	a5,-24(s0)
   10208:	fe842783          	lw	a5,-24(s0)
   1020c:	00078513          	mv	a0,a5
   10210:	054000ef          	jal	10264 <print_d>
   10214:	000107b7          	lui	a5,0x10
   10218:	78878513          	add	a0,a5,1928 # 10788 <__errno+0xc>
   1021c:	074000ef          	jal	10290 <print_s>
   10220:	00a00793          	li	a5,10
   10224:	fef42423          	sw	a5,-24(s0)
   10228:	fe842783          	lw	a5,-24(s0)
   1022c:	d007f7d3          	fcvt.s.w	fa5,a5
   10230:	fef42627          	fsw	fa5,-20(s0)
   10234:	fec42507          	flw	fa0,-20(s0)
   10238:	130000ef          	jal	10368 <print_f>
   1023c:	000107b7          	lui	a5,0x10
   10240:	78878513          	add	a0,a5,1928 # 10788 <__errno+0xc>
   10244:	04c000ef          	jal	10290 <print_s>
   10248:	09c000ef          	jal	102e4 <exit_proc>
   1024c:	00000793          	li	a5,0
   10250:	00078513          	mv	a0,a5
   10254:	01813083          	ld	ra,24(sp)
   10258:	01013403          	ld	s0,16(sp)
   1025c:	02010113          	add	sp,sp,32
   10260:	00008067          	ret

0000000000010264 <print_d>:
   10264:	fe010113          	add	sp,sp,-32
   10268:	00813c23          	sd	s0,24(sp)
   1026c:	02010413          	add	s0,sp,32
   10270:	00050793          	mv	a5,a0
   10274:	fef42623          	sw	a5,-20(s0)
   10278:	00200893          	li	a7,2
   1027c:	00000073          	ecall
   10280:	00000013          	nop
   10284:	01813403          	ld	s0,24(sp)
   10288:	02010113          	add	sp,sp,32
   1028c:	00008067          	ret

0000000000010290 <print_s>:
   10290:	fe010113          	add	sp,sp,-32
   10294:	00813c23          	sd	s0,24(sp)
   10298:	02010413          	add	s0,sp,32
   1029c:	fea43423          	sd	a0,-24(s0)
   102a0:	00000893          	li	a7,0
   102a4:	00000073          	ecall
   102a8:	00000013          	nop
   102ac:	01813403          	ld	s0,24(sp)
   102b0:	02010113          	add	sp,sp,32
   102b4:	00008067          	ret

00000000000102b8 <print_c>:
   102b8:	fe010113          	add	sp,sp,-32
   102bc:	00813c23          	sd	s0,24(sp)
   102c0:	02010413          	add	s0,sp,32
   102c4:	00050793          	mv	a5,a0
   102c8:	fef407a3          	sb	a5,-17(s0)
   102cc:	00100893          	li	a7,1
   102d0:	00000073          	ecall
   102d4:	00000013          	nop
   102d8:	01813403          	ld	s0,24(sp)
   102dc:	02010113          	add	sp,sp,32
   102e0:	00008067          	ret

00000000000102e4 <exit_proc>:
   102e4:	ff010113          	add	sp,sp,-16
   102e8:	00813423          	sd	s0,8(sp)
   102ec:	01010413          	add	s0,sp,16
   102f0:	00300893          	li	a7,3
   102f4:	00000073          	ecall
   102f8:	00000013          	nop
   102fc:	00813403          	ld	s0,8(sp)
   10300:	01010113          	add	sp,sp,16
   10304:	00008067          	ret

0000000000010308 <read_char>:
   10308:	fe010113          	add	sp,sp,-32
   1030c:	00813c23          	sd	s0,24(sp)
   10310:	02010413          	add	s0,sp,32
   10314:	00400893          	li	a7,4
   10318:	00000073          	ecall
   1031c:	00050793          	mv	a5,a0
   10320:	fef407a3          	sb	a5,-17(s0)
   10324:	fef44783          	lbu	a5,-17(s0)
   10328:	00078513          	mv	a0,a5
   1032c:	01813403          	ld	s0,24(sp)
   10330:	02010113          	add	sp,sp,32
   10334:	00008067          	ret

0000000000010338 <read_num>:
   10338:	fe010113          	add	sp,sp,-32
   1033c:	00813c23          	sd	s0,24(sp)
   10340:	02010413          	add	s0,sp,32
   10344:	00500893          	li	a7,5
   10348:	00000073          	ecall
   1034c:	00050793          	mv	a5,a0
   10350:	fef43423          	sd	a5,-24(s0)
   10354:	fe843783          	ld	a5,-24(s0)
   10358:	00078513          	mv	a0,a5
   1035c:	01813403          	ld	s0,24(sp)
   10360:	02010113          	add	sp,sp,32
   10364:	00008067          	ret

0000000000010368 <print_f>:
   10368:	fe010113          	add	sp,sp,-32
   1036c:	00813c23          	sd	s0,24(sp)
   10370:	02010413          	add	s0,sp,32
   10374:	fea42627          	fsw	fa0,-20(s0)
   10378:	e0050553          	fmv.x.w	a0,fa0
   1037c:	00600893          	li	a7,6
   10380:	00000073          	ecall
   10384:	00000013          	nop
   10388:	01813403          	ld	s0,24(sp)
   1038c:	02010113          	add	sp,sp,32
   10390:	00008067          	ret

0000000000010394 <__libc_init_array>:
   10394:	fe010113          	add	sp,sp,-32
   10398:	00813823          	sd	s0,16(sp)
   1039c:	000117b7          	lui	a5,0x11
   103a0:	00011437          	lui	s0,0x11
   103a4:	01213023          	sd	s2,0(sp)
   103a8:	79478793          	add	a5,a5,1940 # 11794 <__preinit_array_end>
   103ac:	79440713          	add	a4,s0,1940 # 11794 <__preinit_array_end>
   103b0:	00113c23          	sd	ra,24(sp)
   103b4:	00913423          	sd	s1,8(sp)
   103b8:	40e78933          	sub	s2,a5,a4
   103bc:	02e78263          	beq	a5,a4,103e0 <__libc_init_array+0x4c>
   103c0:	40395913          	sra	s2,s2,0x3
   103c4:	79440413          	add	s0,s0,1940
   103c8:	00000493          	li	s1,0
   103cc:	00043783          	ld	a5,0(s0)
   103d0:	00148493          	add	s1,s1,1
   103d4:	00840413          	add	s0,s0,8
   103d8:	000780e7          	jalr	a5
   103dc:	ff24e8e3          	bltu	s1,s2,103cc <__libc_init_array+0x38>
   103e0:	00011437          	lui	s0,0x11
   103e4:	000117b7          	lui	a5,0x11
   103e8:	7a878793          	add	a5,a5,1960 # 117a8 <__do_global_dtors_aux_fini_array_entry>
   103ec:	79840713          	add	a4,s0,1944 # 11798 <__init_array_start>
   103f0:	40e78933          	sub	s2,a5,a4
   103f4:	40395913          	sra	s2,s2,0x3
   103f8:	02e78063          	beq	a5,a4,10418 <__libc_init_array+0x84>
   103fc:	79840413          	add	s0,s0,1944
   10400:	00000493          	li	s1,0
   10404:	00043783          	ld	a5,0(s0)
   10408:	00148493          	add	s1,s1,1
   1040c:	00840413          	add	s0,s0,8
   10410:	000780e7          	jalr	a5
   10414:	ff24e8e3          	bltu	s1,s2,10404 <__libc_init_array+0x70>
   10418:	01813083          	ld	ra,24(sp)
   1041c:	01013403          	ld	s0,16(sp)
   10420:	00813483          	ld	s1,8(sp)
   10424:	00013903          	ld	s2,0(sp)
   10428:	02010113          	add	sp,sp,32
   1042c:	00008067          	ret

0000000000010430 <memset>:
   10430:	00f00313          	li	t1,15
   10434:	00050713          	mv	a4,a0
   10438:	02c37a63          	bgeu	t1,a2,1046c <memset+0x3c>
   1043c:	00f77793          	and	a5,a4,15
   10440:	0a079063          	bnez	a5,104e0 <memset+0xb0>
   10444:	06059e63          	bnez	a1,104c0 <memset+0x90>
   10448:	ff067693          	and	a3,a2,-16
   1044c:	00f67613          	and	a2,a2,15
   10450:	00e686b3          	add	a3,a3,a4
   10454:	00b73023          	sd	a1,0(a4)
   10458:	00b73423          	sd	a1,8(a4)
   1045c:	01070713          	add	a4,a4,16
   10460:	fed76ae3          	bltu	a4,a3,10454 <memset+0x24>
   10464:	00061463          	bnez	a2,1046c <memset+0x3c>
   10468:	00008067          	ret
   1046c:	40c306b3          	sub	a3,t1,a2
   10470:	00269693          	sll	a3,a3,0x2
   10474:	00000297          	auipc	t0,0x0
   10478:	005686b3          	add	a3,a3,t0
   1047c:	00c68067          	jr	12(a3)
   10480:	00b70723          	sb	a1,14(a4)
   10484:	00b706a3          	sb	a1,13(a4)
   10488:	00b70623          	sb	a1,12(a4)
   1048c:	00b705a3          	sb	a1,11(a4)
   10490:	00b70523          	sb	a1,10(a4)
   10494:	00b704a3          	sb	a1,9(a4)
   10498:	00b70423          	sb	a1,8(a4)
   1049c:	00b703a3          	sb	a1,7(a4)
   104a0:	00b70323          	sb	a1,6(a4)
   104a4:	00b702a3          	sb	a1,5(a4)
   104a8:	00b70223          	sb	a1,4(a4)
   104ac:	00b701a3          	sb	a1,3(a4)
   104b0:	00b70123          	sb	a1,2(a4)
   104b4:	00b700a3          	sb	a1,1(a4)
   104b8:	00b70023          	sb	a1,0(a4)
   104bc:	00008067          	ret
   104c0:	0ff5f593          	zext.b	a1,a1
   104c4:	00859693          	sll	a3,a1,0x8
   104c8:	00d5e5b3          	or	a1,a1,a3
   104cc:	01059693          	sll	a3,a1,0x10
   104d0:	00d5e5b3          	or	a1,a1,a3
   104d4:	02059693          	sll	a3,a1,0x20
   104d8:	00d5e5b3          	or	a1,a1,a3
   104dc:	f6dff06f          	j	10448 <memset+0x18>
   104e0:	00279693          	sll	a3,a5,0x2
   104e4:	00000297          	auipc	t0,0x0
   104e8:	005686b3          	add	a3,a3,t0
   104ec:	00008293          	mv	t0,ra
   104f0:	f98680e7          	jalr	-104(a3)
   104f4:	00028093          	mv	ra,t0
   104f8:	ff078793          	add	a5,a5,-16
   104fc:	40f70733          	sub	a4,a4,a5
   10500:	00f60633          	add	a2,a2,a5
   10504:	f6c374e3          	bgeu	t1,a2,1046c <memset+0x3c>
   10508:	f3dff06f          	j	10444 <memset+0x14>

000000000001050c <__call_exitprocs>:
   1050c:	fb010113          	add	sp,sp,-80
   10510:	03413023          	sd	s4,32(sp)
   10514:	f481ba03          	ld	s4,-184(gp) # 11ef8 <_global_impure_ptr>
   10518:	03213823          	sd	s2,48(sp)
   1051c:	04113423          	sd	ra,72(sp)
   10520:	1f8a3903          	ld	s2,504(s4)
   10524:	04813023          	sd	s0,64(sp)
   10528:	02913c23          	sd	s1,56(sp)
   1052c:	03313423          	sd	s3,40(sp)
   10530:	01513c23          	sd	s5,24(sp)
   10534:	01613823          	sd	s6,16(sp)
   10538:	01713423          	sd	s7,8(sp)
   1053c:	01813023          	sd	s8,0(sp)
   10540:	04090063          	beqz	s2,10580 <__call_exitprocs+0x74>
   10544:	00050b13          	mv	s6,a0
   10548:	00058b93          	mv	s7,a1
   1054c:	00100a93          	li	s5,1
   10550:	fff00993          	li	s3,-1
   10554:	00892483          	lw	s1,8(s2)
   10558:	fff4841b          	addw	s0,s1,-1
   1055c:	02044263          	bltz	s0,10580 <__call_exitprocs+0x74>
   10560:	00349493          	sll	s1,s1,0x3
   10564:	009904b3          	add	s1,s2,s1
   10568:	040b8463          	beqz	s7,105b0 <__call_exitprocs+0xa4>
   1056c:	2084b783          	ld	a5,520(s1)
   10570:	05778063          	beq	a5,s7,105b0 <__call_exitprocs+0xa4>
   10574:	fff4041b          	addw	s0,s0,-1
   10578:	ff848493          	add	s1,s1,-8
   1057c:	ff3416e3          	bne	s0,s3,10568 <__call_exitprocs+0x5c>
   10580:	04813083          	ld	ra,72(sp)
   10584:	04013403          	ld	s0,64(sp)
   10588:	03813483          	ld	s1,56(sp)
   1058c:	03013903          	ld	s2,48(sp)
   10590:	02813983          	ld	s3,40(sp)
   10594:	02013a03          	ld	s4,32(sp)
   10598:	01813a83          	ld	s5,24(sp)
   1059c:	01013b03          	ld	s6,16(sp)
   105a0:	00813b83          	ld	s7,8(sp)
   105a4:	00013c03          	ld	s8,0(sp)
   105a8:	05010113          	add	sp,sp,80
   105ac:	00008067          	ret
   105b0:	00892783          	lw	a5,8(s2)
   105b4:	0084b703          	ld	a4,8(s1)
   105b8:	fff7879b          	addw	a5,a5,-1
   105bc:	06878263          	beq	a5,s0,10620 <__call_exitprocs+0x114>
   105c0:	0004b423          	sd	zero,8(s1)
   105c4:	fa0708e3          	beqz	a4,10574 <__call_exitprocs+0x68>
   105c8:	31092783          	lw	a5,784(s2)
   105cc:	008a96bb          	sllw	a3,s5,s0
   105d0:	00892c03          	lw	s8,8(s2)
   105d4:	00d7f7b3          	and	a5,a5,a3
   105d8:	0007879b          	sext.w	a5,a5
   105dc:	02079263          	bnez	a5,10600 <__call_exitprocs+0xf4>
   105e0:	000700e7          	jalr	a4
   105e4:	00892703          	lw	a4,8(s2)
   105e8:	1f8a3783          	ld	a5,504(s4)
   105ec:	01871463          	bne	a4,s8,105f4 <__call_exitprocs+0xe8>
   105f0:	f92782e3          	beq	a5,s2,10574 <__call_exitprocs+0x68>
   105f4:	f80786e3          	beqz	a5,10580 <__call_exitprocs+0x74>
   105f8:	00078913          	mv	s2,a5
   105fc:	f59ff06f          	j	10554 <__call_exitprocs+0x48>
   10600:	31492783          	lw	a5,788(s2)
   10604:	1084b583          	ld	a1,264(s1)
   10608:	00d7f7b3          	and	a5,a5,a3
   1060c:	0007879b          	sext.w	a5,a5
   10610:	00079c63          	bnez	a5,10628 <__call_exitprocs+0x11c>
   10614:	000b0513          	mv	a0,s6
   10618:	000700e7          	jalr	a4
   1061c:	fc9ff06f          	j	105e4 <__call_exitprocs+0xd8>
   10620:	00892423          	sw	s0,8(s2)
   10624:	fa1ff06f          	j	105c4 <__call_exitprocs+0xb8>
   10628:	00058513          	mv	a0,a1
   1062c:	000700e7          	jalr	a4
   10630:	fb5ff06f          	j	105e4 <__call_exitprocs+0xd8>

0000000000010634 <__libc_fini_array>:
   10634:	fe010113          	add	sp,sp,-32
   10638:	00813823          	sd	s0,16(sp)
   1063c:	000117b7          	lui	a5,0x11
   10640:	00011437          	lui	s0,0x11
   10644:	7a878793          	add	a5,a5,1960 # 117a8 <__do_global_dtors_aux_fini_array_entry>
   10648:	7b040413          	add	s0,s0,1968 # 117b0 <impure_data>
   1064c:	40f40433          	sub	s0,s0,a5
   10650:	00913423          	sd	s1,8(sp)
   10654:	00113c23          	sd	ra,24(sp)
   10658:	40345493          	sra	s1,s0,0x3
   1065c:	02048063          	beqz	s1,1067c <__libc_fini_array+0x48>
   10660:	ff840413          	add	s0,s0,-8
   10664:	00f40433          	add	s0,s0,a5
   10668:	00043783          	ld	a5,0(s0)
   1066c:	fff48493          	add	s1,s1,-1
   10670:	ff840413          	add	s0,s0,-8
   10674:	000780e7          	jalr	a5
   10678:	fe0498e3          	bnez	s1,10668 <__libc_fini_array+0x34>
   1067c:	01813083          	ld	ra,24(sp)
   10680:	01013403          	ld	s0,16(sp)
   10684:	00813483          	ld	s1,8(sp)
   10688:	02010113          	add	sp,sp,32
   1068c:	00008067          	ret

0000000000010690 <atexit>:
   10690:	00050593          	mv	a1,a0
   10694:	00000693          	li	a3,0
   10698:	00000613          	li	a2,0
   1069c:	00000513          	li	a0,0
   106a0:	0040006f          	j	106a4 <__register_exitproc>

00000000000106a4 <__register_exitproc>:
   106a4:	f481b703          	ld	a4,-184(gp) # 11ef8 <_global_impure_ptr>
   106a8:	1f873783          	ld	a5,504(a4)
   106ac:	06078063          	beqz	a5,1070c <__register_exitproc+0x68>
   106b0:	0087a703          	lw	a4,8(a5)
   106b4:	01f00813          	li	a6,31
   106b8:	08e84663          	blt	a6,a4,10744 <__register_exitproc+0xa0>
   106bc:	02050863          	beqz	a0,106ec <__register_exitproc+0x48>
   106c0:	00371813          	sll	a6,a4,0x3
   106c4:	01078833          	add	a6,a5,a6
   106c8:	10c83823          	sd	a2,272(a6)
   106cc:	3107a883          	lw	a7,784(a5)
   106d0:	00100613          	li	a2,1
   106d4:	00e6163b          	sllw	a2,a2,a4
   106d8:	00c8e8b3          	or	a7,a7,a2
   106dc:	3117a823          	sw	a7,784(a5)
   106e0:	20d83823          	sd	a3,528(a6)
   106e4:	00200693          	li	a3,2
   106e8:	02d50863          	beq	a0,a3,10718 <__register_exitproc+0x74>
   106ec:	00270693          	add	a3,a4,2
   106f0:	00369693          	sll	a3,a3,0x3
   106f4:	0017071b          	addw	a4,a4,1
   106f8:	00e7a423          	sw	a4,8(a5)
   106fc:	00d787b3          	add	a5,a5,a3
   10700:	00b7b023          	sd	a1,0(a5)
   10704:	00000513          	li	a0,0
   10708:	00008067          	ret
   1070c:	20070793          	add	a5,a4,512
   10710:	1ef73c23          	sd	a5,504(a4)
   10714:	f9dff06f          	j	106b0 <__register_exitproc+0xc>
   10718:	3147a683          	lw	a3,788(a5)
   1071c:	00000513          	li	a0,0
   10720:	00c6e6b3          	or	a3,a3,a2
   10724:	30d7aa23          	sw	a3,788(a5)
   10728:	00270693          	add	a3,a4,2
   1072c:	00369693          	sll	a3,a3,0x3
   10730:	0017071b          	addw	a4,a4,1
   10734:	00e7a423          	sw	a4,8(a5)
   10738:	00d787b3          	add	a5,a5,a3
   1073c:	00b7b023          	sd	a1,0(a5)
   10740:	00008067          	ret
   10744:	fff00513          	li	a0,-1
   10748:	00008067          	ret

000000000001074c <_exit>:
   1074c:	05d00893          	li	a7,93
   10750:	00000073          	ecall
   10754:	00054463          	bltz	a0,1075c <_exit+0x10>
   10758:	0000006f          	j	10758 <_exit+0xc>
   1075c:	ff010113          	add	sp,sp,-16
   10760:	00813023          	sd	s0,0(sp)
   10764:	00050413          	mv	s0,a0
   10768:	00113423          	sd	ra,8(sp)
   1076c:	4080043b          	negw	s0,s0
   10770:	00c000ef          	jal	1077c <__errno>
   10774:	00852023          	sw	s0,0(a0)
   10778:	0000006f          	j	10778 <_exit+0x2c>

000000000001077c <__errno>:
   1077c:	f581b503          	ld	a0,-168(gp) # 11f08 <_impure_ptr>
   10780:	00008067          	ret
