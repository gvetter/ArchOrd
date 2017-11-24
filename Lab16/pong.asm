.equ    BALL   , 0x1000 ; ball state
.equ    PADDLES, 0x1010 ; paddles pos
.equ    SCORES , 0x1018 ; scores

.equ    LEDS   , 0x2000 ; LEDs address
.equ    BUTTONS, 0x2030 ; Buttons address

; initialize stack pointer
addi sp, zero, LEDS

; push stack
addi sp, sp, -8
stw  t0, 0(sp)
stw  ra, 4(sp)

; initialize BALL position and velocity
ldw  t0, BALL_init_data(zero)
stw  t0, BALL(zero)
ldw  t0, BALL_init_data+4(zero)
stw  t0, BALL+4(zero)
ldw  t0, BALL_init_data+8(zero)
stw  t0, BALL+8(zero)
ldw  t0, BALL_init_data+12(zero)
stw  t0, BALL+12(zero)

; initialize paddle positions
ldw  t0, PADDLE_init_data(zero)
stw  t0, PADDLES(zero)
ldw  t0, PADDLE_init_data+4(zero)
stw  t0, PADDLES+4(zero)

; initialize scores
stw  zero, SCORES(zero)
stw  zero, SCORES+4(zero)

call main

; pop stack
ldw  t0, 0(sp)
ldw  ra, 4(sp)
addi sp, sp, 8

; stop CPU
break

main:
    ; push stack
    addi sp, sp, -16
    stw  ra, 0(sp)
    stw  t0, 4(sp)
    stw  t1, 8(sp)
    stw  t2, 12(sp)

    main_loop:
        call move_paddles
        call hit_test
        bne  v0, zero, main_loop_someone_won ; if (some player won the round) goto main_loop_someone_won
        call move_ball
        call display_game
        call wait

        br main_loop

    main_loop_someone_won:
        cmpeqi t0, v0, 1                        ; t0 = (v0 == 1) = player_1_won
        bne    t0, zero, main_loop_player_1_won ; if (player_1_won) goto main_loop_player_1_won
        br     main_loop_player_2_won           ; goto main_loop_player_2_won

    main_loop_player_1_won:
        ldw  t0, SCORES(zero)      ; t0 = player_1_score
        addi t0, t0, 1             ; t0 = player_1_score + 1
        stw  t0, SCORES(zero)      ; MEM[SCORES] = t0
        br main_loop_display_score

    main_loop_player_2_won:
        ldw  t0, SCORES+4(zero)      ; t0 = player_2_score
        addi t0, t0, 1               ; t0 = player_2_score + 1
        stw  t0, SCORES+4(zero)      ; MEM[SCORES+4] = t0
        br   main_loop_display_score

    main_loop_display_score:
        call display_score
        ldw  t0, SCORES(zero)     ; t0 = player_1_score
        ldw  t1, SCORES+4(zero)   ; t1 = player_2_score
        ldw  t2, max_score(zero)  ; t2 = max_score_allowed
        cmpeq  t0, t0, t2         ; t0 = (player_1_score == max_score_allowed)
        cmpeq  t1, t1, t2         ; t1 = (player_2_score == max_score_allowed)
        or     t2, t0, t1         ; t2 = (player_1_score == max_score_allowed || player_2_score == max_score_allowed)
        bne    t2, zero, main_ret ; if (player_1_score == max_score_allowed || player_2_score == max_score_allowed) goto main_ret

        ; reinitialize Ball position
        ldw    t0, BALL_init_data(zero)   ; t0 = Ball initial x position
        stw    t0, BALL(zero)             ; MEM[BALL] = t0
        ldw    t0, BALL_init_data+4(zero) ; t0 = Ball initial y position
        stw    t0, BALL+4(zero)           ; MEM[BALL+4] = t0

        ; reinitialize PADDLE position
        ldw    t0, PADDLE_init_data(zero)    ; t0 =  paddle_1 initial position
        stw    t0, PADDLES(zero)             ; MEM[PADDLES] = t0
        ldw    t0, PADDLE_init_data+4 (zero) ; t0 = paddle_2 initial position
        stw    t0, PADDLES+4(zero)           ; MEM[PADDLES+4] = t0

        ; longer waiting time for the score
        call   wait
        call   wait
        call   wait
        call   wait
        call   wait

        br     main_loop

    main_ret:
        ; pop stack
        ldw  ra, 0(sp)
        ldw  t0, 4(sp)
        ldw  t1, 8(sp)
        ldw  t2, 12(sp)
        addi sp, sp, 16

        ret

