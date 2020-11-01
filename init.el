;; mambo emacs config
;; I DO NOT use Evil Mode or any Vi keybindings mode (even though I do have the package installed), I simply use Ctrl with my palm.

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "8f567db503a0d27202804f2ee51b4cd409eab5c4374f57640317b8fcbbd3e466" "7451f243a18b4b37cabfec57facc01bd1fe28b00e101e488c61e1eed913d9db9" default))
 '(package-selected-packages
   '(magit counsel powerline ivy-explorer swiper ivy haskell-mode vterm dracula-theme evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#282a36" :foreground "#f8f8f2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "ADBO" :family "JetBrains Mono")))))

;; Disable unnecessary stuff
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; Enable modes
(global-linum-mode 1)
(ivy-mode 1)
(powerline-default-theme)

;; Macros
(fset 'vi-dd-new
   (kmacro-lambda-form [?\C-e ?\C-a ?\C-k backspace ?\C-n] 0 "%d"))
(fset 'vi-o
      (kmacro-lambda-form [?\C-e return] 0 "%d"))
(fset 'vi-shift-o
      (kmacro-lambda-form [?\C-a return ?\C-p] 0 "%d"))

;; Keybinds
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-i") 'vi-dd-new)
(global-set-key (kbd "C-o") 'vi-o)
(global-set-key (kbd "M-o") 'vi-shift-o)
