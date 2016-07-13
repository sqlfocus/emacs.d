;;; Require

(require-package 'helm)

(require 'helm)
(require 'helm-config)

;; 添加绑定
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)

;; 使能helm模式
(helm-mode 1)

(provide 'init-helm)

;;; init-helm.el ends here