; arguments
;     none
;
; return values
;     v0: the winner's ID, if there is any; otherwise 0
hit_test:
    ; push stack
    addi sp, sp, -4
    stw  ra, 0(sp)

    call hit_test_x
    call hit_test_y
    call which_player_won

    ; pop stack
    ldw  ra, 0(sp)
    addi sp, sp, 4

    ret

; arguments
;     none
;
; return values
;     none
hit_test_x:
    ; push stack
    addi    sp, sp, -20
    stw     t0, 0(sp)
    stw     t1, 4(sp)
    stw     t2, 8(sp)
    stw     t3, 12(sp)
    stw     t4, 16(sp)

    ; test if x velocity must be inverted
    ldw     t0, BALL(zero)           ; t0 = BALL x pos
    ldw     t1, BALL+8(zero)         ; t1 = BALL x velocity
    cmpeqi  t2, t0, 1                ; t2 = (Ball x pos == 1)
    cmpeqi  t3, t0, 10               ; t3 = (Ball x pos == 10)
    or      t4, t2, t3               ; t4 = (Ball x pos == 1 | Ball x pos == 10)
    beq     t4, zero, hit_test_x_ret ; if !(t0 == 1 | t0 == 10) goto hit_test_x_ret

    ; invert x velocity
    sub     t1, zero, t1             ; t1 = -t1
    stw     t1, BALL+8(zero)         ; MEM[BALL+8] = t1

    br      hit_test_x_ret

    hit_test_x_ret:
        ; pop stack
        ldw     t0, 0(sp)
        ldw     t1, 4(sp)
        ldw     t2, 8(sp)
        ldw     t3, 12(sp)
        ldw     t4, 16(sp)
        addi    sp, sp, 20

        ret

; arguments
;     none
;
; return values
;     none
hit_test_y:
    ; push stack
    addi    sp, sp, -20
    stw     t0, 0(sp)
    stw     t1, 4(sp)
    stw     t2, 8(sp)
    stw     t3, 12(sp)
    stw     t4, 16(sp)

    ; test if y velocity must be inverted
    ldw     t0, BALL+4(zero)         ; t0 = BALL y pos
    ldw     t1, BALL+12(zero)        ; t1 = BALL y velocity
    cmpeqi  t2, t0, 0                ; t2 = (BALL y pos == 0)
    cmpeqi  t3, t0, 7                ; t3 = (BALL y pos == 7)
    or      t4, t2, t3               ; t4 = (BALL y pos == 0 | BALL y pos == 7)
    beq     t4, zero, hit_test_y_ret ; if !(t0 == 0 | t0 == 7) goto hit_test_y_ret

    ; invert y velocity
    sub     t1, zero, t1             ; t1 = -t1
    stw     t1, BALL+12(zero)        ; MEM[BALL+12] = t1

    br      hit_test_y_ret

    hit_test_y_ret:
        ; pop stack
        ldw     t0, 0(sp)
        ldw     t1, 4(sp)
        ldw     t2, 8(sp)
        ldw     t3, 12(sp)
        ldw     t4, 16(sp)
        addi    sp, sp, 20

        ret

