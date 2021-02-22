;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Samuel Mott"
      user-mail-address "samuel.e.mott@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(setq-default
 indent-tabs-mode nil           ;; Spaces rather than tabs
 tab-width 4                    ;; Tab width in spaces
 window-combination-resize t    ;; Create new window with size based on all other windows
 x-stretch-cursor t             ;; Stretch cursor to glyph width
 )

(setq undo-limit 80000000       ;; undo limit of 80Mb
      evil-want-fine-undo t     ;; More granular undo while after exiting insert mode
      auto-save-default t       ;; Autosave
      c-default-style "k&r"     ;; K&R style indentation
      c-basic-offset 4          ;; Identation width
      org-startup-with-inline-images t ;; Inline images in org mode
      org-image-actual-width t  ;; Allow image size override
      )

;; Iterate through CamelCase words
(global-subword-mode 1)

;; Word wrap
(global-visual-line-mode t)

;; Drag-stuff everywhere
(drag-stuff-global-mode 1)

;; Org Mode keywords
(after! org
  (setq org-todo-keywords '((sequence "TODO(t)" "STARTED(s)" "|" "DONE(d)" "cancelled(c)"))))


;; Org Roam
(setq org-roam-directory "~/org/roam")
(use-package org-roam-server
  :config
  (setq org-roam-server-host "127.0.0.1"
        org-roam-server-port 17811
        org-roam-server-export-inline-images t
        org-roam-server-authenticate nil
        org-roam-server-network-poll t
        org-roam-server-network-arrows nil
        org-roam-server-network-label-truncate t
        org-roam-server-network-label-truncate-length 60
        org-roam-server-network-label-wrap-length 20))
; (org-roam-server-mode)

;; Org
(use-package org-fancy-priorities
  :hook (org-mode . org-fancy-priorities-mode)
  :config
  (setq org-fancy-priorities-list '("HIGH" "MEDIUM" "LOW")))
