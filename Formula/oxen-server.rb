class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.8.1"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.8.1/oxen-server-mac-13.0-0.8.1.tar.gz"
      sha256 "dfeb7dfbdd099046b2d399b64a46c9e1c55f0df1b6f46e545ef2b788f5e42df3"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.8.1/oxen-server-mac-12.0-0.8.1.tar.gz"
      sha256 "d21c14add12ecae1ca935fba7cf375dd4e3b0c08b90fac4b7ba23d6053a9a6c7"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.8.1/oxen-server-mac-11.0-0.8.1.tar.gz"
      sha256 "e264441c09e2f493f4969eab9e8592542309fc15d14a69ca5f7bb55880da5a76"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
