;;;;;;;;;;;; Modifier keys ;;;;;;;;;;;;
;;
;; Below a list of the modifier key names:
;;
;; ns-alternate-modifier
;; ns-command-modifier
;; ns-control-modifier
;; ns-function-modifier
;; ns-option-modifier (just a different name for ns-alternate-modifier)
;; ns-right-alternate-modifier
;; ns-right-command-modifier
;; ns-right-control-modifier
;; ns-right-option-modifier

;; Use fn and right alt as meta, ctrl and right cmd and control
(custom-set-variables
 '(ns-alternate-modifier       (quote none))
 '(ns-function-modifier        (quote meta))
 '(ns-right-alternate-modifier (quote meta))
 '(ns-right-command-modifier   (quote control)))


                                        ; Scrolling

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;; scroll window under mouse
(setq mouse-wheel-follow-mouse 't)

;; keyboard scroll one line at a time
(setq scroll-step 3)

                                        ; Melpa

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)



                                        ; Misc

(defun kill-all-buffers ()
  "kill all buffers"
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

(defun kill-other-buffers ()
  "kill all other buffers"
  (interactive)
  (mapc 'kill-buffer
        (delq (current-buffer)
              (remove-if-not 'buffer-file-name (buffer-list)))))

(defun inject-vacuum ()
  "Delete all spaces and tabs around point"
  (interactive)
  (let ((orig-pos (point))
        (skip-characters " \t\n\r")
        (n 0))
    (skip-chars-backward skip-characters)
    (constrain-to-field nil orig-pos)
    (dotimes (i n)
      (if (= (following-char) ?\s)
	  (forward-char 1)
	(insert ?\s)))
    (delete-region
     (point)
     (progn
       (skip-chars-forward skip-characters)
       (constrain-to-field nil orig-pos t)))))

(yas/load-directory "~/.live-packs/awesome-pack/etc/snippets")

                                        ; Colors

(load-library "awesome-theme")

;(load-library "espresso-theme")

(set-face-background 'hl-line "#192100")

                                        ; repl stuff

;; (defun nrepl-refresh ()
;;   (interactive)
;;   (set-buffer "*nrepl*")
;;   (goto-char (point-max))
;;   (insert "(clojure.tools.namespace.repl/refresh)")
;;   (nrepl-return))

;; (defun nrepl-reset ()
;;   (interactive)
;;   (set-buffer "*nrepl*")
;;   (goto-char (point-max))
;;   (insert "(reset)")
;;   (nrepl-return))

                                        ; zencoding
(require 'zencoding-mode)

(global-auto-revert-mode +1)

(global-git-gutter-mode -1)

;; Todo: not working. Have to call it manually
;;(color-theme-awesome)



;; Helm

(live-add-pack-lib "/async/")
(live-add-pack-lib "/helm/")

(require 'helm-config)

(helm-mode 1)

;; (global-set-key (kbd "C-x C-b")   'helm-buffers-list)
;; (global-set-key (kbd "M-/")       'helm-dabbrev)
