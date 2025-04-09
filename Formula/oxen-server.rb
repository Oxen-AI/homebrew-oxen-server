class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.32.4"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.4/oxen-server-mac-15.0.tar.gz"
      sha256 "123c259c8759dc2853233bc07a1416d73177c8ec7645abb73f19fef7af35c2f0"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.4/oxen-server-mac-14.0.tar.gz"
      sha256 "ece65724ee3914e291eba01b68c86d0436456e69eb0a8d7910bc767fe1e42bbb"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.4/oxen-server-mac-13.0.tar.gz"
      sha256 "79bfcd9799d695f83fe11da21602b4ca2067d772b4c17d5b6b10b66666d6565b"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
