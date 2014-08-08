require 'formula'

class Continuity < Formula
  homepage 'https://github.com/jzempel/continuity'
  url 'https://pypi.python.org/packages/source/c/continuity/continuity-0.8.4.tar.gz'
  sha1 '4d22f56d1d502563b1393ab444e89a6c14a4564b'
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
