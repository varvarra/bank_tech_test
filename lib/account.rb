

class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount, date)
    @transactions << Transaction.new(date, amount)
    @balance += amount
  end


end
