require_relative "strategy"
require_relative "hand"
require "securerandom"

class RandomStrategy < Strategy
  def initialize(seed)
    @random = Random.new(seed)
  end

  def next_hand
    Hand.get_hand(@random.rand(3))
  end

  def study(win)
  end
end
