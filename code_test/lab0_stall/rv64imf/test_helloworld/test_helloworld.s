
/home/yangyx/desktop/CA2/code_test/lab0_stall/rv64imf/test_helloworld/test_helloworld.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	3ac000ef          	jal	104a8 <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11e88 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	5d4000ef          	jal	106e8 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	5d050513          	add	a0,a0,1488 # 105d0 <__libc_fini_array>
   10128:	5040006f          	j	1062c <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	e1018193          	add	gp,gp,-496 # 11f40 <__global_pointer$>
   10138:	f6018513          	add	a0,gp,-160 # 11ea0 <completed.1>
   1013c:	f9818613          	add	a2,gp,-104 # 11ed8 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	284000ef          	jal	103cc <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	4e050513          	add	a0,a0,1248 # 1062c <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	47850513          	add	a0,a0,1144 # 105d0 <__libc_fini_array>
   10160:	4cc000ef          	jal	1062c <atexit>
   10164:	1cc000ef          	jal	10330 <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	06c000ef          	jal	101e0 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f601c783          	lbu	a5,-160(gp) # 11ea0 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00011537          	lui	a0,0x11
   1019c:	72050513          	add	a0,a0,1824 # 11720 <__EH_FRAME_BEGIN__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f6f18023          	sb	a5,-160(gp) # 11ea0 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00011537          	lui	a0,0x11
   101cc:	f6818593          	add	a1,gp,-152 # 11ea8 <object.0>
   101d0:	72050513          	add	a0,a0,1824 # 11720 <__EH_FRAME_BEGIN__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <main>:
   101e0:	ff010113          	add	sp,sp,-16
   101e4:	00813423          	sd	s0,8(sp)
   101e8:	01010413          	add	s0,sp,16
   101ec:	00000793          	li	a5,0
   101f0:	00078513          	mv	a0,a5
   101f4:	00813403          	ld	s0,8(sp)
   101f8:	01010113          	add	sp,sp,16
   101fc:	00008067          	ret

0000000000010200 <print_d>:
   10200:	fe010113          	add	sp,sp,-32
   10204:	00813c23          	sd	s0,24(sp)
   10208:	02010413          	add	s0,sp,32
   1020c:	00050793          	mv	a5,a0
   10210:	fef42623          	sw	a5,-20(s0)
   10214:	00200893          	li	a7,2
   10218:	00000073          	ecall
   1021c:	00000013          	nop
   10220:	01813403          	ld	s0,24(sp)
   10224:	02010113          	add	sp,sp,32
   10228:	00008067          	ret

000000000001022c <print_s>:
   1022c:	fe010113          	add	sp,sp,-32
   10230:	00813c23          	sd	s0,24(sp)
   10234:	02010413          	add	s0,sp,32
   10238:	fea43423          	sd	a0,-24(s0)
   1023c:	00000893          	li	a7,0
   10240:	00000073          	ecall
   10244:	00000013          	nop
   10248:	01813403          	ld	s0,24(sp)
   1024c:	02010113          	add	sp,sp,32
   10250:	00008067          	ret

0000000000010254 <print_c>:
   10254:	fe010113          	add	sp,sp,-32
   10258:	00813c23          	sd	s0,24(sp)
   1025c:	02010413          	add	s0,sp,32
   10260:	00050793          	mv	a5,a0
   10264:	fef407a3          	sb	a5,-17(s0)
   10268:	00100893          	li	a7,1
   1026c:	00000073          	ecall
   10270:	00000013          	nop
   10274:	01813403          	ld	s0,24(sp)
   10278:	02010113          	add	sp,sp,32
   1027c:	00008067          	ret

0000000000010280 <exit_proc>:
   10280:	ff010113          	add	sp,sp,-16
   10284:	00813423          	sd	s0,8(sp)
   10288:	01010413          	add	s0,sp,16
   1028c:	00300893          	li	a7,3
   10290:	00000073          	ecall
   10294:	00000013          	nop
   10298:	00813403          	ld	s0,8(sp)
   1029c:	01010113          	add	sp,sp,16
   102a0:	00008067          	ret

