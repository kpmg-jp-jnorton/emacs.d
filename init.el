;;; package --- Alain M. Lafon <alain@200ok.ch> Emacs config
;;; Commentary:
;;   - All of the configuration is within `configuration.org`
;;; Code:

(require 'gnutls)
(add-to-list 'gnutls-trustfiles
             "/usr/local/etc/openssl/cert.pem")

(add-to-list 'load-path
             "/usr/local/share/emacs/site-lisp/mu/mu4e")

(package-initialize)

;; This loads the actual configuration in literate org-mode elisp
(defun load-config()
  (interactive)
  (org-babel-load-file "~/.emacs.d/configuration.org"))

(load-config)

;;; init.el ends here
