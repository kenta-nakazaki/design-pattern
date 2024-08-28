class Triple
  @@instances = {}

  attr_reader :name

  def self.get_instance(name)
    @@instances[name]
  end

  def self.create_instances
    ["ALPHA", "BETA", "GAMMA"].each do |name|
      @@instances[name] = new(name)
    end
  end

  def initialize(name)
    @name = name
  end

  private_class_method :new, :create_instances
  create_instances
end
