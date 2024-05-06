class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.15.7"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.15.7/oxen-server-mac-13.0-0.15.7.tar.gz"
      sha256 "14dccbc2ec807c916d30d09760438581e628855c928ca814c64e2c683b95405c"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.15.7/oxen-server-mac-12.0-0.15.7.tar.gz"
      sha256 "b6dcd9082ab737f7c23d5caea5369a4b47655be488d95a4aae4deb3bbb1d3e76"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.15.7/oxen-server-mac-11.0-0.13.0.tar.gz"
      sha256 "4916f4e69eab2d53251e6ec893c6425350260edd02b1fccfcc09e0c6c489207e"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
