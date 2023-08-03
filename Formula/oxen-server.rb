class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.7.9"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.9/oxen-server-mac-13.0-0.7.9.tar.gz"
      sha256 "9eda591fc712054212cebc5ea4668e79d7fb876c26035ee3e81744b807ac2b13"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.9/oxen-server-mac-12.0-0.7.9.tar.gz"
      sha256 "f30b86e236677274651354cb7bc31992b146092f5f5926fa765c0a19150d481f"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.9/oxen-server-mac-11.0-0.7.9.tar.gz"
      sha256 "16992a9fee270429ef36f21328b1c6426838ffbf92dfcac4d229e412835096dd"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
