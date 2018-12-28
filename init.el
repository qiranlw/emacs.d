
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
