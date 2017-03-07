require './lib/account'

account = Account.new

account.deposit(1000)

account.deposit(2000)

account.withdraw(500)

account.show_statement
