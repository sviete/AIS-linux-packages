TERMUX_PKG_HOMEPAGE=https://www.gnu.org/software/xorriso
TERMUX_PKG_DESCRIPTION="Tool for creating ISO files."
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_VERSION=1.5.3
TERMUX_PKG_SRCURL=https://www.gnu.org/software/xorriso/xorriso-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=4ef4c476a606a68c9ab53bb4f8130f4115543d5bd0f4cfb4947e70870bf64e56
TERMUX_PKG_DEPENDS="libiconv, libandroid-support, readline, libbz2, zlib"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-jtethreads"

termux_step_pre_configure() {
	./bootstrap
}
