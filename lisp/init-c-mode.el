(require 'cc-mode)

(eval-after-load 'cc-mode
  (add-hook 'c-mode-common-hook
            #'(lambda ()
                (setq c-default-style "linux")
                (setq tab-width 4)
                (setq indent-tabs-mode nil)
                (setq c-basic-offset 4)
		;(c-toggle-auto-state 1)       ; after type certain char, newline will be added
		(c-toggle-hungry-state 1)      ; delete all white character when del white char
		))
)

(provide 'init-c-mode)
