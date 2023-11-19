
/home/yangyx/desktop/CA2/code_test/lab0/rv64imf/divide_inline/divide_inline.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	5e8000ef          	jal	106e4 <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11768 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	011000ef          	jal	10924 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00011537          	lui	a0,0x11
   10124:	80c50513          	add	a0,a0,-2036 # 1080c <__libc_fini_array>
   10128:	7400006f          	j	10868 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00001197          	auipc	gp,0x1
   10134:	6f018193          	add	gp,gp,1776 # 11820 <__global_pointer$>
   10138:	f6018513          	add	a0,gp,-160 # 11780 <completed.1>
   1013c:	f9818613          	add	a2,gp,-104 # 117b8 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	4c0000ef          	jal	10608 <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	71c50513          	add	a0,a0,1820 # 10868 <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	6b450513          	add	a0,a0,1716 # 1080c <__libc_fini_array>
   10160:	708000ef          	jal	10868 <atexit>
   10164:	408000ef          	jal	1056c <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	06c000ef          	jal	101e0 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f601c783          	lbu	a5,-160(gp) # 11780 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00011537          	lui	a0,0x11
   1019c:	00050513          	mv	a0,a0
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f6f18023          	sb	a5,-160(gp) # 11780 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00011537          	lui	a0,0x11
   101cc:	f6818593          	add	a1,gp,-152 # 11788 <object.0>
   101d0:	00050513          	mv	a0,a0
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <main>:
   101e0:	ff010113          	add	sp,sp,-16
   101e4:	00113423          	sd	ra,8(sp)
   101e8:	00813023          	sd	s0,0(sp)
   101ec:	01010413          	add	s0,sp,16
   101f0:	00b00293          	li	t0,11
   101f4:	00b00313          	li	t1,11
   101f8:	00b00393          	li	t2,11
   101fc:	00b00e13          	li	t3,11
   10200:	00b00e93          	li	t4,11
   10204:	00b00f13          	li	t5,11
   10208:	00b00f93          	li	t6,11
   1020c:	0252c533          	div	a0,t0,t0
   10210:	026345b3          	div	a1,t1,t1
   10214:	0273c633          	div	a2,t2,t2
   10218:	03ce46b3          	div	a3,t3,t3
   1021c:	03dec733          	div	a4,t4,t4
   10220:	03ef47b3          	div	a5,t5,t5
   10224:	03ffc833          	div	a6,t6,t6
   10228:	0252c533          	div	a0,t0,t0
   1022c:	026345b3          	div	a1,t1,t1
   10230:	0273c633          	div	a2,t2,t2
   10234:	03ce46b3          	div	a3,t3,t3
   10238:	03dec733          	div	a4,t4,t4
   1023c:	03ef47b3          	div	a5,t5,t5
   10240:	03ffc833          	div	a6,t6,t6
   10244:	0252c533          	div	a0,t0,t0
   10248:	026345b3          	div	a1,t1,t1
   1024c:	0273c633          	div	a2,t2,t2
   10250:	03ce46b3          	div	a3,t3,t3
   10254:	03dec733          	div	a4,t4,t4
   10258:	03ef47b3          	div	a5,t5,t5
   1025c:	03ffc833          	div	a6,t6,t6
   10260:	0252c533          	div	a0,t0,t0
   10264:	026345b3          	div	a1,t1,t1
   10268:	0273c633          	div	a2,t2,t2
   1026c:	03ce46b3          	div	a3,t3,t3
   10270:	03dec733          	div	a4,t4,t4
   10274:	03ef47b3          	div	a5,t5,t5
   10278:	03ffc833          	div	a6,t6,t6
   1027c:	0252c533          	div	a0,t0,t0
   10280:	026345b3          	div	a1,t1,t1
   10284:	0273c633          	div	a2,t2,t2
   10288:	03ce46b3          	div	a3,t3,t3
   1028c:	03dec733          	div	a4,t4,t4
   10290:	03ef47b3          	div	a5,t5,t5
   10294:	03ffc833          	div	a6,t6,t6
   10298:	0252c533          	div	a0,t0,t0
   1029c:	026345b3          	div	a1,t1,t1
   102a0:	0273c633          	div	a2,t2,t2
   102a4:	03ce46b3          	div	a3,t3,t3
   102a8:	03dec733          	div	a4,t4,t4
   102ac:	03ef47b3          	div	a5,t5,t5
   102b0:	03ffc833          	div	a6,t6,t6
   102b4:	0252c533          	div	a0,t0,t0
   102b8:	026345b3          	div	a1,t1,t1
   102bc:	0273c633          	div	a2,t2,t2
   102c0:	03ce46b3          	div	a3,t3,t3
   102c4:	03dec733          	div	a4,t4,t4
   102c8:	03ef47b3          	div	a5,t5,t5
   102cc:	03ffc833          	div	a6,t6,t6
   102d0:	0252c533          	div	a0,t0,t0
   102d4:	026345b3          	div	a1,t1,t1
   102d8:	0273c633          	div	a2,t2,t2
   102dc:	03ce46b3          	div	a3,t3,t3
   102e0:	03dec733          	div	a4,t4,t4
   102e4:	03ef47b3          	div	a5,t5,t5
   102e8:	03ffc833          	div	a6,t6,t6
   102ec:	0252c533          	div	a0,t0,t0
   102f0:	026345b3          	div	a1,t1,t1
   102f4:	0273c633          	div	a2,t2,t2
   102f8:	03ce46b3          	div	a3,t3,t3
   102fc:	03dec733          	div	a4,t4,t4
   10300:	03ef47b3          	div	a5,t5,t5
   10304:	03ffc833          	div	a6,t6,t6
   10308:	0252c533          	div	a0,t0,t0
   1030c:	026345b3          	div	a1,t1,t1
   10310:	0273c633          	div	a2,t2,t2
   10314:	03ce46b3          	div	a3,t3,t3
   10318:	03dec733          	div	a4,t4,t4
   1031c:	03ef47b3          	div	a5,t5,t5
   10320:	03ffc833          	div	a6,t6,t6
   10324:	0252c533          	div	a0,t0,t0
   10328:	026345b3          	div	a1,t1,t1
   1032c:	0273c633          	div	a2,t2,t2
   10330:	03ce46b3          	div	a3,t3,t3
   10334:	03dec733          	div	a4,t4,t4
   10338:	03ef47b3          	div	a5,t5,t5
   1033c:	03ffc833          	div	a6,t6,t6
   10340:	0252c533          	div	a0,t0,t0
   10344:	026345b3          	div	a1,t1,t1
   10348:	0273c633          	div	a2,t2,t2
   1034c:	03ce46b3          	div	a3,t3,t3
   10350:	03dec733          	div	a4,t4,t4
   10354:	03ef47b3          	div	a5,t5,t5
   10358:	03ffc833          	div	a6,t6,t6
   1035c:	0252c533          	div	a0,t0,t0
   10360:	026345b3          	div	a1,t1,t1
   10364:	0273c633          	div	a2,t2,t2
   10368:	03ce46b3          	div	a3,t3,t3
   1036c:	03dec733          	div	a4,t4,t4
   10370:	03ef47b3          	div	a5,t5,t5
   10374:	03ffc833          	div	a6,t6,t6
   10378:	0252c533          	div	a0,t0,t0
   1037c:	026345b3          	div	a1,t1,t1
   10380:	0273c633          	div	a2,t2,t2
   10384:	03ce46b3          	div	a3,t3,t3
   10388:	03dec733          	div	a4,t4,t4
   1038c:	03ef47b3          	div	a5,t5,t5
   10390:	03ffc833          	div	a6,t6,t6
   10394:	0252c533          	div	a0,t0,t0
   10398:	026345b3          	div	a1,t1,t1
   1039c:	0273c633          	div	a2,t2,t2
   103a0:	03ce46b3          	div	a3,t3,t3
   103a4:	03dec733          	div	a4,t4,t4
   103a8:	03ef47b3          	div	a5,t5,t5
   103ac:	03ffc833          	div	a6,t6,t6
   103b0:	0252c533          	div	a0,t0,t0
   103b4:	026345b3          	div	a1,t1,t1
   103b8:	0273c633          	div	a2,t2,t2
   103bc:	03ce46b3          	div	a3,t3,t3
   103c0:	03dec733          	div	a4,t4,t4
   103c4:	03ef47b3          	div	a5,t5,t5
   103c8:	03ffc833          	div	a6,t6,t6
   103cc:	0252c533          	div	a0,t0,t0
   103d0:	026345b3          	div	a1,t1,t1
   103d4:	0273c633          	div	a2,t2,t2
   103d8:	03ce46b3          	div	a3,t3,t3
   103dc:	03dec733          	div	a4,t4,t4
   103e0:	03ef47b3          	div	a5,t5,t5
   103e4:	03ffc833          	div	a6,t6,t6
   103e8:	0252c533          	div	a0,t0,t0
   103ec:	026345b3          	div	a1,t1,t1
   103f0:	0273c633          	div	a2,t2,t2
   103f4:	03ce46b3          	div	a3,t3,t3
   103f8:	03dec733          	div	a4,t4,t4
   103fc:	03ef47b3          	div	a5,t5,t5
   10400:	03ffc833          	div	a6,t6,t6
   10404:	0252c533          	div	a0,t0,t0
   10408:	026345b3          	div	a1,t1,t1
   1040c:	0273c633          	div	a2,t2,t2
   10410:	03ce46b3          	div	a3,t3,t3
   10414:	03dec733          	div	a4,t4,t4
   10418:	03ef47b3          	div	a5,t5,t5
   1041c:	03ffc833          	div	a6,t6,t6
   10420:	09c000ef          	jal	104bc <exit_proc>
   10424:	00000793          	li	a5,0
   10428:	00078513          	mv	a0,a5
   1042c:	00813083          	ld	ra,8(sp)
   10430:	00013403          	ld	s0,0(sp)
   10434:	01010113          	add	sp,sp,16
   10438:	00008067          	ret

