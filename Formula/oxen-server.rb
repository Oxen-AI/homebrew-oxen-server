class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.15.8"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.15.8/oxen-server-mac-13.0-0.15.8.tar.gz"
      sha256 "d7f0f3d7999c75ae749e499b93d6d09aa5fb6564e9681b0e6b2197b8062ff232"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.15.8/oxen-server-mac-12.0-0.15.8.tar.gz"
      sha256 "75793c9bd04f5c59761ae35a50d89fa31ea165848092870f2509c29636f33375"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.15.8/oxen-server-mac-11.0-0.13.0.tar.gz"
      sha256 "71b79392d382d51f43945b8afc4cf4c5fe7a6d8e8f044ce7d6cb127a2a349b08"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
