# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Plytools < Formula
  desc "tools for ply mesh format"
  homepage "https://github.com/autosquid/plytools"
  url "https://github.com/autosquid/plytools/archive/v1.0.tar.gz"
  version "1.0"
  sha256 "1988139e70e2b117848918caa324b2481a5cc578b8cf63ac0a0ba82123b1e8ed"
  head "https://github.com/autosquid/plytools.git"

  # depends_on "cmake" => :build

  def install
    bin.mkpath
    system "make -j1 all"
    bin.install "ply2ascii", "ply2binary", "xformply", "ply2iv", "sphereply", "platoply", "boundply", "obj2ply", "flipply", "normalsply", "headply"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test plytools`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
