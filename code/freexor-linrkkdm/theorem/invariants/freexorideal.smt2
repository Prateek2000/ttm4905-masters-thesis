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
    ;Left -> R:GARBLE, GLINRKKDM:ENC
    ;Right -> SimFreeXOR1:GARBLE
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "R_00"))
            (= sample-id-right (sample-id "SimFreeXOR1" "GARBLE" "R_00"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "R_01"))
            (= sample-id-right (sample-id "SimFreeXOR1" "GARBLE" "R_01"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "R_10"))
            (= sample-id-right (sample-id "SimFreeXOR1" "GARBLE" "R_10"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "R_11"))
            (= sample-id-right (sample-id "SimFreeXOR1" "GARBLE" "R_11"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "A_0"))
            (= sample-id-right (sample-id "SimFreeXOR1" "GARBLE" "A_0"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "B_0"))
            (= sample-id-right (sample-id "SimFreeXOR1" "GARBLE" "B_0"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "C_0"))
            (= sample-id-right (sample-id "SimFreeXOR1" "GARBLE" "C_0"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        ; randomness mappings of encryption
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "randrow0enc1"))
            (= sample-id-right (sample-id "SimFreeXOR1" "GARBLE" "randrow0enc1"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "randrow0enc2"))
            (= sample-id-right (sample-id "SimFreeXOR1" "GARBLE" "randrow0enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "randrow1enc1"))
            (= sample-id-right (sample-id "SimFreeXOR1" "GARBLE" "randrow1enc1"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "randrow1enc2"))
            (= sample-id-right (sample-id "SimFreeXOR1" "GARBLE" "randrow1enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "randrow2enc1"))
            (= sample-id-right (sample-id "SimFreeXOR1" "GARBLE" "randrow2enc1"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "randrow2enc2"))
            (= sample-id-right (sample-id "SimFreeXOR1" "GARBLE" "randrow2enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "randrow3enc1"))
            (= sample-id-right (sample-id "SimFreeXOR1" "GARBLE" "randrow3enc1"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLE" "randrow3enc2"))
            (= sample-id-right (sample-id "SimFreeXOR1" "GARBLE" "randrow3enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        ;do we need to map delta's sampling too? as follows
        ; (and
        ;     (= sample-id-left (sample-id "GLINRKKDM" "ENC" "delta"))
        ;     (= sample-id-right (sample-id "SimFreeXOR1" "GARBLE" "delta"))
        ;     (= sample-offset-left 0)
        ;     (= sample-offset-right 0)
        ; )
    )
)

(define-state-relation invariant
    (left-game right-game) 
        ;relate the state of game.packageinstance.state_param
    (and
        (= (maybe-get left-game.GLINRKKDM.delta) right-game.SimFreeXOR0.delta)
    )
)