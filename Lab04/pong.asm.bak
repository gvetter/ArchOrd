.equ BALL, 0x1000 ; ball state (its position and velocity)
.equ PADDLES, 0x1010 ; paddles position
.equ SCORES, 0x1018 ; game scores
.equ LEDS, 0x2000 ; LED addresses
.equ BUTTONS, 0x2030 ; Button addresses

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
	addi t0, zero, 32
	addi t1, zero, 1
	jmp: sub t0, t0, t1
	bne t0, zero, jmp
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
	add t0, zero, zero
	slli t0, a0, 8	
	add t0, a1, t0
	ldw t1, LEDS(t0)
	ori t1, t1, 1
	stw t1, LEDS(t0)
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

