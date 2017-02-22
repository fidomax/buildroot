################################################################################
#
# canmon
#
################################################################################

CANMON_VERSION = master
CANMON_SITE = http://192.168.1.251/kium/canmon.git
CANMON_SITE_METHOD = git
CANMON_LICENSE = GPLv3+

define CANMON_BUILD_CMDS
	$(TARGET_CC) $(CANMON_CFLAGS) $(TARGET_LDFLAGS) -o $(@D)/readcan $(@D)/readcan.c
	$(TARGET_CC) $(CANMON_CFLAGS) $(TARGET_LDFLAGS) -o $(@D)/writecan $(@D)/writecan.c
endef

define CANMON_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/readcan $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 -D $(@D)/writecan $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))
