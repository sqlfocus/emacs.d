;;; Require
(require-package 'go-mode)

;;; 移除不必要的import文件
(add-hook 'go-mode-hook (lambda () (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

;;; 跳转到import文件
(add-hook 'go-mode-hook (lambda () (local-set-key (kbd "C-c i") 'go-goto-imports)))

;;; 找寻代码
;;;   当前窗口打开定义 godef-jump is bound to C-c C-j
;;;   描述 godef-describe is bound to C-c C-d
;;;   新窗口打开定义 godef-jump-other-window (C-x 4 C-c C-j)
(add-hook 'go-mode-hook (lambda () (local-set-key (kbd "C-]") 'godef-jump-other-window)))

;;; init-go.el ends here
(provide 'init-go)
