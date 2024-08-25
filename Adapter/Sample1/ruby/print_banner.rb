# frozen_string_literal: true

require_relative 'banner'
require_relative 'print'

# Adapter/Sample1/print_banner.rb
class PrintBanner < Banner
  include Print

  def print_weak
    show_with_paren
  end

  def print_strong
    show_with_aster
  end
end
