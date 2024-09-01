require_relative "strategy"
require_relative "hand"
require "securerandom"

class ProbStrategy < Strategy
  def initialize(seed)
    @random = Random.new(seed)
    @prev_hand_value = 0
    @current_hand_value = 0
    @history = Array.new(3) { Array.new(3, 1) }
  end

  def next_hand
    bet = @random.rand(sum(@current_hand_value))
    handvalue =
      if bet < @history[@current_hand_value][0]
        0
      elsif bet < @history[@current_hand_value][0] + @history[@current_hand_value][1]
        1
      else
        2
      end
    @prev_hand_value = @current_hand_value
    @current_hand_value = handvalue
    Hand.get_hand(handvalue)
  end

  def sum(handvalue)
    @history[handvalue].sum
  end

  def study(win)
    if win
      @history[@prev_hand_value][@current_hand_value] += 1
    else
      @history[@prev_hand_value][(@current_hand_value + 1) % 3] += 1
      @history[@prev_hand_value][(@current_hand_value + 2) % 3] += 1
    end
  end
end
