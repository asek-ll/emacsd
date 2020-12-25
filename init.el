(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;(package-initialize)

(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode))

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)
(add-to-list 'default-frame-alist '(font . "JetBrains\ Mono-16" ))
(set-face-attribute 'default t :font "JetBrains\ Mono-16" )
(setq inhibit-startup-screen t)

(load "~/.emacs.d/rp.el")

(rp 'evil)
(evil-mode 1)

(rp 'zenburn-theme)
(load-theme 'zenburn t)

(rp 'magit)

(rp 'yasnippet)
(yas-global-mode 1)
(rp 'yasnippet-snippets)




(load "~/.emacs.d/ligatures.el")

(global-set-key (kbd "C-k") 'comment-line)

;(custom-set-variables
 ;'(package-selected-packages '(use-package)))
;(custom-set-faces
 ;)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit zenburn-theme evil use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
