(define-fun randomness-mapping-GARBLEAND
    (

        (sample-id-left SampleId)
        (sample-id-right SampleId)
        (sample-offset-left Int)
        (sample-offset-right Int)
    )
    ;Left: R1->GHybrid: GARBLEAND->GETRANDOMS
    ;Right: R->GLINRKKDM: GARBLEAND->ENC
    Bool
    (or
        (and
            (= sample-id-left (sample-id "R1" "GARBLEAND" "delta"))
            (= sample-id-right (sample-id "GLINRKKDM" "ENC" "delta"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLEAND" "R_00"))
            (= sample-id-right (sample-id "R" "GARBLEAND" "R_00"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLEAND" "R_01"))
            (= sample-id-right (sample-id "R" "GARBLEAND" "R_01"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
           (= sample-id-left (sample-id "GHybrid" "GETRANDOMS" "R_10"))
           (= sample-id-right (sample-id "R" "GARBLEAND" "R_10"))
           (= sample-offset-left 0)
           (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLEAND" "R_11"))
            (= sample-id-right (sample-id "R" "GARBLEAND" "R_11"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLEAND" "A_0"))
            (= sample-id-right (sample-id "R" "GARBLEAND" "A_0"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLEAND" "B_0"))
            (= sample-id-right (sample-id "R" "GARBLEAND" "B_0"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLEAND" "C_0"))
            (= sample-id-right (sample-id "R" "GARBLEAND" "C_0"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )

        ;make randomness mapping for the r and r1 used in the enc functions.
        ;TODO
        (and
            (= sample-id-left (sample-id "R1" "GARBLEAND" "randrow0enc1"))
            (= sample-id-right (sample-id "R" "GARBLEAND" "randrow0enc1"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLEAND" "randrow0enc2"))
            (= sample-id-right (sample-id "R" "GARBLEAND" "randrow0enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLEAND" "randrow1enc1"))
            (= sample-id-right (sample-id "R" "GARBLEAND" "randrow1enc1"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLEAND" "randrow1enc2"))
            (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLEAND" "randrow2enc1"))
            (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
            (= sample-offset-left 0)
            (= sample-offset-right 1)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLEAND" "randrow2enc2"))
            (= sample-id-right (sample-id "R" "GARBLEAND" "randrow2enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLEAND" "randrow3enc1"))
            (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
            (= sample-offset-left 0)
            (= sample-offset-right 2)
        )
        (and
            (= sample-id-left (sample-id "R1" "GARBLEAND" "randrow3enc2"))
            (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
            (= sample-offset-left 0)
            (= sample-offset-right 3)
        )
    )
)

(define-state-relation invariant
    (left-game right-game) 
        ;relate the state of game.packageinstance.state_param
    (and
        (=> (not (is-mk-none right-game.GLINRKKDM.delta)) (= right-game.GLINRKKDM.delta (mk-some left-game.R1.delta)))
    )
)

;(=> (not(is-mk-none linrkkdm.delta)) (= linrkkdm.delta (mk-some simfreexor0.delta)))
;turn the rhs into an option type and compare (would still fail at induction start)