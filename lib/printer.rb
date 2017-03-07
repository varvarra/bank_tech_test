class Printer

  def print_statement(transactions)
    p "||" + ["Date", "Credit", "Debit", "Balance"].map!{|header| header.center(20)}.join('||') + '||'
    transactions.each.reverse_each do |tr|
      p "||" + tr.values.map!{|x| x.to_s.center(20)}.join('||') + "||"
    end
  end
end
