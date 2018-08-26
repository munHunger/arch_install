(setq inhibit-startup-message t)
(global-linum-mode 1)
(load-theme 'wombat t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(ido-mode 1)

(load-file "~/.emacs.d/package.el")
(load-file "~/.emacs.d/yaml-mode.el")
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

(add-hook 'yaml-mode-hook
	  (lambda ()
            (define-key yaml-mode-map "\C-m" 'newline-and-indent)))
(require 'iso-transl)
