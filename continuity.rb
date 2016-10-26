require 'formula'

class Continuity < Formula
  homepage 'https://github.com/jzempel/continuity'
  url 'https://pypi.python.org/packages/00/b8/75c565f94c04795089ff5debb94e3eb30b542309f0490eec4a104c46c27d/continuity-0.10.3.tar.gz'
  sha256 'fe6ed4b6499099cc7ae0a579704f0fee558ce3170bb18ee2ab1b37186d690103'
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
