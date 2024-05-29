# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_ADDON_TAG="a0b53a28277f1b2cfb4db74a688a6582e3e0ece6"

inherit kodi-addon

DESCRIPTION="Shadertoy screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.shadertoy"

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
