export GITHUB_USERNAME="TaylorBurnham"

# 1Password Hooks
if command -v op &>/dev/null; then
  if [ -z "$SSH_CLIENT" ]; then
    export SSH_AUTH_SOCK="~/.1password/agent.sock"
  fi
  source /home/taylor/.config/op/plugins.sh
fi

# Editor
if [ "${VSCODE_INJECTION}" = "1" ]; then
  export EDITOR="code --wait"
elif command -v nvim &>/dev/null; then
  export EDITOR="nvim"
elif command -v vim &>/dev/null; then
  export EDITOR="vim"
else
  export EDITOR="vi"
fi

export BROWSER='firefox'

# xdg-ninja Cleanups
export AWS_CONFIG_FILE="${XDG_CONFIG_HOME}/aws"
export ANSIBLE_HOME="${XDG_CONFIG_HOME}/ansible"
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"
export CUDA_CACHE_PATH="${XDG_CACHE_HOME}/nv"
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc"

export BOGOFILTER_DIR="${XDG_DATA_HOME}/bogofilter"
export DOTNET_CLI_HOME="${XDG_DATA_HOME}/dotnet"
export PLATFORMIO_CORE_DIR="${XDG_DATA_HOME}/platformio"
