# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Obsidian Gnome Theme, based upon Adwaita-Maia dark skin"
GIT_PN="theme-obsidian-2"
HOMEPAGE="https://github.com/madmaxms/${GIT_PN}"
LICENSE="GPL-3"
SLOT="0"
IUSE=""
RDEPEND="
	>=x11-libs/gtk+-3.22
	x11-themes/gtk-engines-adwaita
"
DEPEND="${RDEPEND}"
DOCS=( README.md )

if [[ ${PV} == "9999" ]]; then
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/madmaxms/${GIT_PN}.git"
	inherit git-r3
else
	inherit vcs-snapshot
	SRC_URI="https://github.com/madmaxms/${GIT_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	RESTRICT="primaryuri"
	KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~riscv ~s390 ~sh ~sparc ~x86 ~ppc-aix ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~m68k-mint ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"
fi

src_install() {
	insinto /usr/share/themes
	doins -r Obsidian*
}
