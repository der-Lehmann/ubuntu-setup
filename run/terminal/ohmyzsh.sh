echo "oh-my-zsh installieren"

yes | RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# theme powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

cp ./configs/.zshrc ~/.zshrc
cp ./configs/.p10k.zsh ~/.p10k.zsh

sudo apt install -y zsh-syntax-highlighting