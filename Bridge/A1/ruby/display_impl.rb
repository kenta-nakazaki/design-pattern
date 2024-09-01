# Bridge/Sample/display_impl.rb
class DisplayImpl
  def raw_open
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def raw_print
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def raw_close
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
