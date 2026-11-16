cask "firmware-toolkit" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "eecacb96d2dd1eb789773171333dac4803670cb0726659d4045e24dd5ca0a9a3",
         intel: "4f3ccbc682ec6225dda1ede052d94e475000825581eac594792e64bb4963296c"

  url "https://github.com/carlosbrownef-source/8bitdo-ultimate-2c-toolkit/releases/download/v#{version}/firmware-toolkit-#{version}-macos-#{arch}.zip"
  name "Firmware Toolkit"
  desc "Back up, patch and repair the 8BitDo Ultimate 2C Wireless and its 2.4 GHz dongle"
  homepage "https://github.com/carlosbrownef-source/8bitdo-ultimate-2c-toolkit"

  depends_on macos: :ventura

  app "Firmware Toolkit.app"

  zap trash: [
    "~/Library/Caches/org.u2c-customfw.app",
    "~/Library/Preferences/org.u2c-customfw.app.plist",
    "~/Library/Saved Application State/org.u2c-customfw.app.savedState",
    "~/Library/WebKit/org.u2c-customfw.app",
  ]
end
