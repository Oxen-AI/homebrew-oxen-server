class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.23.2"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.23.2/oxen-server-mac-15.0.tar.gz"
      sha256 "b756bfe84988ae123303b1798d03f87a93d062e56cb927185ab6399807433a29"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.23.2/oxen-server-mac-14.0.tar.gz"
      sha256 "8d591d3e6c58c220d99e13dc1134b64efcdea2a0fd82ffdea675b5ce04dd82b2"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.23.2/oxen-server-mac-13.0.tar.gz"
      sha256 "d58f1dc76580586be3cd04e3b8dc3d03f79d4a260bd7bd5dcfe67b554b12e1ae"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
