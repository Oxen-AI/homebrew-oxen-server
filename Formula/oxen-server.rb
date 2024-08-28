class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.18.15"

  on_macos do
    if MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.15/oxen-server-mac-14.0.tar.gz"
      sha256 "c3143790798346cac41337a710f55b6730e1acc4b6d535023279c8da353d4265"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.15/oxen-server-mac-13.0.tar.gz"
      sha256 "354746408958ed53fde7842b2d61e58cf2c3d0d48e46477bd68e34ea5bcbe6cc"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.15/oxen-server-mac-12.0.tar.gz"
      sha256 "ae8e5d6c2af7a4b5c9e899f09e14c963d1ccb3b4ad780440d97adf6e6999fe6d"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
