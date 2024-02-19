# 1Password Hooks
export SSH_AUTH_SOCK=~/.1password/agent.sock
source /home/taylor/.config/op/plugins.sh

# Editor
if [ "$VSCODE_INJECTION" = "1" ]; then
    export EDITOR="code --wait"
elif command -v nvim &> /dev/null; then
    export EDITOR="nvim"
else
    export EDITOR="vim"
fi
