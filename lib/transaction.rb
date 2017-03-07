require_relative "account"

class Transaction

  attr_reader :amount, :date, :type

  def initialize(date, amount)
    @amount = amount
    @date = date
  end

  private

  def credit_or_debit?(amount)
    amount < 0 ? type = :debit : type = :credit
  end

end