; arguments
;     none
;
; return values
;     v0: 1 if player 1 won, 2 if player 2 won, else 0
which_player_won:
    ; push stack
    addi   sp, sp, -8
    stw    t0, 0(sp)
    stw    ra, 4(sp)

    call   check_player_1_lost
    cmpeqi t0, v0, 1                                 ; t0 = (v0 == 1)
    bne    t0, zero, which_player_won_player_1_lost  ; if (player_1_lost) goto which_player_won_player_1_lost
    call   check_player_2_lost
    cmpeqi t0, v0, 1                                 ; t0 = (v0 == 1)
    bne    t0, zero, which_player_won_player_2_lost  ; if (player_2_lost) goto which_player_won_player_2_lost
    addi   v0, zero, 0                               ; No player lost
    br     which_player_won_ret

    which_player_won_player_1_lost:
        addi v0, zero, 2          ; v0 = 2 (player 2 won the round)
        br   which_player_won_ret

    which_player_won_player_2_lost:
        addi v0, zero, 1          ; v0 = 1 (player 1 won the round)
        br   which_player_won_ret

    which_player_won_ret:
        ; pop stack
        ldw  t0, 0(sp)
        ldw  ra, 4(sp)
        addi sp, sp, 8

        ret

; arguments
;     none
;
; return values
;     v0: 1 if player 1 lost, else 0
check_player_1_lost:
    ; push stack
    addi    sp, sp, -32
    stw     t0, 0(sp)
    stw     t1, 4(sp)
    stw     t2, 8(sp)
    stw     t3, 12(sp)
    stw     t4, 16(sp)
    stw     t5, 20(sp)
    stw     t6, 24(sp)
    stw     t7, 28(sp)

    ldw     t0, BALL(zero)                     ; t0 = Ball x pos
    ldw     t1, BALL+4(zero)                   ; t1 = Ball y pos
    ldw     t2, PADDLES(zero)                  ; t2 = paddle_1
    addi    t3, t2, 3                          ; t3 = paddle_1 + 3
    cmpeqi  t4, t0, 1                          ; t4 = (Ball x pos == 1)
    cmplt   t5, t1, t2                         ; t5 = (Ball y pos < paddle_1)
    cmpge   t6, t1, t3                         ; t6 = (Ball y pos >= paddle_1 + 3)
    or      t7, t5, t6                         ; t7 = ((Ball y pos < paddle_1) || (Ball y pos >= paddle_1 + 3))
    and     t7, t4, t7                         ; t7 = ((Ball x pos == 1) && ((Ball y pos < paddle_1) || (Ball y pos >= paddle_1 + 3)))
    bne     t7, zero, check_player_1_lost_true
    br      check_player_1_lost_false

    check_player_1_lost_true:
        addi v0, zero, 1
        br   check_player_1_lost_ret

    check_player_1_lost_false:
        addi v0, zero, 0
        br   check_player_1_lost_ret

    check_player_1_lost_ret:
        ; pop stack
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

; arguments
;     none
;
; return values
;     v0: 1 if player 2 lost, else 0
check_player_2_lost:
    ; push stack
    addi    sp, sp, -32
    stw     t0, 0(sp)
    stw     t1, 4(sp)
    stw     t2, 8(sp)
    stw     t3, 12(sp)
    stw     t4, 16(sp)
    stw     t5, 20(sp)
    stw     t6, 24(sp)
    stw     t7, 28(sp)

    ldw     t0, BALL(zero)                     ; t0 = Ball x pos
    ldw     t1, BALL+4(zero)                   ; t1 = Ball y pos
    ldw     t2, PADDLES+4(zero)                ; t2 = paddle_2
    addi    t3, t2, 3                          ; t3 = paddle_2 + 3
    cmpeqi  t4, t0, 10                         ; t4 = (Ball x pos == 10)
    cmplt   t5, t1, t2                         ; t5 = (Ball y pos < paddle_2)
    cmpge   t6, t1, t3                         ; t6 = (Ball y pos >= paddle_2 + 3)
    or      t7, t5, t6                         ; t7 = ((Ball y pos < paddle_2) || (Ball y pos >= paddle_2 + 3))
    and     t7, t4, t7                         ; t7 = ((Ball x pos == 10) && ((Ball y pos < paddle_2) || (Ball y pos >= paddle_2 + 3)))
    bne     t7, zero, check_player_2_lost_true
    br      check_player_2_lost_false

    check_player_2_lost_true:
        addi v0, zero, 1
        br   check_player_2_lost_ret

    check_player_2_lost_false:
        addi v0, zero, 0
        br   check_player_2_lost_ret

    check_player_2_lost_ret:
        ; pop stack
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

