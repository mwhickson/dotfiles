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

(defalias 'yes-or-no-p 'y-or-n-p)

(setq inhibit-splash-screen t)
(setq initial-scratch-message nil)

(setq ring-bell-function 'ignore)

