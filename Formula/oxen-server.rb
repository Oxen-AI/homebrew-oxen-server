class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.29.0"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.29.0/oxen-server-mac-15.0.tar.gz"
      sha256 "ca6435aef6250af32bbce4ce54191814ff3b55dd9b1f9d96f1d31c78d7dad028"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.29.0/oxen-server-mac-14.0.tar.gz"
      sha256 "d11040e15dec3c5894c3e14674e67789f37b4fbea300d95789c19329cf27e12c"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.29.0/oxen-server-mac-13.0.tar.gz"
      sha256 "78737d64aabe122abb6b87906a06070b54fb5c0d1361014f860da9892ba79c9e"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
