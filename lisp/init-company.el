;;; company
;(require-package 'company)
;(require 'company)

;(add-hook 'after-init-hook 'global-company-mode)
;(define-key company-mode-map (kbd "TAB") nil)
;(define-key company-mode-map (kbd "M-/") 'company-complete-common)

;;; company-helm
(require-package 'company)
(require-package 'helm-company)
(require 'company)
(require 'helm-company)

(add-hook 'after-init-hook 'global-company-mode)
(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "M-/") 'helm-company)
     (define-key company-active-map (kbd "M-/") 'helm-company)))

(provide 'init-company)
