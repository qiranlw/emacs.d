
;; 配置插件库
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  )

(require 'cl)

(defvar qiranlw/packages '(
			   company
			   hungry-delete
			   swiper
			   counsel
			   smartparens
			   popwin
			   ) "Default packages")

(setq package-selected-packages qiranlw/packages)

(defun qiranlw/packages-installed-p ()
  (loop for pkg in qiranlw/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (qiranlw/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg qiranlw/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; 启动自动补全功能
(global-company-mode t)
;; (setq company-idle-delay 0.2)
;; (setq company-minimum-prefix-length 2)

;; 配置 hungry-delete，这样按删除键会删除多余的空白内容
(global-hungry-delete-mode t)

;; config for swiper 替代 C-s 查找
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;; config for smartparens 成对字符自动补全
(smartparens-global-mode t)

;; config for popwin 弹出新窗口时光标自动切换到新窗口，可以通过 q 或 C-g 退出
(require 'popwin)
(popwin-mode t)

(provide 'init-packages)
