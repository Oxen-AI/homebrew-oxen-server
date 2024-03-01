class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.11.1"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/0.11.1/oxen-server-mac-13.0-0.11.1.tar.gz"
      sha256 "2d5bde5e1718e607ae7334cda554a7f7d58bb3e333385698f0d39b6383541bc4"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/0.11.1/oxen-server-mac-12.0-0.11.1.tar.gz"
      sha256 "d260b9b279f755a11fce3a5110b31f31604eca337e77d4e17b9b94105b57ef69"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/0.11.1/oxen-server-mac-11.0-0.11.1.tar.gz"
      sha256 "101852c0356cc40bfb478e611c3849b61f1c4b9ceb498e977247effb6335a5e6"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