00000000000102a4 <read_char>:
   102a4:	fe010113          	add	sp,sp,-32
   102a8:	00813c23          	sd	s0,24(sp)
   102ac:	02010413          	add	s0,sp,32
   102b0:	00400893          	li	a7,4
   102b4:	00000073          	ecall
   102b8:	00050793          	mv	a5,a0
   102bc:	fef407a3          	sb	a5,-17(s0)
   102c0:	fef44783          	lbu	a5,-17(s0)
   102c4:	00078513          	mv	a0,a5
   102c8:	01813403          	ld	s0,24(sp)
   102cc:	02010113          	add	sp,sp,32
   102d0:	00008067          	ret

00000000000102d4 <read_num>:
   102d4:	fe010113          	add	sp,sp,-32
   102d8:	00813c23          	sd	s0,24(sp)
   102dc:	02010413          	add	s0,sp,32
   102e0:	00500893          	li	a7,5
   102e4:	00000073          	ecall
   102e8:	00050793          	mv	a5,a0
   102ec:	fef43423          	sd	a5,-24(s0)
   102f0:	fe843783          	ld	a5,-24(s0)
   102f4:	00078513          	mv	a0,a5
   102f8:	01813403          	ld	s0,24(sp)
   102fc:	02010113          	add	sp,sp,32
   10300:	00008067          	ret

0000000000010304 <print_f>:
   10304:	fe010113          	add	sp,sp,-32
   10308:	00813c23          	sd	s0,24(sp)
   1030c:	02010413          	add	s0,sp,32
   10310:	fea42627          	fsw	fa0,-20(s0)
   10314:	e0050553          	fmv.x.w	a0,fa0
   10318:	00600893          	li	a7,6
   1031c:	00000073          	ecall
   10320:	00000013          	nop
   10324:	01813403          	ld	s0,24(sp)
   10328:	02010113          	add	sp,sp,32
   1032c:	00008067          	ret

0000000000010330 <__libc_init_array>:
   10330:	fe010113          	add	sp,sp,-32
   10334:	00813823          	sd	s0,16(sp)
   10338:	000117b7          	lui	a5,0x11
   1033c:	00011437          	lui	s0,0x11
   10340:	01213023          	sd	s2,0(sp)
   10344:	72478793          	add	a5,a5,1828 # 11724 <__preinit_array_end>
   10348:	72440713          	add	a4,s0,1828 # 11724 <__preinit_array_end>
   1034c:	00113c23          	sd	ra,24(sp)
   10350:	00913423          	sd	s1,8(sp)
   10354:	40e78933          	sub	s2,a5,a4
   10358:	02e78263          	beq	a5,a4,1037c <__libc_init_array+0x4c>
   1035c:	40395913          	sra	s2,s2,0x3
   10360:	72440413          	add	s0,s0,1828
   10364:	00000493          	li	s1,0
   10368:	00043783          	ld	a5,0(s0)
   1036c:	00148493          	add	s1,s1,1
   10370:	00840413          	add	s0,s0,8
   10374:	000780e7          	jalr	a5
   10378:	ff24e8e3          	bltu	s1,s2,10368 <__libc_init_array+0x38>
   1037c:	00011437          	lui	s0,0x11
   10380:	000117b7          	lui	a5,0x11
   10384:	73878793          	add	a5,a5,1848 # 11738 <__do_global_dtors_aux_fini_array_entry>
   10388:	72840713          	add	a4,s0,1832 # 11728 <__init_array_start>
   1038c:	40e78933          	sub	s2,a5,a4
   10390:	40395913          	sra	s2,s2,0x3
   10394:	02e78063          	beq	a5,a4,103b4 <__libc_init_array+0x84>
   10398:	72840413          	add	s0,s0,1832
   1039c:	00000493          	li	s1,0
   103a0:	00043783          	ld	a5,0(s0)
   103a4:	00148493          	add	s1,s1,1
   103a8:	00840413          	add	s0,s0,8
   103ac:	000780e7          	jalr	a5
   103b0:	ff24e8e3          	bltu	s1,s2,103a0 <__libc_init_array+0x70>
   103b4:	01813083          	ld	ra,24(sp)
   103b8:	01013403          	ld	s0,16(sp)
   103bc:	00813483          	ld	s1,8(sp)
   103c0:	00013903          	ld	s2,0(sp)
   103c4:	02010113          	add	sp,sp,32
   103c8:	00008067          	ret

