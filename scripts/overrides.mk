.zshrc_comment := \#
.zshrc2_comment := \#
.vimrc_comment := \"

OVERRIDES := $(addsuffix .overrides,$(addprefix $(HOME)/,.zshrc .vimrc .zshrc2))

overrides: | $(OVERIDES)

define create-override
	@echo Creating $(1)
	@echo "$(2) For things I don't want to accidently commit" > $(1)
endef

$(OVERRIDES):
	$(call create-override,$@,$($(notdir $(basename $@))_comment))

.PHONY: overrides
