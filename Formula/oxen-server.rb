class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.14.10"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.14.10/oxen-server-mac-13.0-0.14.10.tar.gz"
      sha256 "eea1ee858375b1e56e15467924c032b70a447fd1d1f5b2d925759bb0facec126"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.14.10/oxen-server-mac-12.0-0.14.10.tar.gz"
      sha256 "204b2cfaa402745ef8569aed42d4f58df113245de943a85a78be9523637d392e"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.14.10/oxen-server-mac-11.0-0.13.0.tar.gz"
      sha256 "97fb037b4f503b95dfaa32d406af2c9a51ddc956fa305686817c00c35c6b752e"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
