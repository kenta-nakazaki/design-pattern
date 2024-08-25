# frozen_string_literal: true

require_relative 'print_banner'

# Adapter/Sample1/main.rb
class Main
  def self.main
    p = PrintBanner.new('Hello')
    p.print_weak
    p.print_strong
  end
end

Main.main
