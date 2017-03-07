require 'account'

describe Account do
  subject { Account.new }

  describe "::new" do

      it 'has a balance of zero at initialization' do
        expect(subject.balance).to eq(0)
      end

      it 'is initialized with no transactions' do
        expect(subject.transactions).to be_empty
      end
  end

  describe "#deposit" do

    it "stores a new transaction in transactions array" do
      subject.deposit(100)
      expect(subject.transactions[0].details).to eq({:date=>"07/03/2017", :credit=>100, :debit=>nil, :balance=>100})
    end

    it "increases an account balance" do
      expect {subject.deposit(100)}.to change{subject.balance}.by(100)
    end
  end

end
