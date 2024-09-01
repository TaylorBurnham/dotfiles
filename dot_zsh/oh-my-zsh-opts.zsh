# shellcheck shell=bash
DISABLE_AUTO_UPDATE="true"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
HIST_STAMPS="mm/dd/yyyy"
HISTFILE="${XDG_STATE_HOME}/zsh/history"
HISTSIZE=10000
SAVEHIST=9000

# oh-my-zsh Plugins
plugins=(git git-lfs aws
  colorize cp debian fzf
  pip python pyenv virtualenv
  zsh-syntax-highlighting zsh-completions
  zsh-interactive-cd
)

if command -v op &>/dev/null; then
  plugins=($plugins 1password)
fi
