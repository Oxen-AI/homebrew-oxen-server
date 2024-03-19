class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.12.4"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.12.4/oxen-server-mac-13.0-0.12.4.tar.gz"
      sha256 "aaf7f90a4cc4db3263e291a99549065b7ae2567beb108e9ccf7419ebc11cabdb"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.12.4/oxen-server-mac-12.0-0.12.4.tar.gz"
      sha256 "e340712ac46e9cd67bb8fa073840532f3caef0bdda01c64abeedb0dff3f2229f"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.12.4/oxen-server-mac-11.0-0.12.4.tar.gz"
      sha256 "b500129fa8aee66f86a9950678266fb35b7162a45d9f7d92206f2eb314668b80"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
