#!/bin/bash
set -e

failed_scripts=()

run_script() {
    local script=$1
    if ! source "$script"; then
        failed_scripts+=("$script")
        echo "❌ Error executing: $script" >&2
    fi
}

source ./run/required.sh

for installer in ./run/desktop/*.sh; do
    run_script "$installer"
done

for installer in ./run/terminal/*.sh; do
    run_script "$installer"
done

source ./run/copy-files.sh
source ./run/settings.sh
source ./run/cleanup.sh

chsh -s $(which zsh)

echo -e "\nSummary"
if [ ${#failed_scripts[@]} -eq 0 ]; then
    echo "✅ All scripts executed successfully!"
else
    echo "❌ The following scripts failed:" >&2
    for script in "${failed_scripts[@]}"; do
        echo "  - $script"
    done
fi