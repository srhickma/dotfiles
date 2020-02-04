;; enable continuous scroll in doc view
(setq doc-view-continuous t)

;; disable linum-mode in pdf-view-mode
(add-hook 'pdf-view-mode-hook (lambda() (linum-mode -1)))
