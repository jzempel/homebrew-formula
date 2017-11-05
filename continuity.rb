require 'formula'

class Continuity < Formula
  homepage 'https://github.com/jzempel/continuity'
  url 'https://pypi.python.org/packages/aa/88/4248c2aae19d71876a30c759c43d855c1e47cc2e23791aa8fdb81bb8ecc5/continuity-1.0.0.tar.gz'
  sha256 '901cb78e6c4bbe0745dd160313032cf5b74743b45e09849cc74c6d519944f2fe'
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
