;; -----------------------------------
;; Default setting and configurations
;; -----------------------------------
;; Prevents creation of back-up ~files.
(setq backup-inhibited t)
;; Highlights whitespaces and lines over 80 characters.
(require 'whitespace)
(setq whitespace-style '(face empty lines-tail trailing))
(global-whitespace-mode t)
;; Disables auto-save.
(setq auto-save-default nil)
;; Enables use of C-c to copy, C-x to cut...
(cua-mode 1)
;; Auto closing brackets.
(electric-pair-mode 1)
;; Highlights parenthesis and brackets.
(show-paren-mode t)
;; Remembers cursor's last position.
(if (version< emacs-version "25.0")
        (progn
                (require 'saveplace)
                      (setq-default save-place t))
  (save-place-mode 1))
;; UTF-8 as default encoding.
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
;; Shows cursor position within line.
(column-number-mode 1)
;; Shows line number column on the left by default.
(global-linum-mode t)
;; Makes lines column wider.
(setq linum-format "%3d\u2502 ")
;; Set default C style.
(setq c-default-style "linux" c-basic-offset 4)
;; Sets tabulation spaces for .c files.
(setq c-basic-offset 8 tab-width 8)
;; Sets indentation level for .js files
(setq-default js-indent-level 2)
;; Makes tab key always call an indent command.
(setq-default tab-always-indent t)
;; Make tab key call indent command or insert tab character.
(setq-default tab-always-indent nil)
;; Make tab key do indent first then completion.
(setq-default tab-always-indent 'complete)
;; Bound f5 to comment and f6 to uncomment region.
(global-set-key [f5] 'comment-region)
(global-set-key [f6] 'uncomment-region)
;; --------------------------------------
;; Custom variables
;; --------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.05)
 '(company-minimum-prefix-length 1)
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(custom-safe-themes (quote ("14aaa858f62de91b7cb444ce50ece2ebc4abe2248cc5f821538dd0d182ad6a4a" default)))
 '(menu-bar-mode nil))
;; --------------------------------------
;; Custom faces
;; --------------------------------------
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(button ((t (:foreground "color-178" :overline t :underline t))))
 '(custom-button-pressed-unraised ((t (:inherit custom-button-pressed-unraised :foreground "color-94"))))
 '(custom-group-tag ((t (:inherit variable-pitch :foreground "color-136" :weight bold :height 1.2))))
 '(custom-group-tag-1 ((t (:inherit variable-pitch :foreground "color-94" :weight bold :height 1.2))))
 '(custom-state ((t (:foreground "color-47"))))
 '(custom-variable-tag ((t (:foreground "color-136" :weight bold))))
 '(eieio-custom-slot-tag-face ((t (:foreground "color-136"))) t)
 '(error ((t (:foreground "brightred" :weight bold))))
 '(link ((t (:foreground "color-178" :underline t))))
 '(link-visited ((t (:inherit link :foreground "color-94"))))
 '(linum ((t (:inherit (shadow default) :foreground "color-243"))))
 '(menu ((t nil)))
 '(minibuffer-prompt ((t (:foreground "color-220"))))
 ;; '(mode-line ((t (:background "color-236" :foreground "brightwhite" :box (:line-width -1 :color "red" :style released-button)))))
 ;; '(mode-line-buffer-id ((t (:foreground "color-178" :weight bold))))
 ;; '(mode-line-emphasis ((t (:weight bold))))
 ;; '(mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
 ;; '(mode-line-inactive ((t (:inherit mode-line :background "color-235" :foreground "color-243" :box (:line-width -1 :color "grey40") :weight light))))
 '(region ((t (:inverse-video t))))
 '(show-paren-match ((t (:foreground "#00FF00"))))
 '(show-paren-mismatch ((t (:foreground "#FF00FF"))))
 '(trailing-whitespace ((t (:background "brightred"))))
 '(whitespace-line ((t (:background "color-234" :foreground "brightred" :inverse-video t)))))

;; --------------------------------------
;; Import Package from MELPA
;; --------------------------------------
(require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.2")
