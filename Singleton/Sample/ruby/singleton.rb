# Singletonクラスは、インスタンスが一つしか存在しないことを保証します。
class Singleton
  private_class_method :new

  def self.instance
    @instance ||= new
  end

  def initialize
    puts "インスタンスを生成しました。"
  end
end
