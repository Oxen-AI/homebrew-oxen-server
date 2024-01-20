class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.10.6"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.10.6/oxen-server-mac-13.0-0.10.6.tar.gz"
      sha256 "4c96fe544ee0f2b94bde31ae78e51a49e330f720811f27422b5806c7a50b5f06"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.10.6/oxen-server-mac-12.0-0.10.6.tar.gz"
      sha256 "a2406f8c8f54fcece986b22879d2d7b27e9b12ca7b2486bef67ba2d3ba525ddb"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.10.6/oxen-server-mac-11.0-0.10.6.tar.gz"
      sha256 "37669e5417c9cbd28d66f836ad62183234f8a4440ea1b1c23941877ec3aa69b1"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
