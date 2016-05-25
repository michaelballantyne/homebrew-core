class ChezScheme < Formula
  desc "R6RS Scheme compiler and run-time system."
  homepage "http://www.scheme.com/"
  url "https://github.com/cisco/ChezScheme/archive/v9.4.tar.gz"
  sha256 "9f4e6fe737300878c3c9ca6ed09ed97fc2edbf40e4cf37bd61f48a27f5adf952"

  head "https://github.com/cisco/ChezScheme.git"

  depends_on :x11

  def install
    system "./configure", "--installprefix=#{prefix}", "--threads", "--installschemename=chez"
    system "make", "install"
  end

  test do
    system "chez", "--version"
  end
end
