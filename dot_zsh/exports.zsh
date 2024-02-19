export GITHUB_USERNAME="TaylorBurnham"

# 1Password Hooks
export SSH_AUTH_SOCK="~/.1password/agent.sock"
source /home/taylor/.config/op/plugins.sh

# Editor
if [ "${VSCODE_INJECTION}" = "1" ]; then
    export EDITOR="code --wait"
elif command -v nvim &> /dev/null; then
    export EDITOR="nvim"
else
    export EDITOR="vim"
fi

export XDG_DESKTOP_DIR="$HOME/Desktop"
export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_PICTURES_DIR="$HOME/Media/Pictures"
export XDG_VIDEOS_DIR="$HOME/Media/Videos"

export BROWSER='firefox'
