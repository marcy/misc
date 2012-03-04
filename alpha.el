;;; alpha.el --- [toggle|set] alpha

;;; Code:

(defun toggle-alpha ()
  "toggle frame parameter 'alpha [nil|'(90 75)]"
  (interactive)
  (set-frame-parameter nil 'alpha (if (frame-parameter nil 'alpha)
                                      nil
                                    '(90 75))))

(defun set-alpha (alpha-num)
  "set frame parameter 'alpha"
  (interactive "nAlpha: ")
  (set-frame-parameter nil 'alpha (cons alpha-num '(90))))

(provide 'emacs-alpha)
;;; emacs-alpha.el ends here

