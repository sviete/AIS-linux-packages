TERMUX_PKG_HOMEPAGE=http://www.simplesystems.org/libtiff/ # Note that http://libtiff.org/ is hijacked
TERMUX_PKG_DESCRIPTION="Support for the Tag Image File Format (TIFF) for storing image data"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=4.3.0
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=http://download.osgeo.org/libtiff/tiff-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=0e46e5acb087ce7d1ac53cf4f56a09b221537fc86dfc5daaad1c2e89e1b37ac8
TERMUX_PKG_DEPENDS="libc++, libjpeg-turbo, liblzma, zlib, zstd"
TERMUX_PKG_BREAKS="libtiff-dev"
TERMUX_PKG_REPLACES="libtiff-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-cxx --disable-webp"

