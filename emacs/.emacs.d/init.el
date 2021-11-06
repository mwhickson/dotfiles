(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8-unix)

(setq make-backup-files nil)
(setq create-lockfiles nil)
(setq auto-save-default nil)

(delete-selection-mode 1)

(electric-indent-mode 0)
(set-default 'tab-always-indent 'complete)
(setq indent-tabs-mode t)
(setq tab-width 4)
(setq sentence-end-double-space nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq inhibit-splash-screen t)
(setq initial-scratch-message nil)

(setq ring-bell-function 'ignore)

