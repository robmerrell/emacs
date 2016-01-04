;; keybinds
(evil-leader/set-key-for-mode 'restclient-mode
  "<SPC>s" 'restclient-http-send-current
  "<SPC>c" 'restclient-copy-curl-command)

(provide 'rob-rest)
