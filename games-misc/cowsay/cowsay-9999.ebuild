EAPI=8
inherit git-r3

DESCRIPTION="Talking cow with local hacks"
HOMEPAGE="https://github.com/notarealdeveloper/cowsay"

EGIT_REPO_URI="https://github.com/notarealdeveloper/cowsay"
EGIT_BRANCH="local"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
DEPEND=""

src_install() {
	emake DESTDIR="${D}" prefix="${EPREFIX}/usr" install
	einstalldocs
}
