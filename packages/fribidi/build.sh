TERMUX_PKG_HOMEPAGE=https://github.com/fribidi/fribidi/
TERMUX_PKG_DESCRIPTION="Implementation of the Unicode Bidirectional Algorithm"
TERMUX_PKG_LICENSE="LGPL-2.0"
TERMUX_PKG_VERSION=1.0.10
TERMUX_PKG_SRCURL=https://github.com/fribidi/fribidi/releases/download/v$TERMUX_PKG_VERSION/fribidi-$TERMUX_PKG_VERSION.tar.xz
TERMUX_PKG_SHA256=7f1c687c7831499bcacae5e8675945a39bacbad16ecaa945e9454a32df653c01
TERMUX_PKG_DEPENDS="glib"
TERMUX_PKG_BREAKS="fribidi-dev"
TERMUX_PKG_REPLACES="fribidi-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-docs"

