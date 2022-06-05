#!/usr/bin/env zsh

timestamp=$(date +%Y-%m-%d_%H.%M.%S)

# Backup if exists
if [ -f "$HOME/.zshrc" ]; then
    cp ~/.zshrc ./zsh/.zshrc.bak.$timestamp
    rm ~/.zshrc
fi
ln -s $PWD/zsh/.zshrc ~/.zshrc

# Backup if exists
if [ -f "$HOME/.oh-my-zsh/themes/w00t0r.zsh-theme" ]; then
    cp ~/.oh-my-zsh/themes/w00t0r.zsh-theme ./zsh/w00t0r.zsh-theme.bak.$timestamp
    rm ~/.oh-my-zsh/themes/w00t0r.zsh-theme
fi
ln -s $PWD/zsh/w00t0r.zsh-theme ~/.oh-my-zsh/themes

# Backup if exists
if [ -f "$HOME/.vimrc" ]; then
    cp ~/.vimrc ./vim/.vimrc.bak.$timestamp
    rm ~/.vimrc
fi
ln -s $PWD/vim/.vimrc ~/.vimrc

# Backup if exists
if [ -f "$HOME/.config/nvim/init.vim" ]; then
    rm ~/.config/nvim/init.vim
fi
ln -s $PWD/vim/.vimrc ~/.config/nvim/init.vim

source ~/.zshrc
