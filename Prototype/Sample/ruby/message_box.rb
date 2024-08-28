require_relative 'framework/product'

class MessageBox
  include Framework::Product

  def initialize(decochar)
    @decochar = decochar
  end

  def use(string)
    decolen = 1 + string.length + 1
    puts @decochar * decolen
    puts "#{@decochar}#{string}#{@decochar}"
    puts @decochar * decolen
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
