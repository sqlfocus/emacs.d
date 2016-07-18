;;; zenburn颜色方案
;(require-package 'zenburn-theme)
;(require 'zenburn-theme)

;;; solarized颜色方案
(require-package 'color-theme)
(require 'color-theme)
(require-package 'color-theme-solarized)
(require 'color-theme-solarized)

(load-theme 'solarized t)
(set-frame-parameter nil 'background-mode 'dark)
(enable-theme 'solarized)

;;; provider
(provide 'init-color-theme)
