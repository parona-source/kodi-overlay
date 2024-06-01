# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_ADDON_TAG="daa4e6b3e952075b813768e3518ac6e6b0724f55"

inherit kodi-addon

DESCRIPTION="Fische visualizer for Kodi"
HOMEPAGE="https://github.com/xbmc/visualization.fishbmc"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86"

RDEPEND="
	media-libs/libglvnd
"
DEPEND="
	${RDEPEND}
	media-libs/glm
"
