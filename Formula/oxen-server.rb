class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.32.3"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.3/oxen-server-mac-15.0.tar.gz"
      sha256 "84279ebcd5a325aa2ba4e95bfdbd650049a874dd5a0cf420d894e0b41c9ad4bd"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.3/oxen-server-mac-14.0.tar.gz"
      sha256 "b6a1202732766f351ed92dc2388df87ef5f7772bb9e5aae1430dd875b3f365cd"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.3/oxen-server-mac-13.0.tar.gz"
      sha256 "dda398b0a007eb6ad030e811b85f54bf403c58b5e3a0347a424583a5fc428ab3"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
