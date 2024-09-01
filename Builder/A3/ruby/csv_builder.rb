require_relative "builder"
require "csv"

class CsvBuilder < Builder
  def initialize
    @filename = "untitled.csv"
    @csv_data = []
  end

  def make_title(title)
    @filename = "#{title}.csv"
    @csv_data << ["Title", title]
  end

  def make_string(str)
    @csv_data << ["String", str]
  end

  def make_items(items)
    items.each do |item|
      @csv_data << ["Item", item]
    end
  end

  def close
    CSV.open(@filename, "w") do |csv|
      @csv_data.each { |row| csv << row }
    end
  end

  def get_csv_result
    @filename
  end
end
