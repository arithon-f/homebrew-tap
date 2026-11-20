cask "firmware-toolkit" do
  arch arm: "arm64", intel: "x86_64"

  version "1.2.0"
  sha256 arm:   "5aa973fdb3423c72dd11be6e8bba43d55a70ce51e6936c90dddf8e6ad2b4227b",
         intel: "d432a77709e755adcda52ccde121e139e7bf035f5b194f6fabc426d3c2ec2b9c"

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
