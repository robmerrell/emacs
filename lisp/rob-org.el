(add-hook 'org-mode-hook
	  (lambda ()
	    (org-bullets-mode 1)))

(evil-leader/set-key-for-mode 'org-mode "mi" 'org-toggle-inline-images)

(provide 'rob-org)
