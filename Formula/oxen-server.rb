class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.26.0"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.26.0/oxen-server-mac-15.0.tar.gz"
      sha256 "9638549f4a2becb2ca9dc244eacfdb18e40c5ccfe3e97f2fb97877c5547eee70"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.26.0/oxen-server-mac-14.0.tar.gz"
      sha256 "26a3a119095fae06f80ee307a81f5a36c6ed043b97d4a75ebd088524ae654d0a"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.26.0/oxen-server-mac-13.0.tar.gz"
      sha256 "1d6ee232025f7a8e7583ecf542727ee8e7f71500147269d15ed56d20865d1acc"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
