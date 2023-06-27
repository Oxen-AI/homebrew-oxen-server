class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.6.6"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.6.6/oxen-server-mac-13.0-0.6.6.tar.gz"
      sha256 "19cefd0267c0d84e39ee0913ada76afc8fbf976df10f8f533f47715c66abc5b2"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.6.6/oxen-server-mac-12.0-0.6.6.tar.gz"
      sha256 "aef839cb85e16a927286c684ca21d1c9241f3b960094a9fe7296d00748f07c79"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.6.6/oxen-server-mac-11.0-0.6.6.tar.gz"
      sha256 "5227a7fc5896ddfc23c38e1285874c2075988ecd25672fb79a8449fb7ee0aa06"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
