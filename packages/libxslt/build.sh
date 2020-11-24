TERMUX_PKG_HOMEPAGE=http://xmlsoft.org/libxslt/
TERMUX_PKG_DESCRIPTION="XSLT processing library"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_VERSION=1.1.34
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=ftp://xmlsoft.org/libxslt/libxslt-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=98b1bd46d6792925ad2dfe9a87452ea2adebf69dcb9919ffd55bf926a7f93f7f
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--without-python"
TERMUX_PKG_DEPENDS="libxml2, libgcrypt, libgpg-error, zlib"
TERMUX_PKG_BREAKS="libxslt-dev"
TERMUX_PKG_REPLACES="libxslt-dev"

