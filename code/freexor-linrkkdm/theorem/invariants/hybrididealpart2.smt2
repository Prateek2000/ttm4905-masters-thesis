(define-fun randomness-mapping-GARBLEAND
    (

        (sample-id-left SampleId)
        (sample-id-right SampleId)
        (sample-offset-left Int)
        (sample-offset-right Int)
    )
    ;Left: GIntermediatecompHybrid2: GARBLEAND->GETRANDOMWIRELABEL
    ;Right: R->GLINRKKDM: GARBLEAND->ENC
    Bool
    (or
        (and
            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "delta"))
            (= sample-id-right (sample-id "GLINRKKDM" "ENC" "delta"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "R_00"))
            (= sample-id-right (sample-id "R" "GARBLEAND" "R_00"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "R_01"))
            (= sample-id-right (sample-id "R" "GARBLEAND" "R_01"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "R_10"))
            (= sample-id-right (sample-id "R" "GARBLEAND" "R_10"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (and
            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "R_11"))
            (= sample-id-right (sample-id "R" "GARBLEAND" "R_11"))
            (= sample-offset-left 0)
            (= sample-offset-right 0)
        )
        (ite
            (= <arg-GIntermediatecompHybrid2-GARBLEAND-x> ((as mk-tuple2 (Tuple2 Bool Bool)) false false))
            (or  
                    
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "A_00"))
                        (= sample-id-right (sample-id "R" "GARBLEAND" "A_0"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "B_00"))
                        (= sample-id-right (sample-id "R" "GARBLEAND" "B_0"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "C_00"))
                        (= sample-id-right (sample-id "R" "GARBLEAND" "C_0"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow0enc1"))
                        (= sample-id-right (sample-id "R" "GARBLEAND" "randrow0enc1"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow0enc2"))
                        (= sample-id-right (sample-id "R" "GARBLEAND" "randrow0enc2"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow1enc1"))
                        (= sample-id-right (sample-id "R" "GARBLEAND" "randrow1enc1"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow1enc2"))
                        (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow2enc1"))
                        (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 1)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow2enc2"))
                        (= sample-id-right (sample-id "R" "GARBLEAND" "randrow2enc2"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow3enc1"))
                        (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 2)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow3enc2"))
                        (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 3)
                    )
                )
            (ite
                (= <arg-GIntermediatecompHybrid2-GARBLEAND-x> ((as mk-tuple2 (Tuple2 Bool Bool)) false true))
                (or
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "A_01"))
                        (= sample-id-right (sample-id "R" "GARBLEAND" "A_0"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GHybrid2" "GETRANDOMWIRELABEL" "R"))
                        (= sample-id-right (sample-id "R" "GARBLEAND" "B_0"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "C_01"))
                        (= sample-id-right (sample-id "R" "GARBLEAND" "C_0"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow0enc1"))
                        (= sample-id-right (sample-id "R" "GARBLEAND" "randrow1enc1"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow0enc2"))
                        (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow1enc1"))
                        (= sample-id-right (sample-id "R" "GARBLEAND" "randrow0enc1"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow1enc2"))
                        (= sample-id-right (sample-id "R" "GARBLEAND" "randrow0enc2"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow2enc1"))
                        (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 1)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow2enc2"))
                        (= sample-id-right (sample-id "R" "GARBLEAND" "randrow2enc2"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 0)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow3enc1"))
                        (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 2)
                    )
                    (and
                        (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow3enc2"))
                        (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
                        (= sample-offset-left 0)
                        (= sample-offset-right 3)
                    )
                )
                (ite
                    (= <arg-GIntermediatecompHybrid2-GARBLEAND-x> ((as mk-tuple2 (Tuple2 Bool Bool)) true false))
                    (or
                        (and
                            (= sample-id-left (sample-id "GHybrid2" "GETRANDOMWIRELABEL" "R"))
                            (= sample-id-right (sample-id "R" "GARBLEAND" "A_0"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "B_02"))
                            (= sample-id-right (sample-id "R" "GARBLEAND" "B_0"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "C_02"))
                            (= sample-id-right (sample-id "R" "GARBLEAND" "C_0"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow0enc1"))
                            (= sample-id-right (sample-id "R" "GARBLEAND" "randrow0enc1"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow0enc2"))
                            (= sample-id-right (sample-id "R" "GARBLEAND" "randrow0enc2"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow1enc1"))
                            (= sample-id-right (sample-id "R" "GARBLEAND" "randrow1enc1"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow1enc2"))
                            (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow2enc1"))
                            (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 1)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow2enc2"))
                            (= sample-id-right (sample-id "R" "GARBLEAND" "randrow2enc2"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow3enc1"))
                            (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 2)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow3enc2"))
                            (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 3)
                        )
                    )
                    (or
                        (and
                            (= sample-id-left (sample-id "GHybrid2" "GETRANDOMWIRELABEL" "R"))
                            (= sample-id-right (sample-id "R" "GARBLEAND" "A_0"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GHybrid2" "GETRANDOMWIRELABEL" "R"))
                            (= sample-id-right (sample-id "R" "GARBLEAND" "B_0"))
                            (= sample-offset-left 1)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GHybrid2" "GETRANDOMWIRELABEL" "R"))
                            (= sample-id-right (sample-id "R" "GARBLEAND" "C_0"))
                            (= sample-offset-left 2)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow0enc1"))
                            (= sample-id-right (sample-id "R" "GARBLEAND" "randrow0enc1"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow0enc2"))
                            (= sample-id-right (sample-id "R" "GARBLEAND" "randrow0enc2"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow1enc1"))
                            (= sample-id-right (sample-id "R" "GARBLEAND" "randrow1enc1"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow1enc2"))
                            (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow2enc1"))
                            (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 1)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow2enc2"))
                            (= sample-id-right (sample-id "R" "GARBLEAND" "randrow2enc2"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 0)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow3enc1"))
                            (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 2)
                        )
                        (and
                            (= sample-id-left (sample-id "GIntermediate" "GARBLEAND" "randrow3enc2"))
                            (= sample-id-right (sample-id "GLINRKKDM" "ENC" "r"))
                            (= sample-offset-left 0)
                            (= sample-offset-right 3)
                        )
                    )
                )
            )
        )
    )
)

(define-state-relation invariant
    (left-game right-game) 
    (and
        (= right-game.GLINRKKDM.delta left-game.GIntermediate.delta)
    )
)

(assert 
    (=> (= <arg-GIntermediatecompHybrid2-GARBLEAND-x> ((as mk-tuple2 (Tuple2 Bool Bool)) false true))
        ( let   
            (
                (delta (<pkg-state-Intermediate-<$<!m!><!n!>$>-delta> (<game-GIntermediatecompHybrid2-<$<!n!><!m!>$>-pkgstate-GIntermediate> (<oracle-return-GIntermediatecompHybrid2-<$<!n!><!m!>$>-Intermediate-<$<!m!><!n!>$>-GARBLEAND-game-state> <return-GIntermediatecompHybrid2Ideal-GARBLEAND>))))
                (sampledvalue0 (__sample-rand-GIntermediatecompHybrid2Ideal-Bits_n (sample-id "GHybrid2" "GETRANDOMWIRELABEL" "R") 0 ))
            )
            (= 
                (<<func-xor_>> (<<func-xor_>> sampledvalue0 (maybe-get delta)) (maybe-get delta))
                sampledvalue0
            )
        )
    )
)

(assert 
    (=> (= <arg-GIntermediatecompHybrid2-GARBLEAND-x> ((as mk-tuple2 (Tuple2 Bool Bool)) true false))
        ( let   
            (
                (delta (<pkg-state-Intermediate-<$<!m!><!n!>$>-delta> (<game-GIntermediatecompHybrid2-<$<!n!><!m!>$>-pkgstate-GIntermediate> (<oracle-return-GIntermediatecompHybrid2-<$<!n!><!m!>$>-Intermediate-<$<!m!><!n!>$>-GARBLEAND-game-state> <return-GIntermediatecompHybrid2Ideal-GARBLEAND>))))
                (sampledvalue0 (__sample-rand-GIntermediatecompHybrid2Ideal-Bits_n (sample-id "GHybrid2" "GETRANDOMWIRELABEL" "R") 0 ))
            )
            (= 
                (<<func-xor_>> (<<func-xor_>> sampledvalue0 (maybe-get delta)) (maybe-get delta))
                sampledvalue0
            )
        )
    )
)

; (assert 
;     (
;         let (
;                 (delta (<pkg-state-Intermediate-<$<!m!><!n!>$>-delta> (<game-GIntermediatecompHybrid2-<$<!n!><!m!>$>-pkgstate-GIntermediate> (<oracle-return-GIntermediatecompHybrid2-<$<!n!><!m!>$>-Intermediate-<$<!m!><!n!>$>-GARBLEAND-game-state> <return-GIntermediatecompHybrid2Ideal-GARBLEAND>))))
;                 (sampledvalue1 (__sample-rand-GIntermediatecompHybrid2Ideal-Bits_n (sample-id "GHybrid2" "GETRANDOMWIRELABEL" "R") 1 ))
;             )
;         (= 
;             (<<func-xor_>> (<<func-xor_>> sampledvalue1 (maybe-get delta)) (maybe-get delta))
;             sampledvalue1
;         )
;     )
; )
; (assert 
;     (
;         let (
;                 (delta (<pkg-state-Intermediate-<$<!m!><!n!>$>-delta> (<game-GIntermediatecompHybrid2-<$<!n!><!m!>$>-pkgstate-GIntermediate> (<oracle-return-GIntermediatecompHybrid2-<$<!n!><!m!>$>-Intermediate-<$<!m!><!n!>$>-GARBLEAND-game-state> <return-GIntermediatecompHybrid2Ideal-GARBLEAND>))))
;                 (sampledvalue2 (__sample-rand-GIntermediatecompHybrid2Ideal-Bits_n (sample-id "GHybrid2" "GETRANDOMWIRELABEL" "R") 2 ))
;             )
;         (= 
;             (<<func-xor_>> (<<func-xor_>> sampledvalue2 (maybe-get delta)) (maybe-get delta))
;             sampledvalue2
;         )
;     )
; )
; (assert 
;     (
;         let (
;                 (delta (<pkg-state-Intermediate-<$<!m!><!n!>$>-delta> (<game-GIntermediatecompHybrid2-<$<!n!><!m!>$>-pkgstate-GIntermediate> (<oracle-return-GIntermediatecompHybrid2-<$<!n!><!m!>$>-Intermediate-<$<!m!><!n!>$>-GARBLEAND-game-state> <return-GIntermediatecompHybrid2Ideal-GARBLEAND>))))
;                 (r_11 (__sample-rand-GIntermediatecompHybrid2Ideal-Bits_n (sample-id "GIntermediatecompHybrid2" "GARBLEAND" "R_11") 0 ))
;                 (c_0 (__sample-rand-GIntermediatecompHybrid2Ideal-Bits_n (sample-id "GIntermediatecompHybrid2" "GARBLEAND" "C_00") 0 ))        
;             )
;         (= 
;             (<<func-xor_>> r_11 (<<func-xor_>> c_0 (maybe-get delta))) 
;             (<<func-xor_>> (<<func-xor_>> r_11 c_0) (maybe-get delta))
;         )
;     )
; )
; (assert 
;     (
;         let (
;                 (delta (<pkg-state-Intermediate-<$<!m!><!n!>$>-delta> (<game-GIntermediatecompHybrid2-<$<!n!><!m!>$>-pkgstate-GIntermediate> (<oracle-return-GIntermediatecompHybrid2-<$<!n!><!m!>$>-Intermediate-<$<!m!><!n!>$>-GARBLEAND-game-state> <return-GIntermediatecompHybrid2Ideal-GARBLEAND>))))
;                 (r_11 (__sample-rand-GIntermediatecompHybrid2Ideal-Bits_n (sample-id "GIntermediatecompHybrid2" "GARBLEAND" "R_11") 0 ))
;                 (c_0 (__sample-rand-GIntermediatecompHybrid2Ideal-Bits_n (sample-id "GIntermediatecompHybrid2" "GARBLEAND" "C_01") 0 ))        
;             )
;         (= 
;             (<<func-xor_>> r_11 (<<func-xor_>> c_0 (maybe-get delta))) 
;             (<<func-xor_>> (<<func-xor_>> r_11 c_0) (maybe-get delta))
;         )
;     )
; )
; (assert 
;     (
;         let (
;                 (delta (<pkg-state-Intermediate-<$<!m!><!n!>$>-delta> (<game-GIntermediatecompHybrid2-<$<!n!><!m!>$>-pkgstate-GIntermediate> (<oracle-return-GIntermediatecompHybrid2-<$<!n!><!m!>$>-Intermediate-<$<!m!><!n!>$>-GARBLEAND-game-state> <return-GIntermediatecompHybrid2Ideal-GARBLEAND>))))
;                 (r_11 (__sample-rand-GIntermediatecompHybrid2Ideal-Bits_n (sample-id "GIntermediatecompHybrid2" "GARBLEAND" "R_11") 0 ))
;                 (c_0 (__sample-rand-GIntermediatecompHybrid2Ideal-Bits_n (sample-id "GIntermediatecompHybrid2" "GARBLEAND" "C_02") 0 ))        
;             )
;         (= 
;             (<<func-xor_>> r_11 (<<func-xor_>> c_0 (maybe-get delta))) 
;             (<<func-xor_>> (<<func-xor_>> r_11 c_0) (maybe-get delta))
;         )
;     )
; )
; (assert 
;     (
;         let (
;                 (delta (<pkg-state-Intermediate-<$<!m!><!n!>$>-delta> (<game-GIntermediatecompHybrid2-<$<!n!><!m!>$>-pkgstate-GIntermediate> (<oracle-return-GIntermediatecompHybrid2-<$<!n!><!m!>$>-Intermediate-<$<!m!><!n!>$>-GARBLEAND-game-state> <return-GIntermediatecompHybrid2Ideal-GARBLEAND>))))
;                 (r_11 (__sample-rand-GIntermediatecompHybrid2Ideal-Bits_n (sample-id "GIntermediatecompHybrid2" "GARBLEAND" "R_11") 0 ))
;                 (c_0 (__sample-rand-GIntermediatecompHybrid2Ideal-Bits_n (sample-id "GIntermediatecompHybrid2" "GARBLEAND" "C_03") 0 ))        
;             )
;         (= 
;             (<<func-xor_>> r_11 (<<func-xor_>> c_0 (maybe-get delta))) 
;             (<<func-xor_>> (<<func-xor_>> r_11 c_0) (maybe-get delta))
;         )
;     )
; )

;rhs
(assert 
    (
        let (
                (delta (<pkg-state-LINRKKDM-<$<!m!><!n!>$>-delta> (<game-RcompGLINRKKDM-<$<!n!><!m!>$>-pkgstate-GLINRKKDM> (<oracle-return-RcompGLINRKKDM-<$<!n!><!m!>$>-Reduction-<$<!m!><!n!>$>-GARBLEAND-game-state> <return-RcompGLINRKKDM0-GARBLEAND>))))
                (r_11 (__sample-rand-RcompGLINRKKDM0-Bits_n (sample-id "RcompGLINRKDKM" "GARBLEAND" "R_11") 0 ))
                (c_0 (__sample-rand-RcompGLINRKKDM0-Bits_n (sample-id "RcompGLINRKKDM" "GARBLEAND" "C_0") 0 ))        
    )
        (= 
            (<<func-xor_>> r_11 (<<func-xor_>> c_0 (maybe-get delta))) 
            (<<func-xor_>> (<<func-xor_>> r_11 c_0) (maybe-get delta))
        )
    )
)
