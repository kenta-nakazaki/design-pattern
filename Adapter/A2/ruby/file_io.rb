# frozen_string_literal: true

# This module provides file input/output operations.
module FileIO
  def read_from_file(filename)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def write_to_file(filename)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def set_value(key, value)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def get_value(key)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
