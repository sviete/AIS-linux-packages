TERMUX_PKG_HOMEPAGE=https://www.sqlite.org
TERMUX_PKG_DESCRIPTION="tcl bindings for SQLite"
TERMUX_PKG_LICENSE="Public Domain"
TERMUX_PKG_MAINTAINER="@termux"
# Note: Updating this version requires bumping libsqlite package as well.
_SQLITE_MAJOR=3
_SQLITE_MINOR=38
_SQLITE_PATCH=2
_SQLITE_YEAR=2022
TERMUX_PKG_VERSION=${_SQLITE_MAJOR}.${_SQLITE_MINOR}.${_SQLITE_PATCH}
TERMUX_PKG_SRCURL=https://www.sqlite.org/${_SQLITE_YEAR}/sqlite-autoconf-${_SQLITE_MAJOR}${_SQLITE_MINOR}0${_SQLITE_PATCH}00.tar.gz
TERMUX_PKG_SHA256=e7974aa1430bad690a5e9f79a6ee5c8492ada8269dc675875ad0fb747d7cada4
TERMUX_PKG_DEPENDS="libsqlite, tcl"
TERMUX_PKG_BREAKS="sqlcipher (<< 4.4.2-1), tcl (<< 8.6.10-4)"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--with-tcl=${TERMUX_PREFIX}/lib
--with-system-sqlite
"

termux_step_post_get_source() {
	TERMUX_PKG_SRCDIR+="/tea"
}
