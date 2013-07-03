;; Use fn as meta
(custom-set-variables
 '(ns-alternate-modifier (quote none))
 '(ns-function-modifier (quote meta)))

;; scroll one line at a time (less "jumpy" than defaults)

    (setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time

    ;(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling

    (setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse

    (setq scroll-step 3) ;; keyboard scroll one line at a time

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
