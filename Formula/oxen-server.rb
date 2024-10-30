class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.19.0"

  on_macos do
    if MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.19.0/oxen-server-mac-14.0.tar.gz"
      sha256 "965a962da791431d787bda6171c20d6fafeed23077d780befbbdb7a81291489f"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.19.0/oxen-server-mac-13.0.tar.gz"
      sha256 "f9fbea67647232190a6391c07908f63f7925fb4f63161188440d5983668255d7"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.19.0/oxen-server-mac-12.0.tar.gz"
      sha256 "6ae39c5d0099ab036fbb5dff7cfca2655d40405667b35427fedc78479aaddfaa"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
