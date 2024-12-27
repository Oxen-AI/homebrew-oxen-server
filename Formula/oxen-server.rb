class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.24.2"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.24.2/oxen-server-mac-15.0.tar.gz"
      sha256 "accc7d300a77ddec70551debcadeb47c25c181f50e531a52eed12622f38447f2"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.24.2/oxen-server-mac-14.0.tar.gz"
      sha256 "241e9cbd7686e386863785af7cbc6488c42d3f30d3fd5f9c534f26572d74e043"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.24.2/oxen-server-mac-13.0.tar.gz"
      sha256 "66fad8139fee210a7219a7630425f3ae2f420b1a29514cf2a034c13aece5d24d"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
