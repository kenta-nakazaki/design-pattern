# Bridge/Sample/count_display.rb
class CountDisplay < Display
  def initialize(impl)
    super(impl)
  end

  def multi_display(times)
    open
    times.times { print }
    close
  end
end
