# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999
#hackport: flags: +pkgconfig

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Binding to the ALSA Library API (Exceptions)"
HOMEPAGE="https://www.haskell.org/haskellwiki/ALSA"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/extensible-exceptions-0.1.1:=[profile?] <dev-haskell/extensible-exceptions-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	media-libs/alsa-lib
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	virtual/pkgconfig
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=pkgconfig
}
