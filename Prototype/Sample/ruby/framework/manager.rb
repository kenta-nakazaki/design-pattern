module Framework
  class Manager
    def initialize
      @showcase = {}
    end

    def register(name, proto)
      @showcase[name] = proto
    end

    def create(protoname)
      proto = @showcase[protoname]
      proto.create_copy
    end
  end
end
