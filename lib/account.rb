class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << Transaction.new(credit: amount, debit: nil, balance: @balance).details
  end

  def withdraw(amount)
    raise "You cannot withdraw a higher amount than your current balance." if amount > @balance
    @balance -= amount
    @transactions << Transaction.new(credit: nil, debit: amount, balance: @balance).details
  end


end
