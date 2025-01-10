class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.24.3"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.24.3/oxen-server-mac-15.0.tar.gz"
      sha256 "7e8b595de6da4196329a3a4ac1fc37e01560d9d87da148fe326060afc61b4cda"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.24.3/oxen-server-mac-14.0.tar.gz"
      sha256 "9de31c5cae79e51ef6bee02840db1cfeaf1256d50ec05d322dad2f09f6446097"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.24.3/oxen-server-mac-13.0.tar.gz"
      sha256 "067dd4aa3ee05c31de1523bef88289bffb92ddb05fbc701f1f6e12c2db4357e7"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
