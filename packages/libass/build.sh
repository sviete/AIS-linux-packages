TERMUX_PKG_HOMEPAGE=https://github.com/libass/libass
TERMUX_PKG_DESCRIPTION="A portable library for SSA/ASS subtitles rendering"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_VERSION=0.15.0
TERMUX_PKG_SRCURL=https://github.com/libass/libass/releases/download/$TERMUX_PKG_VERSION/libass-$TERMUX_PKG_VERSION.tar.xz
TERMUX_PKG_SHA256=9f09230c9a0aa68ef7aa6a9e2ab709ca957020f842e52c5b2e52b801a7d9e833
TERMUX_PKG_DEPENDS="fontconfig, fribidi, glib, harfbuzz"
TERMUX_PKG_BREAKS="libass-dev"
TERMUX_PKG_REPLACES="libass-dev"


