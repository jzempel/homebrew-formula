require 'formula'

class Continuity < Formula
  homepage 'https://github.com/jzempel/continuity'
  url 'https://pypi.python.org/packages/source/c/continuity/continuity-0.10.0.tar.gz'
  sha1 '18bdb1d62c3f3a66d255012fa52ac58da9b7c965'
  head 'https://github.com/jzempel/continuity.git'

  # The pyinstaller-built binary complains on strip.
  skip_clean 'bin'

  def caveats; <<-EOS.undent
    To configure or update a git repository for use with continuity:
      continuity init
    EOS
  end

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  def test
    system "#{bin}/continuity", "--version"
  end
end
