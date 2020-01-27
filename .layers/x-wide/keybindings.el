;; create shortcut for spawning a bash shell
(spacemacs/set-leader-keys "at" '(lambda ()  (interactive) (ansi-term "/bin/bash")))

;; dumb-jump key bindings
(spacemacs/set-leader-keys "jd" 'dumb-jump-go)
