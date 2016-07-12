;; 用ibuffer代替默认的buffer switch
;; 参考 http://www.emacswiki.org/emacs/IbufferMode
;;
;; ibuffer是emacs自带的，可用 M-x ibuffer 调出来
;;
;; 下面只是将快捷键 C-x C-b 映射为调出ibuffer的命令
;;
;; 在ibuffer中的操作方式和dired mode一样
;;      n/p         上/下移动
;;      m           选中该文件，可选多个
;;      D           kill buffer
;;      回车/e      编辑文件
;;      /关键字     缩小显示文件范围
;;      =           未保存文件和上一个保存版本做diff
;;      g           刷新目录

(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

(provide 'init-ibuffer)

