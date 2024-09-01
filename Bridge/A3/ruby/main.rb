# Bridge/Sample/main.rb

require_relative "display"
require_relative "count_display"
require_relative "increment_display"
require_relative "decoration_char_display_impl"

class Main
  def self.main
    d1 = IncrementDisplay.new(DecorationCharDsiplayImpl.new("<", "*", ">"), 1)
    d2 = IncrementDisplay.new(DecorationCharDsiplayImpl.new("|", "#", "-"), 2)
    d1.increment_display(4)
    d2.increment_display(6)
  end
end

Main.main