000000000001043c <print_d>:
   1043c:	fe010113          	add	sp,sp,-32
   10440:	00813c23          	sd	s0,24(sp)
   10444:	02010413          	add	s0,sp,32
   10448:	00050793          	mv	a5,a0
   1044c:	fef42623          	sw	a5,-20(s0)
   10450:	00200893          	li	a7,2
   10454:	00000073          	ecall
   10458:	00000013          	nop
   1045c:	01813403          	ld	s0,24(sp)
   10460:	02010113          	add	sp,sp,32
   10464:	00008067          	ret

0000000000010468 <print_s>:
   10468:	fe010113          	add	sp,sp,-32
   1046c:	00813c23          	sd	s0,24(sp)
   10470:	02010413          	add	s0,sp,32
   10474:	fea43423          	sd	a0,-24(s0)
   10478:	00000893          	li	a7,0
   1047c:	00000073          	ecall
   10480:	00000013          	nop
   10484:	01813403          	ld	s0,24(sp)
   10488:	02010113          	add	sp,sp,32
   1048c:	00008067          	ret

0000000000010490 <print_c>:
   10490:	fe010113          	add	sp,sp,-32
   10494:	00813c23          	sd	s0,24(sp)
   10498:	02010413          	add	s0,sp,32
   1049c:	00050793          	mv	a5,a0
   104a0:	fef407a3          	sb	a5,-17(s0)
   104a4:	00100893          	li	a7,1
   104a8:	00000073          	ecall
   104ac:	00000013          	nop
   104b0:	01813403          	ld	s0,24(sp)
   104b4:	02010113          	add	sp,sp,32
   104b8:	00008067          	ret

