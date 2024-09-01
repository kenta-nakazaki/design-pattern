class Hand
  attr_reader :name, :handvalue

  def initialize(name, handvalue)
    @name = name
    @handvalue = handvalue
  end

  HANDS = [
    new("グー", 0),
    new("チョキ", 1),
    new("パー", 2),
  ]

  def self.get_hand(handvalue)
    HANDS[handvalue]
  end

  def stronger_than?(other_hand)
    fight(other_hand) == 1
  end

  def weaker_than?(other_hand)
    fight(other_hand) == -1
  end

  def fight(other_hand)
    return 0 if self == other_hand
    return 1 if (@handvalue + 1) % 3 == other_hand.handvalue

    -1
  end

  def to_s
    @name
  end
end
