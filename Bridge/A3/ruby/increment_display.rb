# Bridge/Sample/display.rb
class IncrementDisplay < CountDisplay
  def initialize(impl, step)
    super(impl)
    @step = step
  end

  def increment_display(count)
    count.times do |i|
      multi_display(i * @step)
    end
  end
end
