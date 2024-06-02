# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	CODENAME="Omega"
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Kodi's VBox Home TV Gateway PVR client addon"
HOMEPAGE="https://github.com/kodi-pvr/pvr.vbox"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	dev-libs/tinyxml2:=
"
DEPEND="
	${RDEPEND}
"
