.equ BALL, 0x1000 ; ball state (its position and velocity)
.equ PADDLES, 0x1010 ; paddles position
.equ SCORES, 0x1018 ; game scores
.equ LEDS, 0x2000 ; LED addresses
.equ BUTTONS, 0x2030 ; Button addresses

addi sp, zero, LEDS
; initialisation
addi sp, sp, -8
stw t0, 0(sp)
stw ra, 4(sp)

;Ball
ldw t0, BALL_initial(zero) ;x pos
stw t0, BALL(zero)
		
ldw t0, BALL_initial+8(zero) ;y pos
stw t0, BALL+4(zero)

ldw t0, BALL_initial+4(zero) ;x velo
stw t0, BALL+8(zero)

ldw t0, BALL_initial+12(zero) ; y velo
stw t0, BALL+12(zero)

; Paddles
ldw t0, PADDLE_initial(zero)
stw t0, PADDLES(zero)

ldw t0, PADDLE_initial+4(zero)
stw t0, PADDLES+4(zero)

; score
stw  zero, SCORES(zero)
stw  zero, SCORES+4(zero)

call main

break

main:
	addi sp, sp, -24
	stw ra, 0(sp)
	stw t0, 4(sp)
	stw t1, 8(sp)
	stw t2, 12(sp)	
	stw a0, 16(sp)
	stw a1, 20(sp)

	;call main_reinitialize

	call loop
	
	loop:
		call move_paddles
		call hit_test
		bne v0, zero, loop_player_won
		call move_ball
		call clear_leds
		call draw_paddles
		; draw ball
		ldw  a0, BALL(zero)    
    	ldw  a1, BALL+4(zero)
   		call set_pixel 
		call wait
		
		br loop

	
	loop_player_won:
		cmpeqi t0, v0, 2 ;player 2 win
		bne t0, zero, win_player2
		br win_player1

	win_player1:
		
		ldw t0, SCORES(zero)
		addi t1, t0, 1
		stw t1, SCORES(zero)
		br main_display_scores
	
	win_player2:
		
		ldw t0, SCORES+4(zero)
		addi t1, t0, 1
		stw t1, SCORES+4(zero)
		br main_display_scores

	main_display_scores:

		call display_score
		ldw t0, SCORES(zero)
		ldw t1, SCORES+4(zero)
		ldw t2, points_for_game(zero)
		cmpeq t0, t0, t2
		cmpeq t1, t1, t2
		or t2, t0, t1
		bne t2, zero, main_return
		call main_reinitialize
		;call wait
		call wait
		br loop

	main_reinitialize:
;Ball
		ldw t0, BALL_initial(zero)
		stw t0, BALL(zero)
		
		ldw t0, BALL_initial+8(zero)
		stw t0, BALL+4(zero)
; Paddles
		ldw t0, PADDLE_initial(zero)
		stw t0, PADDLES(zero)

		ldw t0, PADDLE_initial+4(zero)
		stw t0, PADDLES+4(zero)

		
		;call wait
		

	main_return:
		stw ra, 0(sp)
		stw t0, 4(sp)
		stw t1, 8(sp)
		stw t2, 12(sp)	
		stw a0, 16(sp)
		stw a1, 20(sp)
		addi sp, sp, 24
		ret

	
		
	
	;stw t0, PADDLES(zero)
	;stw	t1, PADDLES+4(zero)
	;stw t0, SCORES(zero)
	;addi t1, t1, 4
	;stw t1, SCORES+4(zero)
	; 
	;call draw_paddles
	;call move_paddles
	;call wait
	;call clear_leds
	;call draw_paddles
	;call display_score
	

	
; BEGIN:wait
wait:
	addi sp, sp, -4
	stw t0, 0(sp)
	
	addi t0, zero, 1
	slli t0, t0, 5

    loop_wait:
        beq  t0, zero, ret_wait
        addi t0, t0, -1
        br   loop_wait
        
	ret_wait:
		ldw t0, 0(sp)
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
	slli t0, t0, 3 ; pas de mult en nios2
	add  t2, t0, t1
	addi t0, zero, 1
	sll  t0, t0, t2
	
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
    add t0, t0, t1
    stw t0, BALL(zero)
    
    ldw t0, BALL+4(zero)
    ldw t1, BALL+12(zero)
    add t0, t0, t1
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
	
	addi a0, zero, 0
	
	ldw a1, PADDLES(zero)
	call set_pixel
	addi a1, a1, 1
	call set_pixel
	addi a1, a1, 1
	call set_pixel
	
	addi a0, zero, 11
	ldw a1, PADDLES+4(zero)
	call set_pixel
	addi a1, a1, 1
	call set_pixel
	addi a1, a1, 1
	call set_pixel
	
	ldw a0, 0(sp)
	ldw a1, 4(sp)
	ldw ra, 8(sp)
	addi sp, sp, 12
	ret
; END:draw_paddles

; BEGIN:hit_test
hit_test:
	; 'This test can be done independently for each ball position' So we will do a x test and a y test
	addi sp, sp, -4
	stw ra, 0(sp)
	
	call hit_test_x
	call hit_test_y
	call who_won

	ldw ra, 0(sp)
	addi sp, sp, 4
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
	br skip_hit_x
    
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
	br skip_hit_y
    
    skip_hit_y:
    
	ldw t0, 0(sp)
    ldw t1, 4(sp)
    ldw t2, 8(sp)
    ldw t3, 12(sp)
	addi sp, sp, 16
	
	ret
