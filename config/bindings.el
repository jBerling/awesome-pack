;; The bindings are adapted to work with a swedish keyboard on a Mac with a fn key.

                                        ; keychord ;
(key-chord-mode 1)

(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

(define-key global-map (kbd "M-SPC") 'inject-vacuum)


                                        ; buffer ;

(global-set-key (kbd "C-x C-b") 'buffer-menu)


                                        ; paredit ;

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

;;This binding is used by a couple of projects, to update the repl
;;(define-key paredit-mode-map (kbd "C-c C-v") 'nrepl-reset)

(key-chord-define paredit-mode-map "8b" 'paredit-backward-slurp-sexp)
(key-chord-define paredit-mode-map "9n" 'live-paredit-forward-slurp-sexp-neatly)
(key-chord-define paredit-mode-map "8n" 'paredit-backward-barf-sexp)
(key-chord-define paredit-mode-map "9m" 'paredit-forward-barf-sexp)
(key-chord-define paredit-mode-map "8u" 'paredit-open-round)
(key-chord-define paredit-mode-map "8h" 'paredit-open-bracket)
(key-chord-define paredit-mode-map "8j" 'paredit-open-curly)
(key-chord-define paredit-mode-map "2w" 'paredit-doublequote)
(key-chord-define paredit-mode-map "kk" 'paredit-kill)
(key-chord-define paredit-mode-map "yy" 'cua-paste)


                                        ;key chords

(key-chord-define-global "1a" (lambda nil (interactive)
                                (window-number-select 1)))
(key-chord-define-global "2s" (lambda nil (interactive)
                                (window-number-select 2)))
(key-chord-define-global "3d" (lambda nil (interactive)
                                (window-number-select 3)))
(key-chord-define-global "4f" (lambda nil (interactive)
                                (window-number-select 4)))
(key-chord-define-global "5g" (lambda nil (interactive)
                                (window-number-select 5)))
(key-chord-define-global "6h" (lambda nil (interactive)
                                (window-number-select 6)))
(key-chord-define-global "7j" (lambda nil (interactive)
                                (window-number-select 7)))

(key-chord-define-global "1q" (lambda nil (interactive) (insert "!")))
(key-chord-define-global "2w" (lambda nil (interactive) (insert "\"")))
(key-chord-define-global "2q" (lambda nil (interactive) (insert "@")))
(key-chord-define-global "3e" (lambda nil (interactive) (insert "#")))
(key-chord-define-global "4r" (lambda nil (interactive) (insert "$")))
(key-chord-define-global "5t" (lambda nil (interactive) (insert "%")))
(key-chord-define-global "6t" (lambda nil (interactive) (insert "&")))
(key-chord-define-global "6y" (lambda nil (interactive) (insert "&")))
(key-chord-define-global "7y" (lambda nil (interactive) (insert "/")))
(key-chord-define-global "7g" (lambda nil (interactive) (insert "|")))
(key-chord-define-global "7h" (lambda nil (interactive) (insert "\\")))
(key-chord-define-global "8u" (lambda nil (interactive) (insert "(")))
(key-chord-define-global "8h" (lambda nil (interactive) (insert "[")))
(key-chord-define-global "8j" (lambda nil (interactive) (insert "{")))
(key-chord-define-global "9i" (lambda nil (interactive) (insert ")")))
(key-chord-define-global "9j" (lambda nil (interactive) (insert "]")))
(key-chord-define-global "9k" (lambda nil (interactive) (insert "}")))
(key-chord-define-global "0o" (lambda nil (interactive) (insert "=")))
(key-chord-define-global "+p" (lambda nil (interactive) (insert "?")))

(key-chord-define-global "xz" 'undo-tree-undo) ; s-x already defined
(key-chord-define-global "xc" 'undo-tree-redo)
(key-chord-define-global "x0" 'delete-window)
(key-chord-define-global "x1" 'delete-other-windows)
(key-chord-define-global "x2" 'split-window-below)
(key-chord-define-global "x3" 'split-window-right)
(key-chord-define-global "xx" 'smex)
;;(key-chord-define-global "xf" 'ido-find-file)
;;(key-chord-define-global "xf" 'ido-find-file)
(key-chord-define-global "xb" 'ido-switch-buffer)
(key-chord-define-global "xk" 'ido-kill-buffer)
;;(key-chord-define-global "xs" 'save-buffer) s-s is already defined
;;(key-chord-define-global "zz" 'keyboard-quit)


                                        ; Ace jump mode ;

(global-set-key (kbd "C-,") 'ace-jump-mode)


                                        ; Align your code in a pretty way. ;

(global-set-key (kbd "C-.") 'align-regexp)


                                        ; Auto indent ;

(define-key global-map (kbd "RET") 'newline-and-indent)


                                        ; Helm ;

(key-chord-define-global "zb" 'helm-buffers-list)
(key-chord-define-global "zh" 'helm-mini)
(key-chord-define-global "zx" 'helm-M-x)


                                        ; Projectile ;

(key-chord-define-global "Zf" 'Helm-Projectile-Find-File)
(key-chord-define-global "zd" 'projectile-find-dir)
(key-chord-define-global "xf" 'helm-find-files)


                                        ; Workgroups 2 ;

(setq wg-prefix-key (kbd "C-c c"))
