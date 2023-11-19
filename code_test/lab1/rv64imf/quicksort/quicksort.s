
/home/yangyx/desktop/CA2/code_test/lab1/rv64imf/quicksort/quicksort.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	049000ef          	jal	10944 <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11768 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	271000ef          	jal	10b84 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00011537          	lui	a0,0x11
   10124:	a6c50513          	add	a0,a0,-1428 # 10a6c <__libc_fini_array>
   10128:	1a10006f          	j	10ac8 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00001197          	auipc	gp,0x1
   10134:	6f018193          	add	gp,gp,1776 # 11820 <__global_pointer$>
   10138:	f6018513          	add	a0,gp,-160 # 11780 <completed.1>
   1013c:	f9818613          	add	a2,gp,-104 # 117b8 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	720000ef          	jal	10868 <memset>
   1014c:	00001517          	auipc	a0,0x1
   10150:	97c50513          	add	a0,a0,-1668 # 10ac8 <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00001517          	auipc	a0,0x1
   1015c:	91450513          	add	a0,a0,-1772 # 10a6c <__libc_fini_array>
   10160:	169000ef          	jal	10ac8 <atexit>
   10164:	668000ef          	jal	107cc <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	284000ef          	jal	103f8 <main>
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

00000000000101e0 <quicksort>:
   101e0:	fd010113          	add	sp,sp,-48
   101e4:	02113423          	sd	ra,40(sp)
   101e8:	02813023          	sd	s0,32(sp)
   101ec:	03010413          	add	s0,sp,48
   101f0:	fca43c23          	sd	a0,-40(s0)
   101f4:	00058793          	mv	a5,a1
   101f8:	00060713          	mv	a4,a2
   101fc:	fcf42a23          	sw	a5,-44(s0)
   10200:	00070793          	mv	a5,a4
   10204:	fcf42823          	sw	a5,-48(s0)
   10208:	fd442783          	lw	a5,-44(s0)
   1020c:	00078713          	mv	a4,a5
   10210:	fd042783          	lw	a5,-48(s0)
   10214:	0007071b          	sext.w	a4,a4
   10218:	0007879b          	sext.w	a5,a5
   1021c:	1ce7c463          	blt	a5,a4,103e4 <quicksort+0x204>
   10220:	fd442783          	lw	a5,-44(s0)
   10224:	00279793          	sll	a5,a5,0x2
   10228:	fd843703          	ld	a4,-40(s0)
   1022c:	00f707b3          	add	a5,a4,a5
   10230:	0007a783          	lw	a5,0(a5)
   10234:	fef42223          	sw	a5,-28(s0)
   10238:	fd442783          	lw	a5,-44(s0)
   1023c:	fef42623          	sw	a5,-20(s0)
   10240:	fd042783          	lw	a5,-48(s0)
   10244:	fef42423          	sw	a5,-24(s0)
   10248:	1000006f          	j	10348 <quicksort+0x168>
   1024c:	fe842783          	lw	a5,-24(s0)
   10250:	fff7879b          	addw	a5,a5,-1
   10254:	fef42423          	sw	a5,-24(s0)
   10258:	fe842783          	lw	a5,-24(s0)
   1025c:	00279793          	sll	a5,a5,0x2
   10260:	fd843703          	ld	a4,-40(s0)
   10264:	00f707b3          	add	a5,a4,a5
   10268:	0007a703          	lw	a4,0(a5)
   1026c:	fe442783          	lw	a5,-28(s0)
   10270:	0007879b          	sext.w	a5,a5
   10274:	02f74663          	blt	a4,a5,102a0 <quicksort+0xc0>
   10278:	fec42783          	lw	a5,-20(s0)
   1027c:	00078713          	mv	a4,a5
   10280:	fe842783          	lw	a5,-24(s0)
   10284:	0007071b          	sext.w	a4,a4
   10288:	0007879b          	sext.w	a5,a5
   1028c:	fcf740e3          	blt	a4,a5,1024c <quicksort+0x6c>
   10290:	0100006f          	j	102a0 <quicksort+0xc0>
   10294:	fec42783          	lw	a5,-20(s0)
   10298:	0017879b          	addw	a5,a5,1
   1029c:	fef42623          	sw	a5,-20(s0)
   102a0:	fec42783          	lw	a5,-20(s0)
   102a4:	00279793          	sll	a5,a5,0x2
   102a8:	fd843703          	ld	a4,-40(s0)
   102ac:	00f707b3          	add	a5,a4,a5
   102b0:	0007a703          	lw	a4,0(a5)
   102b4:	fe442783          	lw	a5,-28(s0)
   102b8:	0007879b          	sext.w	a5,a5
   102bc:	00e7ce63          	blt	a5,a4,102d8 <quicksort+0xf8>
   102c0:	fec42783          	lw	a5,-20(s0)
   102c4:	00078713          	mv	a4,a5
   102c8:	fe842783          	lw	a5,-24(s0)
   102cc:	0007071b          	sext.w	a4,a4
   102d0:	0007879b          	sext.w	a5,a5
   102d4:	fcf740e3          	blt	a4,a5,10294 <quicksort+0xb4>
   102d8:	fec42783          	lw	a5,-20(s0)
   102dc:	00078713          	mv	a4,a5
   102e0:	fe842783          	lw	a5,-24(s0)
   102e4:	0007071b          	sext.w	a4,a4
   102e8:	0007879b          	sext.w	a5,a5
   102ec:	04f75e63          	bge	a4,a5,10348 <quicksort+0x168>
   102f0:	fec42783          	lw	a5,-20(s0)
   102f4:	00279793          	sll	a5,a5,0x2
   102f8:	fd843703          	ld	a4,-40(s0)
   102fc:	00f707b3          	add	a5,a4,a5
   10300:	0007a783          	lw	a5,0(a5)
   10304:	fef42023          	sw	a5,-32(s0)
   10308:	fe842783          	lw	a5,-24(s0)
   1030c:	00279793          	sll	a5,a5,0x2
   10310:	fd843703          	ld	a4,-40(s0)
   10314:	00f70733          	add	a4,a4,a5
   10318:	fec42783          	lw	a5,-20(s0)
   1031c:	00279793          	sll	a5,a5,0x2
   10320:	fd843683          	ld	a3,-40(s0)
   10324:	00f687b3          	add	a5,a3,a5
   10328:	00072703          	lw	a4,0(a4)
   1032c:	00e7a023          	sw	a4,0(a5)
   10330:	fe842783          	lw	a5,-24(s0)
   10334:	00279793          	sll	a5,a5,0x2
   10338:	fd843703          	ld	a4,-40(s0)
   1033c:	00f707b3          	add	a5,a4,a5
   10340:	fe042703          	lw	a4,-32(s0)
   10344:	00e7a023          	sw	a4,0(a5)
   10348:	fec42783          	lw	a5,-20(s0)
   1034c:	00078713          	mv	a4,a5
   10350:	fe842783          	lw	a5,-24(s0)
   10354:	0007071b          	sext.w	a4,a4
   10358:	0007879b          	sext.w	a5,a5
   1035c:	eef71ee3          	bne	a4,a5,10258 <quicksort+0x78>
   10360:	fec42783          	lw	a5,-20(s0)
   10364:	00279793          	sll	a5,a5,0x2
   10368:	fd843703          	ld	a4,-40(s0)
   1036c:	00f70733          	add	a4,a4,a5
   10370:	fd442783          	lw	a5,-44(s0)
   10374:	00279793          	sll	a5,a5,0x2
   10378:	fd843683          	ld	a3,-40(s0)
   1037c:	00f687b3          	add	a5,a3,a5
   10380:	00072703          	lw	a4,0(a4)
   10384:	00e7a023          	sw	a4,0(a5)
   10388:	fec42783          	lw	a5,-20(s0)
   1038c:	00279793          	sll	a5,a5,0x2
   10390:	fd843703          	ld	a4,-40(s0)
   10394:	00f707b3          	add	a5,a4,a5
   10398:	fe442703          	lw	a4,-28(s0)
   1039c:	00e7a023          	sw	a4,0(a5)
   103a0:	fec42783          	lw	a5,-20(s0)
   103a4:	fff7879b          	addw	a5,a5,-1
   103a8:	0007871b          	sext.w	a4,a5
   103ac:	fd442783          	lw	a5,-44(s0)
   103b0:	00070613          	mv	a2,a4
   103b4:	00078593          	mv	a1,a5
   103b8:	fd843503          	ld	a0,-40(s0)
   103bc:	e25ff0ef          	jal	101e0 <quicksort>
   103c0:	fec42783          	lw	a5,-20(s0)
   103c4:	0017879b          	addw	a5,a5,1
   103c8:	0007879b          	sext.w	a5,a5
   103cc:	fd042703          	lw	a4,-48(s0)
   103d0:	00070613          	mv	a2,a4
   103d4:	00078593          	mv	a1,a5
   103d8:	fd843503          	ld	a0,-40(s0)
   103dc:	e05ff0ef          	jal	101e0 <quicksort>
   103e0:	0080006f          	j	103e8 <quicksort+0x208>
   103e4:	00000013          	nop
   103e8:	02813083          	ld	ra,40(sp)
   103ec:	02013403          	ld	s0,32(sp)
   103f0:	03010113          	add	sp,sp,48
   103f4:	00008067          	ret

