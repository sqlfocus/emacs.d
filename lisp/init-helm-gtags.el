;;; dependency
; sudo apt-get install global
; cd dir-of-source
; gtags                           ; add files {GPATH/GRTAGS/GSYMS/GTAGS}

;;; require
(require-package 'helm-gtags)
  
;; Enable helm-gtags-mode in Dired so you can jump to any tag
;; when navigate project tree with Dired
(add-hook 'dired-mode-hook 'helm-gtags-mode)

;; Enable helm-gtags-mode in Eshell for the same reason as above
(add-hook 'eshell-mode-hook 'helm-gtags-mode)

;; Enable helm-gtags-mode in languages that GNU Global supports
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'java-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)

;; customize
(setq
    helm-gtags-path-style 'relative
    helm-gtags-use-input-at-cursor   t
    helm-gtags-pulse-at-cursor       t
    helm-gtags-suggested-key-mapping t
    helm-gtags-ignore-case t
    helm-gtags-auto-update t)


;;;; Key          Command
;;(setq helm-gtags-prefix-key "\C-c")
;; Prefix C-]   helm-gtags-find-tag-from-here
;; C-x 4 .      helm-gtags-find-tag-other-window
;
;; Prefix t     helm-gtags-find-tag
;; Prefix d     helm-gtags-find-tag
;; M-.          helm-gtags-find-tag
;
;; Prefix r     helm-gtags-find-rtag
;; Prefix g     helm-gtags-find-pattern
;
;; Prefix s     helm-gtags-find-symbol
;
;; Prefix C-t   helm-gtags-pop-stack
;; M-,          helm-gtags-pop-stack
;
;; Prefix P     helm-gtags-find-files
;; Prefix f     helm-gtags-parse-file
;
;; Prefix h     helm-gtags-display-browser

(defun set-helm-gtags-keybindings ()
   (define-key helm-gtags-mode-map (kbd "M-." ) 'helm-gtags-dwim)
   (define-key helm-gtags-mode-map (kbd "M-," ) 'helm-gtags-pop-stack))
(add-hook 'helm-gtags-mode-hook 'set-helm-gtags-keybindings)


(provide 'init-helm-gtags)
