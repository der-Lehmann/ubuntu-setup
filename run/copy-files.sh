echo "Die dotfiles kopieren"

sudo cp ./configs/.Xresources ~/.Xresources

mkdir -p ~/.scripts
for script in ./configs/scripts/*; do
    if [ -f "$script" ]; then
        sudo cp "$script" ~/.scripts/
        sudo chmod +x ~/.scripts/$(basename "$script")
    fi
done

for binary in ./configs/bin/*; do
    if [ -f "$binary" ]; then
        sudo cp "$binary" /usr/local/bin/
        sudo chmod +x /usr/local/bin/$(basename "$binary")
    fi
done