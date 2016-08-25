;;; zenburn颜色方案
; change
;     `(helm-selection ((t (:background ,zenburn-bg+1 :underline nil))))
;     `(helm-selection-line ((t (:background ,zenburn-bg+1))))
; to
;     `(helm-selection ((t (:foreground ,zenburn-bg :background ,zenburn-yellow-2))))
;     `(helm-selection-line ((t (:foreground ,zenburn-bg :background ,zenburn-yellow-2))))

(require-package 'zenburn-theme)
(require 'zenburn-theme)

;;; solarized颜色方案
;(require-package 'color-theme)
;(require 'color-theme)
;(require-package 'color-theme-solarized)
;(require 'color-theme-solarized)
;(load-theme 'solarized t)
;(set-frame-parameter nil 'background-mode 'dark)
;(enable-theme 'solarized)

;;; spacemacs
;(require-package 'spacemacs-theme)
;(require 'spacemacs-common)
;(load-theme 'spacemacs-dark t)

;;; provider
(provide 'init-color-theme)
