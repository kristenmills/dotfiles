DOTFILES := $(shell pwd)
SUBMODULES := oh-my-zsh-custom/themes/powerlevel9k
MKDIR_TARGETS := $(addprefix $(HOME)/,.config development) $(DOTFILES)/vim/undo

bootstrap: setup install-zsh git-install symlinks

include scripts/symlinks.mk
include scripts/git-install.mk
include scripts/overrides.mk
include scripts/zsh.mk

setup: overrides | $(SUBMODULES) $(MKDIR_TARGETS)

$(SUBMODULES): .gitmodules
	git submodule init
	git submodule update --remote

$(MKDIR_TARGETS):
	mkdir -p $(MKDIR_TARGETS)

$(HOME)/.config/%: | $(HOME)/.config

.PHONY: bootstrap setup