00000000000104bc <exit_proc>:
   104bc:	ff010113          	add	sp,sp,-16
   104c0:	00813423          	sd	s0,8(sp)
   104c4:	01010413          	add	s0,sp,16
   104c8:	00300893          	li	a7,3
   104cc:	00000073          	ecall
   104d0:	00000013          	nop
   104d4:	00813403          	ld	s0,8(sp)
   104d8:	01010113          	add	sp,sp,16
   104dc:	00008067          	ret

00000000000104e0 <read_char>:
   104e0:	fe010113          	add	sp,sp,-32
   104e4:	00813c23          	sd	s0,24(sp)
   104e8:	02010413          	add	s0,sp,32
   104ec:	00400893          	li	a7,4
   104f0:	00000073          	ecall
   104f4:	00050793          	mv	a5,a0
   104f8:	fef407a3          	sb	a5,-17(s0)
   104fc:	fef44783          	lbu	a5,-17(s0)
   10500:	00078513          	mv	a0,a5
   10504:	01813403          	ld	s0,24(sp)
   10508:	02010113          	add	sp,sp,32
   1050c:	00008067          	ret

0000000000010510 <read_num>:
   10510:	fe010113          	add	sp,sp,-32
   10514:	00813c23          	sd	s0,24(sp)
   10518:	02010413          	add	s0,sp,32
   1051c:	00500893          	li	a7,5
   10520:	00000073          	ecall
   10524:	00050793          	mv	a5,a0
   10528:	fef43423          	sd	a5,-24(s0)
   1052c:	fe843783          	ld	a5,-24(s0)
   10530:	00078513          	mv	a0,a5
   10534:	01813403          	ld	s0,24(sp)
   10538:	02010113          	add	sp,sp,32
   1053c:	00008067          	ret

