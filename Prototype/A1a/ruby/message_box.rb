require_relative 'framework/product'

class MessageBox < Framework::Product
  def initialize(decochar)
    @decochar = decochar
  end

  def use(string)
    decolen = 1 + string.length + 1
    puts @decochar * decolen
    puts "#{@decochar}#{string}#{@decochar}"
    puts @decochar * decolen
  end
end
