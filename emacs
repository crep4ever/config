;; Load path where are located ".el" files
(setq load-path (cons "~/.config/emacs" load-path))

;; Modes/MIME types
(setq auto-mode-alist (cons '("\\.sg$" . songbook-mode) auto-mode-alist))
(autoload 'songbook-mode "songbook" "Major mode for Patacrep's songbooks" t)
(setq auto-mode-alist (cons '("\\.icc$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.mdwn$" . markdown-mode) auto-mode-alist))
(autoload 'rainbow-mode "rainbow-mode" "Highlight color codes" t)

;; Shortcuts
(global-set-key "\M-g" 'goto-line)

;; Transparency
(set-frame-parameter (selected-frame) 'alpha '(100 95))
(add-to-list 'default-frame-alist '(alpha 100 95))

;; Color theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-tango)

;; Interface configuration
(line-number-mode 1)
(set-variable 'inhibit-startup-message 't)
(menu-bar-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(transient-mark-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; QT syntax-highlighting
(defconst qt-font-lock-keywords-1
  (list '("\\(READ\\|WRITE\\|Q_PROPERTY\\)" . font-lock-type-face)))
(defvar qt-font-lock-keywords qt-font-lock-keywords-1)
(set (make-local-variable 'font-lock-defaults) '(qt-font-lock-keywords))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun count-words-region (beginning end)
  "Print number of words in the region.
Words are defined as at least one word-constituent
character followed by at least one character that
is not a word-constituent.  The buffer's syntax
table determines which characters these are."
  (interactive "r")
  (message "Counting words in region ... ")

;;; 1. Set up appropriate conditions.
  (save-excursion
    (goto-char beginning)
    (let ((count 0))

;;; 2. Run the while loop.
      (while (< (point) end)
	(re-search-forward "\\w+\\W*")
	(setq count (1+ count)))

;;; 3. Send a message to the user.
      (cond ((zerop count)
	     (message
	      "The region does NOT have any words."))
	    ((= 1 count)
	     (message
	      "The region has 1 word."))
	    (t
	     (message
	      "The region has %d words." count))))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