0000000000010540 <print_f>:
   10540:	fe010113          	add	sp,sp,-32
   10544:	00813c23          	sd	s0,24(sp)
   10548:	02010413          	add	s0,sp,32
   1054c:	fea42627          	fsw	fa0,-20(s0)
   10550:	e0050553          	fmv.x.w	a0,fa0
   10554:	00600893          	li	a7,6
   10558:	00000073          	ecall
   1055c:	00000013          	nop
   10560:	01813403          	ld	s0,24(sp)
   10564:	02010113          	add	sp,sp,32
   10568:	00008067          	ret

000000000001056c <__libc_init_array>:
   1056c:	fe010113          	add	sp,sp,-32
   10570:	00813823          	sd	s0,16(sp)
   10574:	000117b7          	lui	a5,0x11
   10578:	00011437          	lui	s0,0x11
   1057c:	01213023          	sd	s2,0(sp)
   10580:	00478793          	add	a5,a5,4 # 11004 <__preinit_array_end>
   10584:	00440713          	add	a4,s0,4 # 11004 <__preinit_array_end>
   10588:	00113c23          	sd	ra,24(sp)
   1058c:	00913423          	sd	s1,8(sp)
   10590:	40e78933          	sub	s2,a5,a4
   10594:	02e78263          	beq	a5,a4,105b8 <__libc_init_array+0x4c>
   10598:	40395913          	sra	s2,s2,0x3
   1059c:	00440413          	add	s0,s0,4
   105a0:	00000493          	li	s1,0
   105a4:	00043783          	ld	a5,0(s0)
   105a8:	00148493          	add	s1,s1,1
   105ac:	00840413          	add	s0,s0,8
   105b0:	000780e7          	jalr	a5
   105b4:	ff24e8e3          	bltu	s1,s2,105a4 <__libc_init_array+0x38>
   105b8:	00011437          	lui	s0,0x11
   105bc:	000117b7          	lui	a5,0x11
   105c0:	01878793          	add	a5,a5,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   105c4:	00840713          	add	a4,s0,8 # 11008 <__init_array_start>
   105c8:	40e78933          	sub	s2,a5,a4
   105cc:	40395913          	sra	s2,s2,0x3
   105d0:	02e78063          	beq	a5,a4,105f0 <__libc_init_array+0x84>
   105d4:	00840413          	add	s0,s0,8
   105d8:	00000493          	li	s1,0
   105dc:	00043783          	ld	a5,0(s0)
   105e0:	00148493          	add	s1,s1,1
   105e4:	00840413          	add	s0,s0,8
   105e8:	000780e7          	jalr	a5
   105ec:	ff24e8e3          	bltu	s1,s2,105dc <__libc_init_array+0x70>
   105f0:	01813083          	ld	ra,24(sp)
   105f4:	01013403          	ld	s0,16(sp)
   105f8:	00813483          	ld	s1,8(sp)
   105fc:	00013903          	ld	s2,0(sp)
   10600:	02010113          	add	sp,sp,32
   10604:	00008067          	ret

