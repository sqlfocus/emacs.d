;; -*- coding: utf-8 -*-
;;
;;;; 预安装的插件存放地         
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;;; 添加自定义风格
; 添加包管理源
(require 'init-package)

; 命令行联想功能
(require 'init-ido)
(require 'init-smex)

; undo撤销操作以树的方式呈现，更直观
(require 'init-undo-tree)

; 激活ibuffer，更灵活的缓存操作
(require 'init-ibuffer)


;;;; 加载自定义全局变量
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;;;; THE END
(provide 'init)




