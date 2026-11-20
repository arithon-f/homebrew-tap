class FirmwareToolkit < Formula
  include Language::Python::Virtualenv

  desc "Back up, patch and repair the 8BitDo Ultimate 2C Wireless firmware (1.09)"
  homepage "https://github.com/arithon-f/8bitdo-ultimate-2c-toolkit"
  url "https://github.com/arithon-f/8bitdo-ultimate-2c-toolkit/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "1cd17c1a0472c27fc07dfa98e357727bf3ca528efde86395d2946b9594249e6c"
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
