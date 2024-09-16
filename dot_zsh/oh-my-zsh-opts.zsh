DISABLE_AUTO_UPDATE="true"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
HIST_STAMPS="mm/dd/yyyy"
HISTSIZE=100000
SAVEHIST=9000

HISTFILE="${XDG_STATE_HOME}/zsh/history"

# Standard oh-my-zsh Plugins
plugins=(
  colorize cp debian
  sudo command-not-found

  pip python pyenv virtualenv

  zsh-syntax-highlighting
  zsh-completions
  zsh-interactive-cd
)

# Conditional plugins if the command exists
typeset -A COMMAND_PLUGIN_MAP=(
  ["op"]="1password"
  ["aws"]="aws"
  ["code"]="vscode"
  ["git"]="git"
  ["git-lfs"]="git-lfs"
)

# shellcheck ignore=SC1073
for k v in ${(kv)COMMAND_PLUGIN_MAP}; do
  if command -v "${k}" &>/dev/null; then
    plugins+=("${v}");
  fi;
done
