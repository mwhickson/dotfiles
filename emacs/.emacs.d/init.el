;;
;; System Crafters based init.el
;; (make sure to install counsel)
;;

(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)

;;(setq visible-bell t)
(setq ring-bell-function 'ignore)

(set-face-attribute 'default nil :font "Cascadia Mono" :height 140)

(load-theme 'jetbrains-darcula t)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(defalias 'yes-or-no-p 'y-or-n-p)

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8-unix)

(setq make-backup-files nil)
(setq create-lockfiles nil)
(setq auto-save-default nil)

(delete-selection-mode 1)

(setq custom-tab-width 4)

(defun disable-tabs () (setq indent-tabs-mode nil))
(defun enable-tabs ()
    (local-set-key (kbd "TAB") 'tab-to-tab-stop)
	(setq indent-tabs-mode t)
	(setq tab-width custom-tab-width))

(add-hook 'prog-mode-hook 'enable-tabs)
(add-hook 'lisp-mode-hook 'disable-tabs)
(add-hook 'emacs-lisp-mode-hook 'disable-tabs)

;;(setq-default electric-indent-inhibit t)
(electric-indent-mode -1)
(add-hook 'after-change-major-mode-hook (lambda() (electric-indent-mode -1)))

(setq backward-delete-char-untabify-method 'hungry)

(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'jetbrains-darcula-theme)

(require 'use-package)
(setq use-package-always-ensure t)

(require 'counsel)

(use-package ivy)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("5185a285365a768a30ac274bdbc4437e7fd2fbe3107a1b0f2b60e900181905e0" "78e6be576f4a526d212d5f9a8798e5706990216e9be10174e3f3b015b8662e27" default))
 '(package-selected-packages
   '(jetbrains-darcula-theme monokai-theme use-package doom-modeline counsel)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
