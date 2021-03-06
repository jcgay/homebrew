require 'formula'

class Klavaro < Formula
  homepage 'http://klavaro.sourceforge.net/'
  url 'http://downloads.sourceforge.net/project/klavaro/klavaro-1.9.9.tar.bz2'
  sha1 '97e0980fbbcdfdd114044101780e758154f6e0e7'

  depends_on 'pkg-config' => :build
  depends_on 'intltool' => :build
  depends_on 'gtk+'
  depends_on 'gtkdatabox'
  depends_on :x11

  def install
    ENV.append 'LDFLAGS', '-lgmodule-2.0'
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
