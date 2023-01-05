
c1m2.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000000538 <_init>:
 538:	48 83 ec 08          	sub    $0x8,%rsp
 53c:	48 8b 05 9d 0a 20 00 	mov    0x200a9d(%rip),%rax        # 200fe0 <__gmon_start__>
 543:	48 85 c0             	test   %rax,%rax
 546:	74 02                	je     54a <_init+0x12>
 548:	ff d0                	callq  *%rax
 54a:	48 83 c4 08          	add    $0x8,%rsp
 54e:	c3                   	retq   

Disassembly of section .plt:

0000000000000550 <.plt>:
 550:	ff 35 62 0a 20 00    	pushq  0x200a62(%rip)        # 200fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
 556:	ff 25 64 0a 20 00    	jmpq   *0x200a64(%rip)        # 200fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
 55c:	0f 1f 40 00          	nopl   0x0(%rax)

Disassembly of section .plt.got:

0000000000000560 <.plt.got>:
 560:	ff 25 62 0a 20 00    	jmpq   *0x200a62(%rip)        # 200fc8 <putchar@GLIBC_2.2.5>
 566:	66 90                	xchg   %ax,%ax
 568:	ff 25 8a 0a 20 00    	jmpq   *0x200a8a(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 56e:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000570 <_start>:
 570:	31 ed                	xor    %ebp,%ebp
 572:	49 89 d1             	mov    %rdx,%r9
 575:	5e                   	pop    %rsi
 576:	48 89 e2             	mov    %rsp,%rdx
 579:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 57d:	50                   	push   %rax
 57e:	54                   	push   %rsp
 57f:	4c 8d 05 aa 03 00 00 	lea    0x3aa(%rip),%r8        # 930 <__libc_csu_fini>
 586:	48 8d 0d 33 03 00 00 	lea    0x333(%rip),%rcx        # 8c0 <__libc_csu_init>
 58d:	48 8d 3d 0c 01 00 00 	lea    0x10c(%rip),%rdi        # 6a0 <main>
 594:	ff 15 3e 0a 20 00    	callq  *0x200a3e(%rip)        # 200fd8 <__libc_start_main@GLIBC_2.2.5>
 59a:	f4                   	hlt    
 59b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000005a0 <deregister_tm_clones>:
 5a0:	48 8d 3d 69 0a 20 00 	lea    0x200a69(%rip),%rdi        # 201010 <__TMC_END__>
 5a7:	48 8d 05 69 0a 20 00 	lea    0x200a69(%rip),%rax        # 201017 <__TMC_END__+0x7>
 5ae:	55                   	push   %rbp
 5af:	48 29 f8             	sub    %rdi,%rax
 5b2:	48 89 e5             	mov    %rsp,%rbp
 5b5:	48 83 f8 0e          	cmp    $0xe,%rax
 5b9:	76 15                	jbe    5d0 <deregister_tm_clones+0x30>
 5bb:	48 8b 05 0e 0a 20 00 	mov    0x200a0e(%rip),%rax        # 200fd0 <_ITM_deregisterTMCloneTable>
 5c2:	48 85 c0             	test   %rax,%rax
 5c5:	74 09                	je     5d0 <deregister_tm_clones+0x30>
 5c7:	5d                   	pop    %rbp
 5c8:	ff e0                	jmpq   *%rax
 5ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 5d0:	5d                   	pop    %rbp
 5d1:	c3                   	retq   
 5d2:	0f 1f 40 00          	nopl   0x0(%rax)
 5d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5dd:	00 00 00 

00000000000005e0 <register_tm_clones>:
 5e0:	48 8d 3d 29 0a 20 00 	lea    0x200a29(%rip),%rdi        # 201010 <__TMC_END__>
 5e7:	48 8d 35 22 0a 20 00 	lea    0x200a22(%rip),%rsi        # 201010 <__TMC_END__>
 5ee:	55                   	push   %rbp
 5ef:	48 29 fe             	sub    %rdi,%rsi
 5f2:	48 89 e5             	mov    %rsp,%rbp
 5f5:	48 c1 fe 03          	sar    $0x3,%rsi
 5f9:	48 89 f0             	mov    %rsi,%rax
 5fc:	48 c1 e8 3f          	shr    $0x3f,%rax
 600:	48 01 c6             	add    %rax,%rsi
 603:	48 d1 fe             	sar    %rsi
 606:	74 18                	je     620 <register_tm_clones+0x40>
 608:	48 8b 05 e1 09 20 00 	mov    0x2009e1(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 60f:	48 85 c0             	test   %rax,%rax
 612:	74 0c                	je     620 <register_tm_clones+0x40>
 614:	5d                   	pop    %rbp
 615:	ff e0                	jmpq   *%rax
 617:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 61e:	00 00 
 620:	5d                   	pop    %rbp
 621:	c3                   	retq   
 622:	0f 1f 40 00          	nopl   0x0(%rax)
 626:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 62d:	00 00 00 

0000000000000630 <__do_global_dtors_aux>:
 630:	80 3d d9 09 20 00 00 	cmpb   $0x0,0x2009d9(%rip)        # 201010 <__TMC_END__>
 637:	75 27                	jne    660 <__do_global_dtors_aux+0x30>
 639:	48 83 3d b7 09 20 00 	cmpq   $0x0,0x2009b7(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 640:	00 
 641:	55                   	push   %rbp
 642:	48 89 e5             	mov    %rsp,%rbp
 645:	74 0c                	je     653 <__do_global_dtors_aux+0x23>
 647:	48 8b 3d ba 09 20 00 	mov    0x2009ba(%rip),%rdi        # 201008 <__dso_handle>
 64e:	e8 15 ff ff ff       	callq  568 <.plt.got+0x8>
 653:	e8 48 ff ff ff       	callq  5a0 <deregister_tm_clones>
 658:	5d                   	pop    %rbp
 659:	c6 05 b0 09 20 00 01 	movb   $0x1,0x2009b0(%rip)        # 201010 <__TMC_END__>
 660:	f3 c3                	repz retq 
 662:	0f 1f 40 00          	nopl   0x0(%rax)
 666:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 66d:	00 00 00 

0000000000000670 <frame_dummy>:
 670:	48 8d 3d 71 07 20 00 	lea    0x200771(%rip),%rdi        # 200de8 <__JCR_END__>
 677:	48 83 3f 00          	cmpq   $0x0,(%rdi)
 67b:	75 0b                	jne    688 <frame_dummy+0x18>
 67d:	e9 5e ff ff ff       	jmpq   5e0 <register_tm_clones>
 682:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 688:	48 8b 05 59 09 20 00 	mov    0x200959(%rip),%rax        # 200fe8 <_Jv_RegisterClasses>
 68f:	48 85 c0             	test   %rax,%rax
 692:	74 e9                	je     67d <frame_dummy+0xd>
 694:	55                   	push   %rbp
 695:	48 89 e5             	mov    %rsp,%rbp
 698:	ff d0                	callq  *%rax
 69a:	5d                   	pop    %rbp
 69b:	e9 40 ff ff ff       	jmpq   5e0 <register_tm_clones>

00000000000006a0 <main>:
 6a0:	55                   	push   %rbp
 6a1:	48 89 e5             	mov    %rsp,%rbp
 6a4:	48 83 ec 10          	sub    $0x10,%rsp
 6a8:	be 0a 00 00 00       	mov    $0xa,%esi
 6ad:	48 8d 3d 64 09 20 00 	lea    0x200964(%rip),%rdi        # 201018 <buffer>
 6b4:	e8 e1 01 00 00       	callq  89a <clear_all>
 6b9:	48 8d 05 60 09 20 00 	lea    0x200960(%rip),%rax        # 201020 <buffer+0x8>
 6c0:	ba 02 00 00 00       	mov    $0x2,%edx
 6c5:	be 2b 00 00 00       	mov    $0x2b,%esi
 6ca:	48 89 c7             	mov    %rax,%rdi
 6cd:	e8 87 01 00 00       	callq  859 <set_all>
 6d2:	ba 61 00 00 00       	mov    $0x61,%edx
 6d7:	be 00 00 00 00       	mov    $0x0,%esi
 6dc:	48 8d 3d 35 09 20 00 	lea    0x200935(%rip),%rdi        # 201018 <buffer>
 6e3:	e8 0c 01 00 00       	callq  7f4 <set_value>
 6e8:	be 09 00 00 00       	mov    $0x9,%esi
 6ed:	48 8d 3d 24 09 20 00 	lea    0x200924(%rip),%rdi        # 201018 <buffer>
 6f4:	e8 46 01 00 00       	callq  83f <get_value>
 6f9:	88 45 fb             	mov    %al,-0x5(%rbp)
 6fc:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
 700:	83 c0 27             	add    $0x27,%eax
 703:	0f be c0             	movsbl %al,%eax
 706:	89 c2                	mov    %eax,%edx
 708:	be 09 00 00 00       	mov    $0x9,%esi
 70d:	48 8d 3d 04 09 20 00 	lea    0x200904(%rip),%rdi        # 201018 <buffer>
 714:	e8 db 00 00 00       	callq  7f4 <set_value>
 719:	ba 37 00 00 00       	mov    $0x37,%edx
 71e:	be 03 00 00 00       	mov    $0x3,%esi
 723:	48 8d 3d ee 08 20 00 	lea    0x2008ee(%rip),%rdi        # 201018 <buffer>
 72a:	e8 c5 00 00 00       	callq  7f4 <set_value>
 72f:	ba 58 00 00 00       	mov    $0x58,%edx
 734:	be 01 00 00 00       	mov    $0x1,%esi
 739:	48 8d 3d d8 08 20 00 	lea    0x2008d8(%rip),%rdi        # 201018 <buffer>
 740:	e8 af 00 00 00       	callq  7f4 <set_value>
 745:	ba 32 00 00 00       	mov    $0x32,%edx
 74a:	be 04 00 00 00       	mov    $0x4,%esi
 74f:	48 8d 3d c2 08 20 00 	lea    0x2008c2(%rip),%rdi        # 201018 <buffer>
 756:	e8 99 00 00 00       	callq  7f4 <set_value>
 75b:	be 01 00 00 00       	mov    $0x1,%esi
 760:	48 8d 3d b1 08 20 00 	lea    0x2008b1(%rip),%rdi        # 201018 <buffer>
 767:	e8 d3 00 00 00       	callq  83f <get_value>
 76c:	88 45 fb             	mov    %al,-0x5(%rbp)
 76f:	ba 79 00 00 00       	mov    $0x79,%edx
 774:	be 02 00 00 00       	mov    $0x2,%esi
 779:	48 8d 3d 98 08 20 00 	lea    0x200898(%rip),%rdi        # 201018 <buffer>
 780:	e8 6f 00 00 00       	callq  7f4 <set_value>
 785:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
 789:	83 e8 0c             	sub    $0xc,%eax
 78c:	0f be c0             	movsbl %al,%eax
 78f:	89 c2                	mov    %eax,%edx
 791:	be 07 00 00 00       	mov    $0x7,%esi
 796:	48 8d 3d 7b 08 20 00 	lea    0x20087b(%rip),%rdi        # 201018 <buffer>
 79d:	e8 52 00 00 00       	callq  7f4 <set_value>
 7a2:	ba 5f 00 00 00       	mov    $0x5f,%edx
 7a7:	be 05 00 00 00       	mov    $0x5,%esi
 7ac:	48 8d 3d 65 08 20 00 	lea    0x200865(%rip),%rdi        # 201018 <buffer>
 7b3:	e8 3c 00 00 00       	callq  7f4 <set_value>
 7b8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 7bf:	eb 1c                	jmp    7dd <main+0x13d>
 7c1:	8b 55 fc             	mov    -0x4(%rbp),%edx
 7c4:	48 8d 05 4d 08 20 00 	lea    0x20084d(%rip),%rax        # 201018 <buffer>
 7cb:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax
 7cf:	0f be c0             	movsbl %al,%eax
 7d2:	89 c7                	mov    %eax,%edi
 7d4:	e8 87 fd ff ff       	callq  560 <.plt.got>
 7d9:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 7dd:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
 7e1:	76 de                	jbe    7c1 <main+0x121>
 7e3:	bf 0a 00 00 00       	mov    $0xa,%edi
 7e8:	e8 73 fd ff ff       	callq  560 <.plt.got>
 7ed:	b8 00 00 00 00       	mov    $0x0,%eax
 7f2:	c9                   	leaveq 
 7f3:	c3                   	retq   

00000000000007f4 <set_value>:
 7f4:	55                   	push   %rbp
 7f5:	48 89 e5             	mov    %rsp,%rbp
 7f8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 7fc:	89 75 f4             	mov    %esi,-0xc(%rbp)
 7ff:	89 d0                	mov    %edx,%eax
 801:	88 45 f0             	mov    %al,-0x10(%rbp)
 804:	8b 55 f4             	mov    -0xc(%rbp),%edx
 807:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 80b:	48 01 c2             	add    %rax,%rdx
 80e:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
 812:	88 02                	mov    %al,(%rdx)
 814:	90                   	nop
 815:	5d                   	pop    %rbp
 816:	c3                   	retq   

0000000000000817 <clear_value>:
 817:	55                   	push   %rbp
 818:	48 89 e5             	mov    %rsp,%rbp
 81b:	48 83 ec 10          	sub    $0x10,%rsp
 81f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 823:	89 75 f4             	mov    %esi,-0xc(%rbp)
 826:	8b 4d f4             	mov    -0xc(%rbp),%ecx
 829:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 82d:	ba 00 00 00 00       	mov    $0x0,%edx
 832:	89 ce                	mov    %ecx,%esi
 834:	48 89 c7             	mov    %rax,%rdi
 837:	e8 b8 ff ff ff       	callq  7f4 <set_value>
 83c:	90                   	nop
 83d:	c9                   	leaveq 
 83e:	c3                   	retq   

000000000000083f <get_value>:
 83f:	55                   	push   %rbp
 840:	48 89 e5             	mov    %rsp,%rbp
 843:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 847:	89 75 f4             	mov    %esi,-0xc(%rbp)
 84a:	8b 55 f4             	mov    -0xc(%rbp),%edx
 84d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 851:	48 01 d0             	add    %rdx,%rax
 854:	0f b6 00             	movzbl (%rax),%eax
 857:	5d                   	pop    %rbp
 858:	c3                   	retq   

0000000000000859 <set_all>:
 859:	55                   	push   %rbp
 85a:	48 89 e5             	mov    %rsp,%rbp
 85d:	48 83 ec 20          	sub    $0x20,%rsp
 861:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 865:	89 f0                	mov    %esi,%eax
 867:	89 55 e0             	mov    %edx,-0x20(%rbp)
 86a:	88 45 e4             	mov    %al,-0x1c(%rbp)
 86d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 874:	eb 19                	jmp    88f <set_all+0x36>
 876:	0f be 55 e4          	movsbl -0x1c(%rbp),%edx
 87a:	8b 4d fc             	mov    -0x4(%rbp),%ecx
 87d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 881:	89 ce                	mov    %ecx,%esi
 883:	48 89 c7             	mov    %rax,%rdi
 886:	e8 69 ff ff ff       	callq  7f4 <set_value>
 88b:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 88f:	8b 45 fc             	mov    -0x4(%rbp),%eax
 892:	3b 45 e0             	cmp    -0x20(%rbp),%eax
 895:	72 df                	jb     876 <set_all+0x1d>
 897:	90                   	nop
 898:	c9                   	leaveq 
 899:	c3                   	retq   

000000000000089a <clear_all>:
 89a:	55                   	push   %rbp
 89b:	48 89 e5             	mov    %rsp,%rbp
 89e:	48 83 ec 10          	sub    $0x10,%rsp
 8a2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 8a6:	89 75 f4             	mov    %esi,-0xc(%rbp)
 8a9:	8b 55 f4             	mov    -0xc(%rbp),%edx
 8ac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 8b0:	be 00 00 00 00       	mov    $0x0,%esi
 8b5:	48 89 c7             	mov    %rax,%rdi
 8b8:	e8 9c ff ff ff       	callq  859 <set_all>
 8bd:	90                   	nop
 8be:	c9                   	leaveq 
 8bf:	c3                   	retq   

00000000000008c0 <__libc_csu_init>:
 8c0:	41 57                	push   %r15
 8c2:	41 56                	push   %r14
 8c4:	41 89 ff             	mov    %edi,%r15d
 8c7:	41 55                	push   %r13
 8c9:	41 54                	push   %r12
 8cb:	4c 8d 25 06 05 20 00 	lea    0x200506(%rip),%r12        # 200dd8 <__frame_dummy_init_array_entry>
 8d2:	55                   	push   %rbp
 8d3:	48 8d 2d 06 05 20 00 	lea    0x200506(%rip),%rbp        # 200de0 <__init_array_end>
 8da:	53                   	push   %rbx
 8db:	49 89 f6             	mov    %rsi,%r14
 8de:	49 89 d5             	mov    %rdx,%r13
 8e1:	4c 29 e5             	sub    %r12,%rbp
 8e4:	48 83 ec 08          	sub    $0x8,%rsp
 8e8:	48 c1 fd 03          	sar    $0x3,%rbp
 8ec:	e8 47 fc ff ff       	callq  538 <_init>
 8f1:	48 85 ed             	test   %rbp,%rbp
 8f4:	74 20                	je     916 <__libc_csu_init+0x56>
 8f6:	31 db                	xor    %ebx,%ebx
 8f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 8ff:	00 
 900:	4c 89 ea             	mov    %r13,%rdx
 903:	4c 89 f6             	mov    %r14,%rsi
 906:	44 89 ff             	mov    %r15d,%edi
 909:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 90d:	48 83 c3 01          	add    $0x1,%rbx
 911:	48 39 dd             	cmp    %rbx,%rbp
 914:	75 ea                	jne    900 <__libc_csu_init+0x40>
 916:	48 83 c4 08          	add    $0x8,%rsp
 91a:	5b                   	pop    %rbx
 91b:	5d                   	pop    %rbp
 91c:	41 5c                	pop    %r12
 91e:	41 5d                	pop    %r13
 920:	41 5e                	pop    %r14
 922:	41 5f                	pop    %r15
 924:	c3                   	retq   
 925:	90                   	nop
 926:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 92d:	00 00 00 

0000000000000930 <__libc_csu_fini>:
 930:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000934 <_fini>:
 934:	48 83 ec 08          	sub    $0x8,%rsp
 938:	48 83 c4 08          	add    $0x8,%rsp
 93c:	c3                   	retq   
