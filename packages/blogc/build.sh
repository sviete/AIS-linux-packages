TERMUX_PKG_HOMEPAGE=https://blogc.rgm.io/
TERMUX_PKG_DESCRIPTION="A blog compiler"
TERMUX_PKG_LICENSE="BSD 3-Clause"
TERMUX_PKG_MAINTAINER="Rafael Martins @rafaelmartins"
TERMUX_PKG_VERSION=0.20.0
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/blogc/blogc/releases/download/v$TERMUX_PKG_VERSION/blogc-$TERMUX_PKG_VERSION.tar.bz2
TERMUX_PKG_SHA256=4ed93a30c60b1260f49dcca007540591d624b813d71ebbe57faa5f64cd3197a3
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-git-receiver --enable-make --enable-runserver --disable-tests --disable-valgrind"


