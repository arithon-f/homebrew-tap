class FirmwareToolkit < Formula
  include Language::Python::Virtualenv

  desc "Back up, patch and repair the 8BitDo Ultimate 2C Wireless firmware (1.09)"
  homepage "https://github.com/carlosbrownef-source/8bitdo-ultimate-2c-toolkit"
  url "https://github.com/carlosbrownef-source/8bitdo-ultimate-2c-toolkit/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "f22582b766b7128768c51eb65cb39a027e7af655df89d4a2f7cd6c3c7ce28393"
  license "GPL-3.0-or-later"

  depends_on :macos
  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Ultimate 2C", shell_output("#{bin}/u2c-customfw --help")
  end
end
