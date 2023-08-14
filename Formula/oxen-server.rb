class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.7.11"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.11/oxen-server-mac-13.0-0.7.11.tar.gz"
      sha256 "4ac0c9831e08ee0e09dd8ba8175ec5cfc73749960377e75cce8106257aaffc37"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.11/oxen-server-mac-12.0-0.7.11.tar.gz"
      sha256 "5a5a5fa62f005f9eda63101d6b8479b4fabb8420be1ad7e1c0d2d96165fc7ebf"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.11/oxen-server-mac-11.0-0.7.11.tar.gz"
      sha256 "a63eeb9461745d3adb25cfde3f7a7f706ffa507d761f25edefb9dc73abd67080"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