00000000000103f8 <main>:
   103f8:	e1010113          	add	sp,sp,-496
   103fc:	1e113423          	sd	ra,488(sp)
   10400:	1e813023          	sd	s0,480(sp)
   10404:	1f010413          	add	s0,sp,496
   10408:	00a00793          	li	a5,10
   1040c:	fcf42c23          	sw	a5,-40(s0)
   10410:	000117b7          	lui	a5,0x11
   10414:	c1078793          	add	a5,a5,-1008 # 10c10 <__errno+0x5c>
   10418:	0007b583          	ld	a1,0(a5)
   1041c:	0087b603          	ld	a2,8(a5)
   10420:	0107b683          	ld	a3,16(a5)
   10424:	0187b703          	ld	a4,24(a5)
   10428:	0207b783          	ld	a5,32(a5)
   1042c:	fab43423          	sd	a1,-88(s0)
   10430:	fac43823          	sd	a2,-80(s0)
   10434:	fad43c23          	sd	a3,-72(s0)
   10438:	fce43023          	sd	a4,-64(s0)
   1043c:	fcf43423          	sd	a5,-56(s0)
   10440:	000117b7          	lui	a5,0x11
   10444:	bc078513          	add	a0,a5,-1088 # 10bc0 <__errno+0xc>
   10448:	280000ef          	jal	106c8 <print_s>
   1044c:	fe042623          	sw	zero,-20(s0)
   10450:	0380006f          	j	10488 <main+0x90>
   10454:	fec42783          	lw	a5,-20(s0)
   10458:	00279793          	sll	a5,a5,0x2
   1045c:	ff078793          	add	a5,a5,-16
   10460:	008787b3          	add	a5,a5,s0
   10464:	fb87a783          	lw	a5,-72(a5)
   10468:	00078513          	mv	a0,a5
   1046c:	230000ef          	jal	1069c <print_d>
   10470:	000117b7          	lui	a5,0x11
   10474:	bd078513          	add	a0,a5,-1072 # 10bd0 <__errno+0x1c>
   10478:	250000ef          	jal	106c8 <print_s>
   1047c:	fec42783          	lw	a5,-20(s0)
   10480:	0017879b          	addw	a5,a5,1
   10484:	fef42623          	sw	a5,-20(s0)
   10488:	fec42783          	lw	a5,-20(s0)
   1048c:	00078713          	mv	a4,a5
   10490:	fd842783          	lw	a5,-40(s0)
   10494:	0007071b          	sext.w	a4,a4
   10498:	0007879b          	sext.w	a5,a5
   1049c:	faf74ce3          	blt	a4,a5,10454 <main+0x5c>
   104a0:	000117b7          	lui	a5,0x11
   104a4:	bd878513          	add	a0,a5,-1064 # 10bd8 <__errno+0x24>
   104a8:	220000ef          	jal	106c8 <print_s>
   104ac:	000117b7          	lui	a5,0x11
   104b0:	be078513          	add	a0,a5,-1056 # 10be0 <__errno+0x2c>
   104b4:	214000ef          	jal	106c8 <print_s>
   104b8:	fd842783          	lw	a5,-40(s0)
   104bc:	fff7879b          	addw	a5,a5,-1
   104c0:	0007871b          	sext.w	a4,a5
   104c4:	fa840793          	add	a5,s0,-88
   104c8:	00070613          	mv	a2,a4
   104cc:	00000593          	li	a1,0
   104d0:	00078513          	mv	a0,a5
   104d4:	d0dff0ef          	jal	101e0 <quicksort>
   104d8:	fe042423          	sw	zero,-24(s0)
   104dc:	0380006f          	j	10514 <main+0x11c>
   104e0:	fe842783          	lw	a5,-24(s0)
   104e4:	00279793          	sll	a5,a5,0x2
   104e8:	ff078793          	add	a5,a5,-16
   104ec:	008787b3          	add	a5,a5,s0
   104f0:	fb87a783          	lw	a5,-72(a5)
   104f4:	00078513          	mv	a0,a5
   104f8:	1a4000ef          	jal	1069c <print_d>
   104fc:	000117b7          	lui	a5,0x11
   10500:	bd078513          	add	a0,a5,-1072 # 10bd0 <__errno+0x1c>
   10504:	1c4000ef          	jal	106c8 <print_s>
   10508:	fe842783          	lw	a5,-24(s0)
   1050c:	0017879b          	addw	a5,a5,1
   10510:	fef42423          	sw	a5,-24(s0)
   10514:	fe842783          	lw	a5,-24(s0)
   10518:	00078713          	mv	a4,a5
   1051c:	fd842783          	lw	a5,-40(s0)
   10520:	0007071b          	sext.w	a4,a4
   10524:	0007879b          	sext.w	a5,a5
   10528:	faf74ce3          	blt	a4,a5,104e0 <main+0xe8>
   1052c:	000117b7          	lui	a5,0x11
   10530:	bd878513          	add	a0,a5,-1064 # 10bd8 <__errno+0x24>
   10534:	194000ef          	jal	106c8 <print_s>
   10538:	06400793          	li	a5,100
   1053c:	fcf42a23          	sw	a5,-44(s0)
   10540:	fe042223          	sw	zero,-28(s0)
   10544:	0340006f          	j	10578 <main+0x180>
   10548:	06400793          	li	a5,100
   1054c:	fe442703          	lw	a4,-28(s0)
   10550:	40e787bb          	subw	a5,a5,a4
   10554:	0007871b          	sext.w	a4,a5
   10558:	fe442783          	lw	a5,-28(s0)
   1055c:	00279793          	sll	a5,a5,0x2
   10560:	ff078793          	add	a5,a5,-16
   10564:	008787b3          	add	a5,a5,s0
   10568:	e2e7a423          	sw	a4,-472(a5)
   1056c:	fe442783          	lw	a5,-28(s0)
   10570:	0017879b          	addw	a5,a5,1
   10574:	fef42223          	sw	a5,-28(s0)
   10578:	fe442783          	lw	a5,-28(s0)
   1057c:	0007871b          	sext.w	a4,a5
   10580:	06300793          	li	a5,99
   10584:	fce7d2e3          	bge	a5,a4,10548 <main+0x150>
   10588:	000117b7          	lui	a5,0x11
   1058c:	bf078513          	add	a0,a5,-1040 # 10bf0 <__errno+0x3c>
   10590:	138000ef          	jal	106c8 <print_s>
   10594:	fe042023          	sw	zero,-32(s0)
   10598:	0380006f          	j	105d0 <main+0x1d8>
   1059c:	fe042783          	lw	a5,-32(s0)
   105a0:	00279793          	sll	a5,a5,0x2
   105a4:	ff078793          	add	a5,a5,-16
   105a8:	008787b3          	add	a5,a5,s0
   105ac:	e287a783          	lw	a5,-472(a5)
   105b0:	00078513          	mv	a0,a5
   105b4:	0e8000ef          	jal	1069c <print_d>
   105b8:	000117b7          	lui	a5,0x11
   105bc:	bd078513          	add	a0,a5,-1072 # 10bd0 <__errno+0x1c>
   105c0:	108000ef          	jal	106c8 <print_s>
   105c4:	fe042783          	lw	a5,-32(s0)
   105c8:	0017879b          	addw	a5,a5,1
   105cc:	fef42023          	sw	a5,-32(s0)
   105d0:	fe042783          	lw	a5,-32(s0)
   105d4:	00078713          	mv	a4,a5
   105d8:	fd442783          	lw	a5,-44(s0)
   105dc:	0007071b          	sext.w	a4,a4
   105e0:	0007879b          	sext.w	a5,a5
   105e4:	faf74ce3          	blt	a4,a5,1059c <main+0x1a4>
   105e8:	000117b7          	lui	a5,0x11
   105ec:	bd878513          	add	a0,a5,-1064 # 10bd8 <__errno+0x24>
   105f0:	0d8000ef          	jal	106c8 <print_s>
   105f4:	000117b7          	lui	a5,0x11
   105f8:	c0078513          	add	a0,a5,-1024 # 10c00 <__errno+0x4c>
   105fc:	0cc000ef          	jal	106c8 <print_s>
   10600:	fd442783          	lw	a5,-44(s0)
   10604:	fff7879b          	addw	a5,a5,-1
   10608:	0007871b          	sext.w	a4,a5
   1060c:	e1840793          	add	a5,s0,-488
   10610:	00070613          	mv	a2,a4
   10614:	00000593          	li	a1,0
   10618:	00078513          	mv	a0,a5
   1061c:	bc5ff0ef          	jal	101e0 <quicksort>
   10620:	fc042e23          	sw	zero,-36(s0)
   10624:	0380006f          	j	1065c <main+0x264>
   10628:	fdc42783          	lw	a5,-36(s0)
   1062c:	00279793          	sll	a5,a5,0x2
   10630:	ff078793          	add	a5,a5,-16
   10634:	008787b3          	add	a5,a5,s0
   10638:	e287a783          	lw	a5,-472(a5)
   1063c:	00078513          	mv	a0,a5
   10640:	05c000ef          	jal	1069c <print_d>
   10644:	000117b7          	lui	a5,0x11
   10648:	bd078513          	add	a0,a5,-1072 # 10bd0 <__errno+0x1c>
   1064c:	07c000ef          	jal	106c8 <print_s>
   10650:	fdc42783          	lw	a5,-36(s0)
   10654:	0017879b          	addw	a5,a5,1
   10658:	fcf42e23          	sw	a5,-36(s0)
   1065c:	fdc42783          	lw	a5,-36(s0)
   10660:	00078713          	mv	a4,a5
   10664:	fd442783          	lw	a5,-44(s0)
   10668:	0007071b          	sext.w	a4,a4
   1066c:	0007879b          	sext.w	a5,a5
   10670:	faf74ce3          	blt	a4,a5,10628 <main+0x230>
   10674:	000117b7          	lui	a5,0x11
   10678:	bd878513          	add	a0,a5,-1064 # 10bd8 <__errno+0x24>
   1067c:	04c000ef          	jal	106c8 <print_s>
   10680:	09c000ef          	jal	1071c <exit_proc>
   10684:	00000793          	li	a5,0
   10688:	00078513          	mv	a0,a5
   1068c:	1e813083          	ld	ra,488(sp)
   10690:	1e013403          	ld	s0,480(sp)
   10694:	1f010113          	add	sp,sp,496
   10698:	00008067          	ret

