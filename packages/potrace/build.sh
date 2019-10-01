TERMUX_PKG_HOMEPAGE=http://potrace.sourceforge.net
TERMUX_PKG_DESCRIPTION="Tool for transforming a bitmap into a smooth, scalable image"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=1.16
TERMUX_PKG_SHA256=be8248a17dedd6ccbaab2fcc45835bb0502d062e40fbded3bc56028ce5eb7acc
# TERMUX_PKG_SRCURL=http://potrace.sourceforge.net/download/$TERMUX_PKG_VERSION/potrace-$TERMUX_PKG_VERSION.tar.gz
# 2018-02-15: Switching to alternative url as above url is down:
TERMUX_PKG_SRCURL=https://distfiles.macports.org/potrace/potrace-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_DEPENDS="zlib"
