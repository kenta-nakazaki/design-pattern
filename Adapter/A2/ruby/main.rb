# frozen_string_literal: true

require_relative 'file_properties'

def main
  f = FileProperties.new
  begin
    f.read_from_file('file.txt')
    f.set_value('width', '1024')
    f.set_value('height', '512')
    f.set_value('depth', '32')
    f.write_to_file('newfile.txt')
    puts 'newfile.txt is created.'
  rescue IOError => e
    puts e.message
  end
end

main
