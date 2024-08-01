class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.18.9"

  on_macos do
    if MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.9/oxen-server-mac-14.0.tar.gz"
      sha256 "ca957a5e9673189cd545fa13a1e9853f3708880ac1d57775956c85747daa54ee"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.9/oxen-server-mac-13.0.tar.gz"
      sha256 "4a6e3610c1f6ac492631dfddf2912d48130ab9f8b9cadd87b1ad6f2f21655b41"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.9/oxen-server-mac-12.0.tar.gz"
      sha256 "fbff03d30a7ed6efe32c0ca3de7c191b356e6b37b9b0eda1194aeb5e6a63bd55"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
