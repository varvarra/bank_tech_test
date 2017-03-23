require 'account'

describe Account do
  subject { Account.new }

  let (:date) {Time.new.strftime('%d/%m/%Y')}

  describe "::new" do

      it 'has a balance of zero at initialization' do
        expect(subject.balance).to eq(0)
      end

      it 'is initialized with no transactions' do
        expect(subject.transactions).to be_empty
      end
  end

  describe "#deposit" do

    it "chnages an account balance" do
      expect {subject.deposit(100)}.to change{subject.balance}.by(100)
    end

    it "stores a new transaction in transactions array" do
      subject.deposit(100)
      expect(subject.transactions[0]).to eq({:date=>date, :credit=>100, :debit=>nil, :balance=>100})
    end

  end

  describe "#withdraw" do

    it "changes an account balance" do
      subject.deposit(100)
      expect {subject.withdraw(50)}.to change{subject.balance}.by(-50)
    end

    it "stores a new transaction in transactions array" do
      subject.deposit(100)
      subject.withdraw(50)
      expect(subject.transactions[1]).to eq({:date=>date, :credit=>nil, :debit=>50, :balance=>50})
    end

    it 'raises an error if trying to withdraw more than the balance' do
      message = "You cannot withdraw a higher amount than your current balance."
      expect { subject.withdraw(10) }.to raise_error message
    end
  end

    describe "#show_statement" do
      it {is_expected.to respond_to(:show_statement)}
    end

end
