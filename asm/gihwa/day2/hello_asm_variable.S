		.data
i:		.word 0
j:		.word 1
k:		.word 4
fmt:	.asciz "hello,%d,%d\n"
fmt2:	.asciz "hellp,%s\n"
ch:		.byte 'A', 'B', 0
array:	.word 0,1,2,3,4

		.text
		.globl main

main:	stmfd sp!, {lr}
		ldr r1, =i
		ldr r1, [r1]
		ldr r2, =j
		ldr r2, [r2]
		ldr r0, =fmt
		bl printf
		ldr r1, =k
		ldr r1, [r1]
		ldr r2, =j
		ldr r2, [r2]
		ldr r0, =fmt
		bl printf
		ldr r1, =ch
		ldr r0, =fmt2
		bl printf

		mov r0, #0

		ldmfd sp!, {lr}
		mov pc, lr

