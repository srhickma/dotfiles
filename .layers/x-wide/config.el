;; enable cua and transient mark modes globally by default
(cua-mode t)
(transient-mark-mode 1)
(setq cua-auto-tabify-rectangles nil
      cua-keep-region-after-copy t)

;; use the clipboard for cut and paste
(setq select-enable-clipboard t)

;; keep cursor centered in modes other than info, term, shell, ...
(require 'centered-cursor-mode)
(define-global-minor-mode filter-global-centered-cursor-mode centered-cursor-mode
  (lambda ()
    (when (not (memq major-mode
                     (list 'Info-mode 'term-mode 'eshell-mode 'shell-mode 'erc-mode)))
      (centered-cursor-mode))))
(filter-global-centered-cursor-mode 1)

;; auto-complete overrides to combat spacemacs initialization.
(use-package auto-complete
  :config
  (setq ac-auto-start 2
        ac-delay 0.2
        tab-always-indent t))
