cask 'elgato-game-capture-hd' do
  if MacOS.version <= '10.10'
    version '2.0.5_983'
    sha256 '4803bcac9069e1e63a89e9053fdf2285487acf9e608e84f7610555075489ad5a'

    url "http://files.elgato.com/gamecapture/gchdm_#{version.no_dots}.dmg"
  else
    version '2.9'
    sha256 'aab4a7d9b5f132c6e267378a3c9278fe582fbbb9575bacb458657716845646b9'

    url 'https://edge.elgato.com/egc/macos/egcm/2.9/final/Game%20Capture%20HD%202.9%20(1324).dmg'
  end

  appcast 'http://updates.elgato.com/autoupdate/gameCapture20.rss?lang=English',
          checkpoint: 'af4fe0ec28b8c1593175660072a1929fc7db163ea9a4bb83c1e3bea2144d34b2'
  name 'Game Capture HD'
  homepage 'https://www.elgato.com/en/gaming/gamecapture-hd'

  app 'Game Capture HD.app'
end
