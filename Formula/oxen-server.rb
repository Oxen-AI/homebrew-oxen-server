class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.9.17"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.17/oxen-server-mac-13.0-0.9.17.tar.gz"
      sha256 "7f905c18d9180d65c2b3d143bb78eb017c8d91417ff4e9d581e2e41b43eac98a"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.17/oxen-server-mac-12.0-0.9.17.tar.gz"
      sha256 "f5d381dcd1f43ce363a7fe14afbfe484531aebb4b642cdb9a4e886f3afa99f6b"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.17/oxen-server-mac-11.0-0.9.17.tar.gz"
      sha256 "c6cc565ccf3bf6a5f6f57bfe59fd239c73c49403c7603c753ad5451962660cda"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
