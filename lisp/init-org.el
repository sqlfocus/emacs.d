;;;; 快捷键参考
;;     org-mode.org

;;;; 设置全局快捷键
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;(setq org-log-done 'time)       ; 记录TODO完成时间
(setq org-log-done 'note)        ; 记录TODO完成时间，并添加记录

(provide 'init-org)