; arguments
;     none
;
; return values
;     none
move_ball:
    addi    sp, sp, -12
    stw     t0, 0(sp)
    stw     t1, 4(sp)
    stw     t2, 8(sp)

    ldw     t0, BALL(zero)    ; t0 = Ball x pos
    ldw     t1, BALL+8(zero)  ; t1 = Ball x velocity
    add     t2, t0, t1        ; t2 = Ball x pos + Ball x velocity
    stw     t2, BALL(zero)    ; MEM[BALL] = new Ball x pos

    ldw     t0, BALL+4(zero)  ; t0 = Ball y pos
    ldw     t1, BALL+12(zero) ; t1 = Ball y velocity
    add     t2, t0, t1        ; t2 = Ball y pos + Ball y velocity
    stw     t2, BALL+4(zero)  ; MEM[BALL+4] = new Ball y pos

    ldw     t0, 0(sp)
    ldw     t1, 4(sp)
    ldw     t2, 8(sp)
    addi    sp, sp, 12

    ret

; arguments
;     none
;
; return values
;     none
move_paddles:
    addi sp, sp, -4
    stw  ra, 0(sp)

    call move_paddles_player_1
    call move_paddles_player_2
    stw  zero, BUTTONS+4(zero) ; reset edge_capture register

    ldw  ra, 0(sp)
    addi sp, sp, 4

    ret

; arguments
;     none
;
; return values
;     none
move_paddles_player_1:
    addi   sp, sp, -16
    stw    t0, 0(sp)
    stw    t1, 4(sp)
    stw    t2, 8(sp)
    stw    t3, 12(sp)

    ldw    t0, BUTTONS+4(zero)                  ; t0 = MEM[BUTTONS+4] = edge capture
    andi   t1, t0, 8                            ; t1 = paddle_1_up
    andi   t2, t0, 4                            ; t2 = paddle_1_down
    or     t3, t1, t2                           ; t3 = paddle_1_up || paddle_1_down = 0b??00
    cmpeqi t3, t3, 0xC                          ; t3 = ((paddle_1_up || paddle_1_down) == 0b1100)
    bne    t3, zero, move_paddles_player_1_ret  ; if (paddle_1_up && paddle_1_down) goto move_paddles_player_1_ret
    bne    t1, zero, move_paddles_player_1_up   ; if (paddle_1_up) goto move_paddles_player_1_up
    bne    t2, zero, move_paddles_player_1_down ; if (paddle_1_down) goto move_paddles_player_1_down

    br     move_paddles_player_1_ret            ; goto move_paddles_player_1_ret

    move_paddles_player_1_up:
        ldw    t0, PADDLES(zero)                   ; t0 = paddle_1
        cmpeqi t1, t0, 0                           ; t1 = (paddle_1 == 0)
        bne    t1, zero, move_paddles_player_1_ret ; if (paddle_1 == 0) goto move_paddles_player_1_ret
        addi   t0, t0, -1                          ; t0 = paddle_1 - 1
        stw    t0, PADDLES(zero)                   ; MEM[PADDLES] = t0

        br     move_paddles_player_1_ret           ; goto move_paddles_player_1_ret

    move_paddles_player_1_down:
        ldw    t0, PADDLES(zero)                   ; t0 = paddle_1
        cmpeqi t1, t0, 5                           ; t1 = (paddle_1 == 5)
        bne    t1, zero, move_paddles_player_1_ret ; if (paddle_1 == 5) goto move_paddles_player_1_ret
        addi   t0, t0, 1                           ; t0 = paddle_1 + 1
        stw    t0, PADDLES(zero)                   ; MEM[PADDLES] = t0

        br     move_paddles_player_1_ret           ; goto move_paddles_player_1_ret

    move_paddles_player_1_ret:
        ldw  t0, 0(sp)
        ldw  t1, 4(sp)
        ldw  t2, 8(sp)
        ldw  t3, 12(sp)
        addi sp, sp, 16

        ret

