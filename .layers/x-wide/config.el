;; enable cua and transient mark modes globally by default
(cua-mode t)
(transient-mark-mode 1)
(setq cua-auto-tabify-rectangles nil)
(setq cua-keep-region-after-copy t)

;; use the clipboard for cut and paste
(setq select-enable-clipboard t)

;; enable centered point globally
(add-hook 'after-init-hook 'spacemacs/toggle-centered-point-globally-on)
