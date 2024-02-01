class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.10.14"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.10.14/oxen-server-mac-13.0-0.10.14.tar.gz"
      sha256 "cc76aa2be300d1e45b7f5dff32a8ab95506ce0fc3b41b9fa50af0fe7eee888d8"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.10.14/oxen-server-mac-12.0-0.10.14.tar.gz"
      sha256 "e14e7fe7fe4e5c021897ad96bd511ae3ea4735725a2bd835aa5bc1e60bb02158"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.10.14/oxen-server-mac-11.0-0.10.14.tar.gz"
      sha256 "7d9d63fe658a29587d2104015892472fef1cf94d0f8934fc0d1eef674f78cbe6"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