; arguments
;     none
;
; return values
;     none
move_paddles_player_2:
    addi   sp, sp, -16
    stw    t0, 0(sp)
    stw    t1, 4(sp)
    stw    t2, 8(sp)
    stw    t3, 12(sp)

    ldw    t0, BUTTONS+4(zero)                  ; t0 = MEM[BUTTONS+4] = edge capture
    andi   t1, t0, 1                            ; t1 = paddle_2_up
    andi   t2, t0, 2                            ; t2 = paddle_2_down
    or     t3, t1, t2                           ; t3 = paddle_2_up || paddle_2_down = 0b00??
    cmpeqi t3, t3, 3                          ; t3 = ((paddle_2_up || paddle_2_down) == 0b0011)
    bne    t3, zero, move_paddles_player_2_ret  ; if (paddle_2_up && paddle_2_down) goto move_paddles_player_2_ret
    bne    t1, zero, move_paddles_player_2_up   ; if (paddle_2_up) goto move_paddles_player_2_up
    bne    t2, zero, move_paddles_player_2_down ; if (paddle_2_down) goto move_paddles_player_2_down

    br     move_paddles_player_2_ret            ; goto move_paddles_player_2_ret

    move_paddles_player_2_up:
        ldw    t0, PADDLES+4(zero)                 ; t0 = paddle_2
        cmpeqi t1, t0, 0                           ; t1 = (paddle_2 == 0)
        bne    t1, zero, move_paddles_player_2_ret ; if (paddle_2 == 0) goto move_paddles_player_2_ret
        addi   t0, t0, -1                          ; t0 = t0 - 1
        stw    t0, PADDLES+4(zero)                 ; MEM[PADDLES+4] = t0

        br   move_paddles_player_2_ret             ; goto move_paddles_player_2_ret

    move_paddles_player_2_down:
        ldw    t0, PADDLES+4(zero)                 ; t0 = paddle_2
        cmpeqi t1, t0, 5                           ; t1 = (paddle_2 == 5)
        bne    t1, zero, move_paddles_player_2_ret ; if (paddle_2 == 5) goto move_paddles_player_2_ret
        addi   t0, t0, 1                           ; t0 = t0 + 1
        stw    t0, PADDLES+4(zero)

        br   move_paddles_player_2_ret             ; goto move_paddles_player_2_ret

    move_paddles_player_2_ret:
        ldw  t0, 0(sp)
        ldw  t1, 4(sp)
        ldw  t2, 8(sp)
        ldw  t3, 12(sp)
        addi sp, sp, 16

        ret

; arguments
;     none
;
; return values
;     none
clear_leds:
    stw    zero, LEDS+0(zero)
    stw    zero, LEDS+4(zero)
    stw    zero, LEDS+8(zero)

    ret

; arguments
;     a0: the x coordinate
;     a1: the y coordinate
;
; return values
;     none
set_pixel:
    ; push stack
    addi   sp, sp, -12
    stw    t0, 0(sp)
    stw    t1, 4(sp)
    stw    t2, 8(sp)

    ; pixel position
    andi   t0, a0, 3  ; t0 = x % 4
    slli   t0, t0, 3  ; t0 = (x % 4) * 8
    andi   t1, a1, 7  ; t1 = y % 8
    add    t2, t0, t1 ; t2 = ((x % 4) * 8) + (y % 8)

    ; preparing pixel value
    addi   t0, zero, 1  ; t0 = 1
    sll    t0, t0, t2   ; t0 = 1 << (((x % 4) * 8) + (y % 8))

    ; load original LED value
    andi   t1, a0, 0x0C ; t1 = x & 0x0C = LED offset
    ldw    t2, LEDS(t1) ; t2 = MEM[LEDS+t1]

    ; store modified LED value
    or     t2, t2, t0   ; t2 = t2 | t0
    stw    t2, LEDS(t1) ; MEM[LEDS+t1] = t2

    ; pop stack
    ldw    t0, 0(sp)
    ldw    t1, 4(sp)
    ldw    t2, 8(sp)
    addi   sp, sp, 12

    ret

