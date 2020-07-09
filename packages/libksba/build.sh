TERMUX_PKG_HOMEPAGE=https://gnupg.org/related_software/libksba/
TERMUX_PKG_DESCRIPTION="Library for using X.509 certificates and CMS (Cryptographic Message Syntax) easily accessible"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=1.4.0
TERMUX_PKG_SRCURL=https://www.gnupg.org/ftp/gcrypt/libksba/libksba-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=bfe6a8e91ff0f54d8a329514db406667000cb207238eded49b599761bfca41b6
TERMUX_PKG_DEPENDS="libgpg-error"
TERMUX_PKG_BREAKS="libksba-dev"
TERMUX_PKG_REPLACES="libksba-dev"

