# shellcheck shell=bash
# Paths
APPEND_PATHS=(
    "${HOME}/.local/bin"

    "/usr/local/go/bin"

    "/opt/python/3.9/bin"
    "/opt/python/3.12/bin"

    "/opt/wine-stable/bin"

    "${HOME}/Documents/OpenSCAD/libraries/NopSCADlib/scripts"

    "${HOME}/.yarn/bin"
    "${HOME}/.config/yarn/global/node_modules/.bin"

    "${HOME}/.cargo/bin"
)
for P in "${APPEND_PATHS[@]}"; do
    if [ -d "$P" ]; then
        export PATH="$PATH:$P"
    fi
done
