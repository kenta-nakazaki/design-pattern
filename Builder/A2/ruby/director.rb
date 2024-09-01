class Director
  def initialize(builder)
    @builder = builder
  end

  def construct
    @builder.make_title("サッカーのポジション")
    @builder.make_string("大雑把なポジション")
    @builder.make_items(["FW", "MF", "DF", "GK"])
    @builder.make_string("細かいポジション")
    @builder.make_items(["CF", "ST", "WG", "OMF", "DMF", "CMF", "SH", "SB", "CB", "GK"])
    @builder.close
  end
end
