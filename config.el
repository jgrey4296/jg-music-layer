;; sclang config.el
;; loaded fourth

;;(configuration-layer/declare-layer)
;;(configuration-layer/declare-layers)
;;(configuration-layer/layer-usedp)
;;(configuration-layer/package-usedp)

(setq-default tidal-interpreter "/usr/local/bin/ghci"
              ;; tidal-interpreter-arguments
              ;; (list "-ghci-script" (expand-file-name "~/github/languageLearning/tidal/.ghci"))
              sclang-auto-scroll-post-buffer t
              sclang-help-path (quote ("/Applications/SuperCollider/Help"))
              sclang-program "sclang"
              sclang-rtf-editor-program "emacs"
              sclang-show-workspace-on-startup nil
              sclang-library-configuration-file (expand-file-name "~/.spacemacs.d/layers/jg-music-layer/sclang.yaml")
              sclang-udp-port 57120
              sclang-eval-line-forward nil
              sclang-runtime-directory (expand-file-name "~/.sclang/")
              sclang-boot-file (expand-file-name "~/.spacemacs.d/layers/jg-music-layer/startup.scd")

              jg-music-layer-tidal-workspace "Tidal Workspace"
              jg-music-layer-sclang-workspace "SCLang Workspace"

              )
