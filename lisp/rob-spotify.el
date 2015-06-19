(defun spotify-mac-query (status-type)
  (s-chomp (shell-command-to-string (s-format "osascript -e 'tell application \"Spotify\" to $0 of current track as string'" 'elt (list status-type)))))

(defun spotify-now-playing ()
  (interactive)
  (let ((artist (spotify-mac-query "artist"))
	(track (spotify-mac-query "name"))
	(album (spotify-mac-query "album")))
    (message (concat artist ": " album " -> " track))))

(evil-leader/set-key "sp" 'spotify-now-playing)

(provide 'rob-spotify)
