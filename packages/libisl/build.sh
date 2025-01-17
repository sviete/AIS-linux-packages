TERMUX_PKG_HOMEPAGE=https://libisl.sourceforge.io/
TERMUX_PKG_DESCRIPTION="Library for manipulating sets and relations of integer points bounded by linear constraints"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.24
TERMUX_PKG_SRCURL=http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_${TERMUX_PKG_VERSION}.orig.tar.xz
TERMUX_PKG_SHA256=043105cc544f416b48736fff8caf077fb0663a717d06b1113f16e391ac99ebad
TERMUX_PKG_DEPENDS="libgmp"
TERMUX_PKG_BREAKS="libisl-dev"
TERMUX_PKG_REPLACES="libisl-dev"

