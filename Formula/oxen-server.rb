class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.32.1"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.1/oxen-server-mac-15.0.tar.gz"
      sha256 "25321bfd4b26700a96e35f0f7f7365ad4e31b0f78446502fb0f5cdab907d431e"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.1/oxen-server-mac-14.0.tar.gz"
      sha256 "3c553ff3f62d7d6c9c86427cdbd2453996242beaae2846261b51264222d582b6"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.1/oxen-server-mac-13.0.tar.gz"
      sha256 "c244f5360f7ba337a56706f46ba806a2d0bf2b6d8e0b3a7f19443117c6475ff0"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
