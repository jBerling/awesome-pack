;; The bindings are adapted to work with a swedish keyboard on a Mac with a fn key.

;; Define a new prefix, the "Space Command", my own unpolluted space.
(define-prefix-command 'space-map)

(define-key global-map (kbd "M-SPC") 'space-map)
(define-key global-map (kbd "M-SPC M-SPC") 'live-delete-whitespace-except-one)