0000000000010608 <memset>:
   10608:	00f00313          	li	t1,15
   1060c:	00050713          	mv	a4,a0
   10610:	02c37a63          	bgeu	t1,a2,10644 <memset+0x3c>
   10614:	00f77793          	and	a5,a4,15
   10618:	0a079063          	bnez	a5,106b8 <memset+0xb0>
   1061c:	06059e63          	bnez	a1,10698 <memset+0x90>
   10620:	ff067693          	and	a3,a2,-16
   10624:	00f67613          	and	a2,a2,15
   10628:	00e686b3          	add	a3,a3,a4
   1062c:	00b73023          	sd	a1,0(a4)
   10630:	00b73423          	sd	a1,8(a4)
   10634:	01070713          	add	a4,a4,16
   10638:	fed76ae3          	bltu	a4,a3,1062c <memset+0x24>
   1063c:	00061463          	bnez	a2,10644 <memset+0x3c>
   10640:	00008067          	ret
   10644:	40c306b3          	sub	a3,t1,a2
   10648:	00269693          	sll	a3,a3,0x2
   1064c:	00000297          	auipc	t0,0x0
   10650:	005686b3          	add	a3,a3,t0
   10654:	00c68067          	jr	12(a3)
   10658:	00b70723          	sb	a1,14(a4)
   1065c:	00b706a3          	sb	a1,13(a4)
   10660:	00b70623          	sb	a1,12(a4)
   10664:	00b705a3          	sb	a1,11(a4)
   10668:	00b70523          	sb	a1,10(a4)
   1066c:	00b704a3          	sb	a1,9(a4)
   10670:	00b70423          	sb	a1,8(a4)
   10674:	00b703a3          	sb	a1,7(a4)
   10678:	00b70323          	sb	a1,6(a4)
   1067c:	00b702a3          	sb	a1,5(a4)
   10680:	00b70223          	sb	a1,4(a4)
   10684:	00b701a3          	sb	a1,3(a4)
   10688:	00b70123          	sb	a1,2(a4)
   1068c:	00b700a3          	sb	a1,1(a4)
   10690:	00b70023          	sb	a1,0(a4)
   10694:	00008067          	ret
   10698:	0ff5f593          	zext.b	a1,a1
   1069c:	00859693          	sll	a3,a1,0x8
   106a0:	00d5e5b3          	or	a1,a1,a3
   106a4:	01059693          	sll	a3,a1,0x10
   106a8:	00d5e5b3          	or	a1,a1,a3
   106ac:	02059693          	sll	a3,a1,0x20
   106b0:	00d5e5b3          	or	a1,a1,a3
   106b4:	f6dff06f          	j	10620 <memset+0x18>
   106b8:	00279693          	sll	a3,a5,0x2
   106bc:	00000297          	auipc	t0,0x0
   106c0:	005686b3          	add	a3,a3,t0
   106c4:	00008293          	mv	t0,ra
   106c8:	f98680e7          	jalr	-104(a3)
   106cc:	00028093          	mv	ra,t0
   106d0:	ff078793          	add	a5,a5,-16
   106d4:	40f70733          	sub	a4,a4,a5
   106d8:	00f60633          	add	a2,a2,a5
   106dc:	f6c374e3          	bgeu	t1,a2,10644 <memset+0x3c>
   106e0:	f3dff06f          	j	1061c <memset+0x14>

