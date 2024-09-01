# Bridge/Sample/main.rb

require_relative "display"
require_relative "count_display"
require_relative "string_display_impl"

class Main
  def self.main
    d1 = Display.new(StringDisplayImpl.new("Hello, Japan."))
    d2 = CountDisplay.new(StringDisplayImpl.new("Hello, World."))
    d3 = CountDisplay.new(StringDisplayImpl.new("Hello, Universe."))
    d1.display
    d2.display
    d3.display
    d3.multi_display(5)
  end
end

Main.main
