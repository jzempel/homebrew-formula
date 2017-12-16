require 'formula'

class Continuity < Formula
  homepage 'https://github.com/jzempel/continuity'
  url 'https://pypi.python.org/packages/0c/27/5596252c54d112c476f16a27c5f412a557bae08189b082b65b0349fad41b/continuity-1.0.1.tar.gz'
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
