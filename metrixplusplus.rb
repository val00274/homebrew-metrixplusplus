require 'formula'

METRIXPLUSPLUS_VERSION = '1.3.168'
class Metrixplusplus < Formula
  homepage 'http://metrixplusplus.sourceforge.net/'
  url "http://downloads.sourceforge.net/project/metrixplusplus/metrixplusplus-#{METRIXPLUSPLUS_VERSION}.zip"
  version METRIXPLUSPLUS_VERSION
  sha1 'a38f21642168b8c24551e4604acae662be216798'

  def install
    prefix.install Dir['*']

    mkdir_p bin
    open(File.join(bin.realpath, 'metrix++'), 'w') do |f|
      f.puts "#!/bin/sh"
      f.puts "python #{(prefix/'metrix++.py').realpath} $@"
    end
    (bin/'metrix++').chmod 0755

    bin.install
  end
end

