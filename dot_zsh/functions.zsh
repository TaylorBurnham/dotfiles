# Functions
function upgrade_pip_if_venv() {
  if [ -n "$VIRTUAL_ENV" ]; then
    python -m pip install --upgrade pip
  else
    echo "Not in a virtual environment"
  fi
}
alias upgrade_pip=upgrade_pip_if_venv
