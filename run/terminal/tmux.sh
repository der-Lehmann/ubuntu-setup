echo "tmux installieren"

sudo apt install -y tmux

mkdir -p ~/.config/tmux/plugins/catppuccin
git clone -b v2.1.2 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux


cp ./configs/tmux/tmux.conf ~/.config/tmux/tmux.conf