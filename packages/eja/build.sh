TERMUX_PKG_HOMEPAGE=https://github.com/eja/eja
TERMUX_PKG_DESCRIPTION="eja micro web server"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=13.11.25
TERMUX_PKG_SRCURL=https://github.com/eja/eja/archive/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=eef4baa08e5fd71af871be3c00e70a1f12b95a22ea868cc219fd0eab71ff9e1b
TERMUX_PKG_EXTRA_MAKE_ARGS="DESTDIR=${TERMUX_PREFIX} EJA_PATH=${TERMUX_PREFIX} EJA_PATH_BIN=${TERMUX_PREFIX}/bin EJA_PATH_LIB=${TERMUX_PREFIX}/lib prefix=/"
TERMUX_PKG_BUILD_IN_SRC=true

