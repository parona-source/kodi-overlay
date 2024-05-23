# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="a388be3b9c4a62a5087616d3c92a26d6cbbeb24f"

inherit kodi-addon

DESCRIPTION="Waveform visualizer for Kodi"
HOMEPAGE="https://github.com/xbmc/visualization.waveform"
SRC_URI="
	https://github.com/xbmc/visualization.waveform/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/visualization.waveform-${COMMIT_ID}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	media-libs/libglvnd
	=media-tv/kodi-21*
"
DEPEND="
	${RDEPEND}
	media-libs/glm
"
