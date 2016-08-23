;;; emacs的帮助命令
;   M-x info/C-h i            打开emacs的info
;         [ and ]                 previous/next node
;         l and r                 go back/forward in history
;         n and p                 previous/next sibling node
;         u                       goes up one level to a parent node
;         SPC                     scroll one screen at a time
;         TAB                     cycles through cross-reference and links
;         RET                     opens the active link
;         m                       prompts for a menu item name and open it
;         q                       close the info browser
;   M-x apropos               打开emacs的模糊查找功能
;   M-x apropos-command/C-h a     show all commands match a pattern
;   M-x apropos-documentation/c-h d    just search document
;   M-x apropos-library           list all funcs and variables defined in a library
;   M-x apropos-user-option       show user options available through the customize interface
;   M-x apropos-value             search all symbols
;
;   M-x describe-mode/c-h m   显示major模式描述说明
;   M-x describe-function/c-h f   显示函数说明
;   M-x describe-variable/c-h v   显示变量说明
;   M-x describe-key/c-h k        显示键绑定说明

;;; 常用指令
;   F10                       激活Menu bar
;   C-x C-w                   保存buffer到另一个文件，另存为
;   C-x k                     关闭某个buffer
;   C-x d/C-d                 list/find the directory
;   C-x C-u/C-l               激活区域全大写/小写
;   M-x customize-themes      定制颜色方案
;   M-x eval-buffer           执行当前buffer
;   M-c/u/l                   下个单词首字母大写/全大写/全小写
;   C-h m                     当前可执行的指令或快捷键，一般用在查找结果的buffer上，以寻求更多的操作

;;; 删除指令
;   C-M-k                     kill s-expression
;   C-M-w                     append kill，如果下一个指令为kill，则被kill的部分后挂到上一次kill的结果上，
					;                                 这样，多次kill的结果可以当作一个整体使用???
;   C-t                       交换光标所在的字符和前一个字符
;   C-w                       剪切选中区域
;   M-k                       kill sentence
;   M-t                       交换光标所在两端的单词
;   M-w                       拷贝选中区域到kill ring
;   M-y                       在当前插入点循环替换为kill ring


