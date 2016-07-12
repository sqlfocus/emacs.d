;; -*- coding: utf-8 -*-
;;
;;;; 预安装的插件存放地         
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;;; 添加包管理源
;  M-x list-packages            列举源码包
;  M-x package-install 包名     安装特定源码包
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;;;; 利用package.el安装的包必须在此文件结束后才能激活；下面的语句
;;;; 使得包可以在此文件结束前被激活
(setq package-enable-at-startup nil)
(package-initialize)


;;;; 添加自定义风格

;  命令行联想功能
(require 'init-ido)
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;  undo撤销操作以树的方式呈现，更直观
(require 'undo-tree)
(global-undo-tree-mode)
(setq ;undo-tree-visualizer-diff t
      undo-tree-visualizer-timestamps t
      undo-tree-auto-save-history t)

;  激活ibuffer，更灵活的缓存操作
(require 'init-ibuffer)

;  激活visual line操作
(setq global-visual-line-mode t)

;;;; 加载自定义全局变量
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;;;; THE END
(provide 'init)




