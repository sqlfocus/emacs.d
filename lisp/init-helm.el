;;; Require
(require-package 'helm)

(require 'helm)
(require 'helm-config)

;;; 使能helm模式
(helm-mode 1)
(helm-autoresize-mode 1)

;;; 绑定的prefix key
;(global-set-key (kbd "C-x c") 'helm-command-prefix)    ; default key bind
;(global-set-key (kbd "C-c h") 'helm-command-prefix)    ; maybe used by myself

;;; 添加绑定
(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-M-x-fuzzy-match t)

(global-set-key (kbd "M-y") 'helm-show-kill-ring)

(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
    helm-recentf-fuzzy-match    t)

(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-s") 'helm-occur)

;;; 默认设置
(setq helm-split-window-in-side-p        t
    helm-move-to-line-cycle-in-source    t
    helm-ff-search-library-in-sexp       t
    helm-locate-fuzzy-match              t   ; helm-locate
    helm-apropos-fuzzy-match             t
    helm-scroll-amount                   8
    helm-ff-file-name-history-use-recentf t)

;;; 其他有用函数
; helm-find                              在当前目录查找文件///prefix-key /
;    C-c /                                   当前目录下模糊匹配
; helm-locate                            在/根目录查找文件///prefix l
; helm-apropos                           类似于M-x apropos，只不过所有的函数、命令等放到了一起
; helm-man-woman                         调出man页面///prefix m
; helm-top                               类似于linux的top指令
;    C-c C-u                                 刷新
;    M-C                                     按照 Shell command 排序
;    M-P                                     按照 CPU 使用率排序
;    M-U                                     按照用户名称排序
;    M-M                                     按照内存占用排序

;;; 搜索minibuffer自动用当前选中项补全
; C-j


(provide 'init-helm)

;;; init-helm.el ends here
