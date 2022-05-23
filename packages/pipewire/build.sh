TERMUX_PKG_HOMEPAGE=https://pipewire.org/
TERMUX_PKG_DESCRIPTION="A server and user space API to deal with multimedia pipelines."
TERMUX_PKG_LICENSE="MIT, LGPL-2.1, LGPL-3.0, GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.3.51
TERMUX_PKG_SRCURL="https://gitlab.freedesktop.org/pipewire/pipewire/-/archive/${TERMUX_PKG_VERSION}/pipewire-${TERMUX_PKG_VERSION}.tar.bz2"
TERMUX_PKG_SHA256=1820bfd524805ef3e4e4dcb368f26efa5f43ca90f8c3c67731e502268c34245
TERMUX_PKG_DEPENDS="avahi, dbus, ffmpeg, libfdk-aac, lilv, libsndfile, libusb, libwebrtc-audio-processing, pulseaudio"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dtests=no
-Dffmpeg=yes
"

termux_step_install_license() {
	install -Dm600 -t "${TERMUX_PREFIX}/share/doc/${TERMUX_PKG_NAME}" LICENSE COPYING
}
