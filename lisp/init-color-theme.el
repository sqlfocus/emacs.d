;;; zenburn配色方案
;; change
;;     `(helm-selection ((t (:background ,zenburn-bg+1 :underline nil))))
;;     `(helm-selection-line ((t (:background ,zenburn-bg+1))))
;; to
;;     `(helm-selection ((t (:foreground ,zenburn-bg :background ,zenburn-yellow-2))))
;;     `(helm-selection-line ((t (:foreground ,zenburn-bg :background ,zenburn-yellow-2))))

(require-package 'zenburn-theme)
(require 'zenburn-theme)

;;; tangotango配色方案
;(require-package 'tangotango-theme)
;(require 'tangotango-theme)
;(load-theme 'tangotango t)

;;; monokai配色方案
;(require-package 'monokai-theme)
;(require 'monokai-theme)

;;; provider
(provide 'init-color-theme)
