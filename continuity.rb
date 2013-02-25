require 'formula'

class Continuity < Formula
  homepage 'https://github.com/jzempel/continuity'
  url 'https://github.com/jzempel/continuity/tarball/0.4'
  sha1 'c3282a8fbba6afd4346c2bd93987054933465d05'
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