000000000001069c <print_d>:
   1069c:	fe010113          	add	sp,sp,-32
   106a0:	00813c23          	sd	s0,24(sp)
   106a4:	02010413          	add	s0,sp,32
   106a8:	00050793          	mv	a5,a0
   106ac:	fef42623          	sw	a5,-20(s0)
   106b0:	00200893          	li	a7,2
   106b4:	00000073          	ecall
   106b8:	00000013          	nop
   106bc:	01813403          	ld	s0,24(sp)
   106c0:	02010113          	add	sp,sp,32
   106c4:	00008067          	ret

00000000000106c8 <print_s>:
   106c8:	fe010113          	add	sp,sp,-32
   106cc:	00813c23          	sd	s0,24(sp)
   106d0:	02010413          	add	s0,sp,32
   106d4:	fea43423          	sd	a0,-24(s0)
   106d8:	00000893          	li	a7,0
   106dc:	00000073          	ecall
   106e0:	00000013          	nop
   106e4:	01813403          	ld	s0,24(sp)
   106e8:	02010113          	add	sp,sp,32
   106ec:	00008067          	ret

00000000000106f0 <print_c>:
   106f0:	fe010113          	add	sp,sp,-32
   106f4:	00813c23          	sd	s0,24(sp)
   106f8:	02010413          	add	s0,sp,32
   106fc:	00050793          	mv	a5,a0
   10700:	fef407a3          	sb	a5,-17(s0)
   10704:	00100893          	li	a7,1
   10708:	00000073          	ecall
   1070c:	00000013          	nop
   10710:	01813403          	ld	s0,24(sp)
   10714:	02010113          	add	sp,sp,32
   10718:	00008067          	ret

