TERMUX_PKG_HOMEPAGE=http://xmlsoft.org/libxslt/
TERMUX_PKG_DESCRIPTION="XSLT processing library"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
_MAJOR_VERSION=1.1
TERMUX_PKG_VERSION=${_MAJOR_VERSION}.35
TERMUX_PKG_SRCURL=https://download.gnome.org/sources/libxslt/${_MAJOR_VERSION}/libxslt-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=8247f33e9a872c6ac859aa45018bc4c4d00b97e2feac9eebc10c93ce1f34dd79
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--without-python"
TERMUX_PKG_DEPENDS="libxml2, libgcrypt, libgpg-error, zlib"
TERMUX_PKG_BREAKS="libxslt-dev"
TERMUX_PKG_REPLACES="libxslt-dev"

