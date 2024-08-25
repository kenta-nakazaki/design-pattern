# frozen_string_literal: true

require_relative 'banner'
require_relative 'print'

# Adapter/Sample1/print_banner.rb
class PrintBanner < Print
  attr_reader :banner

  def initialize(string)
    super()
    @banner = Banner.new(string)
  end

  def print_weak
    banner.show_with_paren
  end

  def print_strong
    banner.show_with_aster
  end
end
