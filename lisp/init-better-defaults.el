
;; 去除错误提示音
(setq ring-bell-function 'ignore)

;; 重载有修改的文件
(global-auto-revert-mode t)

;; 显示行号
(global-linum-mode t)

;; 关闭自动保存
(setq auto-save-default nil)

;; 关闭自动备份
(setq make-backup-files nil)

;; 配置缩写补全
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("qr" "qiranlw")
					    ))

;; 配置历史记录
(recentf-mode t)
(setq recentf-max-menu-items 25)

;; 显示配对字符
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 选中后输入为替换
(delete-selection-mode t)

(provide 'init-better-defaults)