00000000000106e4 <__call_exitprocs>:
   106e4:	fb010113          	add	sp,sp,-80
   106e8:	03413023          	sd	s4,32(sp)
   106ec:	f481ba03          	ld	s4,-184(gp) # 11768 <_global_impure_ptr>
   106f0:	03213823          	sd	s2,48(sp)
   106f4:	04113423          	sd	ra,72(sp)
   106f8:	1f8a3903          	ld	s2,504(s4)
   106fc:	04813023          	sd	s0,64(sp)
   10700:	02913c23          	sd	s1,56(sp)
   10704:	03313423          	sd	s3,40(sp)
   10708:	01513c23          	sd	s5,24(sp)
   1070c:	01613823          	sd	s6,16(sp)
   10710:	01713423          	sd	s7,8(sp)
   10714:	01813023          	sd	s8,0(sp)
   10718:	04090063          	beqz	s2,10758 <__call_exitprocs+0x74>
   1071c:	00050b13          	mv	s6,a0
   10720:	00058b93          	mv	s7,a1
   10724:	00100a93          	li	s5,1
   10728:	fff00993          	li	s3,-1
   1072c:	00892483          	lw	s1,8(s2)
   10730:	fff4841b          	addw	s0,s1,-1
   10734:	02044263          	bltz	s0,10758 <__call_exitprocs+0x74>
   10738:	00349493          	sll	s1,s1,0x3
   1073c:	009904b3          	add	s1,s2,s1
   10740:	040b8463          	beqz	s7,10788 <__call_exitprocs+0xa4>
   10744:	2084b783          	ld	a5,520(s1)
   10748:	05778063          	beq	a5,s7,10788 <__call_exitprocs+0xa4>
   1074c:	fff4041b          	addw	s0,s0,-1
   10750:	ff848493          	add	s1,s1,-8
   10754:	ff3416e3          	bne	s0,s3,10740 <__call_exitprocs+0x5c>
   10758:	04813083          	ld	ra,72(sp)
   1075c:	04013403          	ld	s0,64(sp)
   10760:	03813483          	ld	s1,56(sp)
   10764:	03013903          	ld	s2,48(sp)
   10768:	02813983          	ld	s3,40(sp)
   1076c:	02013a03          	ld	s4,32(sp)
   10770:	01813a83          	ld	s5,24(sp)
   10774:	01013b03          	ld	s6,16(sp)
   10778:	00813b83          	ld	s7,8(sp)
   1077c:	00013c03          	ld	s8,0(sp)
   10780:	05010113          	add	sp,sp,80
   10784:	00008067          	ret
   10788:	00892783          	lw	a5,8(s2)
   1078c:	0084b703          	ld	a4,8(s1)
   10790:	fff7879b          	addw	a5,a5,-1
   10794:	06878263          	beq	a5,s0,107f8 <__call_exitprocs+0x114>
   10798:	0004b423          	sd	zero,8(s1)
   1079c:	fa0708e3          	beqz	a4,1074c <__call_exitprocs+0x68>
   107a0:	31092783          	lw	a5,784(s2)
   107a4:	008a96bb          	sllw	a3,s5,s0
   107a8:	00892c03          	lw	s8,8(s2)
   107ac:	00d7f7b3          	and	a5,a5,a3
   107b0:	0007879b          	sext.w	a5,a5
   107b4:	02079263          	bnez	a5,107d8 <__call_exitprocs+0xf4>
   107b8:	000700e7          	jalr	a4
   107bc:	00892703          	lw	a4,8(s2)
   107c0:	1f8a3783          	ld	a5,504(s4)
   107c4:	01871463          	bne	a4,s8,107cc <__call_exitprocs+0xe8>
   107c8:	f92782e3          	beq	a5,s2,1074c <__call_exitprocs+0x68>
   107cc:	f80786e3          	beqz	a5,10758 <__call_exitprocs+0x74>
   107d0:	00078913          	mv	s2,a5
   107d4:	f59ff06f          	j	1072c <__call_exitprocs+0x48>
   107d8:	31492783          	lw	a5,788(s2)
   107dc:	1084b583          	ld	a1,264(s1)
   107e0:	00d7f7b3          	and	a5,a5,a3
   107e4:	0007879b          	sext.w	a5,a5
   107e8:	00079c63          	bnez	a5,10800 <__call_exitprocs+0x11c>
   107ec:	000b0513          	mv	a0,s6
   107f0:	000700e7          	jalr	a4
   107f4:	fc9ff06f          	j	107bc <__call_exitprocs+0xd8>
   107f8:	00892423          	sw	s0,8(s2)
   107fc:	fa1ff06f          	j	1079c <__call_exitprocs+0xb8>
   10800:	00058513          	mv	a0,a1
   10804:	000700e7          	jalr	a4
   10808:	fb5ff06f          	j	107bc <__call_exitprocs+0xd8>

000000000001080c <__libc_fini_array>:
   1080c:	fe010113          	add	sp,sp,-32
   10810:	00813823          	sd	s0,16(sp)
   10814:	000117b7          	lui	a5,0x11
   10818:	00011437          	lui	s0,0x11
   1081c:	01878793          	add	a5,a5,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   10820:	02040413          	add	s0,s0,32 # 11020 <impure_data>
   10824:	40f40433          	sub	s0,s0,a5
   10828:	00913423          	sd	s1,8(sp)
   1082c:	00113c23          	sd	ra,24(sp)
   10830:	40345493          	sra	s1,s0,0x3
   10834:	02048063          	beqz	s1,10854 <__libc_fini_array+0x48>
   10838:	ff840413          	add	s0,s0,-8
   1083c:	00f40433          	add	s0,s0,a5
   10840:	00043783          	ld	a5,0(s0)
   10844:	fff48493          	add	s1,s1,-1
   10848:	ff840413          	add	s0,s0,-8
   1084c:	000780e7          	jalr	a5
   10850:	fe0498e3          	bnez	s1,10840 <__libc_fini_array+0x34>
   10854:	01813083          	ld	ra,24(sp)
   10858:	01013403          	ld	s0,16(sp)
   1085c:	00813483          	ld	s1,8(sp)
   10860:	02010113          	add	sp,sp,32
   10864:	00008067          	ret

