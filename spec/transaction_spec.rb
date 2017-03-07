require 'transaction'

describe Transaction do

  describe "::new" do
    subject { Transaction.new(date, amount) }

    let(:amount) { 500 }
    let(:date) {"12/10/2016"}

    it 'is initialized with given amount and date' do
      transaction = Transaction.new(date, amount)
      expect(subject.amount).to eq(amount)
      expect(subject.date).to eq(date)
    end
  end
end
