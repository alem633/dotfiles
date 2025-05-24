# ~/.config/fish/functions/fish_prompt.fish
function fish_prompt
  # Palette Gruvbox Dark
  set -l bg          "#282828"
  set -l fg          "#ebdbb2"
  set -l yellow      "#d79921"
  set -l blue        "#458588"
  set -l green       "#98971a"
  set -l red         "#cc241d"

  # Elementi del prompt
  set -l user_host (set_color --bold $yellow)"$USER"(set_color $fg)"@"(set_color --bold $blue)(hostname -s)
  set -l directory (set_color --bold $green)(prompt_pwd)
  set -l prompt_symbol (set_color --bold $red)"❯ "

  # Git status (se in una repo)
  if git rev-parse --is-inside-work-tree >/dev/null 2>&1
    set -l git_branch (git branch --show-current 2>/dev/null)
    set -l git_status (set_color $fg)"git:"(set_color --bold $yellow)"$git_branch"
    echo -n -s $user_host " " $directory " " $git_status
  else
    echo -n -s $user_host " " $directory
  end

  # Nuova linea e simbolo finale
  echo
  echo -n -s $prompt_symbol
  set_color normal
end
