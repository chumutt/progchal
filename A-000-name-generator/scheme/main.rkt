#lang racket/gui

(require racket/class racket/gui/base)

; Make a frame by instantiating the frame% class

(define nil '())

(define main-window
  (new frame%
       (label "Name Generator")
       (width 800)
       (height 600)))

(define menu-bar
  (new menu-bar%
    [parent main-window]))

(define file-menu
  (new menu%
    [label "&File"]
    [parent menu-bar]))

(new menu-item%
  [label "&Exit"]
  [parent file-menu]
  [callback
    (λ (m event)
      (exit nil))])

(new menu%
  [label "&Edit"]
  [parent menu-bar])

(define help-menu
  (new menu%
       [label "Help"]
       [parent menu-bar]))

(define about-dialog-box
  (instantiate dialog% ("About")))

(define about-text-string (new message%
                               [parent about-dialog-box]
                               [label "This is a name generator."]))

(define panel (new horizontal-panel%
                   [parent about-dialog-box]
                                    [alignment '(center center)]))
(define about-dialog-box-thanks-button  (new button%
                                             [parent panel]
                                             [label "Thanks"]
                                             [callback (lambda (m event)
                                                         (send about-dialog-box show #f))]))
(define about-dialog-box-okay-button    (new button%
                                             [parent panel]
                                             [label "Okay cool"]
                                             [callback (lambda (m event)
                                                         (send about-dialog-box show #f))]))
(when (system-position-ok-before-cancel?)
  (send about-dialog-box change-children reverse))

(new menu-item%
  [label "&About"]
  [parent help-menu]
  [callback
    (λ (m event)
      (send about-dialog-box show #t))])

(send main-window show #t)


















































; Show the frame by calling its show method
;; (send window show #t)

;; (define msg-settings (new message% [parent window]
;;                           [label "optional settings"]))

;; (define combo-field (new combo-field%
;;                          (label "gender")
;;                          (parent window)
;;                          (choices (list "bigender"
;;                                         "agender"
;;                                         "male"
;;                                         "female"))
;;                          (init-value "bigender")))


;; (define msg (new message% [parent window]
;;                           [label "No events so far..."]))
;; (define menu-bar (new menu-bar%
;;                       (parent window)))
;; (new menu%
;;      (label "&File")
;;      (parent menu-bar))
;; (new menu%
;;      (label "&Edit")
;;      (parent menu-bar))
;; (new menu%
;;      (label "&Help")
;;      (parent menu-bar))
;; (new button% (parent window)
;;              (label "Click Me")
;;              ; Callback procedure for a button click:
;;              (callback (lambda (button event)
;;                          (send msg set-label "Button click"))))

;; (define bigender-doc "bigender = + bigender names, agender names, male names, female names")
