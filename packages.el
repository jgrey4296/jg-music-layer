;; sclang packages.el
;; loads second

(defconst jg-music-layer-packages
  '(
    (sclang :location local)
    (tidal :location local)
    (chuck-mode :location local)
    (jg-music-layer-minor-mode :location local)
    )
  )

(defun jg-music-layer/init-jg-music-layer-minor-mode ()
  (use-package jg-music-layer-minor-mode
    :commands (jg-music-layer-minor-mode jg-music-layer-on global-jg-music-layer-mode)
    :config
    (message "Configuring Jg-Music-Layer Minor")
    (spacemacs/set-leader-keys-for-minor-mode 'jg-music-layer-minor-mode
      ". h" 'jg-music-layer-minor/hush
      ". e" 'jg-music-layer-minor/jg-music-layer-eval-selection
      ". r" 'jg-music-layer-minor/sclang-restart
      ". R" 'jg-music-layer-minor/sclang-recompile
      ". w" 'jg-music-layer/setup-windows
      )
    (add-hook 'jg-music-layer-minor-mode-hook 'jg-music-layer/setup-minor-mode-keys)
    )
  )

(defun jg-music-layer/init-sclang()
  (use-package sclang
    :commands (sclang-mode )
    :config
    (evil-define-key nil sclang-mode-map
      (kbd "C-c [") nil)
    (evil-define-key '(insert normal) sclang-mode-map
      (kbd "C-c [") nil)
    (evil-define-key '(normal insert) sclang-mode-map
      (kbd "C-c [") 'jg_layer/insert-lparen
      (kbd "C-c C-c") 'jg-music-layer-minor/jg-music-layer-eval-line)
    (evil-define-key '(visual) sclang-mode-map
      (kbd "C-c C-c") 'jg-music-layer-minor/jg-music-layer-eval-selection)
    )
  )

(defun jg-music-layer/init-tidal ()
  (use-package tidal
    :commands (tidal-mode tidal-start-haskell)
    :config
    (evil-define-key nil tidal-mode-map
      (kbd "C-c C-c") nil)
    (evil-define-key '(normal insert visual) tidal-mode-map
      (kbd "C-c C-c") nil)
    (evil-define-key '(normal insert) tidal-mode-map
      (kbd "C-c C-c") 'jg-music-layer-minor/jg-music-layer-eval-line)
    (evil-define-key '(visual) tidal-mode-map
      (kbd "C-c C-c") 'jg-music-layer-minor/jg-music-layer-eval-selection)
    )
  )

(defun jg-music-layer/init-chuck-mode ()
  (use-package chuck-mode
    :commands (chuck-mode)
    )
  )
