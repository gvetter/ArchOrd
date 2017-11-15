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
	loop_wait:
	addi t0, t0, -1
	bne t0, zero, loop_wait
	
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
    addi sp, sp, -8
    stw t0, 0(sp)
    stw t1, 4(sp)
    
    ldw t0, BALL(zero)
    ldw t1, BALL+8(zero)
    addi t0, t0, t1
    stw t0, BALL(zero)
    
    ldw t0, BALL+4(zero)
    ldw t1, BALL+12(zero)
    addi t0, t0, t1
    stw t0, BALL+4(zero)
    
    stw t0, 0(sp)
    stw t1, 4(sp)
    addi sp, sp, 8

	ret
; END:move_ball

; BEGIN:move_paddles
move_paddles:
	addi sp, sp, -12
	stw t0, 0(sp)
	stw t1, 4(sp)
	stw t2, 8(sp)
	
	ldw t0, BUTTONS+4(zero)
	andi t1, t0, 1 ;P1 = up
	andi t2, t0, 2 ;P1 = down
	bne t1, zero, up_1
	bne t2, zero, down_1
	
	up_1:
	ldw t0, PADDLES(zero)
	cmpeqi t1, t0, 1
	bne t1, zero, skip_paddle_1
	addi t0, t0, -1
	stw t0, PADDLES(zero)
	br skip_paddle_1
	
	down_1:
	ldw t0, PADDLES(zero)
	cmpeqi t1, t0, 6
	bne t1, zero, skip_paddle_1
	addi t0, t0, 1
	stw t0, PADDLES(zero)
	
	;OTHER PLAYER
	
	skip_paddle_1:
	ldw t0, BUTTONS+4(zero)
	andi t1, t0, 8 ;P2 = up
	andi t2, t0, 4 ;P2 = down
	
	up_2:
	ldw t0, PADDLES+4(zero)
	cmpeqi t1, t0, 1
	bne t1, zero, skip_paddle_2
	addi t0, t0, -1
	stw t0, PADDLES+4(zero)
	br skip_paddle_2
	
	down_2:
	ldw t0, PADDLES+4(zero)
	cmpeqi t1, t0, 6
	bne t1, zero, skip_paddle_2
	addi t0, t0, 1
	stw t0, PADDLES+4(zero)
	
	skip_paddle_2:
	stw t0, 0(sp)
	stw t1, 4(sp)
	stw t2, 8(sp)
	addi sp, sp, 12	
	ret
; END:move_paddles

; BEGIN:draw_paddles
draw_paddles:
	addi sp, sp, -12
	stw a0, 0(sp)
	stw a1, 4(sp)
	stw ra, 8(sp)
	
	add a0, zero, zero
	
	ldw a1, PADDLES(zero)
	call set_pixel
	addi a1, a1, -1
	call set_pixel
	addi a1, a1, 2
	call set_pixel
	
	addi a0, zero, 11
	
	ldw a1, PADDLES+4(zero)
	call set_pixel
	addi a1, a1, -1
	call set_pixel
	addi a1, a1, 2
	call set_pixel
	
	stw a0, 0(sp)
	stw a1, 4(sp)
	stw ra, 8(sp)
	addi sp, sp, 12
	ret
; END:draw_paddles

; BEGIN:hit_test
hit_test:
	; 'This test can be done independently for each ball position' So we will do a x test and a y test
	
	call hit_test_x
	call hit_test_y
	ret
; END:hit_test

; BEGIN:hit_test_x
hit_test_x:
    addi sp, sp, -16
    stw t0, 0(sp)
    stw t1, 4(sp)
    stw t2, 8(sp)
    stw t3, 12(sp)
    
    ldw t0, BALL(zero) ;t0 = pos
    ldw t1, BALL+8(zero);t1 = vel
    cmpeqi t2, t0, 1
    cmpeqi t3, t0, 10
    or t2, t2, t3
    beq t2, zero, skip_hit_x
    
    sub t1, zero, t1
    stw t1, BALL+8(zero)
    
    skip_hit_x:
    
	ldw t0, 0(sp)
    ldw t1, 4(sp)
    ldw t2, 8(sp)
    ldw t3, 12(sp)
	addi sp, sp, 16
	ret
; END:hit_test_x

; BEGIN:hit_test_y
hit_test_y:
    addi sp, sp, -16
    stw t0, 0(sp)
    stw t1, 4(sp)
    stw t2, 8(sp)
    stw t3, 12(sp)
    
    ldw t0, BALL+4(zero) ;t0 = pos
    ldw t1, BALL+12(zero);t1 = vel
    cmpeqi t2, t0, 0
    cmpeqi t3, t0, 7
    or t2, t2, t3
    beq t2, zero, skip_hit_y
    
    sub t1, zero, t1
    stw t1, BALL+12(zero)
    
    skip_hit_y:
    
	ldw t0, 0(sp)
    ldw t1, 4(sp)
    ldw t2, 8(sp)
    ldw t3, 12(sp)
	addi sp, sp, 16
	
	ret
; END:hit_test_y


; BEGIN:display_score
display_score:
; your implementation code
ret
; END:display_score

