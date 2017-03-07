require 'account'

describe Account do

  describe "::new" do
    subject { Account.new }

      it 'has a balance of zero at initialization' do
        expect(subject.balance).to eq(0)
      end

      it 'is initialized with no transactions' do
        expect(subject.transactions).to be_empty
      end
  end

  describe "#deposit" do
    let(:amount) { 500 }
    let(:date) {"12/10/2016"}

    it "stores a new transaction" do
      # expect(transaction_class).to receive(:new).with(date, amount)
      account = Account.new
      account.deposit(amount, date)
      expect(account.transactions[0].amount).to eq(amount)
    end

    it "increases an account balance" do
      account = Account.new
      account.deposit(amount, date)
      p date
      expect {account.deposit(amount, date)}.to change{account.balance}.by(amount)
    end
  end

end
