;; The bindings are adapted to work with a swedish keyboard on a Mac with a fn key.

;; Define a new prefix, the "Space Command", my own unpolluted space.
(define-prefix-command 'space-map)

;; Space Command Groups
;;
;; w - winner
;; b - buffer

(define-key global-map (kbd "M-SPC") 'space-map)
(define-key global-map (kbd "M-SPC M-SPC") 'live-delete-whitespace-except-one)

(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; winner
(global-set-key (kbd "M-SPC w C-_") 'winner-undo)
(global-set-key (kbd "M-SPC w M-_") 'winner-redo)

;; buffer

;;;;;;  paredit ;;;;;;

;; Experimental M-SPC based
(define-key global-map (kbd "M-SPC {") 'paredit-wrap-curly)
(define-key global-map (kbd "M-SPC [") 'paredit-wrap-square)
(define-key global-map (kbd "M-SPC (") 'paredit-wrap-round)
(define-key global-map (kbd "M-SPC M-v") 'paredit-backward-slurp-sexp)
(define-key global-map (kbd "M-SPC M-b") 'paredit-backward-barf-sexp)
(define-key global-map (kbd "M-SPC M-n") 'paredit-forward-barf-sexp)
(define-key global-map (kbd "M-SPC M-m") 'paredit-forward-slurp-sexp)

;; From the Bindings pack
(define-key paredit-mode-map (kbd "C-c l k") 'paredit-splice-sexp-killing-forward)
(define-key paredit-mode-map (kbd "C-c l w") 'paredit-splice-sexp-killing-backward)
(define-key paredit-mode-map (kbd "C-c l l") 'align-cljlet)
(define-key paredit-mode-map (kbd "C-c l t") 'fill-paragraph)
(define-key paredit-mode-map (kbd "C-c l j") 'live-paredit-forward-slurp-sexp-neatly)
(define-key paredit-mode-map (kbd "C-M-e")   'paredit-backward-barf-sexp)
(define-key paredit-mode-map (kbd "C-M-s")   'paredit-backward-slurp-sexp)
(define-key paredit-mode-map (kbd "C-M-j")   'live-paredit-forward-slurp-sexp-neatly)
(define-key paredit-mode-map (kbd "C-M-y")   'paredit-forward-barf-sexp)
(define-key paredit-mode-map (kbd "C-M-z")   'align-cljlet)
(define-key paredit-mode-map (kbd "M-S")     'paredit-split-sexp)
(define-key paredit-mode-map (kbd "M-s")     'paredit-splice-sexp)
(define-key paredit-mode-map (kbd "M-j")     'paredit-join-sexps)
(define-key paredit-mode-map (kbd "M-P")     'live-paredit-previous-top-level-form)
(define-key paredit-mode-map (kbd "M-N")     'live-paredit-next-top-level-form)
(define-key paredit-mode-map (kbd "C-M-f")   'live-paredit-forward)
(define-key paredit-mode-map (kbd "M-q")     'live-paredit-reindent-defun)
(define-key paredit-mode-map (kbd "M-d")     'live-paredit-forward-kill-sexp)
(define-key paredit-mode-map (kbd "M-k")     'live-paredit-backward-kill)
(define-key paredit-mode-map (kbd "M-\\")    'live-paredit-delete-horizontal-space)
