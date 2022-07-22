# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Myqrencode < Formula
  desc ""
  homepage ""
  url "https://github.com/harutiro/myqrencode/archive/refs/tags/0.0.3.tar.gz"
  sha256 "302fb8ba9c31343618ac41ff194f06222492e911f6cc946e45ff521ea241c3b2"
  license ""

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    system "./configure", "--disable-debug",
    "--disable-dependency-tracking",
    "--disable-silent-rules",
    "--prefix=#{prefix}"
    # system "cmake", ".", \*std\_cmake\_args
    system "make", "install" # if this fails, try separate make/make install steps
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