; arguments
;     none
;
; return values
;     none
draw_paddles:
    ; push stack
    addi sp, sp, -12
    stw  a0, 0(sp)
    stw  a1, 4(sp)
    stw  ra, 8(sp)

    ; draw paddle_1
    addi a0, zero, 0         ; a0 = 0
    ldw  a1, PADDLES(zero)   ; a1 = paddle_1
    call set_pixel           ; draw first pixel of paddle_1
    addi a1, a1, 1           ; a1 = paddle_1 + 1
    call set_pixel           ; draw second pixel of paddle_1
    addi a1, a1, 1           ; a1 = paddle_1 + 2
    call set_pixel           ; draw third pixel of paddle_1

    ; draw paddle_2
    addi a0, zero, 11        ; a0 = 1
    ldw  a1, PADDLES+4(zero) ; a1 = paddle_2
    call set_pixel           ; draw first pixel of paddle_2
    addi a1, a1, 1           ; a1 = paddle_2 + 1
    call set_pixel           ; draw second pixel of paddle_2
    addi a1, a1, 1           ; a1 = paddle_2 + 2
    call set_pixel           ; draw third pixel of paddle_2

    ; pop stack
    ldw  a0, 0(sp)
    ldw  a1, 4(sp)
    ldw  ra, 8(sp)
    addi sp, sp, 12

    ret

; arguments
;     none
;
; return values
;     none
draw_ball:
    ; push stack
    addi sp, sp, -12
    stw  a0, 0(sp)
    stw  a1, 4(sp)
    stw  ra, 8(sp)

    ldw  a0, BALL(zero)   ; a0 = Ball x pos
    ldw  a1, BALL+4(zero) ; a1 = Ball y pos
    call set_pixel        ; draw Ball

    ; pop stack
    ldw  a0, 0(sp)
    ldw  a1, 4(sp)
    ldw  ra, 8(sp)
    addi sp, sp, 12

    ret

; arguments
;     none
; return values
;     none
display_game:
    ; push stack
    addi sp, sp, -4
    stw  ra, 0(sp)

    call clear_leds   ; clear the leds
    call draw_paddles ; draw the paddles
    call draw_ball    ; draw the ball

    ; pop stack
    ldw  ra, 0(sp)
    addi sp, sp, 4

    ret

; arguments
;     none
;
; return values
;     none
display_score:
    ; push stack
    addi sp, sp, -12
    stw  t0, 0(sp)
    stw  t1, 4(sp)
    stw  t2, 8(sp)

    ; display player_1_score
    ldw  t0, SCORES(zero)
    slli t0, t0, 2
    ldw  t0, font_data(t0)
    stw  t0, LEDS(zero)

    ; display player_2_score
    ldw  t0, SCORES+4(zero)
    slli t0, t0, 2
    ldw  t0, font_data(t0)
    stw  t0, LEDS+8(zero)

    ; display separator character
    addi t0, zero, 1
    slli t0, t0, 12
    addi t1, zero, 1
    slli t1, t1, 20
    addi t2, zero, 1
    slli t2, t2, 28
    or   t3, t0, t1
    or   t3, t3, t2
    stw  t3, LEDS+4(zero)

    ; pop stack
    ldw  t0, 0(sp)
    ldw  t1, 4(sp)
    ldw  t2, 8(sp)
    addi sp, sp, 12

    ret

wait:
    addi sp, sp, -4
    stw  t0, 0(sp)

    addi t0, zero, 1
    slli t0, t0, 20

    wait_loop:
        beq  t0, zero, wait_ret
        addi t0, t0, -1
        br   wait_loop

    wait_ret:
        ldw  t0, 0(sp)
        addi sp, sp, 4

        ret

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

BALL_init_data:
    .word 5  ; BALL x position
    .word 4  ; BALL y position
    .word 1  ; BALL x velocity
    .word -1 ; BALL y velocity

PADDLE_init_data:
    .word 2 ; PADDLE 1 position
    .word 2 ; PADDLE 2 position

max_score:
    .word 7
