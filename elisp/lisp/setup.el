;;(setq inhibit-startup-message t)

(load-library "packages")
(load-library "ui")
;(load-library "pythonsetup")
;; save command history between sessions
(savehist-mode)

;; move the buffer by a line, while keeping the cursor at the same place
(global-set-key (kbd "C-.") 'scroll-up-line)
(global-set-key (kbd "C-,") 'scroll-down-line)

(setq enable-remote-dir-locals t)


(setq gdb-many-windows t
      gdb-use-separate-io-buffer t)

(when (fboundp 'windmove-default-keybindings)
 (windmove-default-keybindings 'meta))
