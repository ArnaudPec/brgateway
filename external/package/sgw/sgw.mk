################################################################################
#
# sgw
#
################################################################################

SGW_VERSION = 816e81e5c4032de9d415e456e22312de6da918d3
SGW_SITE = $(call github,ArnaudPec,single_chan_pkt_fwd,$(SGW_VERSION))
#SGW_INSTALL_TARGET =
SGW_LICENSE = GPL-2.0+
SGW_LICENSE_FILES = LICENSE.md
SGW_AUTORECONF = YES
#SGW_DEPENDENCIES = wiringpi

$(eval $(autotools-package))