000000000001071c <exit_proc>:
   1071c:	ff010113          	add	sp,sp,-16
   10720:	00813423          	sd	s0,8(sp)
   10724:	01010413          	add	s0,sp,16
   10728:	00300893          	li	a7,3
   1072c:	00000073          	ecall
   10730:	00000013          	nop
   10734:	00813403          	ld	s0,8(sp)
   10738:	01010113          	add	sp,sp,16
   1073c:	00008067          	ret

0000000000010740 <read_char>:
   10740:	fe010113          	add	sp,sp,-32
   10744:	00813c23          	sd	s0,24(sp)
   10748:	02010413          	add	s0,sp,32
   1074c:	00400893          	li	a7,4
   10750:	00000073          	ecall
   10754:	00050793          	mv	a5,a0
   10758:	fef407a3          	sb	a5,-17(s0)
   1075c:	fef44783          	lbu	a5,-17(s0)
   10760:	00078513          	mv	a0,a5
   10764:	01813403          	ld	s0,24(sp)
   10768:	02010113          	add	sp,sp,32
   1076c:	00008067          	ret

0000000000010770 <read_num>:
   10770:	fe010113          	add	sp,sp,-32
   10774:	00813c23          	sd	s0,24(sp)
   10778:	02010413          	add	s0,sp,32
   1077c:	00500893          	li	a7,5
   10780:	00000073          	ecall
   10784:	00050793          	mv	a5,a0
   10788:	fef43423          	sd	a5,-24(s0)
   1078c:	fe843783          	ld	a5,-24(s0)
   10790:	00078513          	mv	a0,a5
   10794:	01813403          	ld	s0,24(sp)
   10798:	02010113          	add	sp,sp,32
   1079c:	00008067          	ret

