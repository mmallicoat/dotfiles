;; Manual on initialization file
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Init-File.html#Init-File
;; Good example config
;; https://github.com/hrs/dotfiles/blob/master/emacs/.emacs.d/configuration.org

;; Emacs package manager
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Add text wrapping in org-mode
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

;; Use eww browser to open links from org-mode file
;; Additional code at this link may make it open to separate buffer
;; https://stackoverflow.com/questions/28458784/emacs-and-eww-open-links-in-new-window
(setq browse-url-browser-function 'eww-browse-url)

;; show time
;; https://www.emacswiki.org/emacs/DisplayTime
(display-time-mode 1)

;; Evil plugin for vim emulation
;; https://github.com/emacs-evil/evil
;; https://www.emacswiki.org/emacs/Evil
;; next line to allow TAB to work in org-mode per:
;; https://stackoverflow.com/questions/22878668/emacs-org-mode-evil-mode-tab-key-not-working
(setq evil-want-C-i-jump nil)
(require 'evil)
(evil-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango)))
 '(package-selected-packages (quote (evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
