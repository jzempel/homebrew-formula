require 'formula'

class Continuity < Formula
  homepage 'https://github.com/jzempel/continuity'
  url 'https://github.com/jzempel/continuity/tarball/0.5.1'
  sha1 '4bc96c7613007498df7c96f39f92eec253df0bb8'
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
