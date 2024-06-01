# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_ADDON_TAG="cd96c71c22940014d5c79c58af99b60e0b418f71"

inherit kodi-addon

DESCRIPTION="CpBlobs screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.cpblobs"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	media-libs/libglvnd
"
DEPEND="
	${RDEPEND}
	media-libs/glm
"
