;; The bindings are adapted to work with a swedish keyboard on a Mac with a fn key.

;; Define a new prefix, the "Space Command", my own unpolluted space.
(define-prefix-command 'space-map)

;; keychord
(key-chord-mode 1)

;; Space Command Groups
;;
;; w - winner
;; b - buffer

(define-key global-map (kbd "M-SPC") 'space-map)
(define-key global-map (kbd "M-SPC M-SPC") 'live-delete-whitespace-except-one)
(define-key global-map (kbd "M-SPC f") 'find-file-in-project)

(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; winner
(global-set-key (kbd "M-SPC w u") 'winner-undo)
(global-set-key (kbd "M-SPC w r") 'winner-redo)

;; buffer
(global-set-key (kbd "C-x C-b") 'buffer-menu)

;;;;;;  paredit ;;;;;;

;; Experimental M-SPC based
(define-key paredit-mode-map (kbd "M-SPC {")   'paredit-wrap-curly)
(define-key paredit-mode-map (kbd "M-SPC [")   'paredit-wrap-square)
(define-key paredit-mode-map (kbd "M-SPC (")   'paredit-wrap-round)
(define-key paredit-mode-map (kbd "M-SPC M-v") 'paredit-backward-slurp-sexp)
(define-key paredit-mode-map (kbd "M-SPC M-b") 'paredit-backward-barf-sexp)
(define-key paredit-mode-map (kbd "M-SPC M-n") 'paredit-forward-barf-sexp)
(define-key paredit-mode-map (kbd "M-SPC M-m") 'paredit-forward-slurp-sexp)

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

;; For swedish users!
;;(define-key paredit-mode-map (kbd "ö") 'paredit-open-round)
;;(define-key paredit-mode-map (kbd "ä") 'paredit-open-bracket)
;;(define-key paredit-mode-map (kbd "å") 'paredit-open-curly)
;;(define-key paredit-mode-map (kbd "Ö") 'paredit-backward-slurp-sexp)
;;(define-key paredit-mode-map (kbd "Ä") 'live-paredit-forward-slurp-sexp-neatly)
;;(define-key paredit-mode-map (kbd "M-ö") 'paredit-backward-barf-sexp)
;;(define-key paredit-mode-map (kbd "M-ä") 'paredit-forward-barf-sexp)

(key-chord-define paredit-mode-map "öö" 'paredit-backward-slurp-sexp)
(key-chord-define paredit-mode-map "ää" 'live-paredit-forward-slurp-sexp-neatly)
(key-chord-define paredit-mode-map "öå" 'paredit-backward-barf-sexp)
(key-chord-define paredit-mode-map "äå" 'paredit-forward-barf-sexp)
(key-chord-define paredit-mode-map "8u" 'paredit-open-round)
(key-chord-define paredit-mode-map "9i" 'paredit-open-bracket)
(key-chord-define paredit-mode-map "4r" 'paredit-open-curly)

;;key chords
(key-chord-define-global "1q" (lambda nil (interactive)
                                (window-number-select 1)))
(key-chord-define-global "2q" (lambda nil (interactive)
                                (window-number-select 2)))
(key-chord-define-global "3w" (lambda nil (interactive)
                                (window-number-select 3)))
(key-chord-define-global "4e" (lambda nil (interactive)
                                (window-number-select 4)))
(key-chord-define-global "5r" (lambda nil (interactive)
                                (window-number-select 5)))
(key-chord-define-global "6y" (lambda nil (interactive)
                                (window-number-select 6)))
(key-chord-define-global "7u" (lambda nil (interactive)
                                (window-number-select 7)))

(key-chord-define-global "xz" 'undo-tree-undo)
(key-chord-define-global "xc" 'undo-tree-redo)
(key-chord-define-global "x0" 'delete-window)
(key-chord-define-global "x1" 'delete-other-windows)
(key-chord-define-global "x2" 'split-window-below)
(key-chord-define-global "x3" 'split-window-right)
(key-chord-define-global "xx" 'smex)
(key-chord-define-global "xf" 'ido-find-file)
(key-chord-define-global "xb" 'ido-switch-buffer)
(key-chord-define-global "xk" 'ido-kill-buffer)
(key-chord-define-global "xs" 'save-buffer)
(key-chord-define-global "zz" 'keyboard-quit)

;; Ace jump mode
(global-set-key (kbd "C-,") 'ace-jump-mode)

;; Align your code in a pretty way.
(global-set-key (kbd "C-.") 'align-regexp)

;;browse kill ring (visual paste)
;;(global-set-key (kbd "M-y") 'browse-kill-ring)
