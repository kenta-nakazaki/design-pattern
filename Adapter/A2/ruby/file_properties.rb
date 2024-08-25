# frozen_string_literal: true

require_relative 'file_io'

# This class handles file properties by reading from and writing to files.
class FileProperties
  include FileIO

  def initialize
    @properties = {}
  end

  def read_from_file(filename)
    file_path = File.join(File.dirname(__FILE__), filename)
    File.open(file_path, 'r') do |file|
      file.each_line do |line|
        key, value = line.strip.split('=')
        @properties[key] = value
      end
    end
  end

  def write_to_file(filename)
    file_path = File.join(File.dirname(__FILE__), filename)
    File.open(file_path, 'w') do |file|
      @properties.each do |key, value|
        file.puts "#{key}=#{value}"
      end
    end
  end

  def set_value(key, value)
    @properties[key] = value
  end

  def get_value(key)
    @properties[key]
  end
end
