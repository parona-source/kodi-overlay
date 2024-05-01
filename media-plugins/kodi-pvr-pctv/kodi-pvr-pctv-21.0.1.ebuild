# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"

inherit kodi-addon

DESCRIPTION="Kodi's PCTV client addon"
HOMEPAGE="https://github.com/kodi-pvr/pvr.pctv"
SRC_URI="
	https://github.com/kodi-pvr/pvr.pctv/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/pvr.pctv-${PV}-${CODENAME}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
	dev-libs/jsoncpp
"
DEPEND="
	${RDEPEND}
"

src_prepare() {
	[ -d depends ] && rm -rf depends || die
	cmake_src_prepare
}