00000000000103cc <memset>:
   103cc:	00f00313          	li	t1,15
   103d0:	00050713          	mv	a4,a0
   103d4:	02c37a63          	bgeu	t1,a2,10408 <memset+0x3c>
   103d8:	00f77793          	and	a5,a4,15
   103dc:	0a079063          	bnez	a5,1047c <memset+0xb0>
   103e0:	06059e63          	bnez	a1,1045c <memset+0x90>
   103e4:	ff067693          	and	a3,a2,-16
   103e8:	00f67613          	and	a2,a2,15
   103ec:	00e686b3          	add	a3,a3,a4
   103f0:	00b73023          	sd	a1,0(a4)
   103f4:	00b73423          	sd	a1,8(a4)
   103f8:	01070713          	add	a4,a4,16
   103fc:	fed76ae3          	bltu	a4,a3,103f0 <memset+0x24>
   10400:	00061463          	bnez	a2,10408 <memset+0x3c>
   10404:	00008067          	ret
   10408:	40c306b3          	sub	a3,t1,a2
   1040c:	00269693          	sll	a3,a3,0x2
   10410:	00000297          	auipc	t0,0x0
   10414:	005686b3          	add	a3,a3,t0
   10418:	00c68067          	jr	12(a3)
   1041c:	00b70723          	sb	a1,14(a4)
   10420:	00b706a3          	sb	a1,13(a4)
   10424:	00b70623          	sb	a1,12(a4)
   10428:	00b705a3          	sb	a1,11(a4)
   1042c:	00b70523          	sb	a1,10(a4)
   10430:	00b704a3          	sb	a1,9(a4)
   10434:	00b70423          	sb	a1,8(a4)
   10438:	00b703a3          	sb	a1,7(a4)
   1043c:	00b70323          	sb	a1,6(a4)
   10440:	00b702a3          	sb	a1,5(a4)
   10444:	00b70223          	sb	a1,4(a4)
   10448:	00b701a3          	sb	a1,3(a4)
   1044c:	00b70123          	sb	a1,2(a4)
   10450:	00b700a3          	sb	a1,1(a4)
   10454:	00b70023          	sb	a1,0(a4)
   10458:	00008067          	ret
   1045c:	0ff5f593          	zext.b	a1,a1
   10460:	00859693          	sll	a3,a1,0x8
   10464:	00d5e5b3          	or	a1,a1,a3
   10468:	01059693          	sll	a3,a1,0x10
   1046c:	00d5e5b3          	or	a1,a1,a3
   10470:	02059693          	sll	a3,a1,0x20
   10474:	00d5e5b3          	or	a1,a1,a3
   10478:	f6dff06f          	j	103e4 <memset+0x18>
   1047c:	00279693          	sll	a3,a5,0x2
   10480:	00000297          	auipc	t0,0x0
   10484:	005686b3          	add	a3,a3,t0
   10488:	00008293          	mv	t0,ra
   1048c:	f98680e7          	jalr	-104(a3)
   10490:	00028093          	mv	ra,t0
   10494:	ff078793          	add	a5,a5,-16
   10498:	40f70733          	sub	a4,a4,a5
   1049c:	00f60633          	add	a2,a2,a5
   104a0:	f6c374e3          	bgeu	t1,a2,10408 <memset+0x3c>
   104a4:	f3dff06f          	j	103e0 <memset+0x14>

