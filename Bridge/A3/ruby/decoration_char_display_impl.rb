# Bridge/Sample/string_display_impl.rb

require_relative "display_impl"

class DecorationCharDsiplayImpl < DisplayImpl
  def initialize(start_char, decochar, end_char)
    @start_char = start_char
    @decochar = decochar
    @end_char = end_char
  end

  def raw_open
    print @start_char
  end

  def raw_print
    print @decochar
  end

  def raw_close
    puts @end_char
  end
end
