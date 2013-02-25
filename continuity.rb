require 'formula'

class Continuity < Formula
  homepage 'https://github.com/jzempel/continuity'
  url 'https://github.com/jzempel/continuity/tarball/0.4'
  sha1 '5b85b4f26831418d90b333a03c6d4c235168e35a'
  head 'https://github.com/jzempel/continuity.git'

  # The pyinstaller-built binary complains on strip.
  skip_clean 'bin'

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  def test
    system "#{bin}/continuity", "--version"
  end
end
