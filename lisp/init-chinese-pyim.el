;;;; 参考网址
;;     http://tumashu.github.io/chinese-pyim/
;;;; 快捷键
;;     C-n/p    向上/下翻页
;;     C-f/b    选择下一个/上一个词
;;     C-c/g    取消输入/并保留已输入的中文
;;;; 全角半角标点切换
;;     pyim-toggle-full-width-punctuation    全局切换
;;     pyim-punctuation-translate-at-point   只切换光标处标点的样式
;;     pyim-translate-trigger-char           输入变量设定的字符会切换光标处标点的样式

(require-package 'chinese-pyim)
(require 'chinese-pyim)

;; 简单基本库
(require-package 'chinese-pyim-basedict)
(require 'chinese-pyim-basedict)
(chinese-pyim-basedict-enable)

;; 词法库
(require-package 'chinese-pyim-greatdict)
(require 'chinese-pyim-greatdict)
(chinese-pyim-greatdict-enable)

;; 激活词法库
(setq default-input-method "chinese-pyim")             ; 输入法
;(setq pyim-default-pinyin-scheme 'pyim-shuangpin)      ; 双拼
(setq pyim-use-tooltip 'popup)                         ; 选词框
;(setq pyim-use-tooltip 'pos-tip)
;(setq x-gtk-use-system-tooltips t)
;(setq pyim-enable-words-predict '(pinyin-shouzimu pinyin-znabc))  ; 开启词法联想
;(setq pyim-enable-words-predict nil)                              ; 关闭词法联想
(global-set-key (kbd "M-i") 'pyim-convert-pinyin-at-point)        ; 将光标处的拼音字符串转换为中文
(global-set-key (kbd "C-\\") 'toggle-input-method)     ; 激活快捷键

;; 中文补全
;(require-package 'chinese-pyim-company)
;(require 'chinese-pyim-company)
;(setq pyim-company-max-length 6)
;(setq pyim-company-complete-chinese-enable nil)       ; 禁用中文补全

(provide 'init-chinese-pyim)
