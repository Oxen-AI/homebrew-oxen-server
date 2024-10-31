class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.19.1"

  on_macos do
    if MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.19.1/oxen-server-mac-14.0.tar.gz"
      sha256 "e5362c2f8d66cf1116401f6d5197a56149e6addae10827e2c97acb8de108694b"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.19.1/oxen-server-mac-13.0.tar.gz"
      sha256 "d7c2e0d8d5062a699fc217c02eb36b3eb51f9f0f2f77f8a1ac221548ac8efb1e"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.19.1/oxen-server-mac-12.0.tar.gz"
      sha256 "d47457ef972f869b527695e6852f4d5f55bb77c99f3d8f3a0496a89f1b5a1ebf"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
