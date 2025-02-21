class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.28.1"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.28.1/oxen-server-mac-15.0.tar.gz"
      sha256 "5790338cd89430e631ece58fe113e52e096db636794e0c8e86dbf1cb2b4ef7dd"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.28.1/oxen-server-mac-14.0.tar.gz"
      sha256 "70921f4433b0109b37798eebe244aabfa162a6262486f3a3080e72446bcd452e"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.28.1/oxen-server-mac-13.0.tar.gz"
      sha256 "6d2a36b3656f8a2acec5d7649739ae30943754b85063c09ca4177f76b7e4b402"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
