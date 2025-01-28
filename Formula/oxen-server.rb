class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.25.1"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.25.1/oxen-server-mac-15.0.tar.gz"
      sha256 "472f28c7fd5896b3a0b11bd208d1052c9543852407a4a398462e6e19c81ac77c"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.25.1/oxen-server-mac-14.0.tar.gz"
      sha256 "202c7265ffcac736da38dc5676de302e61f482ce2911412d567e07899f5e4cb7"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.25.1/oxen-server-mac-13.0.tar.gz"
      sha256 "81b84195385518a0040b552d43131fd630e529b554bff411ec7c10bdf2200f1a"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
