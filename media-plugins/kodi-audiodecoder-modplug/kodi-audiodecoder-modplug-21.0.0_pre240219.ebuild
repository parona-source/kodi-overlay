# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="e697156054ea3eb5974fb9727e046287220985e5"

inherit kodi-addon

DESCRIPTION="Modplug decoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audiodecoder.modplug"
SRC_URI="
	https://github.com/xbmc/audiodecoder.modplug/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/audiodecoder.modplug-${COMMIT_ID}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
	>=media-libs/libmodplug-0.8.9.1
"
DEPEND="
	${RDEPEND}
"

src_prepare() {
	[ -d depends ] && rm -rf depends || die
	cmake_src_prepare
}
