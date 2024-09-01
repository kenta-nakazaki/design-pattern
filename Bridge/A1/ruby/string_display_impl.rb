# Bridge/Sample/string_display_impl.rb

require_relative "display_impl"

class StringDisplayImpl < DisplayImpl
  def initialize(string)
    @string = string
    @width = string.length
  end

  def raw_open
    print_line
  end

  def raw_print
    puts "|#{@string}|"
  end

  def raw_close
    print_line
  end

  private

    def print_line
      print "+"
      @width.times { print "-" }
      puts "+"
    end
end
