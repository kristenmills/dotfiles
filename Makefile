DOTFILES := $(shell pwd)
SUBMODULES := oh-my-zsh-custom/themes/powerlevel9k
MKDIR_TARGETS := $(addprefix $(HOME)/,.config development) $(DOTFILES)/vim/undo

include scripts/*.mk

bootstrap: setup install-zsh git-install symlinks brew-install

setup: overrides | $(SUBMODULES) $(MKDIR_TARGETS)

$(SUBMODULES): .gitmodules
	git submodule init
	git submodule update --remote

$(MKDIR_TARGETS):
	mkdir -p $(MKDIR_TARGETS)

$(HOME)/.config/%: | $(HOME)/.config

.PHONY: bootstrap setup

default: bootstrap
