
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭滚动条
(scroll-bar-mode -1)

;; 关闭启动画面
(setq inhibit-splash-screen t)

;; 显示行号
(global-linum-mode 1)

;; 定义打开配置文件方法
(defun open-my-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 设置快捷键F2打开配置文件
(global-set-key (kbd "<f2>") 'open-my-init-file)

;; 启动自动补全功能
(global-company-mode t)

;; 修改光标样式
(setq-default cursor-type 'bar)

;; 关闭备份文件
(setq make-backup-files nil)

;; 加载 org 模式，支持代码块语法高亮
(require 'org)
(setq org-src-fontify-natively t)

;; 加载 recentf 模块，可以缓存打开过的文件，可以通过快捷键快速切换到文件
(require 'recentf)
;; 启动 recentf 模块
(recentf-mode 1)
(setq recentf-max-menu-items 25)
;; 设置快捷键
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; 设置选中文件后输入为替换输入内容
(delete-selection-mode t)

;; 设置程序全屏显示
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 显示配对字符
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 光标所在行高亮显示
(global-hl-line-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
