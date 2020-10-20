TERMUX_PKG_HOMEPAGE=https://www.gnu.org/software/xorriso
TERMUX_PKG_DESCRIPTION="Tool for creating ISO files."
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_VERSION=1.5.3
TERMUX_PKG_SRCURL=https://www.gnu.org/software/xorriso/xorriso-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=77e309d15c9240c74f46c61b32ad3743de1b0a57c623e9e20d6617e8c3e01fb3
TERMUX_PKG_DEPENDS="libiconv, libandroid-support, readline, libbz2, zlib"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-jtethreads"

termux_step_pre_configure() {
	./bootstrap
}
