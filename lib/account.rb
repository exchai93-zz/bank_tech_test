class Account

  attr_reader :balance

  def initialize
    @balance = 100
  end

  def deposit(amount)
    self.balance += amount
  end

  def withdraw(amount)
    self.balance -= amount
  end
  
  private
  attr_writer :balance

end
