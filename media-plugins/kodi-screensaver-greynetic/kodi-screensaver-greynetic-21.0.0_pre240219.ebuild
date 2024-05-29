# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_ADDON_TAG="2955c4105ea1223e9901dbc804812bdb3c0412a7"

inherit kodi-addon

DESCRIPTION="Greynetic screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.greynetic"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	media-libs/libglvnd
"
DEPEND="
	${RDEPEND}
	media-libs/glm
"
