(
 (plt:framework-pref:framework:display-line-numbers #t)
 (plt:framework-pref:framework:col-offsets #f)
 (plt:framework-pref:drracket:show-line-numbers? #t)
 (plt:framework-pref:drracket:defns-popup-sort-by-name? #t)
 (plt:framework-pref:framework:verify-exit #f)
 (plt:framework-pref:framework:column-guide-width (#t 102))
 (plt:framework-pref:framework:standard-style-list:weight bold)
 (plt:framework-pref:framework:standard-style-list:font-name "Source Code Pro")
 (plt:framework-pref:drracket:syncheck:contracts-locked? #f)
 (plt:framework-pref:drracket:child-only-memory-limit 268435456)
 (plt:framework-pref:drracket:backtrace-window-width 626)
 (plt:framework-pref:drracket:backtrace-window-height 1021)
 (plt:framework-pref:drracket:backtrace-window-x 775)
 (plt:framework-pref:drracket:backtrace-window-y 28)
 (plt:framework-pref:drracket:save-files-on-tab-switch? #f)
 (|plt:DrRacket 8.2-splash-max-width| 1010)
 (plt:framework-pref:framework:replace-visible? #t)
 (external-browser #f)
 (plt:framework-pref:external-browser #f)
 (plt:framework-pref:framework:replace-string ("symbol=?"))
 (plt:framework-pref:framework:search-string ("flatten-tree"))
 (plt:framework-pref:htdp:test-engine-window-size #hash((#f . (#f 621 1021)) (((0 0 1920 1080) (0 0 1920 1080)) . (#f 626 1021)) (((0 0 1920 1080)) . (#f 621 1021))))
 (plt:framework-pref:htdp:test-engine-window-position #hash((#f . (0 1287 28)) (((0 0 1920 1080) (0 0 1920 1080)) . (0 647 28)) (((0 0 1920 1080)) . (0 1287 28))))
 (plt:framework-pref:drracket:language-dialog:teaching-hierlist-default ("Teaching Languages" "How to Design Programs" "Advanced Student"))
 (plt:framework-pref:drracket:language-settings ((-32768) (#6(#t print mixed-fraction-e #f #t debug) (default) #0() #f #t #t ((test) (main)) #t)))
 (plt:framework-pref:drracket:show-killed-dialog #f)
 (|plt:framework-pref:MacroStepper:Frame:Width| 941)
 (|plt:framework-pref:MacroStepper:Frame:Height| 1021)
 (plt:framework-pref:drracket:recent-language-names
  (
   ("Intermediate Student with lambda" #6(#t constructor repeating-decimal #f #t none) #f () #f)
   ("Determine language from source" #6(#t print mixed-fraction-e #f #t debug) (default) #0() #f #t #t ((test) (main)) #t)
   ("Beginning Student" #6(#t constructor repeating-decimal #f #t none) #f () #f)
   ("Advanced Student" #6(#t constructor repeating-decimal #t #t none) #f () #f)
   ("Intermediate Student" #6(#t constructor repeating-decimal #f #t none) #f () #f)
   ("No language chosen" . #6(#t print mixed-fraction-e #f #t debug))
   ("Beginning Student with List Abbreviations" #6(#t constructor repeating-decimal #f #t none) #f () #f)
  ))
 (|plt:DrRacket 8.3-splash-max-width| 1011)
 (plt:framework-pref:framework:white-on-black? #t)
 (plt:framework-pref:framework:delegatee-overview-color (62 67 155 1.0))
 (plt:framework-pref:drracket:most-recent-lang-line "#lang racket\n")
 (|plt:DrRacket 8.4-splash-max-width| 1017)
 (plt:framework-pref:drracket:console-previous-exprs
  (
   ("(get-cost \"what\" gc4)")
   ("(define gc3 (cons ce2 gc2))\n(define gc4 (cons ce3 gc3))\n\n(define (gc-temp gc)\n  (cond [(empty? gc) ...]\n        [(cons? gc) (... (first gc) ... (gc-temp (rest gc) ...) ...)]))\n \n; A CE (CatalogueEntry) is a\n; (make-ce String Cost)\n(define-struct ce [name cost])\n; and represents the name of a food and how much it costs\n\n(define ce1 (make-ce \"Celery\" cost1))\n(define ce2 (make-ce \"Banana\" cost2))\n(define ce3 (make-ce \"Apples\" cost3))\n\n(define (ce-temp ce)\n  (... (ce-name ce) ... (cost-temp (ce-cost ce) ...) ...))\n\n; A Cost is one of:\n; - (make-unit Number)\n; - (make-lb Number)\n(define-struct unit [cost])\n(define-struct lb [cost])\n; and represents either the cost per unit or per lb of an item\n\n(define cost1 (make-unit 1.80))\n(define cost2 (make-unit 1))\n(define cost3 (make-lb 2))\n\n(define (cost-temp cost)\n  (cond [(unit? cost) (... (unit-cost cost) ...)]\n        [(lb? cost) (... (lb-cost cost) ...)]))\n\n; A Checkout is one of:\n; - '()\n; - (cons Order Checkout)\n\n(define checkout1 '())\n(define checkout2 (cons order1 checkout1))\n(define checkout3 (cons order2 checkout2))\n\n(define (checkout-temp checkout)\n  (cond [(empty? checkout) ...]\n        [(cons? checkout) (... (first checkout) ... (checkout-temp (rest checkout) ...) ...)]))\n \n; A Order is one of:\n; - String\n; - (make-weight String Number)\n(define-struct weight [name lb])\n; and represents either one unit of food or its name and weight in lbs\n\n(define order1 \"Pepperoni\")\n(define order2 (make-weight \"Apricots\" 4))\n\n;; get-cost : String GC -> String\n;; Finds the cost of an item in a grocery catalogue, or throws an error if unable to find item\n(define (get-cost name gc)\n  (cond [(empty? gc) (error \"grocery catalogue does not contain an item of this name!\")]\n        [(string=? (ce-name (first gc)) name)\n         (cond [(unit? (ce-cost (first gc))) (string-append (ce-cost (first gc)) \" per unit.\")]\n               [(lb? (ce-cost (first gc))) (string-append (ce-cost (first gc)) \" per pound.\")]\n               [else (get-cost name (rest gc))])]))\n\n(check-expect (get-cost (\"Orange\" gc1))\n              (error \"grocery catalogue does not contain an item of this name!\"))\n(check-expect (get-cost \"Orange\" gc2)\n              (error \"grocery catalogue does not contain an item of this name!\"))\n(check-expect (get-cost \"Celery\" gc2) \"1.80 per unit.\")\n(check-expect (get-cost \"Celery\" gc3) \"1.80 per unit.\")\n(check-expect (get-cost \"Apples\" gc4) \"2 per pound.\")")
   ("(check-expect (get-cost \"Orange\" gc2)\n              (error \"grocery catalogue does not contain an item of this name!\"))")
   ("(check-expect (get-cost \"Celery\" gc2) \"1.80 per unit.\")")
   ("(check-expect (get-cost \"Apples\" gc4) \"2 per pound.\")")
   ("hdf")
   ("dfd")
   ("(check-expect (get-cost \"Apples\" gc4) \"2 per pound.\")")
   ("(ce-name (first gc4))")
   ("(get-cost \"tom\" gc4)")
   ("(ce-cost ce1)")
   ("(ce1-cost)")
   ("ce1-cost")
   ("(ce-cost ce1)")
   ("$84")
   ("(* 4 4)")
   ("(new-random-level 5)")
   ("(balls-rand 5)")
   ("(foldr + 0 '(0 1 2 3 4 5 6 7 8 9))")
   ("(foldr (+ 0 '(0 1 2 3 4 5 6 7 8 9)))")
   ("(foldr + 0 '(0 1 2 3 4 5 6 7 8 9))")
   ("(foldr (+ 0 '(0 1 2 3 4 5 6 7 8 9)))")
   ("foldr")
   ("(foldr append-rests '() '((1 a) (2 b c) (3 d e f)))")
   ("(foldr + 0 '(0 1 2 3 4 5 6 7 8 9))")
   ("(copy-even-strings [1, 2, 3])")
   ("(copy-even-strings [1 2 3])")
   ("(copy-even-strings (1 2 3))")
   ("(copy-even-strings '(1 2 3))")
   ("(even? (string-length \"hi\"))")
   ("(copy-even-strings '(\"What\" \"Now\" \"Is\" \"This\" \"I'm\" \"Seeing?\"))")
   ("(ball-game 5)")
   ("(ball-game 20)")
   ("(ball-game 5)")
   ("(build-list 5 (λ (x) (make-ball (make-posn (random 500) (random 500))\n                                  (make-vel (- (random 10) 5) (- (random 10) 5)))))")
   ("(balls-rand 5)")
   ("(balls-rand-old 5)")
   ("(new-random-level 5)")
   ("(ball-game 3)")
   ("(new-random-level 5)")
   ("(ball-game 5)")
   ("(ball-game 20)")
   ("(ball-game 5)")
   ("(ball-game 12)")
   ("(ball-game 5)")
   ("(ball-game 0)")
   ("(ball-game 5)")
   ("(ball-game 2)")
   ("(ball-game 5)")
   ("(draw-world 'fuck)")
   ("(ball-game 5)")
   ("(define PLAYER-1 (make-player1 world-1))")
   ("PLAYER1")
   ("PLAYER-1")
   ("(player-world (define PLAYER-1 (make-player1 world-1)))")
   ("(player1-world (define PLAYER-1 (make-player1 world-1)))")
   ("(player1-world PLAYER-1)")
   ("(define p1 (make-player1 world-1))")
   ("(world-lives (player1-world p1))")
   ("(define (level-lost? p1)\n  (<= (world-lives (player1-world p1) 0)))")
   ("(define (level-lost?? p1)\n  (<= (world-lives (player1-world p1) 0)))")
   ("(level-lost?? (make-player1 world-1))")
   ("(ball-game 5)")
   ("(new-random-level 5)")
   ("(ball-game 5)")
   ("(ball-game 1)")
   ("(ball-game 5)")
   ("(ball-game 2)")
   ("(ball-game 5)")
   ("(neighbor-of? 'A 'B)")
   ("(neighbor-of? GRAPH-1 'A 'B)")
   ("(flatten-tree (make-node 0 'leaf 'leaf))")
   ("((c1 'resize) -5)")
   ("((((c1 'resize) -5) 'equal) c0)")
   ("((((c0 'resize) 5) 'equal) c1)")
   ("(define CENTER (make-posn 1 2))")
   ("(define WHAT CENTER)")
   ("(equal? WHAT CENTER)")
   ("(* 2 (+ 1 (abort (* 5 (- 6 2)))))")
   ("(string-append \"Your total is: $\"\n            ((first (list (λ (n) (abort \"Hi Mom!\"))\n                          number->string))\n             80))")
   ("(map (λ (f) (f 3)) (list add1 sqr number->string abort odd?))")
   ("((λ (x) (+ 20 (abort x))) \"Oopsies\")")
   ("(rest (map identity (list abort)))")
   ("(map abort (list 1 2 3))")
   ("(local [(define (loop x)\n          (loop x))]\n  (loop (abort \"Hello, World!\")))")
   (" (local [(define (loop x)\n           (loop x))]\n   (abort (loop \"Hello, World!\"))) ; watch out for this one!")
   ("(product (list 9 8 7))")
   ("(product (list 8 7 6 0 2))")
   ("(product (list 8 7 6 1 2))")
   ("(product (list 8 7 6 0 2))")
   ("(product (list 8 7 6 1 2))")
   ("(+ 20 (product (list 0 1 2 3)))")
   ("(even? 0)")
   ("(permutations 3 '(#t #f))")
   ("(permutations 3)")
  ))
 (plt:framework-pref:framework:exit-when-no-frames #t)
 (plt:framework-pref:framework:standard-style-list:font-size #2(#hash((((1920 1080) (1920 1080)) . 12) (((1920 1080)) . 12) (((2560 1080)) . 12)) 12))
 (plt:framework-pref:framework:color-scheme white-on-black)
 (plt:framework-pref:framework:recently-opened-files/pos
  (
   (#"/home/bhove/Downloads/message (2).txt" 0 0)
   (#"/home/bhove/Downloads/message.txt" 0 0)
   (#"/home/bhove/bhove.github.io/assets/general/OFL.txt" 0 0)
   (#"/home/bhove/bhove.github.io/CNAME" 0 0)
   (#"/home/bhove/bhove.github.io/site.webmanifest" 0 0)
   (#"/home/bhove/Documents/Classes/Fall 2021/Fundies 1/Week 11/hw10.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fall 2021/Fundies 1/Week 12/hw11.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fall 2021/Discrete Structures/Week 11/Project/Project.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fall 2021/Fundies 1/Week 14/hw13.rkt" 0 0)
   (#"/home/bhove/Makedefs" 0 0)
   (#"/home/bhove/config.log" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 13/hw12.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 13/autosave.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 13/#hw12.rkt#2#" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 13/hw12.rkt~" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 12/hw11.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 11/hw10.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 11/boxout-server.rkt" 0 0)
   (#"/tmp/mozilla_bhove0/hw10 (2).rkt" 0 0)
   (#"/home/bhove/Downloads/boxout-server.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 11/Classes" 0 0)
   (#"/tmp/mozilla_bhove0/m6_l2_v1_starter.rkt" 0 0)
   (#"/tmp/mozilla_bhove0/m6_l1_v3p3_starter-1.rkt" 0 0)
   (#"/tmp/mozilla_bhove0/m6_l1_v3p2_starter-2.rkt" 0 0)
   (#"/tmp/mozilla_bhove0/m6_l1_v3p2_starter-1.rkt" 0 0)
   (#"/tmp/mozilla_bhove0/m6_l1_v3_starter.rkt" 0 0)
   (#"/tmp/mozilla_bhove0/m6_l1_v3p2_starter.rkt" 0 0)
   (#"/tmp/mozilla_bhove0/m6_l1_v3p3_starter.rkt" 0 0)
   (#"/tmp/mozilla_bhove0/lec18.rkt" 0 0)
   (#"/tmp/mozilla_bhove0/lec17.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 7/hw6.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 7/hw7.rkt" 0 0)
   (#"/home/bhove/.local/bin/out.log" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 3/hw2.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 4/hw4.rkt" 0 0)
   (#"/home/bhove/Desktop/homework_5.rkt" 0 0)
   (#"/home/bhove/Downloads/homework_5.rkt" 0 0)
   (#"/tmp/mozilla_bhove0/homework_5.rkt" 0 0)
   (#"/tmp/mozilla_bhove0/lec13.rkt" 0 0)
   (#"/tmp/mozilla_bhove0/lec14.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 4/hw4" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 2/lab1.rkt" 0 0)
   (#"/home/bhove/Downloads/lab2-starter.rkt" 0 0)
   (#"/home/bhove/Downloads/lab2-starter_1.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 2/hw2.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 2/09-13notes.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 2/hw1-problem3.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 2/hw1-problem2.rkt" 0 0)
   (#"/home/bhove/Documents/Classes/Fundies 1/Week 2/hw1-problem1.rkt" 0 0)
   (#"/home/bhove/Family Tree 1_ancestor_report.txt" 0 0)
  ))
 (plt:framework-pref:plt:debug-tool:stack/variable-area 9/10)
 (plt:framework-pref:drracket:unit-window-size-percentage 114584381/171175862)
 (plt:framework-pref:drracket:window-size #hash((#f . (#f 1896 1008)) (((0 0 1920 1080) (0 0 1920 1080)) . (#f 1896 1021)) (((0 0 1920 1080) (-1929 0 1920 1080)) . (#f 621 1021)) (((0 -1080 1920 1080) (0 0 1920 1080)) . (#f 941 1021)) (((0 0 1920 1080)) . (#f 1896 1008)) (((0 0 2560 1080)) . (#f 2536 1021))))
 (plt:framework-pref:drracket:window-position #hash((#f . (0 12 60)) (((0 0 1920 1080) (0 0 1920 1080)) . (0 12 28)) (((0 0 1920 1080) (-1929 0 1920 1080)) . (1 12 28)) (((0 -1080 1920 1080) (0 0 1920 1080)) . (1 12 28)) (((0 0 1920 1080)) . (0 12 60)) (((0 0 2560 1080)) . (0 12 28))))
 (readline-input-history
  (
   #"(* 2 2)"
   #"* 2 2"
   #"(factorial 0)"
   #"0!"
   #"(* 26 50)"
   #"(* 18 50)"
   #"(* 6 50)"
   #"(+ 17.8 2.1 5.6)"
   #"(+ 0.1 0.2)"
   #"(+ 12.2 5.6)"
   #"stop"
   #"exit"
   #"clear"
   #"(if (odd? 0) 42 (+ 1 (abort -1)))"
   #"(if (even? 0) 42 (+ 1 (abort -1)))"
   #"(if (even? 0) 42 (+ 1 (abort -1)))\n  )"
   #"(if\n  (ifdsds"
   #"(+ 1 (abort 2))"
   #"(require (only-in racket/control abort))"
   #"((THREE (lambda(l) (cons \"x\" l)) '())\n  )"
   #"(define NOT (lambda(b) (((IF b) FALSE) TRUE)))"
   #"(define OR (lambda(b1) (lambda(b2) (((IF b1) TRUE b2))))\n  )"
   #"(define AND (lambda(b1) (lambda(b2) (((IF b1) b2) FALSE))))"
   #"(define AND (lambda(b1) (lambda(b2 (((IF b1) b2) FALSE))))\n  )"
   #"(define IF (lambda(c) (lambda(t) (lambda(f) ((c t) f))))\n  )"
   #"(define IF (lambda(c) (lambda(t) (lambda(f))))\n  )"
   #"(define FALSE (lambda(x) (lambda(y) y)))"
   #"(define TRUE (lambda(x) (lambda(y) x))\n  )"
   #",bt"
   #"(NUM->num ((MUL TWO) THREE))"
   #"(NUM->num ((MUL TWO) FIVE))"
   #"(define MUL (lambda(m) (lambda(n) ((m (ADD n)) ZERO))))"
   #"(NUM->num ((ADD THREE) THREE))"
   #"(define ADD (lambda(m) (lambda(n) ((n ADD1) m))))"
   #"(define ADD (lambda(m) (lambda(n) (n ADD1) m))))"
   #"(ADD1 3)"
   #"(ADD1 THREE)"
   #"ADD1"
   #"(define ADD1 (lambda(n) (lambda(f) (lambda(x) (f ((n f) x))))))"
   #"((THREE sub1) 0)"
   #"(define THREE (lambda(f) (lambda(x) (f (f (f x))))))"
   #"(define TWO (lambda(f) (lambda(x) (f (f x)))))"
   #"(NUM->num ONE)"
   #"(define ONE (lambda(f) (lambda(x) (f x))))"
   #"(NUM->num ZERO)"
   #"(define (NUM->num n) ((n add1) 0))"
   #"ZERO"
   #"(define ZERO (lambda(f) (lambda(x) x)))"
   #"(+ (* 3 5 2 1) (* 3 1 2 1) (* 3 1 4 1) (* 2 5 4 1) (* 2 5 2 1) (* 2 1 4 1) (* 2 1 2 1))"
   #"(+ (* 3 1 4 1) (* 2 1 4 1))"
   #"(+ (* 3 1 4 2) (* 3 1 4 3) (* 2 5 2 4) (* 2 5 2 3) (* 2 1 4 3) (* 2 1 4 2))"
   #"(+ 2 2)"
   #"(* 8 8 )"
   #"(* 8 7 2 3)"
   #"(+ 8 8 7 5 6 5 8 2 1 6 4 5 4 6 4 4 5 3 6 8 2 2 5 4 6 7 4 2 6 2 5 4 3 5 2)"
   #"(* 6 30)"
   #"(/ 60 (* 6 30))"
   #"(* 7 7)"
   #"(* q q q q q q q q q  q q q q q q q q q q q q q q q q q q  q q)"
   #"q"
   #"(define q (* r r  r r r e r r  r r r r r r r r r  r r r r r w r r r r r r r FUCK r r r r r r r r r r ))"
   #"(* r r r r r  r r r r r r r r r r r r r r r r r r r r r)"
   #"(define r (* e e e e e e e e  e e e e e e  e e e e e e e e e e e e e e e  e e e e e e e e  e e e e e e e e e e e))"
   #"(* e e e e e e e e e e e e e e e e  e e e e e  e e e e e  e e)"
   #"(define e (* w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w))"
   #"(* w w w w w w w w w w w w w w w w w w w w)"
   #"(define w 2651983972173921036172165393021835213211111111111111111111109743572843295073209873209875432187598743)"
   #"(* FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUFUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK\n  fdf\n  dgfd\n  gfd\n  gf\n  hgf\n  jhgj\n  hgjh\n  khj\n  hgjhghg\n  jhgj\n  hgj\n  hgj\n  hgj\n  hg\n  jhgj\n  hgj\n  hgj\n  gj\n  hgjgjhyjygj\n  hgj\n  hgj\n  hgk\n  hjl\n  k;\n  jujt\n  6r5\n  y76\n  fdf\n  dsgf\n  dsgd\n  hyf\n  j\n  hgjk\n  hgk\n  jk\n  hjlk\n  hjf\n  rwfcs\n  fd\n  s\n  )))"
   #"(* FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK)"
   #"(+ 57 FUCK)"
   #"(define FUCK 12)"
   #"(! 20)"
   #"(20!)"
   #"(* 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20)"
   #"yhhhhhhhhhhhhhhhhhhhhh"
   #"g hgnyh"
   #"hewwwwwwwwwwwwwwwwwwwwwwwwwwwwwwnhju n'"
   #" hhhijewtr4 kjrb432 tiugkylftyresgdoi8fugdsoziresg"
   #"7yuhokxziurwkjdfid"
   #"nhmfdkstrhhhfd"
  ))
)
