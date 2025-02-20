class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.28.0"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.28.0/oxen-server-mac-15.0.tar.gz"
      sha256 "6748853ef6c3847c235bc9910788e02c6dfb3e8b2f6e10a9343b100452cbb303"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.28.0/oxen-server-mac-14.0.tar.gz"
      sha256 "2607336a7a4abd9ac00c035e54dcfd505af37b26cac9c072f7c8b56e368742ff"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.28.0/oxen-server-mac-13.0.tar.gz"
      sha256 "6d927e93c61e15aa8e61621ccd7727d2af8176fbd4aa27211e95025a4c7c4eda"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
