class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.34.8"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.8/oxen-server-mac-15.0.tar.gz"
      sha256 "338e9e216d0efb50d5d81a353870bdda6c1044ab8748db9323b8fad1f71a00ef"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.8/oxen-server-mac-14.0.tar.gz"
      sha256 "506d8e95a66d5f1fbce9c834af363dd5f1b6b3bc284e3c32dffc485a8fd7ee6d"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.8/oxen-server-mac-13.0.tar.gz"
      sha256 "7eba502c3271d1682efd46e4ecaf512b766aa9c1a27d63ec31acbb8e3205f61e"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
