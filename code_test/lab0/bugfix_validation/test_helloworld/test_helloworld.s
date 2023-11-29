
/home/yangyx/desktop/CA2/code_test/lab0/bugfix_validation/test_helloworld/test_helloworld.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	3c4000ef          	jal	104c0 <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11eb0 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	5ec000ef          	jal	10700 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	5e850513          	add	a0,a0,1512 # 105e8 <__libc_fini_array>
   10128:	51c0006f          	j	10644 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	e3818193          	add	gp,gp,-456 # 11f68 <__global_pointer$>
   10138:	f6018513          	add	a0,gp,-160 # 11ec8 <completed.1>
   1013c:	f9818613          	add	a2,gp,-104 # 11f00 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	29c000ef          	jal	103e4 <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	4f850513          	add	a0,a0,1272 # 10644 <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	49050513          	add	a0,a0,1168 # 105e8 <__libc_fini_array>
   10160:	4e4000ef          	jal	10644 <atexit>
   10164:	1e4000ef          	jal	10348 <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	06c000ef          	jal	101e0 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f601c783          	lbu	a5,-160(gp) # 11ec8 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00011537          	lui	a0,0x11
   1019c:	74850513          	add	a0,a0,1864 # 11748 <__EH_FRAME_BEGIN__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f6f18023          	sb	a5,-160(gp) # 11ec8 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00011537          	lui	a0,0x11
   101cc:	f6818593          	add	a1,gp,-152 # 11ed0 <object.0>
   101d0:	74850513          	add	a0,a0,1864 # 11748 <__EH_FRAME_BEGIN__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <main>:
   101e0:	ff010113          	add	sp,sp,-16
   101e4:	00113423          	sd	ra,8(sp)
   101e8:	00813023          	sd	s0,0(sp)
   101ec:	01010413          	add	s0,sp,16
   101f0:	000107b7          	lui	a5,0x10
   101f4:	73878513          	add	a0,a5,1848 # 10738 <__errno+0x8>
   101f8:	04c000ef          	jal	10244 <print_s>
   101fc:	09c000ef          	jal	10298 <exit_proc>
   10200:	00000793          	li	a5,0
   10204:	00078513          	mv	a0,a5
   10208:	00813083          	ld	ra,8(sp)
   1020c:	00013403          	ld	s0,0(sp)
   10210:	01010113          	add	sp,sp,16
   10214:	00008067          	ret

0000000000010218 <print_d>:
   10218:	fe010113          	add	sp,sp,-32
   1021c:	00813c23          	sd	s0,24(sp)
   10220:	02010413          	add	s0,sp,32
   10224:	00050793          	mv	a5,a0
   10228:	fef42623          	sw	a5,-20(s0)
   1022c:	00200893          	li	a7,2
   10230:	00000073          	ecall
   10234:	00000013          	nop
   10238:	01813403          	ld	s0,24(sp)
   1023c:	02010113          	add	sp,sp,32
   10240:	00008067          	ret

0000000000010244 <print_s>:
   10244:	fe010113          	add	sp,sp,-32
   10248:	00813c23          	sd	s0,24(sp)
   1024c:	02010413          	add	s0,sp,32
   10250:	fea43423          	sd	a0,-24(s0)
   10254:	00000893          	li	a7,0
   10258:	00000073          	ecall
   1025c:	00000013          	nop
   10260:	01813403          	ld	s0,24(sp)
   10264:	02010113          	add	sp,sp,32
   10268:	00008067          	ret

000000000001026c <print_c>:
   1026c:	fe010113          	add	sp,sp,-32
   10270:	00813c23          	sd	s0,24(sp)
   10274:	02010413          	add	s0,sp,32
   10278:	00050793          	mv	a5,a0
   1027c:	fef407a3          	sb	a5,-17(s0)
   10280:	00100893          	li	a7,1
   10284:	00000073          	ecall
   10288:	00000013          	nop
   1028c:	01813403          	ld	s0,24(sp)
   10290:	02010113          	add	sp,sp,32
   10294:	00008067          	ret

0000000000010298 <exit_proc>:
   10298:	ff010113          	add	sp,sp,-16
   1029c:	00813423          	sd	s0,8(sp)
   102a0:	01010413          	add	s0,sp,16
   102a4:	00300893          	li	a7,3
   102a8:	00000073          	ecall
   102ac:	00000013          	nop
   102b0:	00813403          	ld	s0,8(sp)
   102b4:	01010113          	add	sp,sp,16
   102b8:	00008067          	ret

