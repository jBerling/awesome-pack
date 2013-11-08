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

(defun heander-keys ()
  "right alt and right cmd will be released by emacs"
  (interactive)
  (ns-right-alternate-modifier (self-insert-command))
  (ns-right-command-modifier   (self-insert-command)))

(defun jonasson-keys ()
  "right alt and right cmd will be captured by emacs"
  (interactive)
  (ns-right-alternate-modifier (quote meta))
  (ns-right-command-modifier   (quote control)))

;;;;;;;;;;; Scrolling ;;;;;;;;;;;

;; scroll one line at a time (less "jumpy" than defaults)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ; one line at a time

;;(setq mouse-wheel-progressive-speed nil) ; don't accelerate scrolling

(setq mouse-wheel-follow-mouse 't) ; scroll window under mouse

(setq scroll-step 3) ; keyboard scroll one line at a time


;;;;;;;;;; Misc ;;;;;;;;;;;;;

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

(defun max-contrast ()
  "set the background color to black, if you want more contrast"
  (interactive)
  (set-background-color "Black"))

(defun less-contrast ()
  "set the background color to gray, if you want less contrast"
  (interactive)
  (set-background-color "rgb:1500/2000/2250"))

;; Automatic saving and loading of desktops
;;(desktop-save-mode 1)

;;(global-linum-mode t)
;;(global-git-gutter-mode false)

(yas/load-directory "~/.live-packs/awesome-pack/etc/snippets")


;;;;;;;;;;;; dirtree ;;;;;;;;;;;;

(require 'tree-mode)
(require 'windata)
(require 'dirtree)
(autoload 'dirtree "dirtree" "Add directory to tree view")


;;;;;;;;;;;; nrepl-inspect ;;;;;;;;;;;

(require 'nrepl-inspect)
