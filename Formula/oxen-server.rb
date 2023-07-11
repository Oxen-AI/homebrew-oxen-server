class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.7.1"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.1/oxen-server-mac-13.0-0.7.1.tar.gz"
      sha256 "d20e98c9f95ca62752e894060c8e4eb621e9124e05c4fe6a25baff89cd1bd3d6"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.1/oxen-server-mac-12.0-0.7.1.tar.gz"
      sha256 "1bdbebf3d2439e740c4504a6e491d8309b58b1112bf219a950dac0235940bcc2"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.1/oxen-server-mac-11.0-0.7.1.tar.gz"
      sha256 "ccfaf88b836894c0e1a688a4552acfc227857e2a0cc74105625cd1f4d1caa7c7"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
