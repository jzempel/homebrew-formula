require 'formula'

class Continuity < Formula
  homepage 'https://github.com/jzempel/continuity'
  url 'https://github.com/jzempel/continuity/tarball/0.4'
  sha1 '1cb3f0c279e6c0158be3ad83d57b24a3d0b349bb'
  head 'https://github.com/jzempel/continuity.git'

  # The pyinstaller-built binary complains on strip.
  skip_clean 'bin'

  def install
    system "make", "prefix=#{prefix}", "install"
  end
end
