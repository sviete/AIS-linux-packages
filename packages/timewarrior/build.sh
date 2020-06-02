TERMUX_PKG_HOMEPAGE=https://timewarrior.net/
TERMUX_PKG_DESCRIPTION="Command-line time tracker"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_VERSION=1.3.0
TERMUX_PKG_SRCURL=https://github.com/GothenburgBitFactory/timewarrior/releases/download/v$TERMUX_PKG_VERSION/timew-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=c04c3ebefddd485323784409987ae66c11c3ce4c882a290c10934336a196f3e8
TERMUX_PKG_DEPENDS="libandroid-glob, libc++"

termux_step_pre_configure() {
	LDFLAGS+=" -landroid-glob"
}
