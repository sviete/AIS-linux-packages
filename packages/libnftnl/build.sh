TERMUX_PKG_HOMEPAGE=https://www.netfilter.org/projects/libnftnl/
TERMUX_PKG_DESCRIPTION="Netfilter library providing interface to the nf_tables subsystem"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.2.2
TERMUX_PKG_SRCURL=https://netfilter.org/projects/libnftnl/files/libnftnl-$TERMUX_PKG_VERSION.tar.bz2
TERMUX_PKG_SHA256=9efc004f9d15918d68f9e98e194d55e030168f33bb67c3e7a545b740c9ed6d0a
TERMUX_PKG_DEPENDS="libmnl"
TERMUX_PKG_BREAKS="libnftnl-dev"
TERMUX_PKG_REPLACES="libnftnl-dev"

