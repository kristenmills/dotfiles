GIT_INSTALL_TARGETS := $(HOME)/.config/base16-shell
GIT_UPDATE_TARGETS := $(addprefix update-,$(GIT_INSTALL_TARGETS))

git-install: $(GIT_UPDATE_TARGETS)

$(HOME)/.config/base16-shell:
	git clone https://github.com/chriskempson/base16-shell $@

$(GIT_UPDATE_TARGETS): update-%: | %
	@echo "Updating $|"
	@cd $|
	git pull
	@cd $(DOTFILES)

.PHONY: git-install $(GIT_UPDATE_TARGETS)
