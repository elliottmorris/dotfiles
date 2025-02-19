
# install themes for alacritty

# We use Alacritty's default Linux config directory as our storage location here.
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes

# isntall zsh 
sudo apt install zsh

# Make it your default shell: 
chsh -s $(which zsh).

# install powerlevel 10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# install autocomplete and syntax highlighting
sudo apt install zsh-autosuggestions 
sudo apt install zsh-syntax-highlighting

# now install tmux
sudo apt install tmux

# install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
touch ~/.tmux.conf
## add contents from this repo
tmux source ~/.tmux.conf

# make sure colors work in tmux
export TERM='xterm-256color'
save editor defaults

export EDITOR='nvim'
export VISUAL='nvim'

# install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# set up neovim config
mkdir ~/.config/nvim
## add folder contents from this repo
echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >>~/.zshrc
