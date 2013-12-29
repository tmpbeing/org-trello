;; from shell: emacs -Q --batch -l ./package.el

(defun org-trello/generate-one-file (one-file splitted-files) "From the `splitted-files` list, generate one `one-file` file."
  (with-temp-file one-file
    (dolist (current-file splitted-files)
      (insert-file current-file))))

(load-file "./namespaces.el") ;; this will load *ORG-TRELLO-FILES*

(org-trello/generate-one-file "org-trello.el" *ORG-TRELLO-FILES*)
