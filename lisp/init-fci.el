(require-package 'fill-column-indicator)
(require 'fill-column-indicator)

(setq fci-rule-column 80)                 ; set column width
(setq fci-rule-color "darkblue")          ; set highlight color

;; enable fci-mode as a global minor mode
(define-globalized-minor-mode global-fci-mode fci-mode turn-on-fci-mode)
(global-fci-mode 1)

(provide 'init-fci)
