class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << Transaction.new(credit: amount, debit: nil, balance: @balance)
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << Transaction.new(credit: nil, debit: -amount, balance: @balance)
  end


end
