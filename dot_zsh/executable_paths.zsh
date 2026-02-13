# shellcheck shell=bash
APPEND_PATHS=(
)
for P in "${APPEND_PATHS[@]}"; do
    if [ -d "$P" ]; then
        export PATH="$PATH:$P"
    fi
done