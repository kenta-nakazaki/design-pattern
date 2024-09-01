class Strategy
  def next_hand
    raise NotImplementedError, "You must implement the next_hand method"
  end

  def study(win)
    raise NotImplementedError, "You must implement the study method"
  end
end
