TERMUX_PKG_HOMEPAGE=https://github.com/araczkowski/fuse
TERMUX_PKG_DESCRIPTION="FUSE (Filesystem in Userspace) is an interface for userspace programs to export a filesystem to the Linux kernel"
TERMUX_PKG_LICENSE="LGPL-2.1, GPL-2.0"
TERMUX_PKG_MAINTAINER="Andrzej Raczkowski @araczkowski"
TERMUX_PKG_VERSION=1.1
TERMUX_PKG_SRCURL=https://github.com/araczkowski/fuse/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=b3ad520f07f540147446c94cd97c2a945ba9deb978b03ca90bd1069e575cdc25
TERMUX_PKG_BUILD_DEPENDS= "bash, gettext"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-mtab
--enable-example=no
--enable-android=yes
MOUNT_FUSE_PATH=$TERMUX_PREFIX/bin
UDEV_RULES_PATH=$TERMUX_PREFIX/etc/udev/rules.d
INIT_D_PATH=$TERMUX_PREFIX/etc/init.d
"
# Code uses telldir() and seekdir():
TERMUX_PKG_API_LEVEL=23
#
termux_step_pre_configure () {
	./makeconf_termux.sh
}
