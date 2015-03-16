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


                                        ; Scrolling ;

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;; scroll window under mouse
(setq mouse-wheel-follow-mouse 't)

;; keyboard scroll one line at a time
(setq scroll-step 3)

                                        ; Melpa ;

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)


;; Code below from
;; http://toumorokoshi.github.io/emacs-from-scratch-part-2-package-management.html

;; My packages
(defvar required-packages
  '(magit
    projectile)
  "My packages, installed at launch")

;; my-packages.el
(require 'cl)

;; method to check if all packages are installed
(defun packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

;; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
  ; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))


                                        ; Misc ;

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

                                        ; Colors ;

(load-library "awesome-theme")

;(load-library "espresso-theme")

(set-face-background 'hl-line "#192100")

                                        ; Clojure repl stuff ;

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

                                        ; zencoding ;

(require 'zencoding-mode)


                                        ; Helm ;

(live-add-pack-lib "/async/")
(live-add-pack-lib "/helm/")

(require 'helm-config)

(ido-mode 0)
(helm-mode 1)
(helm-autoresize-mode 1)

(setq helm-M-x-fuzzy-match t)
(setq helm-recentf-fuzzy-match t)
(setq helm-buffers-fuzzy-matching t)
(setq helm-recentf-fuzzy-match t)

                                        ; Projectile ;

(require 'helm-projectile)

(projectile-global-mode)


                                        ; Company ;

;; https://github.com/ifesdjeen/emacs-live-packs/blob/master/customizations/init.el
;;(live-add-pack-lib "/company-mode/")
;;(require 'company)
;;(add-hook 'after-init-hook 'global-company-mode)


                                        ; Misc ;

(server-start 1)
(global-auto-revert-mode +1)
(global-git-gutter-mode -1)
(add-hook 'after-init-hook 'color-theme-awesome)
;(add-hook 'after-init-hook (lambda () (load-theme 'color-theme-awesome t)))
