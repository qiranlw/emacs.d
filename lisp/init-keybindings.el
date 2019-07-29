
;; 打开配置文件
(global-set-key (kbd "<f2>") 'open-my-init-file)
;; 切换 Buffer
(global-set-key "\M-p" 'bs-cycle-previous)
(global-set-key "\M-n" 'bs-cycle-next)
;; 打开文件历史记录
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
;; swiper 快捷键
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

(global-set-key (kbd "C-c p f") 'counsel-git)

(provide 'init-keybindings)
