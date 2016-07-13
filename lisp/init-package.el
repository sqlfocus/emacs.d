;  M-x list-packages            列举源码包
;  M-x package-install 包名     安装特定源码包
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

; 利用package.el安装的包必须在此文件结束后才能激活；下面的语句
; 使得包可以在此文件结束前被激活
(setq package-enable-at-startup nil)
(package-initialize)

; 添加自动安装包所需函数
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
  If NO-REFRESH is non-nil, the available package lists will not be
  re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
    t
    (if (or (assoc package package-archive-contents) no-refresh)
      (if (boundp 'package-selected-packages)
        ;; Record this as a package the user installed explicitly
        (package-install package nil)
        (package-install package))
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

(provide 'init-package)

