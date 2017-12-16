require 'formula'

class Continuity < Formula
  homepage 'https://github.com/jzempel/continuity'
  url 'https://pypi.python.org/packages/aa/88/4248c2aae19d71876a30c759c43d855c1e47cc2e23791aa8fdb81bb8ecc5/continuity-1.0.1.tar.gz'
  sha256 '0dba5fdb1bcc6edea8ee9cb027a3303cda9be0f35e5a60f4745ea68edbc94a78'
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
