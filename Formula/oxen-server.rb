class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.25.2"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.25.2/oxen-server-mac-15.0.tar.gz"
      sha256 "19f16e30e008aad47e1b23b01317e286731d67ebed058761cdf4b55135e94c88"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.25.2/oxen-server-mac-14.0.tar.gz"
      sha256 "1ed3821a0ea50939157e7bf0ffaa1cc9393d0a2d1cf7005910adae0a1cbb3068"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.25.2/oxen-server-mac-13.0.tar.gz"
      sha256 "6cc252a0c608e660e2005a27afeb8cc2d5a29d6be7f35cd48b75745049781ee0"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
