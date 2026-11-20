cask "firmware-toolkit" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.1"
  sha256 arm:   "9f4d8d94cbdebe7e6f69ca29c1b847663b2e68bd38da6739283a7c038e0bb4e2",
         intel: "61567f7b7fa9721db3fa7bbd771f3156f4797e31c98ed05b487e90c75485d30a"

  url "https://github.com/arithon-f/8bitdo-ultimate-2c-toolkit/releases/download/v#{version}/firmware-toolkit-#{version}-macos-#{arch}.zip"
  name "Firmware Toolkit"
  desc "Back up, patch and repair the 8BitDo Ultimate 2C Wireless and its 2.4 GHz dongle"
  homepage "https://github.com/arithon-f/8bitdo-ultimate-2c-toolkit"

  depends_on macos: :ventura

  app "Firmware Toolkit.app"

  zap trash: [
    "~/Library/Caches/org.u2c-customfw.app",
    "~/Library/Preferences/org.u2c-customfw.app.plist",
    "~/Library/Saved Application State/org.u2c-customfw.app.savedState",
    "~/Library/WebKit/org.u2c-customfw.app",
  ]
end
