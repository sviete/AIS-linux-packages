TERMUX_PKG_HOMEPAGE=https://www.kde.org/
TERMUX_PKG_DESCRIPTION="Method collection to manipulate strings using various encodings (KDE)"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="Simeon Huang <symeon@librehat.com>"
TERMUX_PKG_VERSION=5.71.0
TERMUX_PKG_REVISION=3
TERMUX_PKG_SRCURL="http://download.kde.org/stable/frameworks/${TERMUX_PKG_VERSION%.*}/kcodecs-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=3392c4df652e3a44a2b941ccb419dee9521642e503104de403ec1c6be9f43a28
TERMUX_PKG_DEPENDS="qt5-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt5-qtbase-cross-tools, qt5-qttools-cross-tools"
