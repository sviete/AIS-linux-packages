TERMUX_PKG_HOMEPAGE=https://libzip.org/
TERMUX_PKG_DESCRIPTION="Library for reading, creating, and modifying zip archives"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.9.2"
TERMUX_PKG_SRCURL=https://github.com/nih-at/libzip/releases/download/v$TERMUX_PKG_VERSION/libzip-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=fd6a7f745de3d69cf5603edc9cb33d2890f0198e415255d0987a0cf10d824c6f
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libbz2, liblzma, openssl, zlib, zstd"
TERMUX_PKG_BREAKS="libzip-dev"
TERMUX_PKG_REPLACES="libzip-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DENABLE_GNUTLS=NO
-DENABLE_MBEDTLS=NO
-DENABLE_OPENSSL=YES
"

