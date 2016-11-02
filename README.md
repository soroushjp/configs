# configs

## dotfiles

Dotfiles are symlinked automatically into their appropriate location in the
home directory by GNU Stow.

1. Install [GNU Stow](https://www.gnu.org/software/stow/stow.html).
2. Run:

  ```console
  cd dotfiles
  ./stow.sh
  ```

## nvim

1. Run:

  ```console
  ln -s ~/.vim ~/.config/nvim
  ln -s ~/.vimrc ~/.config/nvim/init.vim 
  ```

2. Install [vim-plug](https://github.com/junegunn/vim-plug).
3. Run `:PlugInstall`.
4. Fix fonts (OS-specific, for airline).

## But I was planning on setting up my dev env all day today ...

Go build something!
