class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.5.1"

  on_macos do
    if MacOS.version >= :ventura # 13
      if Hardware::CPU.arm?
        url "https://github.com/Oxen-AI/Oxen/releases/download/v0.5.1/oxen-server-mac-0.5.1.tar.gz"
        sha256 "f0890773336bdaadb5795a82fd95c6fd8579f85f2977f7ab295160b28a632ee6"
      elsif Hardware::CPU.intel?
        url "https://github.com/Oxen-AI/Oxen/releases/download/v0.5.1/oxen-server-mac-x86_64-0.5.1.tar.gz"
        sha256 "b8fb2206ba6187d482d8840aba64cdff25578bc66ad1e165a75df076a5b772e9"
      end
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.5.1/oxen-server-mac-12.0-0.5.1.tar.gz"
      sha256 "0aeb6644e0de36fe5c732b404581bbe9e847d8dbf8ec7cf3fb3a6d009dfac5c8"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.5.1/oxen-server-mac-11.0-0.5.1.tar.gz"
      sha256 "13cd87b728a9429897531711fc15e636c52ee157e699306dd3a8d0bfa9a30dec"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
