#!/bin/bash

# Attempt to locally install the package

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:=$HOME/.config}"

matplotlib_dir="$(python -c "import matplotlib; print(matplotlib.get_configdir())" 2>/dev/null)"
if [ $? -ne 0 ]; then
    echo "Error: Matplotlib not installed"
    matplotlib_dir="${matplotlib_dir:=$XDG_CONFIG_HOME/matplotlib}"
    echo "Infering ${matplotlib_dir} as matplotlib config directory"
fi

matplotlib_style_dir="${matplotlib_dir}/stylelib"

latex_dir="${TEXMFHOME:=$HOME/texmf}/tex/latex/uniarticle"
source_dir="$(dirname "${BASH_SOURCE[0]}")"

mkdir -p "${latex_dir}"

cp ${source_dir}/uniarticle/uniarticle.cls "${latex_dir}/"

mkdir -p "${matplotlib_style_dir}"
for file in "${source_dir}/matplotlib/"*".mplstyle"; do
    cp "${file}" "${matplotlib_style_dir}/"
done