00000000000102bc <read_char>:
   102bc:	fe010113          	add	sp,sp,-32
   102c0:	00813c23          	sd	s0,24(sp)
   102c4:	02010413          	add	s0,sp,32
   102c8:	00400893          	li	a7,4
   102cc:	00000073          	ecall
   102d0:	00050793          	mv	a5,a0
   102d4:	fef407a3          	sb	a5,-17(s0)
   102d8:	fef44783          	lbu	a5,-17(s0)
   102dc:	00078513          	mv	a0,a5
   102e0:	01813403          	ld	s0,24(sp)
   102e4:	02010113          	add	sp,sp,32
   102e8:	00008067          	ret

00000000000102ec <read_num>:
   102ec:	fe010113          	add	sp,sp,-32
   102f0:	00813c23          	sd	s0,24(sp)
   102f4:	02010413          	add	s0,sp,32
   102f8:	00500893          	li	a7,5
   102fc:	00000073          	ecall
   10300:	00050793          	mv	a5,a0
   10304:	fef43423          	sd	a5,-24(s0)
   10308:	fe843783          	ld	a5,-24(s0)
   1030c:	00078513          	mv	a0,a5
   10310:	01813403          	ld	s0,24(sp)
   10314:	02010113          	add	sp,sp,32
   10318:	00008067          	ret

000000000001031c <print_f>:
   1031c:	fe010113          	add	sp,sp,-32
   10320:	00813c23          	sd	s0,24(sp)
   10324:	02010413          	add	s0,sp,32
   10328:	fea42627          	fsw	fa0,-20(s0)
   1032c:	e0050553          	fmv.x.w	a0,fa0
   10330:	00600893          	li	a7,6
   10334:	00000073          	ecall
   10338:	00000013          	nop
   1033c:	01813403          	ld	s0,24(sp)
   10340:	02010113          	add	sp,sp,32
   10344:	00008067          	ret

0000000000010348 <__libc_init_array>:
   10348:	fe010113          	add	sp,sp,-32
   1034c:	00813823          	sd	s0,16(sp)
   10350:	000117b7          	lui	a5,0x11
   10354:	00011437          	lui	s0,0x11
   10358:	01213023          	sd	s2,0(sp)
   1035c:	74c78793          	add	a5,a5,1868 # 1174c <__preinit_array_end>
   10360:	74c40713          	add	a4,s0,1868 # 1174c <__preinit_array_end>
   10364:	00113c23          	sd	ra,24(sp)
   10368:	00913423          	sd	s1,8(sp)
   1036c:	40e78933          	sub	s2,a5,a4
   10370:	02e78263          	beq	a5,a4,10394 <__libc_init_array+0x4c>
   10374:	40395913          	sra	s2,s2,0x3
   10378:	74c40413          	add	s0,s0,1868
   1037c:	00000493          	li	s1,0
   10380:	00043783          	ld	a5,0(s0)
   10384:	00148493          	add	s1,s1,1
   10388:	00840413          	add	s0,s0,8
   1038c:	000780e7          	jalr	a5
   10390:	ff24e8e3          	bltu	s1,s2,10380 <__libc_init_array+0x38>
   10394:	00011437          	lui	s0,0x11
   10398:	000117b7          	lui	a5,0x11
   1039c:	76078793          	add	a5,a5,1888 # 11760 <__do_global_dtors_aux_fini_array_entry>
   103a0:	75040713          	add	a4,s0,1872 # 11750 <__init_array_start>
   103a4:	40e78933          	sub	s2,a5,a4
   103a8:	40395913          	sra	s2,s2,0x3
   103ac:	02e78063          	beq	a5,a4,103cc <__libc_init_array+0x84>
   103b0:	75040413          	add	s0,s0,1872
   103b4:	00000493          	li	s1,0
   103b8:	00043783          	ld	a5,0(s0)
   103bc:	00148493          	add	s1,s1,1
   103c0:	00840413          	add	s0,s0,8
   103c4:	000780e7          	jalr	a5
   103c8:	ff24e8e3          	bltu	s1,s2,103b8 <__libc_init_array+0x70>
   103cc:	01813083          	ld	ra,24(sp)
   103d0:	01013403          	ld	s0,16(sp)
   103d4:	00813483          	ld	s1,8(sp)
   103d8:	00013903          	ld	s2,0(sp)
   103dc:	02010113          	add	sp,sp,32
   103e0:	00008067          	ret

