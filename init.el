;; -*- coding: utf-8 -*-
(setq emacs-load-start-time (current-time))
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

;;----------------------------------------------------------------------------
;; Which functionality to enable (use t or nil for true and false)
;;----------------------------------------------------------------------------
(setq *spell-check-support-enabled* t)
(setq *macbook-pro-support-enabled* t)
(setq *is-a-mac* (eq system-type 'darwin))
(setq *is-carbon-emacs* (and *is-a-mac* (eq window-system 'mac)))
(setq *is-cocoa-emacs* (and *is-a-mac* (eq window-system 'ns)))
(setq *win32* (eq system-type 'windows-nt) )
(setq *cygwin* (eq system-type 'cygwin) )
(setq *linux* (or (eq system-type 'gnu/linux) (eq system-type 'linux)) )
(setq *unix* (or *linux* (eq system-type 'usg-unix-v) (eq system-type 'berkeley-unix)) )
(setq *linux-x* (and window-system *linux*) )
(setq *xemacs* (featurep 'xemacs) )
(setq *emacs23* (and (not *xemacs*) (or (>= emacs-major-version 23))) )

;----------------------------------------------------------------------------
; Load configs for specific features and modes
;----------------------------------------------------------------------------
;;;;(require 'init-modeline)

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el
(require 'init-elpa)
(require 'init-exec-path) ;; Set up $PATH
(require 'init-frame-hooks)
(require 'init-xterm)
(require 'init-osx-keys)
;;;;(require 'init-gui-frames)
;;;;(require 'init-maxframe)
(require 'init-proxies)
(require 'init-dired)
(require 'init-isearch)
(require 'init-uniquify)
(require 'init-ibuffer)
(require 'init-flymake)
(require 'init-artbollocks-mode)
(require 'init-recentf)
(require 'init-ido)
(require 'init-hippie-expand)
(require 'init-auto-complete)
;;;;(require 'init-windows)
(require 'init-sessions)
;;;;(require 'init-fonts)
(require 'init-mmm)
;(require 'init-growl)

(require 'init-editing-utils)

(require 'init-darcs)
(require 'init-git)

(require 'init-crontab)
(require 'init-textile)
(require 'init-markdown)
(require 'init-csv)
;;;;(require 'init-erlang)
(require 'init-javascript)
(require 'init-sh)
(require 'init-php)
;;;;(require 'init-org)
(require 'init-nxml)
(require 'init-css)
(require 'init-haml)
(require 'init-python-mode)
;;;;(require 'init-haskell)
(require 'init-ruby-mode)
;;;;(require 'init-rails)
;;;;(require 'init-rcirc)

(require 'init-lisp)
(require 'init-slime)
;;;;(require 'init-clojure)
(require 'init-common-lisp)

;;;;(when *spell-check-support-enabled*
;;;;  (require 'init-spelling))

(require 'init-marmalade)

;; Finally set up themes, after most possibly-customised faces have been defined
;;;;(require 'init-themes) ; color-themes 6.6.1 has some problem
;; Chinese inut method
(require 'init-org2blog)
(require 'init-fill-column-indicator)
(require 'init-yasnippet)
(require 'init-better-registers) ; C-x j - jump to register
(require 'init-zencoding-mode) ;behind init-better-register to override C-j
(require 'init-yari)
;(require 'init-etags-select)
(require 'init-cc-mode)
;(require 'init-auto-complete-clang)
(require 'init-semantic)
(require 'init-cmake-mode)
(require 'init-csharp-mode)
(require 'init-linum-mode)
(require 'init-delicious)
(require 'init-emacs-w3m)
;;;;(require 'init-eim)
(require 'init-thing-edit)
(require 'init-which-func)
(require 'init-keyfreq)
;;;;(require 'init-gist)
;;;;(require 'init-emacspeak)
(require 'init-pomodoro)
(require 'init-undo-tree)
(require 'init-moz)
;;;;(require 'init-evil) ; use evil mode (vi key binding)

(require 'init-misc)
;;----------------------------------------------------------------------------
;; Allow access from emacsclient
;;----------------------------------------------------------------------------
;(require 'server)
;(unless (server-running-p)
  ;(server-start))

;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
(if (file-readable-p (expand-file-name "~/.emacs.d/custom.el"))
     (load-file (expand-file-name "~/.emacs.d/custom.el"))
       nil)

;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-local" containing personal settings
;;----------------------------------------------------------------------------
(require 'init-local nil t)


;;----------------------------------------------------------------------------
;; Locales (setting them earlier in this file doesn't work in X)
;;----------------------------------------------------------------------------
;(require 'init-locales) ;does not work in cygwin


(when (require 'time-date nil t)
   (message "Emacs startup time: %d seconds."
    (time-to-seconds (time-since emacs-load-start-time)))
   )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(virtualenv-root "e:/soft/editor/emacs-24.0.93/config/.vtenvs/"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;; Local Variables:
;;; no-byte-compile: t
;;; End:
