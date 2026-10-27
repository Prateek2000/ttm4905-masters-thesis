(define-lemma case-x-is-false-false GARBLEAND
    (
        old-state-left
        old-state-right
        return-left
        return-right
        (x (Tuple2 Bool Bool))
    )
    (=>
        (= x ((as mk-tuple2 (Tuple2 Bool Bool)) false false))
        (= return-left.value return-right.value)
    )
)

(define-lemma abort-case-x-is-false-false GARBLEAND
    (
        old-state-left
        old-state-right
        return-left
        return-right
        (x (Tuple2 Bool Bool))
    )
    (=>
        (= x ((as mk-tuple2 (Tuple2 Bool Bool)) false false))
        (= ((_ is mk-abort) return-left.value)
           ((_ is mk-abort) return-right.value))
    )
)

(define-lemma case-x-is-false-true GARBLEAND
    (
        old-state-left
        old-state-right
        return-left
        return-right
        (x (Tuple2 Bool Bool))
    )
    (=>
        (= x ((as mk-tuple2 (Tuple2 Bool Bool)) false true))
        (= return-left.value return-right.value)
    )
)

(define-lemma abort-case-x-is-false-true GARBLEAND
    (
        old-state-left
        old-state-right
        return-left
        return-right
        (x (Tuple2 Bool Bool))
    )
    (=>
        (= x ((as mk-tuple2 (Tuple2 Bool Bool)) false true))
        (= ((_ is mk-abort) return-left.value)
           ((_ is mk-abort) return-right.value))
    )
)

(define-lemma case-x-is-true-false GARBLEAND
    (
        old-state-left
        old-state-right
        return-left
        return-right
        (x (Tuple2 Bool Bool))
    )
    (=>
        (= x ((as mk-tuple2 (Tuple2 Bool Bool)) true false))
        (= return-left.value return-right.value)
    )
)

(define-lemma abort-case-x-is-true-false GARBLEAND
    (
        old-state-left
        old-state-right
        return-left
        return-right
        (x (Tuple2 Bool Bool))
    )
    (=>
        (= x ((as mk-tuple2 (Tuple2 Bool Bool)) true false))
        (= ((_ is mk-abort) return-left.value)
           ((_ is mk-abort) return-right.value))
    )
)

(define-lemma case-x-is-true-true GARBLEAND
    (
        old-state-left
        old-state-right
        return-left
        return-right
        (x (Tuple2 Bool Bool))
    )
    (=>
        (= x ((as mk-tuple2 (Tuple2 Bool Bool)) true true))
        (= return-left.value return-right.value)
    )
)

(define-lemma abort-case-x-is-true-true GARBLEAND
    (
        old-state-left
        old-state-right
        return-left
        return-right
        (x (Tuple2 Bool Bool))
    )
    (=>
        (= x ((as mk-tuple2 (Tuple2 Bool Bool)) true true))
        (= ((_ is mk-abort) return-left.value)
           ((_ is mk-abort) return-right.value))
    )
)