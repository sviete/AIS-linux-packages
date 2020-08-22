TERMUX_PKG_HOMEPAGE=http://dushistov.github.io/sdcv/
TERMUX_PKG_DESCRIPTION="StarDict Console Version"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=0.5.3
TERMUX_PKG_SRCURL=https://github.com/Dushistov/sdcv/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=75fb95b1607fdd2fb9f7795d3432d295904614150575ae539202f680499803c9
TERMUX_PKG_DEPENDS="glib, libc++, readline, zlib"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DENABLE_NLS=off"

