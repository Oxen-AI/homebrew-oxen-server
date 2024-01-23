class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.10.7"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.10.7/oxen-server-mac-13.0-0.10.7.tar.gz"
      sha256 "3ac0687460b0b9fd392a1b8ebaf6e27180927df8e87515f6ffc471551aafe669"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.10.7/oxen-server-mac-12.0-0.10.7.tar.gz"
      sha256 "2e6b457dd3b651f4bf1f1b8ba3a3d36427ca53d6ee1a6d54b3fc7d66de5db682"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.10.7/oxen-server-mac-11.0-0.10.7.tar.gz"
      sha256 "1a8f33da10bdb35e5b8479b57118247229c0f5f0fa765b84582745b54e830747"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
