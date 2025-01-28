class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.25.0"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.25.0/oxen-server-mac-15.0.tar.gz"
      sha256 "3970d298a935300e3c19ffe33168e3c4226cd438815d7cca787e2b298367e9e5"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.25.0/oxen-server-mac-14.0.tar.gz"
      sha256 "7d7394b7f921aff6a4b28862dd8d7858d9444f82919ca5402302c1465b53e05d"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.25.0/oxen-server-mac-13.0.tar.gz"
      sha256 "8def898d6d12988819c86e6a803a56b63648be458a60463ac7efd16d6164668a"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