00000000000104a8 <__call_exitprocs>:
   104a8:	fb010113          	add	sp,sp,-80
   104ac:	03413023          	sd	s4,32(sp)
   104b0:	f481ba03          	ld	s4,-184(gp) # 11e88 <_global_impure_ptr>
   104b4:	03213823          	sd	s2,48(sp)
   104b8:	04113423          	sd	ra,72(sp)
   104bc:	1f8a3903          	ld	s2,504(s4)
   104c0:	04813023          	sd	s0,64(sp)
   104c4:	02913c23          	sd	s1,56(sp)
   104c8:	03313423          	sd	s3,40(sp)
   104cc:	01513c23          	sd	s5,24(sp)
   104d0:	01613823          	sd	s6,16(sp)
   104d4:	01713423          	sd	s7,8(sp)
   104d8:	01813023          	sd	s8,0(sp)
   104dc:	04090063          	beqz	s2,1051c <__call_exitprocs+0x74>
   104e0:	00050b13          	mv	s6,a0
   104e4:	00058b93          	mv	s7,a1
   104e8:	00100a93          	li	s5,1
   104ec:	fff00993          	li	s3,-1
   104f0:	00892483          	lw	s1,8(s2)
   104f4:	fff4841b          	addw	s0,s1,-1
   104f8:	02044263          	bltz	s0,1051c <__call_exitprocs+0x74>
   104fc:	00349493          	sll	s1,s1,0x3
   10500:	009904b3          	add	s1,s2,s1
   10504:	040b8463          	beqz	s7,1054c <__call_exitprocs+0xa4>
   10508:	2084b783          	ld	a5,520(s1)
   1050c:	05778063          	beq	a5,s7,1054c <__call_exitprocs+0xa4>
   10510:	fff4041b          	addw	s0,s0,-1
   10514:	ff848493          	add	s1,s1,-8
   10518:	ff3416e3          	bne	s0,s3,10504 <__call_exitprocs+0x5c>
   1051c:	04813083          	ld	ra,72(sp)
   10520:	04013403          	ld	s0,64(sp)
   10524:	03813483          	ld	s1,56(sp)
   10528:	03013903          	ld	s2,48(sp)
   1052c:	02813983          	ld	s3,40(sp)
   10530:	02013a03          	ld	s4,32(sp)
   10534:	01813a83          	ld	s5,24(sp)
   10538:	01013b03          	ld	s6,16(sp)
   1053c:	00813b83          	ld	s7,8(sp)
   10540:	00013c03          	ld	s8,0(sp)
   10544:	05010113          	add	sp,sp,80
   10548:	00008067          	ret
   1054c:	00892783          	lw	a5,8(s2)
   10550:	0084b703          	ld	a4,8(s1)
   10554:	fff7879b          	addw	a5,a5,-1
   10558:	06878263          	beq	a5,s0,105bc <__call_exitprocs+0x114>
   1055c:	0004b423          	sd	zero,8(s1)
   10560:	fa0708e3          	beqz	a4,10510 <__call_exitprocs+0x68>
   10564:	31092783          	lw	a5,784(s2)
   10568:	008a96bb          	sllw	a3,s5,s0
   1056c:	00892c03          	lw	s8,8(s2)
   10570:	00d7f7b3          	and	a5,a5,a3
   10574:	0007879b          	sext.w	a5,a5
   10578:	02079263          	bnez	a5,1059c <__call_exitprocs+0xf4>
   1057c:	000700e7          	jalr	a4
   10580:	00892703          	lw	a4,8(s2)
   10584:	1f8a3783          	ld	a5,504(s4)
   10588:	01871463          	bne	a4,s8,10590 <__call_exitprocs+0xe8>
   1058c:	f92782e3          	beq	a5,s2,10510 <__call_exitprocs+0x68>
   10590:	f80786e3          	beqz	a5,1051c <__call_exitprocs+0x74>
   10594:	00078913          	mv	s2,a5
   10598:	f59ff06f          	j	104f0 <__call_exitprocs+0x48>
   1059c:	31492783          	lw	a5,788(s2)
   105a0:	1084b583          	ld	a1,264(s1)
   105a4:	00d7f7b3          	and	a5,a5,a3
   105a8:	0007879b          	sext.w	a5,a5
   105ac:	00079c63          	bnez	a5,105c4 <__call_exitprocs+0x11c>
   105b0:	000b0513          	mv	a0,s6
   105b4:	000700e7          	jalr	a4
   105b8:	fc9ff06f          	j	10580 <__call_exitprocs+0xd8>
   105bc:	00892423          	sw	s0,8(s2)
   105c0:	fa1ff06f          	j	10560 <__call_exitprocs+0xb8>
   105c4:	00058513          	mv	a0,a1
   105c8:	000700e7          	jalr	a4
   105cc:	fb5ff06f          	j	10580 <__call_exitprocs+0xd8>

00000000000105d0 <__libc_fini_array>:
   105d0:	fe010113          	add	sp,sp,-32
   105d4:	00813823          	sd	s0,16(sp)
   105d8:	000117b7          	lui	a5,0x11
   105dc:	00011437          	lui	s0,0x11
   105e0:	73878793          	add	a5,a5,1848 # 11738 <__do_global_dtors_aux_fini_array_entry>
   105e4:	74040413          	add	s0,s0,1856 # 11740 <impure_data>
   105e8:	40f40433          	sub	s0,s0,a5
   105ec:	00913423          	sd	s1,8(sp)
   105f0:	00113c23          	sd	ra,24(sp)
   105f4:	40345493          	sra	s1,s0,0x3
   105f8:	02048063          	beqz	s1,10618 <__libc_fini_array+0x48>
   105fc:	ff840413          	add	s0,s0,-8
   10600:	00f40433          	add	s0,s0,a5
   10604:	00043783          	ld	a5,0(s0)
   10608:	fff48493          	add	s1,s1,-1
   1060c:	ff840413          	add	s0,s0,-8
   10610:	000780e7          	jalr	a5
   10614:	fe0498e3          	bnez	s1,10604 <__libc_fini_array+0x34>
   10618:	01813083          	ld	ra,24(sp)
   1061c:	01013403          	ld	s0,16(sp)
   10620:	00813483          	ld	s1,8(sp)
   10624:	02010113          	add	sp,sp,32
   10628:	00008067          	ret

