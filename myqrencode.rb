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
    bin.install "chikubeam"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test myqrencode`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
