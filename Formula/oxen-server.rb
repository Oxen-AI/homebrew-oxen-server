class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.34.0"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.0/oxen-server-mac-15.0.tar.gz"
      sha256 "54749d514602686caaa48996418938beb42c3f46e6936f0d33523683c0d3f0c6"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.0/oxen-server-mac-14.0.tar.gz"
      sha256 "af778d091e24a5662e2a1b9b10e0b9c304f4270647f83d2d8be851d28bbd0616"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.0/oxen-server-mac-13.0.tar.gz"
      sha256 "d4803e742f06d10d0975ab2db9a8812b84b8dc80963548ba81a124fd4a6b0199"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
