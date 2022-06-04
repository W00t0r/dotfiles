#!/usr/bin/env zsh

if test -f "~/.zshrc"; then
    ln -s $PWD/zsh/.zshrc ~/.zshrc
fi

if test -f "~/.oh-my-zsh/themes/w00t0r.zsh-theme"; then
    ln -s $PWD/zsh/w00t0r.zsh-theme ~/.oh-my-zsh/themes
fi

if test -f "~/.vimrc"; then
    ln -s $PWD/vim/.vimrc ~/.vimrc
fi

if test -f "~/.config/nvim/init.vim"; then
    ln -s $PWD/vim/.vimrc ~/.config/nvim/init.vim
fi
