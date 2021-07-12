TERMUX_PKG_HOMEPAGE=https://github.com/cloudflare/cloudflared/
TERMUX_PKG_DESCRIPTION="Argo Tunnel client"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@araczkowski"
TERMUX_PKG_VERSION=2021.6.0
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/cloudflare/cloudflared/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=195e3e8f9208dc329b161098695b8a26e426ad641d59ba1a2f9d662e2b01063c

termux_step_make() {
	termux_setup_golang

	cd "$TERMUX_PKG_SRCDIR"
	sed -i 's/linux/android/g' Makefile
	make cloudflared
}

termux_step_make_install() {
	cp ${TERMUX_PKG_SRCDIR}/cloudflared $TERMUX_PREFIX/bin/cloudflared
	mkdir $HOME/.cloudflared
	curl -L --url https://ai-speaker.com/ota/ais_cloudflared --output $HOME/.cloudflared/cert.pem
}
