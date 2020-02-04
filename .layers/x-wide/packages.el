(defconst x-wide-packages
  '(
    doom-themes
    centered-cursor-mode
    auto-complete
    avy
    )
  )

(defun x-wide/init-doom-themes ()
  (use-package doom-themes
    :config
    (setq doom-themes-enable-bold t
          doom-themes-enable-italic t)
    (load-theme 'doom-one t))
  )

(defun x-wide/init-centered-cursor-mode ()
  (use-package centered-cursor-mode
    :config
    (define-global-minor-mode filter-global-centered-cursor-mode centered-cursor-mode
      (lambda ()
        (when (not (memq major-mode
                         (list 'Info-mode 'term-mode 'eshell-mode 'shell-mode 'erc-mode 'pdf-view-mode)))
          (centered-cursor-mode))))
    (filter-global-centered-cursor-mode 1))
  )

(defun x-wide/init-auto-complete ()
  (use-package auto-complete
    :config
    (setq ac-auto-start 2
          ac-delay 0.2
          tab-always-indent t))
  )

(defun x-wide/init-avy ()
  (use-package avy
    :bind ("C-:" . avy-goto-char)
    :config (setq avy-all-windows nil))
  )
