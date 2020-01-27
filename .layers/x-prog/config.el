;; enable auto-complete in rust mode by default
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

;; format rust files on save
(setq rust-format-on-save t)

;; format go files on save
(add-hook 'before-save-hook 'gofmt-before-save)