00000000000107a0 <print_f>:
   107a0:	fe010113          	add	sp,sp,-32
   107a4:	00813c23          	sd	s0,24(sp)
   107a8:	02010413          	add	s0,sp,32
   107ac:	fea42627          	fsw	fa0,-20(s0)
   107b0:	e0050553          	fmv.x.w	a0,fa0
   107b4:	00600893          	li	a7,6
   107b8:	00000073          	ecall
   107bc:	00000013          	nop
   107c0:	01813403          	ld	s0,24(sp)
   107c4:	02010113          	add	sp,sp,32
   107c8:	00008067          	ret

00000000000107cc <__libc_init_array>:
   107cc:	fe010113          	add	sp,sp,-32
   107d0:	00813823          	sd	s0,16(sp)
   107d4:	000117b7          	lui	a5,0x11
   107d8:	00011437          	lui	s0,0x11
   107dc:	01213023          	sd	s2,0(sp)
   107e0:	00478793          	add	a5,a5,4 # 11004 <__preinit_array_end>
   107e4:	00440713          	add	a4,s0,4 # 11004 <__preinit_array_end>
   107e8:	00113c23          	sd	ra,24(sp)
   107ec:	00913423          	sd	s1,8(sp)
   107f0:	40e78933          	sub	s2,a5,a4
   107f4:	02e78263          	beq	a5,a4,10818 <__libc_init_array+0x4c>
   107f8:	40395913          	sra	s2,s2,0x3
   107fc:	00440413          	add	s0,s0,4
   10800:	00000493          	li	s1,0
   10804:	00043783          	ld	a5,0(s0)
   10808:	00148493          	add	s1,s1,1
   1080c:	00840413          	add	s0,s0,8
   10810:	000780e7          	jalr	a5
   10814:	ff24e8e3          	bltu	s1,s2,10804 <__libc_init_array+0x38>
   10818:	00011437          	lui	s0,0x11
   1081c:	000117b7          	lui	a5,0x11
   10820:	01878793          	add	a5,a5,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   10824:	00840713          	add	a4,s0,8 # 11008 <__init_array_start>
   10828:	40e78933          	sub	s2,a5,a4
   1082c:	40395913          	sra	s2,s2,0x3
   10830:	02e78063          	beq	a5,a4,10850 <__libc_init_array+0x84>
   10834:	00840413          	add	s0,s0,8
   10838:	00000493          	li	s1,0
   1083c:	00043783          	ld	a5,0(s0)
   10840:	00148493          	add	s1,s1,1
   10844:	00840413          	add	s0,s0,8
   10848:	000780e7          	jalr	a5
   1084c:	ff24e8e3          	bltu	s1,s2,1083c <__libc_init_array+0x70>
   10850:	01813083          	ld	ra,24(sp)
   10854:	01013403          	ld	s0,16(sp)
   10858:	00813483          	ld	s1,8(sp)
   1085c:	00013903          	ld	s2,0(sp)
   10860:	02010113          	add	sp,sp,32
   10864:	00008067          	ret

