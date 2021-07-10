TERMUX_PKG_HOMEPAGE=https://github.com/cloudflare/cloudflared/
TERMUX_PKG_DESCRIPTION="Argo Tunnel client"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@araczkowski"
TERMUX_PKG_VERSION=2021.6.0
TERMUX_PKG_SRCURL=https://github.com/cloudflare/cloudflared/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=2c36b9511a226143f16205d50f85b695e877518ab2e5a1ca2decd8902d037520

termux_step_make() {
	termux_setup_golang

	cd "$TERMUX_PKG_SRCDIR"

	make cloudflared
}

termux_step_make_install() {
	cp ${TERMUX_PKG_SRCDIR}/cloudflared $TERMUX_PREFIX/bin/cloudflared
}
