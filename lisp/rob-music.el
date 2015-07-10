(defun itunes-mac-query (status-type)
  (s-chomp (shell-command-to-string (s-format "osascript -e 'tell application \"iTunes\" to $0 of current track as string'" 'elt (list status-type)))))

(defun itunes-now-playing ()
  (interactive)
  (let ((artist (itunes-mac-query "artist"))
	(track (itunes-mac-query "name"))
	(album (itunes-mac-query "album")))
    (message (concat artist " ::: " album " -> " track))))

(evil-leader/set-key "sp" 'itunes-now-playing)

(provide 'rob-music)
