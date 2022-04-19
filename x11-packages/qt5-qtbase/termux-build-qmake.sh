#!/data/data/com.termux/files/usr/bin/bash
##
##  A script for building qmake on device.
##  Use in Termux only !
##
##  Usage:
##
##  ./termux-build-qmake.sh

set -e

TERMUX_PREFIX=/data/data/com.termux/files/usr

if [ $(uname -o) != Android ]; then
    echo "This script should be run in Termux !"
    exit 1
fi

if [ -e "build.sh" ]; then
    source ./build.sh
fi

apt update
apt upgrade -y
apt install -y coreutils clang curl debianutils make
hash -r

## Override function from build.sh since we are
## building for host.
termux_step_configure () {
    export PKG_CONFIG_SYSROOT_DIR="${TERMUX_PREFIX}"

    ./configure -v \
        -opensource \
        -confirm-license \
        -release \
        -platform termux \
        -shared \
        -no-rpath \
        -no-use-gold-linker \
        -prefix "${TERMUX_PREFIX}" \
        -docdir "${TERMUX_PREFIX}/share/doc/qt" \
        -archdatadir "${TERMUX_PREFIX}/lib/qt" \
        -datadir "${TERMUX_PREFIX}/share/qt" \
        -plugindir "${TERMUX_PREFIX}/libexec/qt" \
        -nomake examples \
        -no-pch \
        -no-accessibility \
        -no-glib \
        -icu \
        -system-pcre \
        -system-zlib \
        -system-freetype \
        -ssl \
        -openssl-linked \
        -no-system-proxies \
        -no-cups \
        -system-harfbuzz \
        -no-opengl \
        -no-vulkan \
        -qpa xcb \
        -no-eglfs \
        -no-gbm \
        -no-kms \
        -no-linuxfb \
        -no-libudev \
        -no-evdev \
        -no-libinput \
        -no-mtdev \
        -no-tslib \
        -xcb \
        -xcb-xlib \
        -gif \
        -system-libpng \
        -system-libjpeg \
        -system-sqlite \
        -sql-sqlite
}

if [ ! -e "qtbase-everywhere-opensource-src-${TERMUX_PKG_VERSION}.tar.xz" ]; then
    echo "[*] Downloading Qt sources..."
    curl -L --output "qtbase-everywhere-opensource-src-${TERMUX_PKG_VERSION}.tar.xz" "${TERMUX_PKG_SRCURL}"
fi

echo "[*] Unpacking Qt sources..."
rm -rf "qtbase-everywhere-src-${TERMUX_PKG_VERSION}"
tar xf "qtbase-everywhere-opensource-src-${TERMUX_PKG_VERSION}.tar.xz"

cd "qtbase-everywhere-src-${TERMUX_PKG_VERSION}" && {
    ## Patch the source
    for i in `ls ../*.patch`; do
        patch -p1 -Ni "${i}"
    done
    unset i

    ## We need only qmake generated by configure, so ignoring
    ## errors here.
    set +e
    echo "[*] Running ./configure..."
    termux_step_configure
    set -e

    cd qmake && {
        ## Bootstrap qmake.
        echo "[*] Bootstrapping qmake..."
        ../bin/qmake -spec termux -o Makefile.qmake-aux qmake-aux.pro
        make -f Makefile.qmake-aux

        ## Just verify.
        echo "[*] Verifying..."
        ./qmake -spec termux -o Makefile.qmake-aux qmake-aux.pro
        make -f Makefile.qmake-aux

        cd -
    }

    cd ../
}

echo "[*] Done. Check file './qmake-$(uname -m)-linux-android'."
cp "qtbase-everywhere-src-${TERMUX_PKG_VERSION}/qmake/qmake" "./qmake-$(uname -m)-linux-android"
