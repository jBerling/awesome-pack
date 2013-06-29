;; Place your bindings here.

;; For example:
;;(define-key global-map (kbd "C-+") 'text-scale-increase)
;;(define-key global-map (kbd "C--") 'text-scale-decrease)

(define-prefix-command 'space-map)

(define-key global-map (kbd "M-SPC") 'space-map)
(define-key global-map (kbd "M-SPC M-SPC") 'live-delete-whitespace-except-one)

;; paredit
