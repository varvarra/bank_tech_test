require_relative "account"

class Transaction

  attr_reader :amount, :date

  def initialize(date, amount)
    @amount = amount
    @date = date
  end



end
