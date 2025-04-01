class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.32.2"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.2/oxen-server-mac-15.0.tar.gz"
      sha256 "d910c465302b6d1f36aefb87afad8d7dc413d40f5dc44029212a57a6831d14ae"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.2/oxen-server-mac-14.0.tar.gz"
      sha256 "26e30603b680d0d20133a50338c7657664ee37f96c2878a4c6274b118f39099a"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.2/oxen-server-mac-13.0.tar.gz"
      sha256 "5a4ed3dc396a0eb571ac8b780b0ae353aed9815b4062b3f75e9aa5ab451c1fe1"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
