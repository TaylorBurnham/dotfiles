export GITHUB_USERNAME="TaylorBurnham"

# 1Password Hooks
if command -v op &> /dev/null; then
  if [ -z "$SSH_CLIENT" ]; then
    export SSH_AUTH_SOCK="~/.1password/agent.sock"
  fi
  source /home/taylor/.config/op/plugins.sh
fi

# Editor
if [ "${VSCODE_INJECTION}" = "1" ]; then
    export EDITOR="code --wait"
elif command -v nvim &> /dev/null; then
    export EDITOR="nvim"
elif command -v vim &> /dev/null; then
    export EDITOR="vim"
else
    export EDITOR="vi"
fi

export XDG_DESKTOP_DIR="$HOME/Desktop"
export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_PICTURES_DIR="$HOME/Media/Pictures"
export XDG_VIDEOS_DIR="$HOME/Media/Videos"

export BROWSER='firefox'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
