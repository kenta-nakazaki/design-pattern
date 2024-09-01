# Bridge/Sample/count_display.rb
class RandomCountDisplay < CountDisplay
  def initialize(impl)
    super(impl)
  end

  def random_display(times)
    multi_display(rand(times))
  end
end
