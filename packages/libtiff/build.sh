TERMUX_PKG_HOMEPAGE=http://www.simplesystems.org/libtiff/ # Note that http://libtiff.org/ is hijacked
TERMUX_PKG_DESCRIPTION="Support for the Tag Image File Format (TIFF) for storing image data"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=4.2.0
TERMUX_PKG_SRCURL=http://download.osgeo.org/libtiff/tiff-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=eb0484e568ead8fa23b513e9b0041df7e327f4ee2d22db5a533929dfc19633cb
TERMUX_PKG_DEPENDS="libc++, libjpeg-turbo, liblzma, zlib"
TERMUX_PKG_BREAKS="libtiff-dev"
TERMUX_PKG_REPLACES="libtiff-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-cxx --disable-webp"