00000000000103e4 <memset>:
   103e4:	00f00313          	li	t1,15
   103e8:	00050713          	mv	a4,a0
   103ec:	02c37a63          	bgeu	t1,a2,10420 <memset+0x3c>
   103f0:	00f77793          	and	a5,a4,15
   103f4:	0a079063          	bnez	a5,10494 <memset+0xb0>
   103f8:	06059e63          	bnez	a1,10474 <memset+0x90>
   103fc:	ff067693          	and	a3,a2,-16
   10400:	00f67613          	and	a2,a2,15
   10404:	00e686b3          	add	a3,a3,a4
   10408:	00b73023          	sd	a1,0(a4)
   1040c:	00b73423          	sd	a1,8(a4)
   10410:	01070713          	add	a4,a4,16
   10414:	fed76ae3          	bltu	a4,a3,10408 <memset+0x24>
   10418:	00061463          	bnez	a2,10420 <memset+0x3c>
   1041c:	00008067          	ret
   10420:	40c306b3          	sub	a3,t1,a2
   10424:	00269693          	sll	a3,a3,0x2
   10428:	00000297          	auipc	t0,0x0
   1042c:	005686b3          	add	a3,a3,t0
   10430:	00c68067          	jr	12(a3)
   10434:	00b70723          	sb	a1,14(a4)
   10438:	00b706a3          	sb	a1,13(a4)
   1043c:	00b70623          	sb	a1,12(a4)
   10440:	00b705a3          	sb	a1,11(a4)
   10444:	00b70523          	sb	a1,10(a4)
   10448:	00b704a3          	sb	a1,9(a4)
   1044c:	00b70423          	sb	a1,8(a4)
   10450:	00b703a3          	sb	a1,7(a4)
   10454:	00b70323          	sb	a1,6(a4)
   10458:	00b702a3          	sb	a1,5(a4)
   1045c:	00b70223          	sb	a1,4(a4)
   10460:	00b701a3          	sb	a1,3(a4)
   10464:	00b70123          	sb	a1,2(a4)
   10468:	00b700a3          	sb	a1,1(a4)
   1046c:	00b70023          	sb	a1,0(a4)
   10470:	00008067          	ret
   10474:	0ff5f593          	zext.b	a1,a1
   10478:	00859693          	sll	a3,a1,0x8
   1047c:	00d5e5b3          	or	a1,a1,a3
   10480:	01059693          	sll	a3,a1,0x10
   10484:	00d5e5b3          	or	a1,a1,a3
   10488:	02059693          	sll	a3,a1,0x20
   1048c:	00d5e5b3          	or	a1,a1,a3
   10490:	f6dff06f          	j	103fc <memset+0x18>
   10494:	00279693          	sll	a3,a5,0x2
   10498:	00000297          	auipc	t0,0x0
   1049c:	005686b3          	add	a3,a3,t0
   104a0:	00008293          	mv	t0,ra
   104a4:	f98680e7          	jalr	-104(a3)
   104a8:	00028093          	mv	ra,t0
   104ac:	ff078793          	add	a5,a5,-16
   104b0:	40f70733          	sub	a4,a4,a5
   104b4:	00f60633          	add	a2,a2,a5
   104b8:	f6c374e3          	bgeu	t1,a2,10420 <memset+0x3c>
   104bc:	f3dff06f          	j	103f8 <memset+0x14>

