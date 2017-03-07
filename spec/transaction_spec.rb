require 'transaction'

describe Transaction do
  subject(:transaction) {described_class.new(credit: 50, debit: 0, balance: 50)}

  describe "::new" do
    it 'is initialized with a certain credit amount' do
      expect(transaction.details[:credit]).to eq(50)
    end
    it 'is initialized with a certain debit amount' do
      expect(transaction.details[:debit]).to eq 0
    end
    it 'is initialized with a certain date' do
      expect(transaction.details[:date]).to eq Time.new.strftime('%d/%m/%Y')
    end
    it 'is initialized with a certain balance' do
      expect(transaction.details[:balance]).to eq 50
    end
  end
end
