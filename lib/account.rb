require_relative 'transaction'
require_relative 'statement'

class Account

  EMPTY_ACCOUNT = 0
  attr_reader :balance, :transactions, :statement

  def initialize
    @balance = 0
    @transactions = []
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    fail 'Insufficient funds' if balance + amount <= EMPTY_ACCOUNT
    @balance -= amount
  end

  def statement

  end

  private

  def add_transaction
    transaction = Transaction.new(credit, debit, balance)
    @statement.transaction_history << transaction
  end

end
