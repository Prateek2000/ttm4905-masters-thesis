(define-fun randomness-mapping-GARBLEAND
    (

        (sample-id-left SampleId)
        (sample-id-right SampleId)
        (sample-offset-left Int)
        (sample-offset-right Int)
    )
    ;Left: GHybridWithCasesWithSampling: GARBLEAND
    ;Right: GIntermediate -> Hybrid2Real: GARBLEAND->GETRANDOMWIRELABELS
    Bool
    
    (or
        (and
            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "delta"))
            (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "delta"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "R_00"))
            (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "R_00"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "R_01"))
            (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "R_01"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "R_10"))
            (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "R_10"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "R_11"))
            (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "R_11"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "randrow0enc1"))
            (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "randrow0enc1"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "randrow0enc2"))
            (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "randrow0enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "randrow1enc1"))
            (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "randrow1enc1"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "randrow1enc2"))
            (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "randrow1enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "randrow2enc1"))
            (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "randrow2enc1"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "randrow2enc2"))
            (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "randrow2enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "randrow3enc1"))
            (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "randrow3enc1"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "randrow3enc2"))
            (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "randrow3enc2"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (ite
            (= <arg-GHybridWithCasesWithSampling-GARBLEAND-x> ((as mk-tuple2 (Tuple2 Bool Bool)) false false))
            (or
                (and
                    (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "A_00"))
                    (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "A_00"))
                    (= sample-offset-left 0)
                    (= sample-offset-right 0)
                )
                (and
                    (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "B_00"))
                    (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "B_00"))
                    (= sample-offset-left 0)
                    (= sample-offset-right 0)
                )
                (and
                    (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "C_00"))
                    (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "C_00"))
                    (= sample-offset-left 0)
                    (= sample-offset-right 0)
                )
            )
            (ite
                (= <arg-GHybridWithCasesWithSampling-GARBLEAND-x> ((as mk-tuple2 (Tuple2 Bool Bool)) false true))
                (or
                    (and
                        (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "A_01"))
                        (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "A_01"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "B_01"))
                        (= sample-id-right (sample-id "GHybrid2" "GETRANDOMWIRELABEL" "R"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "C_01"))
                        (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "C_01"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                )
                (ite
                    (= <arg-GHybridWithCasesWithSampling-GARBLEAND-x> ((as mk-tuple2 (Tuple2 Bool Bool)) true false))
                    (or
                        (and
                            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "A_02"))
                            (= sample-id-right (sample-id "GHybrid2" "GETRANDOMWIRELABEL" "R"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "B_02"))
                            (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "B_02"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "C_02"))
                            (= sample-id-right (sample-id "GIntermediate" "GARBLEAND" "C_02"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                    )
                    (or
                        (and
                            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "A_03"))
                            (= sample-id-right (sample-id "GHybrid2" "GETRANDOMWIRELABEL" "R"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "B_03"))
                            (= sample-id-right (sample-id "GHybrid2" "GETRANDOMWIRELABEL" "R"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 1)
                        )
                        (and
                            (= sample-id-left (sample-id "GHybridWithCasesWithSampling" "GARBLEAND" "C_03"))
                            (= sample-id-right (sample-id "GHybrid2" "GETRANDOMWIRELABEL" "R"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 2)
                        )
                    )
                )
            )
        )
    )
)

(define-state-relation invariant
    (left-game right-game) 
        ;relate the state of game.packageinstance.state_param
    (and
        ; (=> (not (is-mk-none right-game.GLINRKKDM.delta)) (= right-game.GLINRKKDM.delta left-game.R1.delta))
        ; (=> (not (is-mk-none left-game.R1.delta)) (= right-game.GLINRKKDM.delta left-game.R1.delta))
        (= right-game.GIntermediate.delta left-game.GHybridWithCasesWithSampling.delta)
        ; (or
        ;     (and 
        ;         (is-mk-none right-game.GLINRKKDM.delta) 
        ;         (is-mk-none left-game.R1.delta)
        ;     ) 
        ; )
    )
)