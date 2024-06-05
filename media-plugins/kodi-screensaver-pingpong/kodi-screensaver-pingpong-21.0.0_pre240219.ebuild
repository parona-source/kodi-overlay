# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	CODENAME="Omega"
	KODI_ADDON_TAG="a0b8b956002ddc64eb6d433e3230fa09619f2aef"
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Ping-pong screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.pingpong"

LICENSE="GPL-2+"
SLOT="0"

RDEPEND="
	media-libs/libglvnd
"
DEPEND="
	${RDEPEND}
	media-libs/glm
"
