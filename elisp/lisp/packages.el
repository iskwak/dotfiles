(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(setq my-packages
      '(
	docker-tramp
	seoul256-theme
	clang-format
	))

;; refresh package list if it is not already available
;;(when (not package-archive-contents) (package-refresh-contents))

;; install packages from the list that are not yet installed
(dolist (pkg my-packages)
    (when (and (not (package-installed-p pkg)) (assoc pkg package-archive-contents))
        (package-install pkg)))


(require 'clang-format)


