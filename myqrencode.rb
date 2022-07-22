# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Myqrencode < Formula
  desc ""
  homepage "https://www.harutiro.net"
  url "https://github.com/harutiro/myqrencode/archive/refs/tags/0.0.4.tar.gz"
  sha256 "d5b8ed927e271366b2298b7a8151990799a02df6b2dad25fd769b24d55511ab7"
  license ""

  # depends_on "cmake" => :build

  def install
    system "make"
    bin.install "myqrencode"
  end
end
