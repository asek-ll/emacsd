(defvar rp-refreshed nil)

(defun rp-refresh ()
  (when (not rp-refreshed)
    (setq rp-refreshed t)
    (package-refresh-contents)))

(defun rp (package)
  (when (not (package-installed-p package))
    (rp-refresh)
    (package-install package)))
