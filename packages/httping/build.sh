TERMUX_PKG_HOMEPAGE=https://www.vanheusden.com/httping/
TERMUX_PKG_DESCRIPTION="ping-like program for http-requests"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=2.5
TERMUX_PKG_REVISION=5
TERMUX_PKG_SRCURL=https://fossies.org/linux/www/httping-${TERMUX_PKG_VERSION}.tgz
TERMUX_PKG_SHA256=3e895a0a6d7bd79de25a255a1376d4da88eb09c34efdd0476ab5a907e75bfaf8
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_DEPENDS="fftw, libandroid-support, ncurses, openssl"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--with-fftw3 --with-ncurses --with-openssl"