00000000000104c0 <__call_exitprocs>:
   104c0:	fb010113          	add	sp,sp,-80
   104c4:	03413023          	sd	s4,32(sp)
   104c8:	f481ba03          	ld	s4,-184(gp) # 11eb0 <_global_impure_ptr>
   104cc:	03213823          	sd	s2,48(sp)
   104d0:	04113423          	sd	ra,72(sp)
   104d4:	1f8a3903          	ld	s2,504(s4)
   104d8:	04813023          	sd	s0,64(sp)
   104dc:	02913c23          	sd	s1,56(sp)
   104e0:	03313423          	sd	s3,40(sp)
   104e4:	01513c23          	sd	s5,24(sp)
   104e8:	01613823          	sd	s6,16(sp)
   104ec:	01713423          	sd	s7,8(sp)
   104f0:	01813023          	sd	s8,0(sp)
   104f4:	04090063          	beqz	s2,10534 <__call_exitprocs+0x74>
   104f8:	00050b13          	mv	s6,a0
   104fc:	00058b93          	mv	s7,a1
   10500:	00100a93          	li	s5,1
   10504:	fff00993          	li	s3,-1
   10508:	00892483          	lw	s1,8(s2)
   1050c:	fff4841b          	addw	s0,s1,-1
   10510:	02044263          	bltz	s0,10534 <__call_exitprocs+0x74>
   10514:	00349493          	sll	s1,s1,0x3
   10518:	009904b3          	add	s1,s2,s1
   1051c:	040b8463          	beqz	s7,10564 <__call_exitprocs+0xa4>
   10520:	2084b783          	ld	a5,520(s1)
   10524:	05778063          	beq	a5,s7,10564 <__call_exitprocs+0xa4>
   10528:	fff4041b          	addw	s0,s0,-1
   1052c:	ff848493          	add	s1,s1,-8
   10530:	ff3416e3          	bne	s0,s3,1051c <__call_exitprocs+0x5c>
   10534:	04813083          	ld	ra,72(sp)
   10538:	04013403          	ld	s0,64(sp)
   1053c:	03813483          	ld	s1,56(sp)
   10540:	03013903          	ld	s2,48(sp)
   10544:	02813983          	ld	s3,40(sp)
   10548:	02013a03          	ld	s4,32(sp)
   1054c:	01813a83          	ld	s5,24(sp)
   10550:	01013b03          	ld	s6,16(sp)
   10554:	00813b83          	ld	s7,8(sp)
   10558:	00013c03          	ld	s8,0(sp)
   1055c:	05010113          	add	sp,sp,80
   10560:	00008067          	ret
   10564:	00892783          	lw	a5,8(s2)
   10568:	0084b703          	ld	a4,8(s1)
   1056c:	fff7879b          	addw	a5,a5,-1
   10570:	06878263          	beq	a5,s0,105d4 <__call_exitprocs+0x114>
   10574:	0004b423          	sd	zero,8(s1)
   10578:	fa0708e3          	beqz	a4,10528 <__call_exitprocs+0x68>
   1057c:	31092783          	lw	a5,784(s2)
   10580:	008a96bb          	sllw	a3,s5,s0
   10584:	00892c03          	lw	s8,8(s2)
   10588:	00d7f7b3          	and	a5,a5,a3
   1058c:	0007879b          	sext.w	a5,a5
   10590:	02079263          	bnez	a5,105b4 <__call_exitprocs+0xf4>
   10594:	000700e7          	jalr	a4
   10598:	00892703          	lw	a4,8(s2)
   1059c:	1f8a3783          	ld	a5,504(s4)
   105a0:	01871463          	bne	a4,s8,105a8 <__call_exitprocs+0xe8>
   105a4:	f92782e3          	beq	a5,s2,10528 <__call_exitprocs+0x68>
   105a8:	f80786e3          	beqz	a5,10534 <__call_exitprocs+0x74>
   105ac:	00078913          	mv	s2,a5
   105b0:	f59ff06f          	j	10508 <__call_exitprocs+0x48>
   105b4:	31492783          	lw	a5,788(s2)
   105b8:	1084b583          	ld	a1,264(s1)
   105bc:	00d7f7b3          	and	a5,a5,a3
   105c0:	0007879b          	sext.w	a5,a5
   105c4:	00079c63          	bnez	a5,105dc <__call_exitprocs+0x11c>
   105c8:	000b0513          	mv	a0,s6
   105cc:	000700e7          	jalr	a4
   105d0:	fc9ff06f          	j	10598 <__call_exitprocs+0xd8>
   105d4:	00892423          	sw	s0,8(s2)
   105d8:	fa1ff06f          	j	10578 <__call_exitprocs+0xb8>
   105dc:	00058513          	mv	a0,a1
   105e0:	000700e7          	jalr	a4
   105e4:	fb5ff06f          	j	10598 <__call_exitprocs+0xd8>

00000000000105e8 <__libc_fini_array>:
   105e8:	fe010113          	add	sp,sp,-32
   105ec:	00813823          	sd	s0,16(sp)
   105f0:	000117b7          	lui	a5,0x11
   105f4:	00011437          	lui	s0,0x11
   105f8:	76078793          	add	a5,a5,1888 # 11760 <__do_global_dtors_aux_fini_array_entry>
   105fc:	76840413          	add	s0,s0,1896 # 11768 <impure_data>
   10600:	40f40433          	sub	s0,s0,a5
   10604:	00913423          	sd	s1,8(sp)
   10608:	00113c23          	sd	ra,24(sp)
   1060c:	40345493          	sra	s1,s0,0x3
   10610:	02048063          	beqz	s1,10630 <__libc_fini_array+0x48>
   10614:	ff840413          	add	s0,s0,-8
   10618:	00f40433          	add	s0,s0,a5
   1061c:	00043783          	ld	a5,0(s0)
   10620:	fff48493          	add	s1,s1,-1
   10624:	ff840413          	add	s0,s0,-8
   10628:	000780e7          	jalr	a5
   1062c:	fe0498e3          	bnez	s1,1061c <__libc_fini_array+0x34>
   10630:	01813083          	ld	ra,24(sp)
   10634:	01013403          	ld	s0,16(sp)
   10638:	00813483          	ld	s1,8(sp)
   1063c:	02010113          	add	sp,sp,32
   10640:	00008067          	ret

