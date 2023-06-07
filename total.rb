class Total
  def calculate_total_expenses(expenses)
    @expenses = expenses
    total = @expenses.map(&:amount).sum  # we can also use total=@expenses.map{|i| i.amount}.sum
    puts "Total Expense: $#{total}"
  end
end
