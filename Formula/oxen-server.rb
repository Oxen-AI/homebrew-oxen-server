class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.18.6"

  on_macos do
    if MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.6/oxen-server-mac-14.0.tar.gz"
      sha256 "12bbef6bfe264669be578a04e50b6d9fb7566408adf8e4f8f5390db37d40b256"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.6/oxen-server-mac-13.0.tar.gz"
      sha256 "e8c62f311bc78c1ead483a024953113ca23473f93ba64422685b0d64c22b178a"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.6/oxen-server-mac-12.0.tar.gz"
      sha256 "77b770ef9ae9f159451db6d69044384432c8c615058a484f7e28f3761ae81574"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
