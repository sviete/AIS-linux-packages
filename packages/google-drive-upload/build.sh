TERMUX_PKG_HOMEPAGE=https://github.com/labbots/google-drive-upload
TERMUX_PKG_DESCRIPTION="Bash scripts to upload files to google drive"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="4.4"
TERMUX_PKG_SRCURL=$TERMUX_PKG_HOMEPAGE/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=83d2420b69806e8218354606ed13a6c25c3f3efe6ed9f4cd8791daae2f35cd40
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_DEPENDS='bash, curl'
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_make_install() {
	install -D release/bash/* -t "$TERMUX_PREFIX/bin"
}
