class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.10.10"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.10.10/oxen-server-mac-13.0-0.10.10.tar.gz"
      sha256 "4c2b0ef9e8250aacf9aa44000eaaab279365c41ecdde2203c860b5c3b561bf64"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.10.10/oxen-server-mac-12.0-0.10.10.tar.gz"
      sha256 "0e7014184a9d632dff1597bd1477ec58a46168ce38f4ca3b44c6835026533cd6"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.10.10/oxen-server-mac-11.0-0.10.10.tar.gz"
      sha256 "7e26e2cb37ada15d983eafaf4e88a41044b6e0898071f6497248ce562ae67160"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
