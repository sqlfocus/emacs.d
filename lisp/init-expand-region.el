(require-package 'expand-region)
(require 'expand-region)

;;;; 设置快捷键，C-=总是不生效，简化为＝
;(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-c e") 'er/expand-region)
(global-set-key (kbd "C-c C-e") 'er/expand-region)

(provide 'init-expand-region)
