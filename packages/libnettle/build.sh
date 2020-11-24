TERMUX_PKG_HOMEPAGE=https://www.lysator.liu.se/~nisse/nettle/
TERMUX_PKG_DESCRIPTION="Cryptographic library that is designed to fit easily in more or less any context"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=3.6
TERMUX_PKG_SRCURL=https://mirrors.kernel.org/gnu/nettle/nettle-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=d24c0d0f2abffbc8f4f34dcf114b0f131ec3774895f3555922fe2f40f3d5e3f1
TERMUX_PKG_DEPENDS="libgmp"
TERMUX_PKG_BREAKS="libnettle-dev"
TERMUX_PKG_REPLACES="libnettle-dev"

