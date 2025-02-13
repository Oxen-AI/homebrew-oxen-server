class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "true"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/vtrue/oxen-server-mac-15.0.tar.gz"
      sha256 ""
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/vtrue/oxen-server-mac-14.0.tar.gz"
      sha256 ""
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/vtrue/oxen-server-mac-13.0.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "oxen-server"
  end
end
