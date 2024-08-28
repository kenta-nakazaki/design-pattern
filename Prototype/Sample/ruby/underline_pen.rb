require_relative 'framework/product'

class UnderlinePen
  include Framework::Product

  def initialize(ulchar)
    @ulchar = ulchar
  end

  def use(string)
    puts string
    puts @ulchar * string.length
  end

  def create_copy
    begin
      clone
    rescue CloneNotSupportedException => e
      e.print_stack_trace
      nil
    end
  end
end
