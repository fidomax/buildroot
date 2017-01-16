################################################################################
#
# openscada
#
################################################################################

OPENSCADA_VERSION = kium
#OPENSCADA_SOURCE = mc-$(MC_VERSION).tar.xz
OPENSCADA_SITE = http://192.168.1.251/kium/openscada.git
OPENSCADA_SITE_METHOD = git
OPENSCADA_LICENSE = GPLv3+
OPENSCADA_LICENSE_FILES = COPYING
OPENSCADA_DEPENDENCIES = gd zlib sqlite openssl lm-sensors fftw host-pkgconf
OPENSCADA_AUTORECONF = YES
OPENSCADA_CONF_OPTS += --enable-CrossCompile --disable-FireBird --disable-PostgreSQL --disable-MySQL --disable-SoundCard --disable-SNMP --disable-DiamondBoards --disable-QTCfg --disable-QTStarter --disable-Vision --enable-FT3 --enable-MSO

$(eval $(autotools-package))
