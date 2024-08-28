require_relative 'framework/product'
require_relative 'framework/concrete_product'


class UnderlinePen < Framework::ConcreteProduct
  include Framework::Product

  def initialize(ulchar)
    @ulchar = ulchar
  end

  def use(string)
    puts string
    puts @ulchar * string.length
  end
end
