class Filter
  def filter_expenses(expenses)
    @expenses = expenses
    puts "Enter the category to filter expenses:"
    category = gets.chomp
    category.upcase!

    filtered_expenses = @expenses.select { |expense| expense.category == category }
    puts "Filtered Expenses:"
    filtered_expenses.each do |expense|
      puts "Amount: $#{expense.amount}, Category: #{expense.category}, Date: #{expense.date}"
    end
  end
end