; END:hit_test_y

who_won:
	addi sp, sp, -8
	stw t0, 0(sp)
	stw ra, 4(sp)

	call check_player1_win
	cmpeqi t0, v0, 1
	bne t0, zero, player1_win

	call check_player2_win
	cmpeqi t0, v0, 1
	bne t0, zero, player2_win
	
	addi v0, zero, 0 ; no players won

	br check_player_ret

	player1_win:
		addi v0, zero, 1
		br check_player_ret

	player2_win:
		addi v0, zero, 2
		br check_player_ret

	check_player_ret:
		ldw t0, 0(sp)
		ldw ra, 4(sp)
		addi sp, sp, 8
		ret

check_player1_win:

	addi    sp, sp, -32
    stw     t0, 0(sp)
    stw     t1, 4(sp)
    stw     t2, 8(sp)
    stw     t3, 12(sp)
    stw     t4, 16(sp)
    stw     t5, 20(sp)
    stw     t6, 24(sp)
    stw     t7, 28(sp)

	ldw t0, BALL(zero)
	ldw t1, BALL+4(zero)
	ldw t2, PADDLES+4(zero)
	addi t3, t2, 3
	cmpeqi  t4, t0, 10                         
    cmplt   t5, t1, t2                         
    cmpge   t6, t1, t3                         
    or      t7, t5, t6                         
    and     t7, t4, t7                     ;mettre une valeur t8?    
    bne     t7, zero, player1_win_true
    br      player1_win_false

	player1_win_true:
		addi v0, zero, 1
		br check_player1_win_return

	player1_win_false:
		addi v0, zero, 0
		br check_player1_win_return

	check_player1_win_return:

		ldw     t0, 0(sp)
        ldw     t1, 4(sp)
        ldw     t2, 8(sp)
        ldw     t3, 12(sp)
        ldw     t4, 16(sp)
        ldw     t5, 20(sp)
        ldw     t6, 24(sp)
        ldw     t7, 28(sp)
        addi    sp, sp, 32
		ret
	
check_player2_win:

	addi    sp, sp, -32
    stw     t0, 0(sp)
    stw     t1, 4(sp)
    stw     t2, 8(sp)
    stw     t3, 12(sp)
    stw     t4, 16(sp)
    stw     t5, 20(sp)
    stw     t6, 24(sp)
    stw     t7, 28(sp)
	
	ldw t0, BALL(zero)
	ldw t1, BALL+4(zero)
	ldw t2, PADDLES(zero)
	addi t3, t2, 3
	cmpeqi t4, t0, 1
	cmplt t5, t1, t2
	cmpge t6, t1, t3
	or t7, t5, t6
	and t7, t4, t7
	bne t7, zero, player2_win_true
	br player2_win_false

	player2_win_true:
		addi v0, zero, 1
		br check_player2_win_return

	player2_win_false:
		addi v0, zero, 0
		br check_player2_win_return

	check_player2_win_return:
		ldw     t0, 0(sp)
        ldw     t1, 4(sp)
        ldw     t2, 8(sp)
        ldw     t3, 12(sp)
        ldw     t4, 16(sp)
        ldw     t5, 20(sp)
        ldw     t6, 24(sp)
        ldw     t7, 28(sp)
        addi    sp, sp, 32
        ret

; BEGIN:display_score
display_score:
	addi sp, sp, -8
	stw t0, 0(sp)
	stw ra, 4(sp)
	
	ldw t0, SCORES(zero)
	slli t0, t0, 2
	ldw t0, font_data(t0)
	stw t0, LEDS(zero)
	
	ldw t0, SCORES+4(zero)
	slli t0, t0, 2
	ldw t0, font_data(t0)
	stw t0, LEDS+8(zero)
	
	addi t0, zero, 16
	slli t0, t0, 2
	ldw t0, font_data(t0)
	stw t0, LEDS+4(zero)
	
	ldw t0, 0(sp)
	ldw ra, 4(sp)
	addi sp, sp, 8
ret
; END:display_score

font_data:
	.word 0x7E427E00 ; 0
	.word 0x407E4400 ; 1
	.word 0x4E4A7A00 ; 2
	.word 0x7E4A4200 ; 3
	.word 0x7E080E00 ; 4
	.word 0x7A4A4E00 ; 5
	.word 0x7A4A7E00 ; 6
	.word 0x7E020600 ; 7
	.word 0x7E4A7E00 ; 8
	.word 0x7E4A4E00 ; 9
	.word 0x7E127E00 ; A
	.word 0x344A7E00 ; B
	.word 0x42423C00 ; C
	.word 0x3C427E00 ; D
	.word 0x424A7E00 ; E
	.word 0x020A7E00 ; F
	.word 0x00181800 ; separator

points_for_game:
	.word 7
PADDLE_initial:
	.word 2
	.word 2
BALL_initial:
	.word 5 ; x pos
	.word 1 ; x vel
	.word 4 ; y
	.word -1