0000000000010868 <memset>:
   10868:	00f00313          	li	t1,15
   1086c:	00050713          	mv	a4,a0
   10870:	02c37a63          	bgeu	t1,a2,108a4 <memset+0x3c>
   10874:	00f77793          	and	a5,a4,15
   10878:	0a079063          	bnez	a5,10918 <memset+0xb0>
   1087c:	06059e63          	bnez	a1,108f8 <memset+0x90>
   10880:	ff067693          	and	a3,a2,-16
   10884:	00f67613          	and	a2,a2,15
   10888:	00e686b3          	add	a3,a3,a4
   1088c:	00b73023          	sd	a1,0(a4)
   10890:	00b73423          	sd	a1,8(a4)
   10894:	01070713          	add	a4,a4,16
   10898:	fed76ae3          	bltu	a4,a3,1088c <memset+0x24>
   1089c:	00061463          	bnez	a2,108a4 <memset+0x3c>
   108a0:	00008067          	ret
   108a4:	40c306b3          	sub	a3,t1,a2
   108a8:	00269693          	sll	a3,a3,0x2
   108ac:	00000297          	auipc	t0,0x0
   108b0:	005686b3          	add	a3,a3,t0
   108b4:	00c68067          	jr	12(a3)
   108b8:	00b70723          	sb	a1,14(a4)
   108bc:	00b706a3          	sb	a1,13(a4)
   108c0:	00b70623          	sb	a1,12(a4)
   108c4:	00b705a3          	sb	a1,11(a4)
   108c8:	00b70523          	sb	a1,10(a4)
   108cc:	00b704a3          	sb	a1,9(a4)
   108d0:	00b70423          	sb	a1,8(a4)
   108d4:	00b703a3          	sb	a1,7(a4)
   108d8:	00b70323          	sb	a1,6(a4)
   108dc:	00b702a3          	sb	a1,5(a4)
   108e0:	00b70223          	sb	a1,4(a4)
   108e4:	00b701a3          	sb	a1,3(a4)
   108e8:	00b70123          	sb	a1,2(a4)
   108ec:	00b700a3          	sb	a1,1(a4)
   108f0:	00b70023          	sb	a1,0(a4)
   108f4:	00008067          	ret
   108f8:	0ff5f593          	zext.b	a1,a1
   108fc:	00859693          	sll	a3,a1,0x8
   10900:	00d5e5b3          	or	a1,a1,a3
   10904:	01059693          	sll	a3,a1,0x10
   10908:	00d5e5b3          	or	a1,a1,a3
   1090c:	02059693          	sll	a3,a1,0x20
   10910:	00d5e5b3          	or	a1,a1,a3
   10914:	f6dff06f          	j	10880 <memset+0x18>
   10918:	00279693          	sll	a3,a5,0x2
   1091c:	00000297          	auipc	t0,0x0
   10920:	005686b3          	add	a3,a3,t0
   10924:	00008293          	mv	t0,ra
   10928:	f98680e7          	jalr	-104(a3)
   1092c:	00028093          	mv	ra,t0
   10930:	ff078793          	add	a5,a5,-16
   10934:	40f70733          	sub	a4,a4,a5
   10938:	00f60633          	add	a2,a2,a5
   1093c:	f6c374e3          	bgeu	t1,a2,108a4 <memset+0x3c>
   10940:	f3dff06f          	j	1087c <memset+0x14>

