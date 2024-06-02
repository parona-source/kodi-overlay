# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	CODENAME="Omega"
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Kodi's Stalker client addon"
HOMEPAGE="https://github.com/kodi-pvr/pvr.stalker"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	dev-libs/jsoncpp:=
	dev-libs/libxml2
"
DEPEND="
	${RDEPEND}
	sys-libs/zlib
"

PATCHES=(
	"${FILESDIR}"/kodi-pvr-stalker-21.0.1-fix-gcc14.patch
)
