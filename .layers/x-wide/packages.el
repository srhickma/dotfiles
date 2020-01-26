(defconst x-wide-packages
  '(doom-themes))

(defun x-wide/init-doom-themes ()
  (use-package doom-themes
    :config
    (setq doom-themes-enable-bold t
          doom-themes-enable-italic t)
    (load-theme 'doom-one t))
  )