;;; 快速移动
;   M-g M-g                   go to line
;   M-m                       移动到当前行第一个非空白字符
;   C-M-a/e                   move to begin/end of defun
;   C-M-f/b                   move forward/backward by s-expressions(include string or brackets)
;   C-M-v                     scroll down other window
;   C-M-S-v                   scroll up other window
;   C-x </>                   scroll left/right
;   C-x ]/[                   move forward/backward one page
;   M-}/{                     move forward/backward to end/start of paragraph
;   M-</>                     move to begin/end of buffer

;;; 窗口指令
;   C-x 0                     删除当前活动窗口
;   C-x 1                     删除其他窗口
;   C-x 2                     切分窗口，上下
;   C-x 3                     切分窗口，左右
;   C-x o                     切换到其他窗口
;   C-x 4 C-f                 在其他窗口打开文件
;   C-x 4 b                   在其他窗口打开buffer
;   C-x 4 C-o                 在其他窗口打开buffer，但custor仍在当前窗口

;;; bookmark and register
;   C-x r m/l/b               set/list/jump-to bookmark
;   C-x r s/i                 store region in register/insert content of register
;   C-x r SPC/j               store point in register/jump to register
;
;   C-SPC/C-g                 set mark/cancel mark
;   C-u C-SPC                 jump to last mark
;   C-x C-x                   exchange point and mark, reactive last region
;   C-M-h/SPC|@               mark the next fun/s-expression(string or brackets)
   
;;; search
;   C-s/r                     search forward/backward
;   C-M-s/r                   search forward/backward by regexp
;   M-%                       search and replace
;   C-M-%                     regexp search and replace
;   C-s C-s/C-r C-r           begin last search string
;;   以下明令用于改变 搜索内容
;   M-n/p                     move to next/previous item in search history
;   C-w                       add word at point to search string
;   C-M-y                     add character at point to search string
;   C-y                       yank from clipbord to search string
;    以下命令开启occur搜索模式，即搜索结果存放在单独的buffer中
;   M-x occur/M-s o           open the occur mode(give search res in another buffer)
;   M-n/p                     goto next/previous occurrence
;   g                         revert buffer, refresh search result
;   q                         quit occur mode
;   e                         switch to occur edit mode
;   C-c C-c                   exit occur edit mode and apply changes
;   M-g M-n/M-g M-p           jump to next/previous "match"

;;;; delete useless buffer/bar
(tool-bar-mode -1)                             ; No toolbar
(menu-bar-mode -1)                             ; No menubar
(setq inhibit-startup-message t)               ; No message at startup

;;;; display line num
(column-number-mode t)                         ; Show column number in mode-line
(global-linum-mode 1)                          ; Show line numbers on buffers

;;;; move between window faster
(windmove-default-keybindings)                 ; switch windows with shift key, by S-<left>/<right>/<up>/<down>
(setq global-visual-line-mode t)               ; 激活visual line操作

;;;; Other
(setq Make-backup-files nil)                   ; No backup files ~
(show-paren-mode 1)                            ; Highlight parenthesis pairs
(setq pop-up-frame t)                          ; Buffers in separate frames
(icomplete-mode t)                             ; Completion in mini-buffer
(setq undo-limit 100000)                       ; Increase number of undo
;(desktop-save-mode nil)                        ; Save session before quitting, 保留上次打开的buffer
(setq confirm-kill-emacs 'yes-or-no-p)         ; Confirm quit
(setq read-file-name-completion-ignore-case 't); Ignore case when completing file names
(setq apropos-sort-by-scores t)                ; Apropos can sort results by relevancy
;(setq-default indent-tabs-mode nil)           ; Use spaces instead of tabs
;(setq tab-width 4)                            ; Length of tab is 4 SPC
(if (version< emacs-version "24.4")            ; 换行自动缩进
    (global-set-key (kbd "<RET>") 'newline-and-indent))

;;;; Emacs一键格式化
;;    C-x-h                         选定整个文件
;;    C-M-\  <==> indent-region     格式化选定的代码
(defun indent-buffer ()
  "Indent the whole buffer."
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))
;;绑定到F7键
(global-set-key [f7] 'indent-buffer)

;;;; 把x的剪切板和emacs联系起来(linux需要安装xsel, sudo apt-get install xsel)
;; http://hugoheden.wordpress.com/2009/03/08/copypaste-with-emacs-in-terminal/
;; I prefer using the "clipboard" selection (the one the
;; typically is used by c-c/c-v) before the primary selection
;; (that uses mouse-select/middle-button-click)
(setq x-select-enable-clipboard t)

;; If emacs is run in a terminal, the clipboard- functions have no
;; effect. Instead, we use of xsel, see
;; http://www.vergenet.net/~conrad/software/xsel/ -- "a command-line
;; program for getting and setting the contents of the X selection"
(unless window-system
 (when (getenv "DISPLAY")
  ;; Callback for when user cuts
  (defun xsel-cut-function (text &optional push)
    ;; Insert text to temp-buffer, and "send" content to xsel stdin
    (with-temp-buffer
      (insert text)
      ;; I prefer using the "clipboard" selection (the one the
      ;; typically is used by c-c/c-v) before the primary selection
      ;; (that uses mouse-select/middle-button-click)
      (call-process-region (point-min) (point-max) "xsel" nil 0 nil "--clipboard" "--input")))
  ;; Call back for when user pastes
  (defun xsel-paste-function()
    ;; Find out what is current selection by xsel. If it is different
    ;; from the top of the kill-ring (car kill-ring), then return
    ;; it. Else, nil is returned, so whatever is in the top of the
    ;; kill-ring will be used.
    (let ((xsel-output (shell-command-to-string "xsel --clipboard --output")))
      (unless (string= (car kill-ring) xsel-output)
	xsel-output )))
  ;; Attach callbacks to hooks
  (setq interprogram-cut-function 'xsel-cut-function)
  (setq interprogram-paste-function 'xsel-paste-function)
  ;; Idea from
  ;; http://shreevatsa.wordpress.com/2006/10/22/emacs-copypaste-and-x/
  ;; http://www.mail-archive.com/help-gnu-emacs@gnu.org/msg03577.html
 ))

(provide 'custom)




