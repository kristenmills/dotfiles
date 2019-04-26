SYMLINK_TARGETS := $(addprefix $(HOME)/,.config/powerline .config/nvim .vim .gitconfig .gitignore_global .tmux.conf .vimrc .zshrc)
BACKUP_SYMLINK_TARGETS := $(addpefix backup-,$(SYMLINK_TARGETS))

define backup-symlink
	if [ -e $(1) ] && [! -h $(1)]; then
		mv $(1) $(1).old
	fi
endef

define create-symlink
	ln -s $(1) $@
endef

symlinks: $(BACKUP_SYMLINK_TARGETS)

$(HOME)/.config/powerline:
	$(call create-symlink,$(DOTFILES)/powerline-config)

$(HOME)/.vim:
	$(call create-symlink,$(DOTFILES)/vim)

$(HOME)/.config/nvim:
	$(call create-symlink,$(DOTFILES)/nvim)

$(HOME)/.gitconfig:
	$(call create-symlink,$(DOTFILES)/gitconfig)

$(HOME)/.gitignore_global:
	$(call create-symlink,$(DOTFILES)/gitignore_global)

$(HOME)/.tmux.conf:
	$(call create-symlink,$(DOTFILES)/tmux.conf)

$(HOME)/.vimrc:
	$(call create-symlink,$(DOTFILES)/vimrc)

$(HOME)/.zshrc:
	$(call create-symlink,$(DOTFILES)/zshrc)

$(BACKUP_SYMLINK_TARGETS): update-%: | %
	$(call backup-symlink,$|)

.PHONY: symlinks $(BACKUP_SYMLINK_TARGETS)
