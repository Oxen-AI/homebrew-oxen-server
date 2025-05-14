class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.34.3"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.3/oxen-server-mac-15.0.tar.gz"
      sha256 "9bdf14384be120fdf4ab8723a895405ec35fc24913140f8537531aa649d1cf70"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.3/oxen-server-mac-14.0.tar.gz"
      sha256 "4b2425f3478fca13fd6893dfeda18ccbe0b3dffdd6260d433cccc88e1ede7858"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.3/oxen-server-mac-13.0.tar.gz"
      sha256 "d91a70c21c7ecbac7a572d6af857668b099c14b6a4f31323d0ff7c45214e8f1b"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
