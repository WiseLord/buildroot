################################################################################
#
# brlaser
#
################################################################################

BRLASER_VERSION = 6
BRLASER_SITE = $(call github,pdewacht,brlaser,v$(BRLASER_VERSION))
BRLASER_LICENSE = GPL-2.0+
BRLASER_LICENSE_FILES = COPYING

BRLASER_DEPENDENCIES = cups

$(eval $(cmake-package))
