class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.32.0"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.0/oxen-server-mac-15.0.tar.gz"
      sha256 "3dd8a091cdf67fc5d2af7a325fa9eec5ab361b353ce9346cbb7b7272568373c5"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.0/oxen-server-mac-14.0.tar.gz"
      sha256 "f0fef3239692cf479e9067e3a8720bc2b3d1f78b575ffc993faf6739606bbb8a"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.0/oxen-server-mac-13.0.tar.gz"
      sha256 "a0adbb5e5aef8239b700aa5605b4dcf4cb72061748c3e6dde6b23f0633f1c8b1"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
