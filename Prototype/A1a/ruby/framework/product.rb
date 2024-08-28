module Framework
  class Product
    def use(s)
      raise NotImplementedError, 'You must implement the use method'
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
end
