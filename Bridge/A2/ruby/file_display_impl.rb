# Bridge/Sample/string_display_impl.rb

require_relative "display_impl"

class FileDisplayImpl < DisplayImpl
  def initialize(filename)
    @filename = filename
  end

  def raw_open
    puts "=-=-=-=-=-= #{@filename}: start =-=-=-=-=-=-"
  end

  def raw_print
    file_path = File.join(File.dirname(__FILE__), @filename)
    File.open(file_path, "r") do |file|
      file.each_line do |line|
        print "> "
        puts line
      end
    end
  end

  def raw_close
    puts "=-=-=-=-=-=- #{@filename}: end -=-=-=-=-=-=-"
  end
end
