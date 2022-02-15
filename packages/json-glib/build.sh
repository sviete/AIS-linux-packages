TERMUX_PKG_HOMEPAGE=https://wiki.gnome.org/Projects/JsonGlib
TERMUX_PKG_DESCRIPTION="GLib JSON manipulation library"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.6.6
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=https://download.gnome.org/sources/json-glib/${TERMUX_PKG_VERSION:0:3}/json-glib-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=96ec98be7a91f6dde33636720e3da2ff6ecbb90e76ccaa49497f31a6855a490e
TERMUX_PKG_DEPENDS="glib"
TERMUX_PKG_BREAKS="json-glib-dev"
TERMUX_PKG_REPLACES="json-glib-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dintrospection=disabled
-Dgtk_doc=disabled
"
TERMUX_PKG_RM_AFTER_INSTALL="
share/installed-tests
libexec/installed-tests
bin/
"

