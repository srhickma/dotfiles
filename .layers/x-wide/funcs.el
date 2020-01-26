;; alias fix for which-key--update in emacs 26
(defalias 'display-buffer-in-major-side-window 'window--make-major-side-window)

;; disable cua and transient mark modes in term-char-mode
(defadvice term-char-mode (after term-char-mode-fixes ())
  (set (make-local-variable 'cua-mode) nil)
  (set (make-local-variable 'transient-mark-mode) nil))
(ad-activate 'term-char-mode)

;; disable centered point in term mode
(add-hook 'term-mode-hook 'term-mode-hook-disable-cp)
(defun term-mode-hook-disable-cp ()
  (spacemacs/toggle-centered-point-off))
