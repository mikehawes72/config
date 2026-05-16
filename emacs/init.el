;;; -*- lexical-binding: t -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes '(wheatgrass))
 '(package-selected-packages '(go-mode))
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrains Mono" :foundry "outline" :slant normal :weight regular :height 102 :width normal)))))

;; 
;; MIKE'S CONFIG STARTS HEREW
;;

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Hide the menu
(menu-bar-mode -1)

;; Use relative line numnbers.
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

;; Get rid of Emacs droppings.
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))

(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Get rid of the start-up screen.
(setq inhibit-startup-screen t)

;; Move deleted files to the recycle bin.
(setq delete-by-moving-to-trash t)

;; Enable the commands for converting text in a region to upper and lower case.
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; Stop the irritating noise.
(setq visible-bell t)
