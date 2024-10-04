class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.18.20"

  on_macos do
    if MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.20/oxen-server-mac-14.0.tar.gz"
      sha256 "bf09e402797683ae0b84f60eef32390e9bc576599297db63303a0feb814a831d"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.20/oxen-server-mac-13.0.tar.gz"
      sha256 "ecbdc09d8854f9d099e5c3e59438a4e73d9416e0954d86a5a891716930e5ca25"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.20/oxen-server-mac-12.0.tar.gz"
      sha256 "e196998e2722adc2f505327ce88a0383ff79face65af602cc6cee2092a22d7f4"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
