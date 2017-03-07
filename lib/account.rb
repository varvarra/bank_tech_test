require_relative 'printer'
require_relative 'transaction'

class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
    @printer = Printer.new
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

  def show_statement
    @printer.print_statement(transactions)
  end


end
