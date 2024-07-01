class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.18.2"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.2/oxen-server-mac-13.0.tar.gz"
      sha256 "9c902626c2c552c56664640a4c69ff6eb04f78711d48c54881cc788cefdcd56f"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.2/oxen-server-mac-12.0.tar.gz"
      sha256 "0eff8ee31076b0936272393e432886dbe3143f4ebb3b883f861f2551d1222c26"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
