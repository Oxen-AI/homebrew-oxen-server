class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.9.11"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.11/oxen-server-mac-13.0-0.9.11.tar.gz"
      sha256 "bc7170b8d8bffb0f6c25e2648e4e58030d5b53293d871c6df14d5e92350a29c0"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.11/oxen-server-mac-12.0-0.9.11.tar.gz"
      sha256 "edf47185308de70f8810b333f1a926228e3b8aface45e4245ec86f359bab41fb"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.11/oxen-server-mac-11.0-0.9.11.tar.gz"
      sha256 "21b4cfb4560cddcc6739a00108cffe57935ceb23b08fffee45cb29bdd463ab2e"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
