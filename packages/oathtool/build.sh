TERMUX_PKG_HOMEPAGE=http://www.nongnu.org/oath-toolkit/
TERMUX_PKG_DESCRIPTION="One-time password components"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=2.6.6
TERMUX_PKG_SRCURL=http://download.savannah.nongnu.org/releases/oath-toolkit/oath-toolkit-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=fd68b315c71ba1db47bcc6e67f598568db4131afc33abd23ed682170e3cb946c
TERMUX_PKG_DEPENDS="xmlsec, zlib"
TERMUX_PKG_BREAKS="oathtool-dev"
TERMUX_PKG_REPLACES="oathtool-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-pam"


