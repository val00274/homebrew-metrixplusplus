require 'formula'

METRIXPLUSPLUS_VERSION = '1.3.168'
class Metrixplusplus < Formula
  homepage 'http://metrixplusplus.sourceforge.net/'
  url "http://downloads.sourceforge.net/project/metrixplusplus/metrixplusplus-#{METRIXPLUSPLUS_VERSION}.zip"
  version METRIXPLUSPLUS_VERSION
  sha256 'e42a088b9e886f6973966472ab2dc6a98ff8edf46d91fa968220a46399b20470'

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