0000000000010944 <__call_exitprocs>:
   10944:	fb010113          	add	sp,sp,-80
   10948:	03413023          	sd	s4,32(sp)
   1094c:	f481ba03          	ld	s4,-184(gp) # 11768 <_global_impure_ptr>
   10950:	03213823          	sd	s2,48(sp)
   10954:	04113423          	sd	ra,72(sp)
   10958:	1f8a3903          	ld	s2,504(s4)
   1095c:	04813023          	sd	s0,64(sp)
   10960:	02913c23          	sd	s1,56(sp)
   10964:	03313423          	sd	s3,40(sp)
   10968:	01513c23          	sd	s5,24(sp)
   1096c:	01613823          	sd	s6,16(sp)
   10970:	01713423          	sd	s7,8(sp)
   10974:	01813023          	sd	s8,0(sp)
   10978:	04090063          	beqz	s2,109b8 <__call_exitprocs+0x74>
   1097c:	00050b13          	mv	s6,a0
   10980:	00058b93          	mv	s7,a1
   10984:	00100a93          	li	s5,1
   10988:	fff00993          	li	s3,-1
   1098c:	00892483          	lw	s1,8(s2)
   10990:	fff4841b          	addw	s0,s1,-1
   10994:	02044263          	bltz	s0,109b8 <__call_exitprocs+0x74>
   10998:	00349493          	sll	s1,s1,0x3
   1099c:	009904b3          	add	s1,s2,s1
   109a0:	040b8463          	beqz	s7,109e8 <__call_exitprocs+0xa4>
   109a4:	2084b783          	ld	a5,520(s1)
   109a8:	05778063          	beq	a5,s7,109e8 <__call_exitprocs+0xa4>
   109ac:	fff4041b          	addw	s0,s0,-1
   109b0:	ff848493          	add	s1,s1,-8
   109b4:	ff3416e3          	bne	s0,s3,109a0 <__call_exitprocs+0x5c>
   109b8:	04813083          	ld	ra,72(sp)
   109bc:	04013403          	ld	s0,64(sp)
   109c0:	03813483          	ld	s1,56(sp)
   109c4:	03013903          	ld	s2,48(sp)
   109c8:	02813983          	ld	s3,40(sp)
   109cc:	02013a03          	ld	s4,32(sp)
   109d0:	01813a83          	ld	s5,24(sp)
   109d4:	01013b03          	ld	s6,16(sp)
   109d8:	00813b83          	ld	s7,8(sp)
   109dc:	00013c03          	ld	s8,0(sp)
   109e0:	05010113          	add	sp,sp,80
   109e4:	00008067          	ret
   109e8:	00892783          	lw	a5,8(s2)
   109ec:	0084b703          	ld	a4,8(s1)
   109f0:	fff7879b          	addw	a5,a5,-1
   109f4:	06878263          	beq	a5,s0,10a58 <__call_exitprocs+0x114>
   109f8:	0004b423          	sd	zero,8(s1)
   109fc:	fa0708e3          	beqz	a4,109ac <__call_exitprocs+0x68>
   10a00:	31092783          	lw	a5,784(s2)
   10a04:	008a96bb          	sllw	a3,s5,s0
   10a08:	00892c03          	lw	s8,8(s2)
   10a0c:	00d7f7b3          	and	a5,a5,a3
   10a10:	0007879b          	sext.w	a5,a5
   10a14:	02079263          	bnez	a5,10a38 <__call_exitprocs+0xf4>
   10a18:	000700e7          	jalr	a4
   10a1c:	00892703          	lw	a4,8(s2)
   10a20:	1f8a3783          	ld	a5,504(s4)
   10a24:	01871463          	bne	a4,s8,10a2c <__call_exitprocs+0xe8>
   10a28:	f92782e3          	beq	a5,s2,109ac <__call_exitprocs+0x68>
   10a2c:	f80786e3          	beqz	a5,109b8 <__call_exitprocs+0x74>
   10a30:	00078913          	mv	s2,a5
   10a34:	f59ff06f          	j	1098c <__call_exitprocs+0x48>
   10a38:	31492783          	lw	a5,788(s2)
   10a3c:	1084b583          	ld	a1,264(s1)
   10a40:	00d7f7b3          	and	a5,a5,a3
   10a44:	0007879b          	sext.w	a5,a5
   10a48:	00079c63          	bnez	a5,10a60 <__call_exitprocs+0x11c>
   10a4c:	000b0513          	mv	a0,s6
   10a50:	000700e7          	jalr	a4
   10a54:	fc9ff06f          	j	10a1c <__call_exitprocs+0xd8>
   10a58:	00892423          	sw	s0,8(s2)
   10a5c:	fa1ff06f          	j	109fc <__call_exitprocs+0xb8>
   10a60:	00058513          	mv	a0,a1
   10a64:	000700e7          	jalr	a4
   10a68:	fb5ff06f          	j	10a1c <__call_exitprocs+0xd8>

