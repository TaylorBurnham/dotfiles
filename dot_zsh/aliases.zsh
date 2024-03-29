alias xc="xsel -bc && echo Cleared Clipboard"
alias mv='nocorrect mv -i -v'
alias cp='nocorrect cp -i -v'
alias mkdir='nocorrect mkdir -p -v'
alias ln='nocorrect ln -v'
alias ls='ls --color=auto'
alias open='xdg-open'

# Utilities
alias dockcheck\.sh="${HOME}/.local/bin/.dockcheck/dockcheck.sh -n"

# Ansible alias'
alias ansible="${HOME}/.virtualenvs/ansible-env/bin/ansible"
alias ansible-builder="${HOME}/.virtualenvs/ansible-env/bin/ansible-builder"
alias ansible-community="${HOME}/.virtualenvs/ansible-env/bin/ansible-community"
alias ansible-config="${HOME}/.virtualenvs/ansible-env/bin/ansible-config"
alias ansible-connection="${HOME}/.virtualenvs/ansible-env/bin/ansible-connection"
alias ansible-console="${HOME}/.virtualenvs/ansible-env/bin/ansible-console"
alias ansible-doc="${HOME}/.virtualenvs/ansible-env/bin/ansible-doc"
alias ansible-galaxy="${HOME}/.virtualenvs/ansible-env/bin/ansible-galaxy"
alias ansible-inventory="${HOME}/.virtualenvs/ansible-env/bin/ansible-inventory"
alias ansible-lint="${HOME}/.virtualenvs/ansible-env/bin/ansible-lint"
alias ansible-navigator="${HOME}/.virtualenvs/ansible-env/bin/ansible-navigator"
alias ansible-playbook="${HOME}/.virtualenvs/ansible-env/bin/ansible-playbook"
alias ansible-pull="${HOME}/.virtualenvs/ansible-env/bin/ansible-pull"
alias ansible-runner="${HOME}/.virtualenvs/ansible-env/bin/ansible-runner"
alias ansible-test="${HOME}/.virtualenvs/ansible-env/bin/ansible-test"
alias ansible-vault="${HOME}/.virtualenvs/ansible-env/bin/ansible-vault"

# Sourced from Evan Han's dotfile repo
boop () {
  local last="$?"
  if [[ "$last" == '0' ]]; then
    sfx good
  else
    sfx bad
  fi
  $(exit "$last")
}
