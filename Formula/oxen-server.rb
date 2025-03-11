class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.30.0"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.30.0/oxen-server-mac-15.0.tar.gz"
      sha256 "51957ed7bcd72cb3bbb1fe757710e5389014da26e2ffbad838203e18b889eb54"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.30.0/oxen-server-mac-14.0.tar.gz"
      sha256 "e6552c7d5535ce7b453520207883efd0c87384277a19e426b665273b63de7391"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.30.0/oxen-server-mac-13.0.tar.gz"
      sha256 "a3c4cbdff3eb6c6b4632a59dfcff00c1ca9a43d07136034fc824af9632fd08d9"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
