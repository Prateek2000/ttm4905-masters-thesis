(define-fun randomness-mapping-GARBLE
    (

        (sample-id-left SampleId)
        (sample-id-right SampleId)
        (sample-offset-left Int)
        (sample-offset-right Int)
    )
    Bool
    (or
        (and
            (= sample-id-left (sample-id "R1" "GARBLE" "delta"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "delta"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLE" "R_00"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "R_00"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLE" "R_01"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "R_01"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
           (= sample-id-left (sample-id "GHybrid" "GETRANDOMS" "R_10"))
           (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "R_10"))
           (= sample-offset-left 0)
           (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLE" "R_11"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "R_11"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLE" "A_0"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "A_0"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLE" "B_0"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "B_0"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLE" "C_0"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "C_0"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )

        ;make randomness mapping for the r and r1 used in the enc functions.
        ;TODO
        (and
            (= sample-id-left (sample-id "R1" "GARBLE" "randrow0enc1"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "randrow0enc1"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLE" "randrow0enc2"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "randrow0enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLE" "randrow1enc1"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "randrow1enc1"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLE" "randrow1enc2"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "randrow1enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLE" "randrow2enc1"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "randrow2enc1"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLE" "randrow2enc2"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "randrow2enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLE" "randrow3enc1"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "randrow3enc1"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLE" "randrow3enc2"))
            (= sample-id-right (sample-id "SimFreeXOR0" "GARBLE" "randrow3enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
    )
)

(define-state-relation invariant
    (left-game right-game) 
        ;relate the state of game.packageinstance.state_param
    (and
        (= (maybe-get left-game.GLINRKKDM.delta) right-game.SimFreeXOR0.delta)
    )
)