# Setup fzf path
# ---------
local xdg_path="${XDG_CONFIG_HOME:-$HOME/.config}"
if [[ -d "${xdg_path}/fzf" ]]; then
  local fzf_path="${xdg_path}/fzf"
elif [[ -d "${HOME}/.fzf" ]]; then
  local fzf_path="${HOME}/.fzf"
else
  echo "Could not find fzf install"
  exit 1
fi

# Setup fzf
# ---------
if [[ ! "$PATH" == *${fzf_path}/bin* ]]; then
  export PATH="$PATH:${fzf_path}/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "${fzf_path}/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "${fzf_path}/shell/key-bindings.zsh"

