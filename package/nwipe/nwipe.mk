################################################################################
#
# nwipe
#
################################################################################

NWIPE_VERSION = v0.24
NWIPE_SITE = $(call github,martijnvanbrummelen,nwipe,$(NWIPE_VERSION))
NWIPE_DEPENDENCIES = ncurses parted

define NWIPE_INITSH
	(cd $(@D) && ./init.sh);
endef

NWIPE_POST_PATCH_HOOKS += NWIPE_INITSH


$(eval $(autotools-package))
