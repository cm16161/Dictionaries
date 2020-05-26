    (when (>= emacs-major-version 24)
      (require 'package)
      (setq package-enable-at-startup nil)
      (setq package-archives '())
      (package-initialize)
      (add-to-list 'package-archives
                   '("melpa" . "http://melpa.milkbox.net/packages/") t)
      (add-to-list 'package-archives
                   '("gnu" . "http://elpa.gnu.org/packages/"))  
      (add-to-list 'package-archives
                   '("marmalade" . "https://marmalade-repo.org/packages/"))
      (add-to-list 'package-archives
                   '("org" . "http://orgmode.org/elpa/") t)
      (add-to-list 'package-archives
                   '("tromey" . "http://tromey.com/elpa/") t)
      )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("76c5b2592c62f6b48923c00f97f74bcb7ddb741618283bdb2be35f3c0e1030e3" default)))
 '(delete-selection-mode t)
 '(electric-pair-mode t)
 '(enable-recursive-minibuffers t)
 '(global-linum-mode t)
 '(package-selected-packages
   (quote
    (xml-format tuareg swiper markdown-mode zenburn zenburn-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-delimiter-face ((t (:foreground "firebrick2"))))
 '(font-lock-comment-face ((t (:foreground "#00BBFF")))))

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-x C-b") 'buffer-menu)
(global-set-key (kbd "M-p") (kbd "C-u 1 M-v"))
(global-set-key (kbd "M-n") (kbd "C-u 1 C-v"))
