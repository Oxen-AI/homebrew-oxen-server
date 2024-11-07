class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.19.7"

  on_macos do
    if MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.19.7/oxen-server-mac-14.0.tar.gz"
      sha256 "c071dc7540de3d731ea164ef601f4a01f3c9a7068f9f12bfa1edff305b059b80"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.19.7/oxen-server-mac-13.0.tar.gz"
      sha256 "83d509ba4cfd35f400c9a37327b452e335f9d3b40e87fbf079bd367726518271"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.19.7/oxen-server-mac-12.0.tar.gz"
      sha256 "21fe172063da09cfc0557207f8e8dbed9e7ee06a93e3f197138f320776d9cf49"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
