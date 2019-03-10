(require 'package)

(setq package-enable-at-startup nil)

(add-to-list 'package-archives
             '("melpa" . "https://stable.melpa.org/packages/") t)

(package-initialize)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(use-package use-package-ensure
  :config
  (setq use-package-always-ensure t))

(use-package auto-package-update
  :config
  (auto-package-update-maybe)
  (setq auto-package-update-prompt-before-update t)
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
