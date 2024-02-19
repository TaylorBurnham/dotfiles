# Paths
APPEND_PATHS=(
    ("${HOME}/.local/bin")
    "/usr/local/go/bin"
    "/opt/python/3.9/bin"
    "/opt/wine-stable/bin"
)
for P in "${APPEND_PATHS[@]}"; do
    export PATH="$PATH:$P"
done
