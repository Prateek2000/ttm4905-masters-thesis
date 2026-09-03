(define-fun randomness-mapping-GARBLEAND
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
    ;Right -> SimFreeXOR1:GARBLEAND, Sim:GARBLE
        (and
            (= sample-id-left (sample-id "R" "GARBLEAND" "R_00"))
            (= sample-id-right (sample-id "Sim" "GARBLE" "R_00"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLEAND" "R_01"))
            (= sample-id-right (sample-id "Sim" "GARBLE" "R_01"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLEAND" "R_10"))
            (= sample-id-right (sample-id "Sim" "GARBLE" "R_10"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLEAND" "R_11"))
            (= sample-id-right (sample-id "Sim" "GARBLE" "R_11"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLEAND" "A_0"))
            (= sample-id-right (sample-id "Sim" "GARBLE" "A_0"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLEAND" "B_0"))
            (= sample-id-right (sample-id "Sim" "GARBLE" "B_0"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLEAND" "C_0"))
            (= sample-id-right (sample-id "Sim" "GARBLE" "C_0"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        ; randomness mappings of encryption
        (and
            (= sample-id-left (sample-id "R" "GARBLEAND" "randrow0enc1"))
            (= sample-id-right (sample-id "Sim" "GARBLE" "randrow0enc1"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLEAND" "randrow0enc2"))
            (= sample-id-right (sample-id "Sim" "GARBLE" "randrow0enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLEAND" "randrow1enc1"))
            (= sample-id-right (sample-id "Sim" "GARBLE" "randrow1enc1"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GLINRKKDM" "ENC" "r")) 
            (= sample-id-right (sample-id "Sim" "GARBLE" "randrow1enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GLINRKKDM" "ENC" "r")) 
            (= sample-id-right (sample-id "Sim" "GARBLE" "randrow2enc1"))
            (= sample-offset-left 1)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R" "GARBLEAND" "randrow2enc2"))
            (= sample-id-right (sample-id "Sim" "GARBLE" "randrow2enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GLINRKKDM" "ENC" "r")) 
            (= sample-id-right (sample-id "Sim" "GARBLE" "randrow3enc1"))
            (= sample-offset-left 2)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GLINRKKDM" "ENC" "r")) 
            (= sample-id-right (sample-id "Sim" "GARBLE" "randrow3enc2"))
            (= sample-offset-left 3)
            (= sample-offset-right 0)
        )
        ;do we need to map delta's sampling too? as follows
        (and
            (= sample-id-left (sample-id "GLINRKKDM" "ENC" "delta"))
            (= sample-id-right (sample-id "Sim" "GARBLE" "delta"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
    )
)

(define-state-relation invariant
    (left-game right-game) 
        ;relate the state of game.packageinstance.state_param
    (and
        (= left-game.GLINRKKDM.delta right-game.Sim.delta)
    )
)

(assert (forall ((x Bits_n) (y Bits_n) (z Bits_n)) (= (<<func-xor_>> x (<<func-xor_>> y z)) (<<func-xor_>> (<<func-xor_>> x y) z))))
