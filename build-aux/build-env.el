;; Set up Emacs to build *.el files.

(setq load-prefer-newer t)

;; When we are inside "guix environment", autoload Emacs packages from
;; the environment profile.  This makes elisp dependencies be found
;; during compilation, so it is not necessary to specify
;; '--with-XXX-lispdir' options to "configure" script.
(when (and (getenv "GUIX_ENVIRONMENT")
           (fboundp 'guix-emacs-autoload-packages))
  (guix-emacs-autoload-packages))
