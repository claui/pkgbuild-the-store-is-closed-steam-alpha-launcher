# Maintainer: Claudia Pellegrino <aur ät cpellegrino.de>

pkgname=the-store-is-closed-steam-alpha-launcher
pkgver=1.0.6
pkgrel=1
pkgdesc='Co-op survival game, set in an infinite furniture store'
arch=('x86_64')
url='https://store.steampowered.com/app/1593010/The_Store_is_Closed/'
license=('custom')
depends=('wine' 'wine-gecko' 'wine-mono')
options=('!strip')

source=(
  'the-store-is-closed.bash'
  'the-store-is-closed.desktop'
  'the-store-is-closed.png'
  # Sourced via command line:
  # curl -sLS 'https://store.steampowered.com/app/1593010/The_Store_is_Closed/' \
  #   | sed -n -e 's/.*<p>License: \(.*\)<\/p>/\1/p' > license.txt
  'license.txt'
)

sha512sums=(
  'c3af3e8631a496087c777a092e5ee25382ba87b4b7baff3504113860b968480772cc98ff9ca311c3730a3c7ab110b4ac23849c9b9afccc810602c5237fa15ad7'
  '6954c8005720cd9e4095d6351f7a62ce6ac097907f84fc6f388e4f4588ed8fccbf71d7eb382dbe53e52fb91961e884c8c48f205e814b4424dfba32bd3837bd8d'
  'af05a2a14e55c1ade29cbb09c916ef671b6122c6a6ab63bc768e60fac243116a975ceff8ccb060acee8e7da9bf95b57483818104de536d296e54326ff2044e0a'
  '696e074284b9c16cf599b5b88021db9230620fcc82a0e160bcf76ab95eb29c9d00061278e21a2d78da4166b4db69a91cee87394092933555ff031145b522d356'
)

package() {
  echo >&2 'Packaging launcher'
  install -D -m 755 -T 'the-store-is-closed.bash' \
    "${pkgdir}/usr/bin/the-store-is-closed"

  echo >%2 'Packaging desktop file'
  install -D -m 755 -t "${pkgdir}/usr/share/applications" \
    "${srcdir}/the-store-is-closed.desktop"

  echo >&2 'Packaging game icon'
  install -D -m 644 -t "${pkgdir}/usr/share/pixmaps" \
    "${srcdir}/the-store-is-closed.png"

  echo >&2 'Packaging the license'
  install -D -m 644 -t "${pkgdir}/usr/share/licenses/${pkgname}" \
    "${srcdir}/license.txt"
}
