;; -*- coding: utf-8 -*-
;;
;;;; 预安装的插件存放地         
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;;; 添加自定义风格
; 添加包管理源
(require 'init-package)

; 命令行联想功能
;(require 'init-ido)
;(require 'init-smex)
(require 'init-helm)

; undo撤销操作以树的方式呈现，更直观
(require 'init-undo-tree)

; 激活ibuffer，更灵活的缓存操作
(require 'init-ibuffer)

; 窗口之间跳转
(require 'init-window-number)

; 配色方案
(require 'init-color-theme)

; 定制c/c++/java代码阅读器
(require 'init-helm-gtags)
(require 'init-company)

; 定制c mode
(require 'init-c-mode)

; 定制拼音输入法
(require 'init-chinese-pyim)

; 以语法单位伸缩选择区域
(require 'init-expand-region)

; 添加笔记插件org
(require 'init-org)

;;;; 加载自定义全局变量
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;;;; THE END
(provide 'init)




