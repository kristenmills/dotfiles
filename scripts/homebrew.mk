BREW_FORMULAS := python3 autojump python fortune cowsay rbenv ruby-build tmux rg fzf
BREW_CASKS := "homebrew/cask-fonts"
BREW_homebrew/cask-fonts_FORMULAS := font-firacaode-nerd-font

define install-formula
	$(if $(shell brew outdated $(2)),
		@echo "brew upgrade $(2)"; \
		HOMEBREW_NO_AUTO_UPDATE=1 brew $(1) upgrade "$(2)";, \
		$(if $(shell brew ls --versions $(2)), \
		@echo "$(2) is up to date";, \
		@echo "brew install $(2)"; \
		HOMEBREW_NO_AUTO_UPDATE=1 brew $(1) install "$(2)"))
endef

define install-formulas
	$(foreach formula,$(1),$(call install-formula,$(2),$(formula)))
endef

install-homebrew:
	@if which -s brew ; then \
		echo "Updating Homebrew"; \
		brew update; \
	else \
		echo "Installing Homebrew"; \
		curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install | ruby; \
	fi

brew-install: install-homebrew
	$(call install-formulas,$(BREW_FORMULAS),)

brew-tap-casks: install-homebrew
	$(foreach cask,$(BREW_CASKS),$(shell brew tap $(cask)))

brew-cask-install: brew-tap-casks
	$(foreach cask,$(BREW_CASKS),$(call install-formulas,$(BREW_$(cask)_FORMULAS),cask)

.PHONY: brew-install brew-cask-install install-homebrew brew-tap-casks