0000000000010868 <atexit>:
   10868:	00050593          	mv	a1,a0
   1086c:	00000693          	li	a3,0
   10870:	00000613          	li	a2,0
   10874:	00000513          	li	a0,0
   10878:	0040006f          	j	1087c <__register_exitproc>

000000000001087c <__register_exitproc>:
   1087c:	f481b703          	ld	a4,-184(gp) # 11768 <_global_impure_ptr>
   10880:	1f873783          	ld	a5,504(a4)
   10884:	06078063          	beqz	a5,108e4 <__register_exitproc+0x68>
   10888:	0087a703          	lw	a4,8(a5)
   1088c:	01f00813          	li	a6,31
   10890:	08e84663          	blt	a6,a4,1091c <__register_exitproc+0xa0>
   10894:	02050863          	beqz	a0,108c4 <__register_exitproc+0x48>
   10898:	00371813          	sll	a6,a4,0x3
   1089c:	01078833          	add	a6,a5,a6
   108a0:	10c83823          	sd	a2,272(a6)
   108a4:	3107a883          	lw	a7,784(a5)
   108a8:	00100613          	li	a2,1
   108ac:	00e6163b          	sllw	a2,a2,a4
   108b0:	00c8e8b3          	or	a7,a7,a2
   108b4:	3117a823          	sw	a7,784(a5)
   108b8:	20d83823          	sd	a3,528(a6)
   108bc:	00200693          	li	a3,2
   108c0:	02d50863          	beq	a0,a3,108f0 <__register_exitproc+0x74>
   108c4:	00270693          	add	a3,a4,2
   108c8:	00369693          	sll	a3,a3,0x3
   108cc:	0017071b          	addw	a4,a4,1
   108d0:	00e7a423          	sw	a4,8(a5)
   108d4:	00d787b3          	add	a5,a5,a3
   108d8:	00b7b023          	sd	a1,0(a5)
   108dc:	00000513          	li	a0,0
   108e0:	00008067          	ret
   108e4:	20070793          	add	a5,a4,512
   108e8:	1ef73c23          	sd	a5,504(a4)
   108ec:	f9dff06f          	j	10888 <__register_exitproc+0xc>
   108f0:	3147a683          	lw	a3,788(a5)
   108f4:	00000513          	li	a0,0
   108f8:	00c6e6b3          	or	a3,a3,a2
   108fc:	30d7aa23          	sw	a3,788(a5)
   10900:	00270693          	add	a3,a4,2
   10904:	00369693          	sll	a3,a3,0x3
   10908:	0017071b          	addw	a4,a4,1
   1090c:	00e7a423          	sw	a4,8(a5)
   10910:	00d787b3          	add	a5,a5,a3
   10914:	00b7b023          	sd	a1,0(a5)
   10918:	00008067          	ret
   1091c:	fff00513          	li	a0,-1
   10920:	00008067          	ret

0000000000010924 <_exit>:
   10924:	05d00893          	li	a7,93
   10928:	00000073          	ecall
   1092c:	00054463          	bltz	a0,10934 <_exit+0x10>
   10930:	0000006f          	j	10930 <_exit+0xc>
   10934:	ff010113          	add	sp,sp,-16
   10938:	00813023          	sd	s0,0(sp)
   1093c:	00050413          	mv	s0,a0
   10940:	00113423          	sd	ra,8(sp)
   10944:	4080043b          	negw	s0,s0
   10948:	00c000ef          	jal	10954 <__errno>
   1094c:	00852023          	sw	s0,0(a0) # 11000 <__EH_FRAME_BEGIN__>
   10950:	0000006f          	j	10950 <_exit+0x2c>

0000000000010954 <__errno>:
   10954:	f581b503          	ld	a0,-168(gp) # 11778 <_impure_ptr>
   10958:	00008067          	ret
