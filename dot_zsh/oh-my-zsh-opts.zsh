# oh-my-zsh Update Settings
zstyle ':omz:update' mode reminder

CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
HIST_STAMPS="mm/dd/yyyy"

# oh-my-zsh Plugins
plugins=(git 1password aws colorize cp pip python pyenv virtualenv debian)

# Additional Completions
# TODO - Move this somewhere else.
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/additional-completions/
