# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"

inherit kodi-addon

DESCRIPTION="Snes9x GameClient for Kodi"
HOMEPAGE="https://github.com/kodi-game/game.libretro.snes9x"
SRC_URI="
	https://github.com/kodi-game/${KODI_ADDON_PN}/archive/${PV}-Nexus.tar.gz
		-> ${P}.tar.gz
"

S="${WORKDIR}/${KODI_ADDON_PN}-${PV}-Nexus"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	media-plugins/kodi-game-libretro
	|| (
		games-emulation/libretro-snes9x
		games-emulation/snes9x[libretro]
	)
"
DEPEND="
	${RDEPEND}
"

QA_PREBUILT="
	usr/lib*/kodi/addons/${KODI_ADDON_PN}/${KODI_ADDON_PN}.so
"
