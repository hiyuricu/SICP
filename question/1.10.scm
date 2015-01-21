以下の手続きを定義し計算する。プロセスとしては再帰的であると思われる。
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

gosh> (A 1 10)
1024
gosh> (A 2 4)
65536
gosh> (A 3 3)
65536

また
(define (f n) (A 0 n))
は2n

(define (g n) (A 1 n))
は2のn乗(ただしn=0のときは0)

(define (h n) (A 2 n))
は2^^n(ただしn=0のときは0、n=1のときは2)
をそれぞれ示している