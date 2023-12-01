class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.9.10"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.10/oxen-server-mac-13.0-0.9.10.tar.gz"
      sha256 "c9ef981107080095212f0e4a97ba9c199a3336459abe14690ea6fa5ed797de36"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.10/oxen-server-mac-12.0-0.9.10.tar.gz"
      sha256 "1560ce5f4f0793c56ec210ea13b2f4690068842cef971fecb5590b8e919d94e2"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.10/oxen-server-mac-11.0-0.9.10.tar.gz"
      sha256 "bd6d0c1c1c973829bf412c1664ca00dcd914a054b09b9a3132e872b981947933"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
