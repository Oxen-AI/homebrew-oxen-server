class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.6.0+2"

  on_macos do
    if MacOS.version >= :ventura # 13
      if Hardware::CPU.arm?
        url "https://github.com/Oxen-AI/Oxen/releases/download/v0.6.0+2/oxen-server-mac-0.6.0+2.tar.gz"
        sha256 "3200a8c9ff8d1785dd2691d9dc3aea03126eb65ecf8f1a02125d0fd24be42312"
      elsif Hardware::CPU.intel?
        url "https://github.com/Oxen-AI/Oxen/releases/download/v0.6.0+2/oxen-server-mac-x86_64-0.6.0+2.tar.gz"
        sha256 "492eb8a1a2ff1658686b25fe2067cfe264b1ab6a07069ad0250ca94c3f250a81"
      end
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.6.0+2/oxen-server-mac-12.0-0.6.0+2.tar.gz"
      sha256 "eff93b177c6e0e328785cb6c1bc2dd3a155c112121a5157447e815136a2399d4"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.6.0+2/oxen-server-mac-11.0-0.6.0+2.tar.gz"
      sha256 "2854fb6fde3dd9a8445d3ebbeb6f89361f15e1489a942af932f860f98000e1ab"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