0000000000010644 <atexit>:
   10644:	00050593          	mv	a1,a0
   10648:	00000693          	li	a3,0
   1064c:	00000613          	li	a2,0
   10650:	00000513          	li	a0,0
   10654:	0040006f          	j	10658 <__register_exitproc>

0000000000010658 <__register_exitproc>:
   10658:	f481b703          	ld	a4,-184(gp) # 11eb0 <_global_impure_ptr>
   1065c:	1f873783          	ld	a5,504(a4)
   10660:	06078063          	beqz	a5,106c0 <__register_exitproc+0x68>
   10664:	0087a703          	lw	a4,8(a5)
   10668:	01f00813          	li	a6,31
   1066c:	08e84663          	blt	a6,a4,106f8 <__register_exitproc+0xa0>
   10670:	02050863          	beqz	a0,106a0 <__register_exitproc+0x48>
   10674:	00371813          	sll	a6,a4,0x3
   10678:	01078833          	add	a6,a5,a6
   1067c:	10c83823          	sd	a2,272(a6)
   10680:	3107a883          	lw	a7,784(a5)
   10684:	00100613          	li	a2,1
   10688:	00e6163b          	sllw	a2,a2,a4
   1068c:	00c8e8b3          	or	a7,a7,a2
   10690:	3117a823          	sw	a7,784(a5)
   10694:	20d83823          	sd	a3,528(a6)
   10698:	00200693          	li	a3,2
   1069c:	02d50863          	beq	a0,a3,106cc <__register_exitproc+0x74>
   106a0:	00270693          	add	a3,a4,2
   106a4:	00369693          	sll	a3,a3,0x3
   106a8:	0017071b          	addw	a4,a4,1
   106ac:	00e7a423          	sw	a4,8(a5)
   106b0:	00d787b3          	add	a5,a5,a3
   106b4:	00b7b023          	sd	a1,0(a5)
   106b8:	00000513          	li	a0,0
   106bc:	00008067          	ret
   106c0:	20070793          	add	a5,a4,512
   106c4:	1ef73c23          	sd	a5,504(a4)
   106c8:	f9dff06f          	j	10664 <__register_exitproc+0xc>
   106cc:	3147a683          	lw	a3,788(a5)
   106d0:	00000513          	li	a0,0
   106d4:	00c6e6b3          	or	a3,a3,a2
   106d8:	30d7aa23          	sw	a3,788(a5)
   106dc:	00270693          	add	a3,a4,2
   106e0:	00369693          	sll	a3,a3,0x3
   106e4:	0017071b          	addw	a4,a4,1
   106e8:	00e7a423          	sw	a4,8(a5)
   106ec:	00d787b3          	add	a5,a5,a3
   106f0:	00b7b023          	sd	a1,0(a5)
   106f4:	00008067          	ret
   106f8:	fff00513          	li	a0,-1
   106fc:	00008067          	ret

0000000000010700 <_exit>:
   10700:	05d00893          	li	a7,93
   10704:	00000073          	ecall
   10708:	00054463          	bltz	a0,10710 <_exit+0x10>
   1070c:	0000006f          	j	1070c <_exit+0xc>
   10710:	ff010113          	add	sp,sp,-16
   10714:	00813023          	sd	s0,0(sp)
   10718:	00050413          	mv	s0,a0
   1071c:	00113423          	sd	ra,8(sp)
   10720:	4080043b          	negw	s0,s0
   10724:	00c000ef          	jal	10730 <__errno>
   10728:	00852023          	sw	s0,0(a0)
   1072c:	0000006f          	j	1072c <_exit+0x2c>

0000000000010730 <__errno>:
   10730:	f581b503          	ld	a0,-168(gp) # 11ec0 <_impure_ptr>
   10734:	00008067          	ret
