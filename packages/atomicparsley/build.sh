TERMUX_PKG_HOMEPAGE=https://bitbucket.org/wez/atomicparsley
TERMUX_PKG_DESCRIPTION="Read, parse and set metadata of MPEG-4 and 3gp files"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=0.9.6
TERMUX_PKG_REVISION=5
TERMUX_PKG_SRCURL=https://codeload.github.com/wez/atomicparsley/tar.gz/${TERMUX_PKG_VERSION}
TERMUX_PKG_SHA256=18d556c653854a1140d117145bb5bee062be02f45992e2fa94a5cba5936c7322
TERMUX_PKG_DEPENDS="libc++, zlib"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="ac_cv_func_lroundf=yes"

termux_step_pre_configure() {
	./autogen.sh

	# Avoid the configure script from using g++ for linking:
	export OBJCXX=$CXX
}
