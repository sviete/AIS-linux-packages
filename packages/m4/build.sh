TERMUX_PKG_HOMEPAGE=https://www.gnu.org/software/m4/m4.html
TERMUX_PKG_DESCRIPTION="Traditional Unix macro processor"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.4.18
TERMUX_PKG_REVISION=3
TERMUX_PKG_SRCURL=https://mirrors.kernel.org/gnu/m4/m4-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=f2c1e86ca0a404ff281631bdc8377638992744b175afb806e25871a24a934e07
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
ac_cv_header_spawn_h=no
"


