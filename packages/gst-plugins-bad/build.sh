TERMUX_PKG_HOMEPAGE=https://gstreamer.freedesktop.org/
TERMUX_PKG_DESCRIPTION="GStreamer Bad Plug-ins"
TERMUX_PKG_LICENSE="LGPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.20.3
TERMUX_PKG_SRCURL=https://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=7a11c13b55dd1d2386dd902219e41cbfcdda8e1e0aa3e738186c95074b35da4f
TERMUX_PKG_DEPENDS="gst-plugins-base, libbz2, libcurl, libiconv, libpng, librsvg, libssh2, libsndfile, libx264, libx265, littlecms, openal-soft, openjpeg"
TERMUX_PKG_BUILD_DEPENDS="gst-plugins-gl-headers"
TERMUX_PKG_BREAKS="gst-plugins-bad-dev"
TERMUX_PKG_REPLACES="gst-plugins-bad-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dandroidmedia=disabled
-Dexamples=disabled
-Drtmp=disabled
-Dtests=disabled
-Dzbar=disabled
-Dwebp=disabled
-Dvulkan=disabled
-Dhls-crypto=openssl
"

