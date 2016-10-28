# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Cccmake < Formula
  desc "pre hooked cmake"
  homepage "https://github.com/autosquid/cccmake"
  head "https://github.com/autosquid/cccmake.git"
  url "https://github.com/autosquid/cccmake/archive/v1.0.tar.gz"
  version "1.0"
  sha256 "60aa427f1da7494d39a415f12b197645af2d511d27649e7822d178bd0b034918"

  def install
    bin.install 'cccmake.sh'
  end

  test do
      system "system cccmake -h"
  end
end
