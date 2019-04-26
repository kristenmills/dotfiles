install-zsh: | $(HOME)/.oh-my-zsh/custom

$(HOME)/.oh-my-zsh:
	@echo "Installing Oh My Zsh. Run exit after it switches your shell"
	$(shell curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)

$(HOME)/.oh-my-zsh/custom: | $(HOME)/.oh-my-zsh
	ln -s $(DOTFILES)/oh-my-zsh-custom/* $(HOME)/.oh-my-zsh/custom

.PHONY: install-zsh