000000000001062c <atexit>:
   1062c:	00050593          	mv	a1,a0
   10630:	00000693          	li	a3,0
   10634:	00000613          	li	a2,0
   10638:	00000513          	li	a0,0
   1063c:	0040006f          	j	10640 <__register_exitproc>

0000000000010640 <__register_exitproc>:
   10640:	f481b703          	ld	a4,-184(gp) # 11e88 <_global_impure_ptr>
   10644:	1f873783          	ld	a5,504(a4)
   10648:	06078063          	beqz	a5,106a8 <__register_exitproc+0x68>
   1064c:	0087a703          	lw	a4,8(a5)
   10650:	01f00813          	li	a6,31
   10654:	08e84663          	blt	a6,a4,106e0 <__register_exitproc+0xa0>
   10658:	02050863          	beqz	a0,10688 <__register_exitproc+0x48>
   1065c:	00371813          	sll	a6,a4,0x3
   10660:	01078833          	add	a6,a5,a6
   10664:	10c83823          	sd	a2,272(a6)
   10668:	3107a883          	lw	a7,784(a5)
   1066c:	00100613          	li	a2,1
   10670:	00e6163b          	sllw	a2,a2,a4
   10674:	00c8e8b3          	or	a7,a7,a2
   10678:	3117a823          	sw	a7,784(a5)
   1067c:	20d83823          	sd	a3,528(a6)
   10680:	00200693          	li	a3,2
   10684:	02d50863          	beq	a0,a3,106b4 <__register_exitproc+0x74>
   10688:	00270693          	add	a3,a4,2
   1068c:	00369693          	sll	a3,a3,0x3
   10690:	0017071b          	addw	a4,a4,1
   10694:	00e7a423          	sw	a4,8(a5)
   10698:	00d787b3          	add	a5,a5,a3
   1069c:	00b7b023          	sd	a1,0(a5)
   106a0:	00000513          	li	a0,0
   106a4:	00008067          	ret
   106a8:	20070793          	add	a5,a4,512
   106ac:	1ef73c23          	sd	a5,504(a4)
   106b0:	f9dff06f          	j	1064c <__register_exitproc+0xc>
   106b4:	3147a683          	lw	a3,788(a5)
   106b8:	00000513          	li	a0,0
   106bc:	00c6e6b3          	or	a3,a3,a2
   106c0:	30d7aa23          	sw	a3,788(a5)
   106c4:	00270693          	add	a3,a4,2
   106c8:	00369693          	sll	a3,a3,0x3
   106cc:	0017071b          	addw	a4,a4,1
   106d0:	00e7a423          	sw	a4,8(a5)
   106d4:	00d787b3          	add	a5,a5,a3
   106d8:	00b7b023          	sd	a1,0(a5)
   106dc:	00008067          	ret
   106e0:	fff00513          	li	a0,-1
   106e4:	00008067          	ret

00000000000106e8 <_exit>:
   106e8:	05d00893          	li	a7,93
   106ec:	00000073          	ecall
   106f0:	00054463          	bltz	a0,106f8 <_exit+0x10>
   106f4:	0000006f          	j	106f4 <_exit+0xc>
   106f8:	ff010113          	add	sp,sp,-16
   106fc:	00813023          	sd	s0,0(sp)
   10700:	00050413          	mv	s0,a0
   10704:	00113423          	sd	ra,8(sp)
   10708:	4080043b          	negw	s0,s0
   1070c:	00c000ef          	jal	10718 <__errno>
   10710:	00852023          	sw	s0,0(a0)
   10714:	0000006f          	j	10714 <_exit+0x2c>

0000000000010718 <__errno>:
   10718:	f581b503          	ld	a0,-168(gp) # 11e98 <_impure_ptr>
   1071c:	00008067          	ret
