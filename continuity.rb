require 'formula'

class Continuity < Formula
  homepage 'https://github.com/jzempel/continuity'
  url 'https://pypi.python.org/packages/source/c/continuity/continuity-0.9.1.tar.gz'
  sha1 'bec926f615032834ba895c651e654d7078153cd2'
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
