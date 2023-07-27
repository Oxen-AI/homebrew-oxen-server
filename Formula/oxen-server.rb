class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.7.6"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.6/oxen-server-mac-13.0-0.7.6.tar.gz"
      sha256 "5b4b2b24f6e885351a749c9eee3a74e8a2f42495d0086f51a2bf006d82d77589"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.6/oxen-server-mac-12.0-0.7.6.tar.gz"
      sha256 "389856c21bf7bd4c70b7a9a93ab9ef015b56f66db36811bde88964820c07cb46"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.6/oxen-server-mac-11.0-0.7.6.tar.gz"
      sha256 "c284027da640d98f5860c361b9f39cbb9ee1c7b36310418fe3b7c033ab7d6de0"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
