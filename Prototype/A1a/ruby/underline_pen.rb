require_relative 'framework/product'

class UnderlinePen < Framework::Product
  def initialize(ulchar)
    @ulchar = ulchar
  end

  def use(string)
    puts string
    puts @ulchar * string.length
  end
end
