; -*-mode:emacs-lisp; coding: utf-8; -*-

(defun open-buffer ()
  (interactive)
  (let ((bname buffer-file-name)
        (open-cmd "open")
        (cmd ""))
    (if (not (eq bname nil))
        (setq cmd (concat open-cmd " -e " bname))
      (setq cmd (concat open-cmd " ./")))
    (message cmd)
    (shell-command-to-string cmd)))
