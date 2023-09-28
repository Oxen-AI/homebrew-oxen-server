class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.8.6"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.8.6/oxen-server-mac-13.0-0.8.6.tar.gz"
      sha256 "ee034aadcde2c139261aa69789e416de9c75856cc10cfb802b30d760372653c3"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.8.6/oxen-server-mac-12.0-0.8.6.tar.gz"
      sha256 "0c86b6d85bfec8adebbeb0fe427f3da807a501435fcc8e61f56ef40064d33380"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.8.6/oxen-server-mac-11.0-0.8.6.tar.gz"
      sha256 "0357e8823ff02d267b19f65e97b1fa59b68d9d596cdcb5d55eda939019615c95"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
