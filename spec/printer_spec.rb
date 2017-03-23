require 'printer'

describe Printer do
  subject(:printer) {described_class.new}
  let(:transactions) {[{date: "07/03/2017", credit: 0, debit: 1000, balance: 1000}]}

  describe "#print_statement" do
    it "should correctly print a formatted string" do
      expect{subject.print_statement(transactions)}.to output("\"||        Date        ||       Credit       ||       Debit        ||      Balance       ||\"\n\"||     07/03/2017     ||         0          ||        1000        ||        1000        ||\"\n").to_stdout
    end
  end

end
