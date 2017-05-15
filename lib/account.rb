class Account

  attr_reader :balance

  def initialize
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
    self.balance += amount
  end

  def withdraw(amount)
    self.balance -= amount
  end

  private
  

end
