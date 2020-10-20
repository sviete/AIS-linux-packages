TERMUX_PKG_HOMEPAGE=https://www.tianocore.org/
TERMUX_PKG_DESCRIPTION="Open Virtual Machine Firmware"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_VERSION=20201002.1468.g9380177354
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=(https://www.kraxel.org/repos/jenkins/edk2/edk2.git-aarch64-0-${TERMUX_PKG_VERSION}.noarch.rpm
		   https://www.kraxel.org/repos/jenkins/edk2/edk2.git-arm-0-${TERMUX_PKG_VERSION}.noarch.rpm
		   https://www.kraxel.org/repos/jenkins/edk2/edk2.git-ovmf-ia32-0-${TERMUX_PKG_VERSION}.noarch.rpm
		   https://www.kraxel.org/repos/jenkins/edk2/edk2.git-ovmf-x64-0-${TERMUX_PKG_VERSION}.noarch.rpm)
TERMUX_PKG_SHA256=(519c72d7e7ffed6a9c8ffaf2fe3e9320bd90cb21503c17be57c59e89fc33898f
		   d9684216371438aa50985c7d7534b98da34407f38566324f342528eb0992e5d1
		   6fca1e62d1d14faaae7d3cce92d96f762aba226a8627190df374cd75e6d96f79
		   8fcd9e1fedbc0c69a210b3caec4ac9ff02e815756ba5ec3d54379a43a2287a83)
TERMUX_PKG_SKIP_SRC_EXTRACT=true
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_make_install() {
	termux_download \
		${TERMUX_PKG_SRCURL[0]} \
		${TERMUX_PKG_CACHEDIR}/edk2-aarch64.rpm \
		${TERMUX_PKG_SHA256[0]}
	termux_download \
		${TERMUX_PKG_SRCURL[1]} \
		${TERMUX_PKG_CACHEDIR}/edk2-arm.rpm \
		${TERMUX_PKG_SHA256[1]}
	termux_download \
		${TERMUX_PKG_SRCURL[2]} \
		${TERMUX_PKG_CACHEDIR}/edk2-ia32.rpm \
		${TERMUX_PKG_SHA256[2]}
	termux_download \
		${TERMUX_PKG_SRCURL[3]} \
		${TERMUX_PKG_CACHEDIR}/edk2-x86_64.rpm \
		${TERMUX_PKG_SHA256[3]}

	local i
	for i in aarch64 arm ia32 x86_64; do
		bsdtar xf ${TERMUX_PKG_CACHEDIR}/edk2-${i}.rpm -C $TERMUX_PREFIX/../
	done

	for i in $TERMUX_PREFIX/share/qemu/firmware/*.json; do
		sed -i "s@/usr@$TERMUX_PREFIX@g" $i
	done
}

termux_step_install_license() {
	install -Dm600 $TERMUX_PKG_BUILDER_DIR/License.txt \
		$TERMUX_PREFIX/share/doc/ovmf/LICENSE.txt
}
