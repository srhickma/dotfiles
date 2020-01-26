;; alias fix for which-key--update in emacs 26
(defalias 'display-buffer-in-major-side-window 'window--make-major-side-window)

;; disable cua and transient mark modes in term-char-mode
(defadvice term-char-mode (after term-char-mode-fixes ())
  (setq-local cua-mode nil)
  (setq-local transient-mark-mode nil))
(ad-activate 'term-char-mode)