0000000000010a6c <__libc_fini_array>:
   10a6c:	fe010113          	add	sp,sp,-32
   10a70:	00813823          	sd	s0,16(sp)
   10a74:	000117b7          	lui	a5,0x11
   10a78:	00011437          	lui	s0,0x11
   10a7c:	01878793          	add	a5,a5,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   10a80:	02040413          	add	s0,s0,32 # 11020 <impure_data>
   10a84:	40f40433          	sub	s0,s0,a5
   10a88:	00913423          	sd	s1,8(sp)
   10a8c:	00113c23          	sd	ra,24(sp)
   10a90:	40345493          	sra	s1,s0,0x3
   10a94:	02048063          	beqz	s1,10ab4 <__libc_fini_array+0x48>
   10a98:	ff840413          	add	s0,s0,-8
   10a9c:	00f40433          	add	s0,s0,a5
   10aa0:	00043783          	ld	a5,0(s0)
   10aa4:	fff48493          	add	s1,s1,-1
   10aa8:	ff840413          	add	s0,s0,-8
   10aac:	000780e7          	jalr	a5
   10ab0:	fe0498e3          	bnez	s1,10aa0 <__libc_fini_array+0x34>
   10ab4:	01813083          	ld	ra,24(sp)
   10ab8:	01013403          	ld	s0,16(sp)
   10abc:	00813483          	ld	s1,8(sp)
   10ac0:	02010113          	add	sp,sp,32
   10ac4:	00008067          	ret

0000000000010ac8 <atexit>:
   10ac8:	00050593          	mv	a1,a0
   10acc:	00000693          	li	a3,0
   10ad0:	00000613          	li	a2,0
   10ad4:	00000513          	li	a0,0
   10ad8:	0040006f          	j	10adc <__register_exitproc>

0000000000010adc <__register_exitproc>:
   10adc:	f481b703          	ld	a4,-184(gp) # 11768 <_global_impure_ptr>
   10ae0:	1f873783          	ld	a5,504(a4)
   10ae4:	06078063          	beqz	a5,10b44 <__register_exitproc+0x68>
   10ae8:	0087a703          	lw	a4,8(a5)
   10aec:	01f00813          	li	a6,31
   10af0:	08e84663          	blt	a6,a4,10b7c <__register_exitproc+0xa0>
   10af4:	02050863          	beqz	a0,10b24 <__register_exitproc+0x48>
   10af8:	00371813          	sll	a6,a4,0x3
   10afc:	01078833          	add	a6,a5,a6
   10b00:	10c83823          	sd	a2,272(a6)
   10b04:	3107a883          	lw	a7,784(a5)
   10b08:	00100613          	li	a2,1
   10b0c:	00e6163b          	sllw	a2,a2,a4
   10b10:	00c8e8b3          	or	a7,a7,a2
   10b14:	3117a823          	sw	a7,784(a5)
   10b18:	20d83823          	sd	a3,528(a6)
   10b1c:	00200693          	li	a3,2
   10b20:	02d50863          	beq	a0,a3,10b50 <__register_exitproc+0x74>
   10b24:	00270693          	add	a3,a4,2
   10b28:	00369693          	sll	a3,a3,0x3
   10b2c:	0017071b          	addw	a4,a4,1
   10b30:	00e7a423          	sw	a4,8(a5)
   10b34:	00d787b3          	add	a5,a5,a3
   10b38:	00b7b023          	sd	a1,0(a5)
   10b3c:	00000513          	li	a0,0
   10b40:	00008067          	ret
   10b44:	20070793          	add	a5,a4,512
   10b48:	1ef73c23          	sd	a5,504(a4)
   10b4c:	f9dff06f          	j	10ae8 <__register_exitproc+0xc>
   10b50:	3147a683          	lw	a3,788(a5)
   10b54:	00000513          	li	a0,0
   10b58:	00c6e6b3          	or	a3,a3,a2
   10b5c:	30d7aa23          	sw	a3,788(a5)
   10b60:	00270693          	add	a3,a4,2
   10b64:	00369693          	sll	a3,a3,0x3
   10b68:	0017071b          	addw	a4,a4,1
   10b6c:	00e7a423          	sw	a4,8(a5)
   10b70:	00d787b3          	add	a5,a5,a3
   10b74:	00b7b023          	sd	a1,0(a5)
   10b78:	00008067          	ret
   10b7c:	fff00513          	li	a0,-1
   10b80:	00008067          	ret

0000000000010b84 <_exit>:
   10b84:	05d00893          	li	a7,93
   10b88:	00000073          	ecall
   10b8c:	00054463          	bltz	a0,10b94 <_exit+0x10>
   10b90:	0000006f          	j	10b90 <_exit+0xc>
   10b94:	ff010113          	add	sp,sp,-16
   10b98:	00813023          	sd	s0,0(sp)
   10b9c:	00050413          	mv	s0,a0
   10ba0:	00113423          	sd	ra,8(sp)
   10ba4:	4080043b          	negw	s0,s0
   10ba8:	00c000ef          	jal	10bb4 <__errno>
   10bac:	00852023          	sw	s0,0(a0) # 11000 <__EH_FRAME_BEGIN__>
   10bb0:	0000006f          	j	10bb0 <_exit+0x2c>

0000000000010bb4 <__errno>:
   10bb4:	f581b503          	ld	a0,-168(gp) # 11778 <_impure_ptr>
   10bb8:	00008067          	ret
