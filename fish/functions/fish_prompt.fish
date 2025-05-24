# ~/.config/fish/functions/fish_prompt.fish

function fish_prompt
  # --- Palette Gruvbox Dark (colori standard) ---
  set -l gruv_red     cc241d
  set -l gruv_green   8ec07c
  set -l gruv_yellow  d79921
  # set -l gruv_blue    458588 # Non usato in questa versione
  set -l gruv_purple  b16286
  set -l gruv_aqua    689d6a
  # set -l gruv_orange  d65d0e # Non usato in questa versione
  set -l gruv_dark_gray 3c3836
  # set -l gruv_light_gray a89984 # Non usato in questa versione
  # set -l gruv_fg      ebdbb2 # Non usato direttamente
  # -------------------------------------------------

  set -l last_status $status

  # --- Linea 1: Info Utente, Host, Path e Git ---

  # Utente@Host (Viola Gruvbox, Grassetto)
  set_color $gruv_dark_gray --bold
  echo -n [

  set_color $gruv_yellow --bold
  echo -n (whoami)

  set_color $gruv_dark_gray --bold
  echo -n @

  set_color $gruv_red --bold
  echo -n (hostname | cut -d . -f 1)

  set_color $gruv_dark_gray --bold
  echo -n ]

  # Separatore (Grigio scuro)
  set_color $gruv_dark_gray
  echo -n ':'

  # Directory Corrente (Acqua Gruvbox)
  set_color $gruv_aqua
  echo -n (prompt_pwd)

  # Info Git (Giallo Gruvbox)
  set_color $gruv_yellow
  echo -n (__fish_git_prompt ' (%s)') # Mostra ' (nome_branch)'

  # Vai a capo per la seconda linea
  echo

  # --- Linea 2: Indicatore di stato e prompt ---

  # Colore basato sull'ultimo comando
  if test $last_status -eq 0
    set_color $gruv_green
  else
    set_color $gruv_red
  end

  # Simbolo del prompt
  echo -n '❯ '

  # Resetta al colore di default
  set_color normal
end
