module Builder
  def make_title(title)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def make_string(str)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def make_items(items)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def close
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
