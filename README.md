## Install zsh & oh-my-zsh

Install `zsh` https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#install-and-set-up-zsh-as-default
Install `oh-my-zsh` https://ohmyz.sh/#install

```
brew install zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


ln -s /Users/rvolskyi/Projects/dotfiles/.tmux.conf /Users/rvolskyi/.tmux.conf
```


## Install tmux

Link: https://github.com/tmux-plugins/tpm

WARNING - tmux prefix is \`

```
brew install tmux

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# type this in terminal if tmux is already running - if changes were in file
tmux source ~/.tmux.conf

```

hit  `prefix` + I in clean tmux terminal to install plugin



## Install vim
Link: https://github.com/junegunn/vim-plug


mkdir swap
mkdir backups
mkdir undodir

```
brew install vim

### installs plug - plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cd .vim
mkdir swap # used for swap and backup plugin
mkdir backups

```

## install ripgrep

brew install ripgrep
