TERMUX_PKG_HOMEPAGE=http://www.simplesystems.org/libtiff/ # Note that http://libtiff.org/ is hijacked
TERMUX_PKG_DESCRIPTION="Support for the Tag Image File Format (TIFF) for storing image data"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_VERSION=4.1.0
TERMUX_PKG_REVISION=3
TERMUX_PKG_SRCURL=http://download.osgeo.org/libtiff/tiff-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=5d29f32517dadb6dbcd1255ea5bbc93a2b54b94fbf83653b4d65c7d6775b8634
TERMUX_PKG_DEPENDS="libc++, libjpeg-turbo, liblzma, zlib"
TERMUX_PKG_BREAKS="libtiff-dev"
TERMUX_PKG_REPLACES="libtiff-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-cxx --disable-webp"

