(require-package 'company)
(require 'company)

(add-hook 'after-init-hook 'global-company-mode)
(global-set-key "\t" 'company-complete-common)

(provide 'init-company)
