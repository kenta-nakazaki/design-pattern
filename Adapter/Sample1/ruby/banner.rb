# frozen_string_literal: true

# Adapter/Sample1/banner.rb
class Banner
  def initialize(string)
    @string = string
  end

  def show_with_paren
    puts "(#{@string})"
  end

  def show_with_aster
    puts "*#{@string}*"
  end
end
