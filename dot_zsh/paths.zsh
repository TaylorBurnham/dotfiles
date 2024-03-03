# Paths
APPEND_PATHS=(
    "${HOME}/.local/bin"
    "/usr/local/go/bin"
    "/opt/python/3.9/bin"
    "/opt/wine-stable/bin"
    "${HOME}/Documents/OpenSCAD/libraries/NopSCADlib/scripts"
)
for P in "${APPEND_PATHS[@]}"; do
    if [ -d "$P" ]; then
        export PATH="$PATH:$P"
    fi
done
