echo "Python installieren"

sudo apt install -y python3 python3-pip python3-venv

# Pyenv installieren
curl https://pyenv.run | bash

# Set Pyenv environment variables for this script only
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Pyenv-virtualenv installieren
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

# pipx installieren
sudo apt install -y pipx
pipx ensurepath

# poetry installieren
pipx install poetry