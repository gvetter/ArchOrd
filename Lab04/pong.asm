.equ BALL, 0x1000 ; ball state (its position and velocity)
.equ PADDLES, 0x1010 ; paddles position
.equ SCORES, 0x1018 ; game scores
.equ LEDS, 0x2000 ; LED addresses
.equ BUTTONS, 0x2030 ; Button addresses

main:

	call clear_leds
	call wait
	call wait
	addi a1, zero, 3
	addi a0, zero, 2
	 
	call set_pixel
	call wait
	call wait
	
	
; BEGIN:wait
wait:
	addi sp, sp, -4
	stw t0, sp(0)
	
	addi t0, zero, 1
	slli t0, 10
	jmp: addi t0, t0, -1
	bne t0, zero, jmp
	
	ldw t0, sp(0)
	addi sp, sp, 4
	ret

;END:wait


; BEGIN:clear_leds
clear_leds:
	stw zero, LEDS(zero)
	stw zero, LEDS+4(zero)
	stw zero, LEDS+8(zero)	
	
	ret
; END:clear_leds

; BEGIN:set_pixel
set_pixel:
	addi sp, sp, -12
	stw t0, 0(sp)
	stw t1, 4(sp)
	stw t2, 8(sp)
	
	andi t0, a0, 3 ;x modulo 4
	andi t1, a1, 7 ;y modulo 8
	slli t0, t0, 8 ; pas de mult en nios2
	add	t2, t1, t0
	addi t0, zero, 1
	sll t0, t0, t2
	
	andi t1, a0, 0x0C
	ldw t2, LEDS(t1)
	or	t2, t2, t0 
	stw t2, LEDS(t1)
	
	ldw t0, 0(sp)
	ldw t1, 4(sp)
	ldw t2, 8(sp)
	addi sp, sp, 12

	ret
; END:set_pixel

; BEGIN:move_ball
move_ball:
; your implementation code
ret
; END:move_ball

; BEGIN:move_paddles
move_paddles:
; your implementation code
ret
; END:move_paddles

; BEGIN:draw_paddles
draw_paddles:
; your implementation code
ret
; END:draw_paddles

; BEGIN:hit_test
hit_test:
; your implementation code
ret
; END:hit_test

; BEGIN:display_score
display_score:
; your implementation code
ret
; END:display_score

