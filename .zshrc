# import oh-my-zsh
if [ -f ~/.zshrc_omz ]; then
	source ~/.zshrc_omz
fi

# import machine-specific configs
# note: this needs to happen before general configs, since some general configs rely on machine-specific env vars
if [ -f ~/.zshrc_machine ]; then
	source ~/.zshrc_machine
fi

# import general configs
if [ -f ~/.zshrc_general ]; then
	source ~/.zshrc_general
fi

# import sensitive keys
if [ -f ~/.zshrc_keys ]; then
	source ~/.zshrc_keys
fi
