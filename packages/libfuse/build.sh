TERMUX_PKG_HOMEPAGE=https://github.com/araczkowski/fuse
TERMUX_PKG_DESCRIPTION="FUSE (Filesystem in Userspace) interface for userspace programs to export a filesystem to kernel"
TERMUX_PKG_LICENSE="LGPL-2.1, GPL-2.0"
TERMUX_PKG_MAINTAINER="Andrzej Raczkowski @araczkowski"
TERMUX_PKG_VERSION=1.2
TERMUX_PKG_SRCURL=https://github.com/araczkowski/fuse/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=6aa4c4da977133f34251ae8e47bee51298f6a5a215360ceaa0ac84d072e92678
TERMUX_PKG_DEPENDS="bash, gettext, autoconf, automake, libtool"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-mtab
--enable-example=no
--enable-android=yes
MOUNT_FUSE_PATH=$TERMUX_PREFIX/bin
UDEV_RULES_PATH=$TERMUX_PREFIX/etc/udev/rules.d
INIT_D_PATH=$TERMUX_PREFIX/etc/init.d
"
# Code uses telldir() and seekdir():
TERMUX_PKG_API_LEVEL=24
#
termux_step_pre_configure () {
	./makeconf_termux.sh
}
