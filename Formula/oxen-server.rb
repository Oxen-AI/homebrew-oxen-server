class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.7.5"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.5/oxen-server-mac-13.0-0.7.5.tar.gz"
      sha256 "3daf3ceb43d0767359cd1bc04c04391f1d5c7e0e86327e3f5904ba7137bc1b21"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.5/oxen-server-mac-12.0-0.7.5.tar.gz"
      sha256 "5c6fa71bf40415c6faafef52dedac54bb4037f6e063aaa9875584f31c419ad8d"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.5/oxen-server-mac-11.0-0.7.5.tar.gz"
      sha256 "9fa153eb76531a5494b394242e6ec531dac13d37ab0535c78dd66cd77fc69df4"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
