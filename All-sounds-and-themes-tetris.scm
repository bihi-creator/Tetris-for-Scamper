; sounds-tetris

(import music)
(import lab)

;;;;                                 ;;;;
;;           SOUND EFFECTS             ;; 
;;;;                                 ;;;;


(ignore (load-instrument 81)) ; Square Lead 
(ignore (load-instrument 82)) ; Saw Wave Lead
(ignore (load-percussion 35)) ; Bass Drum for the block-ground effect
(ignore (load-instrument 128))  ; Gunshot 
(ignore (load-instrument 14))   ; Tubular Bells 
(ignore (use-high-quality-instruments #t))


(define en-note en)  
(define qn-note qn) 
(define wn-note wn)   
(define hn-note hn) 


 (define block-ground-effect
   (seq (mod percussion (note 35 en-note))   
        (rest en-note)))       

(title "block-ground-effect")

 block-ground-effect


 (define block-land-effect
   (mod (instrument 81)                     
        (seq (note 72 en-note)               
             (rest en-note))))             

(title "block-land-effect")

 block-land-effect


 (define line-clear-effect
   (mod (instrument 82)                      
        (par (seq (note 76 qn-note)         
                  (rest en-note))
             (seq (note 79 qn-note)          
                  (rest en-note))
             (seq (note 84 qn-note)       
                  (rest en-note)))))

(title "line-clear-effect")


 line-clear-effect



(define tetris-sound-effects
  (seq block-ground-effect
       block-land-effect
       line-clear-effect))

(title " tetris-sound-effects")

 tetris-sound-effects


;; Play the sound effects
; (play-composition tetris-sound-effects)

(define piece-move
  (seq
   (note 60 sn)   
   (note 62 sn))) 

(title "piece-move")

piece-move


(define piece-rotate
  (seq
   (note 67 tn)   
   (note 65 tn))) 

(title "piece-rotate")

piece-rotate


(define game-over
  (seq
   (note 60 qn)   
   (note 57 qn)   
   (note 55 hn))) 

(title "game-over")

game-over

(define level-up
  (seq
   (note 79 en)   
   (note 81 en)   
   (note 84 qn)   
   (note 86 qn))) 

(title "level-up")

level-up

(define tetris-sounds
  (seq
   (par piece-move piece-rotate)  
   game-over
   level-up))


(define tetris-sound-performance
  (mod (tempo qn 140)  
       (mod (dynamics 90)  
            tetris-sounds)))

(title "tetris-sound-performance")

tetris-sound-performance

;; Play the sound effects
; (play-composition tetris-sound-performance)


;;;;                                 ;;;;
;;           Tetris theme              ;; 
;;;;                                 ;;;;

(ignore (load-instrument 0))  ; Acoustic Grand Piano


(define tetris-theme
  (seq
   (note 76 qn)   
   (note 71 en)   
   (note 72 en)   
   (note 74 qn)   
   (note 72 en)   
   (note 71 en)   
   (note 69 qn)   
   (note 69 en)   
   (note 72 en)   
   (note 76 qn)   
   (note 74 en)   
   (note 72 en)   
   (note 71 qn)   
   (rest qn)
   (note 72 en)  
   (note 74 en)  
   (note 76 qn)   
   (note 72 qn)   
   (note 69 qn)   
   (note 69 qn))) 

(define tetris-performance
  (mod (tempo qn 120)  
       (mod (dynamics 100)  
            tetris-theme)))


(title "TETRIS-THEME")

tetris-performance







