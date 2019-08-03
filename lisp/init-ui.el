
;; 关闭启动画面
(setq inhibit-splash-screen t)
;; 隐藏菜单栏
;; (menu-bar-mode 0)
;; 隐藏工具栏
(tool-bar-mode 0)
;; 隐藏滚动条
(scroll-bar-mode 0)
;; 修改光标样式
(setq-default cursor-type 'bar)
;; 光标所在行高亮显示
(global-hl-line-mode t)

;; 设置应用全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 设置英文字体
(set-face-attribute 'default nil :font "Monaco 16")
;; 设置中文字体
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
  charset (font-spec :family "思源黑体 Normal"
		     :size 20)))

(provide 'init-ui)

