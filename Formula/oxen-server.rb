class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.8.3"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.8.3/oxen-server-mac-13.0-0.8.3.tar.gz"
      sha256 "25fb07fd5c9cde221dcad4b5d3af7c7940e066e74776ebc69ed46124f224b898"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.8.3/oxen-server-mac-12.0-0.8.3.tar.gz"
      sha256 "db06f3cf6a21bbcb9c869bd73411af7004391ee6fccf3e37c63db5ba35832bf8"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.8.3/oxen-server-mac-11.0-0.8.3.tar.gz"
      sha256 "d83066ea8edc2fc0985a04ee09a0d3535915a6488a2614c43570a48947e7f889"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
