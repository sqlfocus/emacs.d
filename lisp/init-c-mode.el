(require 'cc-mode)

(eval-after-load 'cc-mode
  (add-hook 'c-mode-common-hook
            #'(lambda ()
                (setq c-default-style "linux")
                (setq tab-width 4)
                (setq indent-tabs-mode nil)
                (setq c-basic-offset 4)
		;(c-toggle-auto-state 1)       ; 自动添加换行
		(c-toggle-hungry-state 1)      ; 删除连续的空白字符
		))
)

(provide 'init-c-mode)
