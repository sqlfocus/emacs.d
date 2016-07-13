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
;   M-x customize-themes      定制颜色方案
;   M-x eval-buffer           执行当前buffer

;;; 快速移动
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

;;;; delete useless buffer/bar
(tool-bar-mode -1)                             ; No toolbar
(menu-bar-mode -1)                             ; No menubar
(setq inhibit-startup-message t)               ; No message at startup

;;;; display line num
(column-number-mode t)                         ; Show column number in mode-line
(global-linum-mode 1)                          ; Show line numbers on buffers

;;;; move between window faster
(windmove-default-keybindings)                 ; switch windows with shift key, by S-<left>/<right>/<up>/<down>
(global-set-key (kbd "M-o") 'other-window)
(setq global-visual-line-mode t)               ; 激活visual line操作

;;;; Other
(Setq Make-backup-files nil)                   ; No backup files ~
(show-paren-mode 1)                            ; Highlight parenthesis pairs
(setq pop-up-frame t)                          ; Buffers in separate frames
(icomplete-mode t)                             ; Completion in mini-buffer
(setq undo-limit 100000)                       ; Increase number of undo
(desktop-save-mode nil)                        ; Save session before quitting, 保留上次打开的buffer
(setq confirm-kill-emacs 'yes-or-no-p)         ; Confirm quit
(setq read-file-name-completion-ignore-case 't); Ignore case when completing file names
(setq apropos-sort-by-scores t)                ; Apropos can sort results by relevancy
;(setq-default indent-tabs-mode nil)           ; Use spaces instead of tabs
;(setq tab-width 4)                            ; Length of tab is 4 SPC


(provide 'custom)





