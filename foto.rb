class Foto < Formula
  desc "A command-line tool to copy and paste images in a variety of formats"
  homepage "https://github.com/capaldo/foto"
  url "https://github.com/capaldo/foto/archive/refs/tags/v0.2.tar.gz"
  sha256 "01a2169d0572ca9885037720b0ffe9b80e970f393c76e9536684f9d0009b3b8a"
  
  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/foto'
  end
end
