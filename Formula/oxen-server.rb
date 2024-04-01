class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.14.5"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.14.5/oxen-server-mac-13.0-0.14.5.tar.gz"
      sha256 "547862a3e32ee3837b11f7703e5b3de3119545c57efe74f109232af1e8c435cc"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.14.5/oxen-server-mac-12.0-0.14.5.tar.gz"
      sha256 "9d3648d6719c52ad42a7489dd3c8c7fa8aabff864e153b25715d1f819308c27b"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.14.5/oxen-server-mac-11.0-0.13.0.tar.gz"
      sha256 "8c5575b7795854a266441c781f9d2d0fc740316503683cd42f777bec66da0c85"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
