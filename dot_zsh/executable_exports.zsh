# shellcheck shell=bash
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

# Brew
BREW_BIN="/usr/local/bin/brew"
if [ -f "/opt/homebrew/bin/brew" ]; then
    BREW_BIN="/opt/homebrew/bin/brew"
fi

# Gnu shit
if type "${BREW_BIN}" &> /dev/null; then
    export BREW_PREFIX="$("${BREW_BIN}" --prefix)"
    for bindir in "${BREW_PREFIX}/opt/"*"/libexec/gnubin"; do
        export PATH=$bindir:$PATH;
    done
    for bindir in "${BREW_PREFIX}/opt/"*"/bin";
    do
        export PATH=$bindir:$PATH;
    done
    for mandir in "${BREW_PREFIX}/opt/"*"/libexec/gnuman"; do
        export MANPATH=$mandir:$MANPATH;
    done
    for mandir in "${BREW_PREFIX}/opt/"*"/share/man/man1"; do
        export MANPATH=$mandir:$MANPATH;
    done
fi
