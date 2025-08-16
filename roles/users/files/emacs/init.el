(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(setq-default
 indent-tabs-mode t
 tab-width 4
 split-width-threshold 0
 column-number-mode t
 make-backup-files nil
 show-trailing-whitespace t
 require-final-newline t
 next-line-add-newlines nil)

(global-set-key (kbd "TAB") 'self-insert-command)

(define-key global-map (kbd "RET") 'newline-and-indent)

(show-paren-mode)

(global-display-line-numbers-mode 1)
(global-visual-line-mode 1)

(defun toggle-line-numbers ()
  (interactive)
  (display-line-numbers-mode (if display-line-numbers-mode -1 1)))

(global-set-key (kbd "C-c l") 'toggle-line-numbers)

(use-package firecode-theme
  :config
  (load-theme 'firecode t))

(use-package lua-mode)
(use-package markdown-mode)
(use-package powershell)
(use-package puppet-mode)
(use-package rust-mode)
(use-package s)
(use-package web-mode)
(use-package yaml-mode)

(use-package asm-mode
  :hook (asm-mode-hook . (lambda () (electric-indent-mode -1))))

(use-package sql
  :config
  (sql-set-product 'postgres))
