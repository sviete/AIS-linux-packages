TERMUX_PKG_HOMEPAGE=https://gstreamer.freedesktop.org/
TERMUX_PKG_DESCRIPTION="Open source multimedia framework"
TERMUX_PKG_LICENSE="LGPL-2.0"
TERMUX_PKG_VERSION=1.16.2
TERMUX_PKG_SRCURL=https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=e3f044246783fd685439647373fa13ba14f7ab0b346eadd06437092f8419e94e
TERMUX_PKG_DEPENDS="glib"
TERMUX_PKG_BREAKS="gstreamer-dev"
TERMUX_PKG_REPLACES="gstreamer-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-check
--disable-tests
--disable-examples
--disable-benchmarks
--with-unwind=no
--with-dw=no
GLIB_GENMARSHAL=/usr/bin/glib-genmarshal
GLIB_MKENUMS=/usr/bin/glib-mkenums
"

