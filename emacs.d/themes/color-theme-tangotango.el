(defun color-theme-tangotango ()
  "A color theme based on Tango Palette."
  (interactive)
  (color-theme-install
   '(color-theme-tango
     ((background-color . "#2e3436")
      (background-mode . dark)
      (border-color . "#888a85")
      (cursor-color . "#fce94f")
      (foreground-color . "#eeeeec")
      (mouse-color . "#8ae234"))
     ((help-highlight-face . underline)
      (ibuffer-dired-buffer-face . font-lock-function-name-face)
      (ibuffer-help-buffer-face . font-lock-comment-face)
      (ibuffer-hidden-buffer-face . font-lock-warning-face)
      (ibuffer-occur-match-face . font-lock-warning-face)
      (ibuffer-read-only-buffer-face . font-lock-type-face)
      (ibuffer-special-buffer-face . font-lock-keyword-face)
      (ibuffer-title-face . font-lock-type-face))
     (highlight ((t (:background "brown4" :foreground nil))))
     (border ((t (:background "#888a85"))))
     (fringe ((t (:background "grey10"))))
     (mode-line ((t (:foreground "#bbbbbc" :background "#222222" :box (:line-width 1 :color nil :style released-button)))))
     (mode-line-inactive ((t (:foreground "#bbbbbc" :background "#555753"))))
     (mode-line-buffer-id ((t (:bold t :foreground "orange" :background nil))))
     (region ((t (:background "dark slate blue"))))
     (link ((t (:underline t :foreground "dodger blue"))))
     (custom-link ((t (:inherit 'link))))
     (match ((t (:bold t :background "#e9b96e" :foreground "#2e3436"))))
     (tool-tips ((t (:inherit 'variable-pitch :foreground "black" :background "lightyellow"))))
     (tooltip ((t (:inherit 'variable-pitch :foreground "black" :background "lightyellow"))))
     (bold ((t (:bold t :underline nil :background nil))))
     (italic ((t (:italic t :underline nil :background nil))))
     (font-lock-builtin-face ((t (:foreground "#729fcf"))))
     (font-lock-comment-face ((t (:foreground "#888a85"))))
     (font-lock-constant-face ((t (:foreground "#8ae234"))))
     (font-lock-doc-face ((t (:foreground "#888a85"))))
     (font-lock-keyword-face ((t (:foreground "#729fcf" :bold t))))
     (font-lock-string-face ((t (:foreground "#ad7fa8" :italic t))))
     (font-lock-type-face ((t (:foreground "#8ae234" :bold t))))
     (font-lock-variable-name-face ((t (:foreground "tomato"))))
     (font-lock-warning-face ((t (:bold t :foreground "#f57900"))))
     (font-lock-function-name-face ((t (:foreground "#edd400" :bold t))))
     (comint-highlight-input ((t (:italic t :bold t))))
     (comint-highlight-prompt ((t (:foreground "#8ae234"))))
     (isearch ((t (:background "#f57900" :foreground "#2e3436"))))
     (isearch-lazy-highlight-face ((t (:foreground "#2e3436" :background "#e9b96e"))))
     (show-paren-match-face ((t (:foreground "#2e3436" :background "#8ae234"))))
     (show-paren-mismatch-face ((t (:background "#ad7fa8" :foreground "#2e3436"))))
     (minibuffer-prompt ((t (:foreground "#729fcf" :bold t))))
     (info-xref ((t (:foreground "#729fcf"))))
     (info-xref-visited ((t (:foreground "#ad7fa8"))))
     (diary-face ((t (:bold t :foreground "IndianRed"))))
     (eshell-ls-clutter-face ((t (:bold t :foreground "DimGray"))))
     (eshell-ls-executable-face ((t (:bold t :foreground "Coral"))))
     (eshell-ls-missing-face ((t (:bold t :foreground "black"))))
     (eshell-ls-special-face ((t (:bold t :foreground "Gold"))))
     (eshell-ls-symlink-face ((t (:bold t :foreground "White"))))
     (widget-button ((t (:bold t))))
     (widget-mouse-face ((t (:bold t :foreground "white" :background "brown4"))))
     (widget-field ((t (:foreground "orange" :background "gray30"))))
     (widget-single-line-field ((t (:foreground "orange" :background "gray30"))))
     (custom-group-tag ((t (:bold t :foreground "#edd400" :height 1.3))))
     (custom-variable-tag ((t (:bold t :foreground "#edd400" :height 1.1))))
     (custom-face-tag ((t (:bold t :foreground "#edd400" :height 1.1))))
     (custom-state-face ((t (:foreground "#729fcf"))))
     (custom-button  ((t (:box (:line-width 1 :style released-button) :background "grey50" :foreground "black"))))
     (custom-variable-button ((t (:inherit 'custom-button))))
     (custom-button-mouse  ((t (:inherit 'custom-button :background "grey60"))))
     (custom-button-unraised  ((t (:background "grey50" :foreground "black"))))
     (custom-button-mouse-unraised  ((t (:inherit 'custom-button-unraised :background "grey60"))))
     (custom-button-pressed  ((t (:inherit 'custom-button :box (:style pressed-button)))))
     (custom-button-mouse-pressed-unraised  ((t (:inherit 'custom-button-unraised :background "grey60"))))
     (custom-documentation ((t (:italic t))))
     (message-cited-text ((t (:foreground "#edd400")))) 
     (gnus-cite-face-1 ((t (:foreground "#ad7fa8"))))
     (gnus-cite-face-2 ((t (:foreground "sienna4"))))
     (gnus-cite-face-3 ((t (:foreground "khaki4"))))
     (gnus-cite-face-4 ((t (:foreground "PaleTurquoise4"))))
     (gnus-group-mail-1-empty-face ((t (:foreground "light cyan"))))
     (gnus-group-mail-1-face ((t (:bold t :foreground "light cyan"))))
     (gnus-group-mail-2-empty-face ((t (:foreground "turquoise"))))
     (gnus-group-mail-2-face ((t (:bold t :foreground "turquoise"))))
     (gnus-group-mail-3-empty-face ((t (:foreground "#729fcf"))))
     (gnus-group-mail-3-face ((t (:bold t :foreground "#edd400"))))
     (gnus-group-mail-low-empty-face ((t (:foreground "dodger blue"))))
     (gnus-group-mail-low-face ((t (:bold t :foreground "dodger blue"))))
     (gnus-group-news-1-empty-face ((t (:foreground "light cyan"))))
     (gnus-group-news-1-face ((t (:bold t :foreground "light cyan"))))
     (gnus-group-news-2-empty-face ((t (:foreground "turquoise"))))
     (gnus-group-news-2-face ((t (:bold t :foreground "turquoise"))))
     (gnus-group-news-3-empty-face ((t (:foreground "#729fcf"))))
     (gnus-group-news-3-face ((t (:bold t :foreground "#edd400"))))
     (gnus-group-news-low-empty-face ((t (:foreground "dodger blue"))))
     (gnus-group-news-low-face ((t (:bold t :foreground "dodger blue"))))
     (gnus-header-name-face ((t (:bold t :foreground "#729fcf"))))
     (gnus-header-from ((t (:bold t :foreground "#edd400"))))
     (gnus-header-subject ((t (:foreground "#edd400"))))
     (gnus-header-content ((t (:italic t :foreground "#8ae234"))))
     (gnus-header-newsgroups-face ((t (:italic t :bold t :foreground "LightSkyBlue3"))))
     (gnus-signature-face ((t (:italic t :foreground "dark grey"))))
     (gnus-summary-cancelled-face ((t (:background "black" :foreground "yellow"))))
     (gnus-summary-high-ancient-face ((t (:bold t :foreground "rotal blue"))))
     (gnus-summary-high-read-face ((t (:bold t :foreground "lime green"))))
     (gnus-summary-high-ticked-face ((t (:bold t :foreground "tomato"))))
     (gnus-summary-high-unread-face ((t (:bold t :foreground "white"))))
     (gnus-summary-low-ancient-face ((t (:italic t :foreground "lime green"))))
     (gnus-summary-low-read-face ((t (:italic t :foreground "royal blue"))))
     (gnus-summary-low-ticked-face ((t (:italic t :foreground "dark red"))))
     (gnus-summary-low-unread-face ((t (:italic t :foreground "white"))))
     (gnus-summary-normal-ancient-face ((t (:foreground "royal blue"))))
     (gnus-summary-normal-read-face ((t (:foreground "lime green"))))
     (gnus-summary-normal-ticked-face ((t (:foreground "indian red"))))
     (gnus-summary-normal-unread-face ((t (:foreground "white"))))
     (gnus-summary-selected ((t (:background "brown4" :foreground "white"))))
     (message-header-name-face ((t (:foreground "tomato"))))
     (message-header-newsgroups-face ((t (:italic t :bold t :foreground "LightSkyBlue3"))))
     (message-header-other-face ((t (:foreground "LightSkyBlue3"))))
     (message-header-xheader-face ((t (:foreground "DodgerBlue3"))))
     (message-header-subject ((t (:foreground "white"))))
     (message-header-to ((t (:foreground "white"))))
     (message-header-cc ((t (:foreground "white"))))
     (org-hide ((t (:foreground "#2e3436"))))
     (org-level-1 ((t (:bold t :foreground "dodger blue" :height 1.5))))
     (org-level-2 ((t (:bold t :foreground "#6ac214" :height 1.2))))
     (org-level-3 ((t (:bold t :foreground "#edd400" :height 1.1))))
     (org-level-4 ((t (:bold t :foreground "tomato" :height 1.0))))
     (org-date ((t (:underline t :foreground "magenta3"))))
     (org-footnote  ((t (:underline t :foreground "magenta3"))))
     (org-link ((t (:foreground "skyblue2" :background "#2e3436"))))
     (org-special-keyword ((t (:foreground "brown"))))
     (org-verbatim ((t (:foreground "#eeeeec" :underline t :slant italic))))
     (org-block ((t (:foreground "#bbbbbc"))))
     (org-quote ((t (:inherit org-block :slant italic))))
     (org-verse ((t (:inherit org-block :slant italic))))
     (org-todo ((t (:bold t :foreground "Red"))))
     (org-done ((t (:bold t :foreground "ForestGreen"))))
     (anything-header ((t (:bold t :background "grey15" :foreground "#edd400"))))
)))

