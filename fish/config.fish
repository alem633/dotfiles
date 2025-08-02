if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_user_key_bindings
  fish_vi_key_bindings
end

source ~/.config/fish/functions/fish_prompt.fish

# qt5ct
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct

# Created by `pipx` on 2025-03-04 17:03:55
set PATH $PATH /home/alessio/.local/bin

# Espressif idf.py
alias get_idf='. $HOME/esp/esp-idf/export.sh'

# go
set PATH $PATH:/usr/local/go/bin
set PATH $PATH:$(go env GOPATH)/bin
