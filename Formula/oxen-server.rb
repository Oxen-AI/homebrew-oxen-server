class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.24.4"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.24.4/oxen-server-mac-15.0.tar.gz"
      sha256 "b64a844b693f221fa48abfc4d9578e0e613e2f3586366d6e8e1a250494bdd4b6"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.24.4/oxen-server-mac-14.0.tar.gz"
      sha256 "9e4dbd9cb46843db0440b6b8221158e1dc46b1fac26785a21986c846c8eb1066"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.24.4/oxen-server-mac-13.0.tar.gz"
      sha256 "0a8167a7f8c7830973ddadd570eef3c982907b8d846d125a5cba89fd3c3b2292"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
