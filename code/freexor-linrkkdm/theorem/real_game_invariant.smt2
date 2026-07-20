(define-fun randomness-mapping-GARBLE
    (
        ; (left-game <GameState_RcompGLINRKKDM0_<$<!n!><!m!>$>>)
        ; (right-game <GameState_GSimFreeXORReal_<$<!n!><!m!>$>>) 
        (sample-id-left SampleId)
        (sample-id-right SampleId)
        (sample-offset-left Int)
        (sample-offset-right Int)
    )
    Bool
    (or
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "R_00"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "R_00"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "R_01"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "R_01"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "R_10"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "R_10"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "R_11"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "R_11"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "A_0"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "A_0"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "B_0"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "B_0"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "C_0"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "C_0"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        ;DISCUSS: do i need to make randomness maps of the randomness of enc? IDTS
        (and
            (= sample-id-left (sample-id "LINRKKDM" "ENC" "delta"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "delta"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
    )
)

(define-state-relation invariant
    (
        (left-game <GameState_RcompGLINRKKDM_<$<!n!><!m!>$>>)
        (right-game <GameState_GSimFreeXORReal_<$<!n!><!m!>$>>) 
        ;relate the state of game.packageinstance.state_param
    )
    (and
        (= (maybe-get left-game.GLINRKKDM.delta) right-game.SimFreeXOR0.delta)
    )
)