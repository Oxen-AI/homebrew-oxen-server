class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.15.11"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.15.11/oxen-server-mac-13.0-0.15.11.tar.gz"
      sha256 "283b806117c1e407c6cf7d5215fbce6531bc5ef52ed140d9e6711340ed824bb8"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.15.11/oxen-server-mac-12.0-0.15.11.tar.gz"
      sha256 "390ebc308f9c0ebf17176f92b5addad1c34563b19f93ffb72eb7b1fa6daa404d"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.15.11/oxen-server-mac-11.0-0.15.11.tar.gz"
      sha256 "50a5894cb6b56071dc85fee513b9ea1bf4cccc4fb8b593bf039192d6d984f3cd"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
