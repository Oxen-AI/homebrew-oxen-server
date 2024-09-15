class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.18.17"

  on_macos do
    if MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.17/oxen-server-mac-14.0.tar.gz"
      sha256 "4db1084c0163247851912eecd2a296780e1c7f4add9d8c9c4c971e52ece46202"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.17/oxen-server-mac-13.0.tar.gz"
      sha256 "6ad9165475f1f6aa56bb08643387e93f156ed46a2866058b137a512956012875"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.17/oxen-server-mac-12.0.tar.gz"
      sha256 "b0e6f2f55d65355ff5918728ca84f78cfbfbf894a48d386db6c812a76200a104"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
