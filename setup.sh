#!/usr/bin/env zsh

timestamp=$(date +%Y-%m-%d_%H.%M.%S)

if [ ! -f "~/.zshrc" ]; then
    cp ~/.zshrc ./zsh/.zshrc.bak.$timestamp
    rm ~/.zshrc
    ln -s $PWD/zsh/.zshrc ~/.zshrc
fi

if [ ! -f "~/.oh-my-zsh/themes/w00t0r.zsh-theme" ]; then
    cp ~/.oh-my-zsh/themes/w00t0r.zsh-theme ./zsh/w00t0r.zsh-theme.bak.$timestamp
    rm ~/.oh-my-zsh/themes/w00t0r.zsh-theme
    ln -s $PWD/zsh/w00t0r.zsh-theme ~/.oh-my-zsh/themes
fi

if [ ! -f "~/.vimrc" ]; then
    cp ~/.vimrc ./vim/.vimrc.bak.$timestamp
    rm ~/.vimrc
    ln -s $PWD/vim/.vimrc ~/.vimrc
fi

if [ ! -f "~/.config/nvim/init.vim" ]; then
    rm ~/.config/nvim/init.vim
    ln -s $PWD/vim/.vimrc ~/.config/nvim/init.vim
fi

source ~/.zshrc
