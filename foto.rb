class Foto < Formula
  desc "A command-line tool to copy and paste images in a variety of formats"
  homepage "https://github.com/capaldo/foto"
  url "https://github.com/capaldo/foto/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "2a18db75ed6ff8960d97c76d68006c135e212e13c0a615bf0956b2758d888be6"
  license "MIT"
  head "https://github.com/capaldo/foto.git", branch: "main"

  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/foto'
  end
end
