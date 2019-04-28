GIT_INSTALL_TARGETS := $(addprefix $(HOME)/,.config/base16-shell .oh-my-zsh/custom/themes/powerlevel9k)
GIT_UPDATE_TARGETS := $(addprefix update-,$(GIT_INSTALL_TARGETS))

git-install: $(GIT_UPDATE_TARGETS)

$(HOME)/.config/base16-shell:
	git clone https://github.com/chriskempson/base16-shell $@

$(HOME)/.oh-my-zsh/custom/thems/powerlevel9k:
	git clone https://github.com/bhilburn/powerlevel9k $@

$(GIT_UPDATE_TARGETS): update-%: | %
	@echo "Updating $|"
	@cd $|
	git pull
	@cd $(DOTFILES)

.PHONY: git-install $(GIT_UPDATE_TARGETS)
