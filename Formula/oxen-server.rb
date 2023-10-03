class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.8.7"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.8.7/oxen-server-mac-13.0-0.8.7.tar.gz"
      sha256 "abcf32575a999abcf5136dc4a63cf07b8bb37a25f4014e4f14546b026fa067f8"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.8.7/oxen-server-mac-12.0-0.8.7.tar.gz"
      sha256 "2b39b5d2064c299798f7fe6b334a40c520f5b03c1f4983141048b4ffb94e888a"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.8.7/oxen-server-mac-11.0-0.8.7.tar.gz"
      sha256 "62deb51f99bff9101acdf246531ad6b2891bb306f5e72351fa28dd7af74c4b45"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
