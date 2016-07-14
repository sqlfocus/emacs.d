;;; Require
(require-package 'helm)

(require 'helm)
(require 'helm-config)

;;; 使能helm模式
(helm-mode 1)
(helm-autoresize-mode 1)

;;; 添加绑定
(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-M-x-fuzzy-match t)

(global-set-key (kbd "M-y") 'helm-show-kill-ring)

(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
    helm-recentf-fuzzy-match    t)

(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-s") 'helm-occur)
(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)
(global-set-key (kbd "C-c h x") 'helm-register)
(global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
(global-set-key (kbd "C-c h") 'helm-command-prefix)

(setq helm-split-window-in-side-p        t
    helm-move-to-line-cycle-in-source    t
    helm-ff-search-library-in-sexp       t
    helm-locate-fuzzy-match              t   ; linux C-c h l/C-!
    helm-apropos-fuzzy-match             t
    helm-scroll-amount                   8
    helm-ff-file-name-history-use-recentf t)

;;; commands
; C-c h m                                调出man页面
; C-c h /                                在当前目录搜索文件
; C-u C-c h /                            在指定目录搜索文件
; C-x C-f + C-c /                        搜索文件
; C-c h l/C-!                            硬盘全局搜索文件/暂停或继续搜索
; C-c h t                                调用linux top指令
;    C-c C-u                                 刷新
;    M-C                                     按照 Shell command 排序
;    M-P                                     按照 CPU 使用率排序
;    M-U                                     按照用户名称排序
;    M-M                                     按照内存占用排序

;;; 搜索minibuffer自动用当前选中项补全
; C-j


(provide 'init-helm)

;;; init-helm.el ends here
