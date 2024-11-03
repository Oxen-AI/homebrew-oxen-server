class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.19.3"

  on_macos do
    if MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.19.3/oxen-server-mac-14.0.tar.gz"
      sha256 "6a11801374f73779b3f6a3f19f09be05681839e6401dd63f120f872b2f63defd"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.19.3/oxen-server-mac-13.0.tar.gz"
      sha256 "ece9c125ac9e97bbb8b69ce93885f22f38b82c88ec4b82e1b70cf60c42d35f21"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.19.3/oxen-server-mac-12.0.tar.gz"
      sha256 "59b6edea191e148bb044a1dff7b896defca09eb75b1bc6ff2624af585e52b56e"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
