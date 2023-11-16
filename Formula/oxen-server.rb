class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.9.8"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.8/oxen-server-mac-13.0-0.9.8.tar.gz"
      sha256 "31903b0e696576a868ae3a8e21d79e1d61897bbd72cc1f84ee80ffcb748173f4"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.8/oxen-server-mac-12.0-0.9.8.tar.gz"
      sha256 "1a2185470837076d8331fb3fbbcbea5a20aa178fcd427e7f7c16ccedc46d80dd"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.8/oxen-server-mac-11.0-0.9.8.tar.gz"
      sha256 "c5117a94defd8d9eb9f0806d739de0a66531e5bc8f7e8bacb227d85c4b36050d"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
