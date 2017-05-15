class Account

  attr_reader :balance

  def initialize
    @balance = 100
  end

  private
  attr_writer :balance

end
