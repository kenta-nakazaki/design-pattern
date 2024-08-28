module Framework
  class ConcreteProduct
    include Product

    def create_copy
      begin
        clone
      rescue CloneNotSupportedException => e
        e.print_stack_trace
        nil
      end
    end
  end
end
