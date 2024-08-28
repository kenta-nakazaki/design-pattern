module Framework
  module Product
    def use(s)
      raise NotImplementedError, 'You must implement the use method'
    end

    def create_copy
      raise NotImplementedError, 'You must implement the create_copy method'
    end
  end
end
