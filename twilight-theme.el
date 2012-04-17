;;; twilight-theme.el --- A low contrast color theme for Emacs.


;; Author: Bozhidar Batsov <bozhidar.batsov@gmail.com>
;; URL: http://github.com/bbatsov/twilight-emacs
;; Version: 1.4

;;; Code
(deftheme twilight "The twilight color theme blomma style")

(let ((class '((class color) (min-colors 89)))
      ;; Twilight palette
      ;; colors with +x are lighter, colors with -x are darker
      (twilight-fg "#F8F8F8")
      (twilight-bg "#141414")

      (twilight-fg-1 "#656555")
      (twilight-bg-1 "#2b2b2b")
      (twilight-bg-05 "#383838")


      (twilight-bg+1 "#4f4f4f")
      (twilight-bg+2 "#5f5f5f")
      (twilight-bg+3 "#6f6f6f")
      (twilight-red+1 "#dca3a3")
      (twilight-red "#cc9393")
      (twilight-red-1 "#bc8383")
      (twilight-red-2 "#ac7373")
      (twilight-red-3 "#9c6363")
      (twilight-red-4 "#8c5353")
      (twilight-orange "#dfaf8f")
      (twilight-yellow "#f0dfaf")
      (twilight-yellow-1 "#e0cf9f")
      (twilight-yellow-2 "#d0bf8f")
      (twilight-green-1 "#5f7f5f")
      (twilight-green "#7f9f7f")
      (twilight-green+1 "#8fb28f")
      (twilight-green+2 "#9fc59f")
      (twilight-green+3 "#afd8af")
      (twilight-green+4 "#bfebbf")
      (twilight-cyan "#93e0e3")
      (twilight-blue+1 "#94bff3")
      (twilight-blue "#8cd0d3")
      (twilight-blue-1 "#7cb8bb")
      (twilight-blue-2 "#6ca0a3")
      (twilight-blue-3 "#5c888b")
      (twilight-blue-4 "#4c7073")
      (twilight-blue-5 "#366060")
      (twilight-magenta "#dc8cc3"))
  (custom-theme-set-faces
   'twilight
   '(button ((t (:underline t))))
   `(link ((,class (:foreground ,twilight-yellow :underline t :weight bold))))
   `(link-visited ((,class (:foreground ,twilight-yellow-2 :underline t :weight normal))))

   ;;; basic coloring
   `(default ((,class (:foreground ,twilight-fg :background ,twilight-bg))))
   `(cursor ((,class (:foreground ,twilight-fg))))
   `(escape-glyph-face ((,class (:foreground ,twilight-red))))
   `(fringe ((,class (:foreground ,twilight-fg :background ,twilight-bg))))
   `(header-line ((,class (:foreground ,twilight-yellow
                                       :background ,twilight-bg
                                       :box (:line-width -1 :style released-button)))))
   `(highlight ((,class (:background ,twilight-bg))))

   ;;; compilation
   `(compilation-column-face ((,class (:foreground ,twilight-yellow))))
   `(compilation-enter-directory-face ((,class (:foreground ,twilight-green))))
   `(compilation-error-face ((,class (:foreground ,twilight-red-1 :weight bold :underline t))))
   `(compilation-face ((,class (:foreground ,twilight-fg))))
   `(compilation-info-face ((,class (:foreground ,twilight-blue))))
   `(compilation-info ((,class (:foreground ,twilight-green+4 :underline t))))
   `(compilation-leave-directory-face ((,class (:foreground ,twilight-green))))
   `(compilation-line-face ((,class (:foreground ,twilight-yellow))))
   `(compilation-line-number ((,class (:foreground ,twilight-yellow))))
   `(compilation-message-face ((,class (:foreground ,twilight-blue))))
   `(compilation-warning-face ((,class (:foreground ,twilight-yellow-1 :weight bold :underline t))))

   ;;; grep
   `(grep-context-face ((,class (:foreground ,twilight-fg))))
   `(grep-error-face ((,class (:foreground ,twilight-red-1 :weight bold :underline t))))
   `(grep-hit-face ((,class (:foreground ,twilight-blue))))
   `(grep-match-face ((,class (:foreground ,twilight-orange :weight bold))))
   `(match ((,class (:background ,twilight-bg-1 :foreground ,twilight-orange :weight bold))))

   ;; faces used by isearch
   `(isearch ((,class (:foreground ,twilight-yellow :background ,twilight-bg-1))))
   `(isearch-fail ((,class (:foreground ,twilight-fg :background ,twilight-red-4))))
   `(lazy-highlight ((,class (:foreground ,twilight-yellow :background ,twilight-bg+2))))

   `(menu ((,class (:foreground ,twilight-fg :background ,twilight-bg))))
   `(minibuffer-prompt ((,class (:foreground ,twilight-yellow))))
   `(mode-line
     ((,class (:foreground ,twilight-green+1
                           :background ,twilight-bg-1
                           :box (:line-width -1 :style released-button)))))
   `(mode-line-buffer-id ((,class (:foreground ,twilight-yellow :weight bold))))
   `(mode-line-inactive
     ((,class (:foreground ,twilight-green-1
                           :background ,twilight-bg-05
                           :box (:line-width -1 :style released-button)))))
   `(region ((,class (:background ,twilight-bg-1))))
   `(secondary-selection ((,class (:background ,twilight-bg+2))))
   `(trailing-whitespace ((,class (:background ,twilight-red))))
   `(vertical-border ((,class (:foreground ,twilight-fg))))

   ;;; font lock
   `(font-lock-builtin-face ((,class (:foreground ,twilight-blue))))
   `(font-lock-comment-face ((,class (:foreground ,twilight-green))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,twilight-green))))
   `(font-lock-constant-face ((,class (:foreground ,twilight-green+4))))
   `(font-lock-doc-face ((,class (:foreground ,twilight-green+1))))
   `(font-lock-doc-string-face ((,class (:foreground ,twilight-blue+1))))
   `(font-lock-function-name-face ((,class (:foreground ,twilight-blue))))
   `(font-lock-keyword-face ((,class (:foreground ,twilight-yellow :weight bold))))
   `(font-lock-negation-char-face ((,class (:foreground ,twilight-fg))))
   `(font-lock-preprocessor-face ((,class (:foreground ,twilight-blue))))
   `(font-lock-string-face ((,class (:foreground ,twilight-red))))
   `(font-lock-type-face ((,class (:foreground ,twilight-blue))))
   `(font-lock-variable-name-face ((,class (:foreground ,twilight-orange))))
   `(font-lock-warning-face ((,class (:foreground ,twilight-yellow-1 :weight bold :underline t))))

   `(c-annotation-face ((,class (:inherit font-lock-constant-face))))

   ;;; external

   ;; full-ack
   `(ack-separator ((,class (:foreground ,twilight-fg))))
   `(ack-file ((,class (:foreground ,twilight-blue))))
   `(ack-line ((,class (:foreground ,twilight-yellow))))
   `(ack-match ((,class (:foreground ,twilight-orange :background ,twilight-bg-1 :weigth bold))))

   ;; auto-complete
   `(ac-candidate-face ((,class (:background ,twilight-bg+3 :foreground "black"))))
   `(ac-selection-face ((,class (:background ,twilight-blue-4 :foreground ,twilight-fg))))
   `(popup-tip-face ((,class (:background ,twilight-yellow-2 :foreground "black"))))
   `(popup-scroll-bar-foreground-face ((,class (:background ,twilight-blue-5))))
   `(popup-scroll-bar-background-face ((,class (:background ,twilight-bg-1))))
   `(popup-isearch-match ((,class (:background ,twilight-bg :foreground ,twilight-fg))))

   ;; diff
   `(diff-added ((,class (:foreground ,twilight-green+4))))
   `(diff-changed ((,class (:foreground ,twilight-yellow))))
   `(diff-removed ((,class (:foreground ,twilight-red))))
   `(diff-header ((,class (:background ,twilight-bg+1))))
   `(diff-file-header
     ((,class (:background ,twilight-bg+2 :foreground ,twilight-fg :bold t))))

   ;; eshell
   `(eshell-prompt ((,class (:foreground ,twilight-yellow :weight bold))))
   `(eshell-ls-archive ((,class (:foreground ,twilight-red-1 :weight bold))))
   `(eshell-ls-backup ((,class (:inherit font-lock-comment))))
   `(eshell-ls-clutter ((,class (:inherit font-lock-comment))))
   `(eshell-ls-directory ((,class (:foreground ,twilight-blue+1 :weight bold))))
   `(eshell-ls-executable ((,class (:foreground ,twilight-red+1 :weight bold))))
   `(eshell-ls-unreadable ((,class (:foreground ,twilight-fg))))
   `(eshell-ls-missing ((,class (:inherit font-lock-warning))))
   `(eshell-ls-product ((,class (:inherit font-lock-doc))))
   `(eshell-ls-special ((,class (:foreground ,twilight-yellow :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,twilight-cyan :weight bold))))

   ;; flymake
   `(flymake-errline ((,class (:foreground ,twilight-red-1 :weight bold :underline t))))
   `(flymake-warnline ((,class (:foreground ,twilight-yellow-1 :weight bold :underline t))))

   ;; flyspell
   `(flyspell-duplicate ((,class (:foreground ,twilight-yellow-1 :weight bold :underline t))))
   `(flyspell-incorrect ((,class (:foreground ,twilight-red-1 :weight bold :underline t))))

   ;; erc
   `(erc-action-face ((,class (:inherit erc-default-face))))
   `(erc-bold-face ((,class (:weight bold))))
   `(erc-current-nick-face ((,class (:foreground ,twilight-blue :weight bold))))
   `(erc-dangerous-host-face ((,class (:inherit font-lock-warning))))
   `(erc-default-face ((,class (:foreground ,twilight-fg))))
   `(erc-direct-msg-face ((,class (:inherit erc-default))))
   `(erc-error-face ((,class (:inherit font-lock-warning))))
   `(erc-fool-face ((,class (:inherit erc-default))))
   `(erc-highlight-face ((,class (:inherit hover-highlight))))
   `(erc-input-face ((,class (:foreground ,twilight-yellow))))
   `(erc-keyword-face ((,class (:foreground ,twilight-blue :weight bold))))
   `(erc-nick-default-face ((,class (:foreground ,twilight-yellow :weight bold))))
   `(erc-my-nick-face ((,class (:foreground ,twilight-red :weigth bold))))
   `(erc-nick-msg-face ((,class (:inherit erc-default))))
   `(erc-notice-face ((,class (:foreground ,twilight-green))))
   `(erc-pal-face ((,class (:foreground ,twilight-orange :weight bold))))
   `(erc-prompt-face ((,class (:foreground ,twilight-orange :background ,twilight-bg :weight bold))))
   `(erc-timestamp-face ((,class (:foreground ,twilight-green+1))))
   `(erc-underline-face ((t (:underline t))))

   ;; gnus
   `(gnus-group-mail-1-face ((,class (:bold t :inherit gnus-group-mail-1-empty))))
   `(gnus-group-mail-1-empty-face ((,class (:inherit gnus-group-news-1-empty))))
   `(gnus-group-mail-2-face ((,class (:bold t :inherit gnus-group-mail-2-empty))))
   `(gnus-group-mail-2-empty-face ((,class (:inherit gnus-group-news-2-empty))))
   `(gnus-group-mail-3-face ((,class (:bold t :inherit gnus-group-mail-3-empty))))
   `(gnus-group-mail-3-empty-face ((,class (:inherit gnus-group-news-3-empty))))
   `(gnus-group-mail-4-face ((,class (:bold t :inherit gnus-group-mail-4-empty))))
   `(gnus-group-mail-4-empty-face ((,class (:inherit gnus-group-news-4-empty))))
   `(gnus-group-mail-5-face ((,class (:bold t :inherit gnus-group-mail-5-empty))))
   `(gnus-group-mail-5-empty-face ((,class (:inherit gnus-group-news-5-empty))))
   `(gnus-group-mail-6-face ((,class (:bold t :inherit gnus-group-mail-6-empty))))
   `(gnus-group-mail-6-empty-face ((,class (:inherit gnus-group-news-6-empty))))
   `(gnus-group-mail-low-face ((,class (:bold t :inherit gnus-group-mail-low-empty))))
   `(gnus-group-mail-low-empty-face ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-1-face ((,class (:bold t :inherit gnus-group-news-1-empty))))
   `(gnus-group-news-2-face ((,class (:bold t :inherit gnus-group-news-2-empty))))
   `(gnus-group-news-3-face ((,class (:bold t :inherit gnus-group-news-3-empty))))
   `(gnus-group-news-4-face ((,class (:bold t :inherit gnus-group-news-4-empty))))
   `(gnus-group-news-5-face ((,class (:bold t :inherit gnus-group-news-5-empty))))
   `(gnus-group-news-6-face ((,class (:bold t :inherit gnus-group-news-6-empty))))
   `(gnus-group-news-low-face ((,class (:bold t :inherit gnus-group-news-low-empty))))
   `(gnus-header-content-face ((,class (:inherit message-header-other))))
   `(gnus-header-from-face ((,class (:inherit message-header-from))))
   `(gnus-header-name-face ((,class (:inherit message-header-name))))
   `(gnus-header-newsgroups-face ((,class (:inherit message-header-other))))
   `(gnus-header-subject-face ((,class (:inherit message-header-subject))))
   `(gnus-summary-cancelled-face ((,class (:foreground ,twilight-orange))))
   `(gnus-summary-high-ancient-face ((,class (:foreground ,twilight-blue))))
   `(gnus-summary-high-read-face ((,class (:foreground ,twilight-green :weight bold))))
   `(gnus-summary-high-ticked-face ((,class (:foreground ,twilight-orange :weight bold))))
   `(gnus-summary-high-unread-face ((,class (:foreground ,twilight-fg :weight bold))))
   `(gnus-summary-low-ancient-face ((,class (:foreground ,twilight-blue))))
   `(gnus-summary-low-read-face ((t (:foreground ,twilight-green))))
   `(gnus-summary-low-ticked-face ((,class (:foreground ,twilight-orange :weight bold))))
   `(gnus-summary-low-unread-face ((,class (:foreground ,twilight-fg))))
   `(gnus-summary-normal-ancient-face ((,class (:foreground ,twilight-blue))))
   `(gnus-summary-normal-read-face ((,class (:foreground ,twilight-green))))
   `(gnus-summary-normal-ticked-face ((,class (:foreground ,twilight-orange :weight bold))))
   `(gnus-summary-normal-unread-face ((,class (:foreground ,twilight-fg))))
   `(gnus-summary-selected-face ((,class (:foreground ,twilight-yellow :weight bold))))
   `(gnus-cite-1-face ((,class (:foreground ,twilight-blue))))
   `(gnus-cite-10-face ((,class (:foreground ,twilight-yellow-1))))
   `(gnus-cite-11-face ((,class (:foreground ,twilight-yellow))))
   `(gnus-cite-2-face ((,class (:foreground ,twilight-blue-1))))
   `(gnus-cite-3-face ((,class (:foreground ,twilight-blue-2))))
   `(gnus-cite-4-face ((,class (:foreground ,twilight-green+2))))
   `(gnus-cite-5-face ((,class (:foreground ,twilight-green+1))))
   `(gnus-cite-6-face ((,class (:foreground ,twilight-green))))
   `(gnus-cite-7-face ((,class (:foreground ,twilight-red))))
   `(gnus-cite-8-face ((,class (:foreground ,twilight-red-1))))
   `(gnus-cite-9-face ((,class (:foreground ,twilight-red-2))))
   `(gnus-group-news-1-empty-face ((,class (:foreground ,twilight-yellow))))
   `(gnus-group-news-2-empty-face ((,class (:foreground ,twilight-green+3))))
   `(gnus-group-news-3-empty-face ((,class (:foreground ,twilight-green+1))))
   `(gnus-group-news-4-empty-face ((,class (:foreground ,twilight-blue-2))))
   `(gnus-group-news-5-empty-face ((,class (:foreground ,twilight-blue-3))))
   `(gnus-group-news-6-empty-face ((,class (:foreground ,twilight-bg+2))))
   `(gnus-group-news-low-empty-face ((,class (:foreground ,twilight-bg+2))))
   `(gnus-signature-face ((,class (:foreground ,twilight-yellow))))
   `(gnus-x-face ((,class (:background ,twilight-fg :foreground ,twilight-bg))))

   ;; helm
   `(helm-selection ((,class (:background ,twilight-bg-1))))

   ;; hl-line-mode
   `(hl-line-face ((,class (:background ,twilight-bg-1))))

   ;; ido-mode
   `(ido-first-match ((,class (:foreground ,twilight-yellow :weight bold))))
   `(ido-only-match ((,class (:foreground ,twilight-orange :weight bold))))
   `(ido-subdir ((,class (:foreground ,twilight-yellow))))

   ;; js2-mode
   `(js2-warning-face ((,class (:underline ,twilight-orange))))
   `(js2-error-face ((,class (:foreground ,twilight-red :weight bold))))
   `(js2-jsdoc-tag-face ((,class (:foreground ,twilight-green-1))))
   `(js2-jsdoc-type-face ((,class (:foreground ,twilight-green+2))))
   `(js2-jsdoc-value-face ((,class (:foreground ,twilight-green+3))))
   `(js2-function-param-face ((,class (:foreground, twilight-green+3))))
   `(js2-external-variable-face ((,class (:foreground ,twilight-orange))))

   ;; jabber-mode
   `(jabber-roster-user-away ((,class (:foreground ,twilight-green+2))))
   `(jabber-roster-user-online ((,class (:foreground ,twilight-blue-1))))
   `(jabber-roster-user-dnd ((,class (:foreground ,twilight-red+1))))
   `(jabber-rare-time-face ((,class (:foreground ,twilight-green+1))))
   `(jabber-chat-prompt-local ((,class (:foreground ,twilight-blue-1))))
   `(jabber-chat-prompt-foreign ((,class (:foreground ,twilight-red+1))))
   `(jabber-activity-face((,class (:foreground ,twilight-red+1))))
   `(jabber-activity-personal-face ((,class (:foreground ,twilight-blue+1))))
   `(jabber-title-small ((,class (:height 1.1 :weight bold))))
   `(jabber-title-medium ((,class (:height 1.2 :weight bold))))
   `(jabber-title-large ((,class (:height 1.3 :weight bold))))

   ;; linum-mode
   `(linum ((,class (:foreground ,twilight-green+2 :background ,twilight-bg))))

   ;; magit
   `(magit-section-title ((,class (:foreground ,twilight-yellow :weight bold))))
   `(magit-branch ((,class (:foreground ,twilight-orange :weight bold))))

   ;; message-mode
   `(message-cited-text-face ((,class (:inherit font-lock-comment))))
   `(message-header-name-face ((,class (:foreground ,twilight-green+1))))
   `(message-header-other-face ((,class (:foreground ,twilight-green))))
   `(message-header-to-face ((,class (:foreground ,twilight-yellow :weight bold))))
   `(message-header-from-face ((,class (:foreground ,twilight-yellow :weight bold))))
   `(message-header-cc-face ((,class (:foreground ,twilight-yellow :weight bold))))
   `(message-header-newsgroups-face ((,class (:foreground ,twilight-yellow :weight bold))))
   `(message-header-subject-face ((,class (:foreground ,twilight-orange :weight bold))))
   `(message-header-xheader-face ((,class (:foreground ,twilight-green))))
   `(message-mml-face ((,class (:foreground ,twilight-yellow :weight bold))))
   `(message-separator-face ((,class (:inherit font-lock-comment))))

   ;; mew
   `(mew-face-header-subject ((,class (:foreground ,twilight-orange))))
   `(mew-face-header-from ((,class (:foreground ,twilight-yellow))))
   `(mew-face-header-date ((,class (:foreground ,twilight-green))))
   `(mew-face-header-to ((,class (:foreground ,twilight-red))))
   `(mew-face-header-key ((,class (:foreground ,twilight-green))))
   `(mew-face-header-private ((,class (:foreground ,twilight-green))))
   `(mew-face-header-important ((,class (:foreground ,twilight-blue))))
   `(mew-face-header-marginal ((,class (:foreground ,twilight-fg :weight bold))))
   `(mew-face-header-warning ((,class (:foreground ,twilight-red))))
   `(mew-face-header-xmew ((,class (:foreground ,twilight-green))))
   `(mew-face-header-xmew-bad ((,class (:foreground ,twilight-red))))
   `(mew-face-body-url ((,class (:foreground ,twilight-orange))))
   `(mew-face-body-comment ((,class (:foreground ,twilight-fg :slant italic))))
   `(mew-face-body-cite1 ((,class (:foreground ,twilight-green))))
   `(mew-face-body-cite2 ((,class (:foreground ,twilight-blue))))
   `(mew-face-body-cite3 ((,class (:foreground ,twilight-orange))))
   `(mew-face-body-cite4 ((,class (:foreground ,twilight-yellow))))
   `(mew-face-body-cite5 ((,class (:foreground ,twilight-red))))
   `(mew-face-mark-review ((,class (:foreground ,twilight-blue))))
   `(mew-face-mark-escape ((,class (:foreground ,twilight-green))))
   `(mew-face-mark-delete ((,class (:foreground ,twilight-red))))
   `(mew-face-mark-unlink ((,class (:foreground ,twilight-yellow))))
   `(mew-face-mark-refile ((,class (:foreground ,twilight-green))))
   `(mew-face-mark-unread ((,class (:foreground ,twilight-red-2))))
   `(mew-face-eof-message ((,class (:foreground ,twilight-green))))
   `(mew-face-eof-part ((,class (:foreground ,twilight-yellow))))

   ;; nav
   `(nav-face-heading ((,class (:foreground ,twilight-yellow))))
   `(nav-face-button-num ((,class (:foreground ,twilight-cyan))))
   `(nav-face-dir ((,class (:foreground ,twilight-green))))
   `(nav-face-hdir ((,class (:foreground ,twilight-red))))
   `(nav-face-file ((,class (:foreground ,twilight-fg))))
   `(nav-face-hfile ((,class (:foreground ,twilight-red-4))))

   ;; org-mode
   `(org-agenda-date-today
     ((,class (:foreground "white" :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((,class (:inherit font-lock-comment-face))))
   `(org-archived ((,class (:foreground ,twilight-fg :weight bold))))
   `(org-checkbox ((,class (:background ,twilight-bg+2 :foreground "white"
                                   :box (:line-width 1 :style released-button)))))
   `(org-date ((,class (:foreground ,twilight-blue :underline t))))
   `(org-deadline-announce ((,class (:foreground ,twilight-red-1))))
   `(org-done ((,class (:bold t :weight bold :foreground ,twilight-green+3))))
   `(org-formula ((,class (:foreground ,twilight-yellow-2))))
   `(org-headline-done ((,class (:foreground ,twilight-green+3))))
   `(org-hide ((,class (:foreground ,twilight-bg-1))))
   `(org-level-1 ((,class (:foreground ,twilight-orange))))
   `(org-level-2 ((,class (:foreground ,twilight-green+1))))
   `(org-level-3 ((,class (:foreground ,twilight-blue-1))))
   `(org-level-4 ((,class (:foreground ,twilight-yellow-2))))
   `(org-level-5 ((,class (:foreground ,twilight-cyan))))
   `(org-level-6 ((,class (:foreground ,twilight-green-1))))
   `(org-level-7 ((,class (:foreground ,twilight-red-4))))
   `(org-level-8 ((,class (:foreground ,twilight-blue-4))))
   `(org-link ((,class (:foreground ,twilight-yellow-2 :underline t))))
   `(org-scheduled ((,class (:foreground ,twilight-green+4))))
   `(org-scheduled-previously ((,class (:foreground ,twilight-red-4))))
   `(org-scheduled-today ((,class (:foreground ,twilight-blue+1))))
   `(org-special-keyword ((,class (:foreground ,twilight-yellow-1))))
   `(org-table ((,class (:foreground ,twilight-green+2))))
   `(org-tag ((,class (:bold t :weight bold))))
   `(org-time-grid ((,class (:foreground ,twilight-orange))))
   `(org-todo ((,class (:bold t :foreground ,twilight-red :weight bold))))
   `(org-upcoming-deadline ((,class (:inherit font-lock-keyword-face))))
   `(org-warning ((,class (:bold t :foreground ,twilight-red :weight bold))))

   ;; outline
   `(outline-8 ((,class (:inherit default))))
   `(outline-7 ((,class (:inherit outline-8 :height 1.0))))
   `(outline-6 ((,class (:inherit outline-7 :height 1.0))))
   `(outline-5 ((,class (:inherit outline-6 :height 1.0))))
   `(outline-4 ((,class (:inherit outline-5 :height 1.0))))
   `(outline-3 ((,class (:inherit outline-4 :height 1.0))))
   `(outline-2 ((,class (:inherit outline-3 :height 1.0))))
   `(outline-1 ((,class (:inherit outline-2 :height 1.0))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,twilight-cyan))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,twilight-yellow))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,twilight-blue+1))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,twilight-red+1))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,twilight-orange))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,twilight-blue-1))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,twilight-green+4))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,twilight-red-3))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,twilight-yellow-2))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground ,twilight-green+2))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,twilight-blue+1))))
   `(rainbow-delimiters-depth-12-face ((,class (:foreground ,twilight-red-4))))

   ;; rpm-mode
   `(rpm-spec-dir-face ((,class (:foreground ,twilight-green))))
   `(rpm-spec-doc-face ((,class (:foreground ,twilight-green))))
   `(rpm-spec-ghost-face ((,class (:foreground ,twilight-red))))
   `(rpm-spec-macro-face ((,class (:foreground ,twilight-yellow))))
   `(rpm-spec-obsolete-tag-face ((,class (:foreground ,twilight-red))))
   `(rpm-spec-package-face ((,class (:foreground ,twilight-red))))
   `(rpm-spec-section-face ((,class (:foreground ,twilight-yellow))))
   `(rpm-spec-tag-face ((,class (:foreground ,twilight-blue))))
   `(rpm-spec-var-face ((,class (:foreground ,twilight-red))))

   ;; rst-mode
   `(rst-level-1-face ((,class (:foreground ,twilight-orange))))
   `(rst-level-2-face ((,class (:foreground ,twilight-green+1))))
   `(rst-level-3-face ((,class (:foreground ,twilight-blue-1))))
   `(rst-level-4-face ((,class (:foreground ,twilight-yellow-2))))
   `(rst-level-5-face ((,class (:foreground ,twilight-cyan))))
   `(rst-level-6-face ((,class (:foreground ,twilight-green-1))))

   ;; show-paren
   `(show-paren-mismatch ((,class (:foreground ,twilight-red-3 :background ,twilight-bg :weight bold))))
   `(show-paren-match ((,class (:foreground ,twilight-blue-1 :background ,twilight-bg :weight bold))))

   ;; SLIME
   `(slime-repl-inputed-output-face ((,class (:foreground ,twilight-red))))

   ;; whitespace-mode
   `(whitespace-space ((,class (:background ,twilight-bg :foreground ,twilight-bg+1))))
   `(whitespace-hspace ((,class (:background ,twilight-bg :foreground ,twilight-bg+1))))
   `(whitespace-tab ((,class (:background ,twilight-bg :foreground ,twilight-red))))
   `(whitespace-newline ((,class (:foreground ,twilight-bg+1))))
   `(whitespace-trailing ((,class (:foreground ,twilight-red :background ,twilight-bg))))
   `(whitespace-line ((,class (:background ,twilight-bg-05 :foreground ,twilight-magenta))))
   `(whitespace-space-before-tab ((,class (:background ,twilight-orange :foreground ,twilight-orange))))
   `(whitespace-indentation ((,class (:background ,twilight-yellow :foreground ,twilight-red))))
   `(whitespace-empty ((,class (:background ,twilight-yellow :foreground ,twilight-red))))
   `(whitespace-space-after-tab ((,class (:background ,twilight-yellow :foreground ,twilight-red))))

   ;; wanderlust
   `(wl-highlight-folder-few-face ((,class (:foreground ,twilight-red-2))))
   `(wl-highlight-folder-many-face ((,class (:foreground ,twilight-red-1))))
   `(wl-highlight-folder-path-face ((,class (:foreground ,twilight-orange))))
   `(wl-highlight-folder-unread-face ((,class (:foreground ,twilight-blue))))
   `(wl-highlight-folder-zero-face ((,class (:foreground ,twilight-fg))))
   `(wl-highlight-folder-unknown-face ((,class (:foreground ,twilight-blue))))
   `(wl-highlight-message-citation-header ((,class (:foreground ,twilight-red-1))))
   `(wl-highlight-message-cited-text-1 ((,class (:foreground ,twilight-red))))
   `(wl-highlight-message-cited-text-2 ((,class (:foreground ,twilight-green+2))))
   `(wl-highlight-message-cited-text-3 ((,class (:foreground ,twilight-blue))))
   `(wl-highlight-message-cited-text-4 ((,class (:foreground ,twilight-blue+1))))
   `(wl-highlight-message-header-contents-face ((,class (:foreground ,twilight-green))))
   `(wl-highlight-message-headers-face ((,class (:foreground ,twilight-red+1))))
   `(wl-highlight-message-important-header-contents ((,class (:foreground ,twilight-green+2))))
   `(wl-highlight-message-header-contents ((,class (:foreground ,twilight-green+1))))
   `(wl-highlight-message-important-header-contents2 ((,class (:foreground ,twilight-green+2))))
   `(wl-highlight-message-signature ((,class (:foreground ,twilight-green))))
   `(wl-highlight-message-unimportant-header-contents ((,class (:foreground ,twilight-fg))))
   `(wl-highlight-summary-answered-face ((,class (:foreground ,twilight-blue))))
   `(wl-highlight-summary-disposed-face ((,class (:foreground ,twilight-fg
                                                         :slant italic))))
   `(wl-highlight-summary-new-face ((,class (:foreground ,twilight-blue))))
   `(wl-highlight-summary-normal-face ((,class (:foreground ,twilight-fg))))
   `(wl-highlight-summary-thread-top-face ((,class (:foreground ,twilight-yellow))))
   `(wl-highlight-thread-indent-face ((,class (:foreground ,twilight-magenta))))
   `(wl-highlight-summary-refiled-face ((,class (:foreground ,twilight-fg))))
   `(wl-highlight-summary-displaying-face ((,class (:underline t :weight bold))))

   ;; which-func-mode
   `(which-func ((,class (:foreground ,twilight-green+1)))))

  ;;; custom theme variables
  (custom-theme-set-variables
   'twilight

   ;; fill-column-indicator
   `(fci-rule-color ,twilight-bg-05)))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'twilight)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; twilight-theme.el ends here.
