# Maintainer: Claudia Pellegrino <aur ät cpellegrino.de>

pkgname=the-store-is-closed-steam-alpha-launcher
pkgver=1.0.6
pkgrel=2
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
  '16beb081017e9994973ed59bc5926dbd151f3c020d58e1638e505ca66d5faae9ed6387f6ffcea8a4e9fa26228f12c734015394f5156d9e19f46a5839733e66eb'
  '6954c8005720cd9e4095d6351f7a62ce6ac097907f84fc6f388e4f4588ed8fccbf71d7eb382dbe53e52fb91961e884c8c48f205e814b4424dfba32bd3837bd8d'
  'af05a2a14e55c1ade29cbb09c916ef671b6122c6a6ab63bc768e60fac243116a975ceff8ccb060acee8e7da9bf95b57483818104de536d296e54326ff2044e0a'
  'c8a2850ef1de40d91014e02c640bf92f741fc5edde939c34b4486a4f7c2149389f90d64df3d3eba9e8957801f5eb17b2e7144b09de3e56451fdbfb910e03abb4'
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
