(defun export-subheaders-to-files ()
  "Export each subheader to a separate file based on the EXPORT_FILE_NAME property."
  (interactive)
  (org-map-entries
   (lambda ()
     (let ((filename (org-entry-get nil "EXPORT_FILE_NAME")))
       (when filename
         (org-copy-subtree)
         (with-temp-buffer
           (org-mode)
           (yank)
           (write-file filename)
           (kill-buffer))))
     nil 'tree)))

