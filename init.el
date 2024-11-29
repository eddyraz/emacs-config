(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(load-theme 'monokai t)
;;(load-theme 'solarized-zenburn t)

(global-display-line-numbers-mode 1)
    ;; Alternatively, to use it only in programming modes:
    (add-hook 'prog-mode-hook #'display-line-numbers-mode)

(global-hl-line-mode 1)
(show-paren-mode 1)


;;CentaurTabs
(require 'centaur-tabs)
(centaur-tabs-mode t)
(global-set-key (kbd "C-<prior>")  'centaur-tabs-backward)
(global-set-key (kbd "C-<next>") 'centaur-tabs-forward)


;; ;; (centaur-tabs-headline-match)
 (setq centaur-tabs-style "bar")
 (setq centaur-tabs-height 32)
 (setq centaur-tabs-gray-out-icons 'buffer)
 (setq centaur-tabs-cycle-scope 'tabs)
 (centaur-tabs-group-by-projectile-project)


;;for electric pair mode
(defun electric-pair ()
      "If at end of line, insert character pair without surrounding spaces.
    Otherwise, just insert the typed character."
      (interactive)
      (if (eolp) (let (parens-require-spaces) (insert-pair)) (self-insert-command 1)))



 (require 'treemacs)
 (global-set-key [f8] 'treemacs)
;; (lsp-treemacs-sync-mode 1)

(require 'undo-tree)
(setq undo-tree-mode t)

(setq pylsp-mode t )
(setq lsp-pylsp-plugins-autopep8-enabled t )



(defun centaur-tabs-hide-tab (x)
  "Do no to show buffer X in tabs."
  (let ((name (format "%s" x)))
    (or
     ;; Current window is not dedicated window.XS
     (window-dedicated-p (selected-window))

     ;; Buffer name not match below blacklist.
     (string-prefix-p "*epc" name)
     (string-prefix-p "*helm" name)
     (string-prefix-p "*Helm" name)
     (string-prefix-p "*Compile-Log*" name)
     (string-prefix-p "*lsp" name)
     (string-prefix-p "*company" name)
     (string-prefix-p "*Flycheck" name)
     (string-prefix-p "*tramp" name)
     (string-prefix-p " *Mini" name)
     (string-prefix-p "*help" name)
     (string-prefix-p "*straight" name)
     (string-prefix-p " *temp" name)
     (string-prefix-p "*Help" name)
     (string-prefix-p "*mybuf" name)

     ;; Is not magit buffer.
     (and (string-prefix-p "magit" name)
          (not (file-name-extension name)))
     )))


;;All The Icons
(when (display-graphic-p)
  (require 'all-the-icons))

;;Cargar lsp-mode
(require 'lsp-mode)
(require 'lsp-completion)

;;cargar lsp-ui
(require 'lsp-ui)
(setq lsp-ui-sideline-show-diagnostics t)
(setq lsp-ui-doc-enable 1)



;;Tree-sitter support
(require 'tree-sitter)
(require 'tree-sitter-langs)
(setq undo-tree-mode t )


;;fonts
(set-face-attribute 'default nil :font "Iosevka Fixed SS13 Bold" :height 140)
(set-frame-font "Iosevka Fixed SS13 Bold" nil t)


;; I use Spacemacs, so I put this in user-config
;; Note that the script above only generates the long list of pairs.
;; The surrounding code is stolen from the PragmataPro scripts floating around on Gist.

  (setq prettify-symbols-unprettify-at-point 'right-edge)


;;For C Development
  (setq company-clang-executable "/usb/bin/clang") 



;; autocomplete
;;(global-auto-complete-mode)
;;electric-pair 
;;(electric-pair-mode 2)
;;(setq electric-pair-preserve-balance nil)

;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ansi-color-names-vector
;;    ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#839496"])
;;  '(compilation-message-face 'default)
;;  '(custom-safe-themes
;;    '("78be54fed89551db18cbeb645ab807c99181555a51405aaba366b56d913b6040" "d0f3adfe292c9d633930e35c3458cda77796073bb25af852689f999bbb3d9398" "8390abb2cc504d44f0c9dfdaf79d4e943f0328a933e20ceec74c74d17d65834f" "4ae2387bb3bcfb3419d88f586b41c1fef3ff8620b80d06d53f98ec30df469407" "d89e15a34261019eec9072575d8a924185c27d3da64899905f8548cbd9491a36" "57a29645c35ae5ce1660d5987d3da5869b048477a7801ce7ab57bfb25ce12d3e" "efcecf09905ff85a7c80025551c657299a4d18c5fcfedd3b2f2b6287e4edd659" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "95b0bc7b8687101335ebbf770828b641f2befdcf6d3c192243a251ce72ab1692" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" default))
;;  '(fci-rule-color "#3C3D37")
;;  '(highlight-changes-colors '("#FD5FF0" "#AE81FF"))
;;  '(highlight-tail-colors
;;    '(("#3C3D37" . 0)
;;      ("#679A01" . 20)
;;      ("#4BBEAE" . 30)
;;      ("#1DB4D0" . 50)
;;      ("#9A8F21" . 60)
;;      ("#A75B00" . 70)
;;      ("#F309DF" . 85)
;;      ("#3C3D37" . 100)))
;;  '(ispell-dictionary nil)
;;  '(magit-diff-use-overlays nil)
;;  '(package-selected-packages
;;    '(company-ctags jdee treemacs-all-the-icons treemacs-icons-dired java-imports lsp-java org-download phps-mode phpactor ligature elm-test-runner elm-yasnippets company flycheck-elixir flycheck-elm elm-mode web-mode terraform-mode zeal-at-point lsp-pyright php-mode solarized-theme magit-section flycheck elixir-mode yaml-mode monokai-theme undo-tree treemacs tree-sitter-langs theme-changer minimap lsp-ui centaur-tabs all-the-icons))
;;  '(php-imenu-generic-expression 'php-imenu-generic-expression-simple)
;;  '(php-mode-coding-style 'psr2)
;;  '(php-mode-template-compatibility nil)
;;  '(pos-tip-background-color "#FFFACE")
;;  '(pos-tip-foreground-color "#272822")
;;  '(terraform-indent-level 2)
;;  '(vc-annotate-background nil)
;;  '(vc-annotate-color-map
;;    '((20 . "#F92672")
;;      (40 . "#CF4F1F")
;;      (60 . "#C26C0F")
;;      (80 . "#E6DB74")
;;      (100 . "#AB8C00")
;;      (120 . "#A18F00")
;;      (140 . "#989200")
;;      (160 . "#8E9500")
;;      (180 . "#A6E22E")
;;      (200 . "#729A1E")
;;      (220 . "#609C3C")
;;      (240 . "#4E9D5B")
;;      (260 . "#3C9F79")
;;      (280 . "#A1EFE4")
;;      (300 . "#299BA6")
;;      (320 . "#2896B5")
;;      (340 . "#2790C3")
;;      (360 . "#66D9EF")))
;;  '(vc-annotate-very-old-color nil)
;;  '(weechat-color-list
;;    '(unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )


;;lean4-mode
;; You need to modify the following line
(setq load-path (cons "/home/eddyraz/.emacs/lean4" load-path))

(setq lean4-mode-required-packages '(dash f flycheck lsp-mode magit-section s))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(let ((need-to-refresh t))
  (dolist (p lean4-mode-required-packages)
    (when (not (package-installed-p p))
      (when need-to-refresh
        (package-refresh-contents)
        (setq need-to-refresh nil))
      (package-install p))))

;;(require 'lean4-mode)


;;PHP Mode

;; (defun my-php-mode-init ()
;;   (subword-mode 1)
;;   (setq-local show-trailing-whitespace t)
;;   (setq-local ac-disable-faces '(font-lock-comment-face font-lock-string-face))
;;   (add-hook 'hack-local-variables-hook 'php-ide-turn-on nil t))

;; (with-eval-after-load 'php-mode
;;   (add-hook 'php-mode-hook #'my-php-mode-init)
;;   (custom-set-variables
;;    '(php-mode-coding-style 'psr2)
;;    '(php-mode-template-compatibility nil)
;;    '(php-imenu-generic-expression 'php-imenu-generic-expression-simple))

  ;; If you find phpcs to be bothersome, you can disable it.
  ;; (when (require 'flycheck nil)
  ;;   (add-to-list 'flycheck-disabled-checkers 'php-phpmd)
  ;;   (add-to-list 'flycheck-disabled-checkers 'php-phpcs)))


;;Terraform mode

(require 'terraform-mode)


;; Elm mode
(require 'elm-mode)

(with-eval-after-load 'flycheck
      '(add-hook 'flycheck-mode-hook #'flycheck-elm-setup))


;; Ligatures config
;; This assumes you've installed the package via MELPA.
(use-package ligature
  :config
  ;; Enable the "www" ligature in every possible major mode
  (ligature-set-ligatures 't '("www"))
  ;; Enable traditional ligature support in eww-mode, if the
  ;; `variable-pitch' face supports it
  (ligature-set-ligatures 'eww-mode '("ff" "fi" "ffi"))
  ;; Enable all Cascadia Code ligatures in programming modes
  (ligature-set-ligatures 'elm-mode '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
                                       ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
                                       "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
                                       "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
                                       "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
                                       "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
                                       "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
                                       "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
                                       ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
                                       "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
                                       "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
                                       "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
                                       "\\\\" "://"))
  ;; Enables ligature checks globally in all buffers. You can also do it
  ;; per mode with `ligature-mode'.
  (global-ligature-mode t))


;;Org Mode download images
(require 'org-download)

;; Drag-and-drop to `dired`
;;(add-hook 'dired-mode-hook 'org-download-enable)
