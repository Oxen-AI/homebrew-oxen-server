class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.11.0"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/0.11.0/oxen-server-mac-13.0-0.11.0.tar.gz"
      sha256 "cb9985536deec18fe4349175b6dda9048befeba0c3fb4024b4ad3e5d10f2a76f"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/0.11.0/oxen-server-mac-12.0-0.11.0.tar.gz"
      sha256 "5be10daf0edc306ccf98b127bc37ce5b8cac4ff539accd258ae140cb103dc6b8"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/0.11.0/oxen-server-mac-11.0-0.11.0.tar.gz"
      sha256 "e8eb4c2e56dedb8476cb1afc87a375b34006ab17b5fa21156a069a4a1c392eda"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
