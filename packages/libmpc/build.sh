TERMUX_PKG_HOMEPAGE=http://www.multiprecision.org/
TERMUX_PKG_DESCRIPTION="Library for the arithmetic of complex numbers with arbitrarily high precision"
TERMUX_PKG_LICENSE="LGPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.2.1
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://mirrors.kernel.org/gnu/mpc/mpc-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=17503d2c395dfcf106b622dc142683c1199431d095367c6aacba6eec30340459
TERMUX_PKG_DEPENDS="libgmp, libmpfr"
TERMUX_PKG_BREAKS="libmpc-dev"
TERMUX_PKG_REPLACES="libmpc-dev"

