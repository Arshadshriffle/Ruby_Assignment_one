class Update
  def update_expense(expenses)
    @expenses = expenses
    puts "Enter the index of the expense to update:"
    index = gets.chomp.to_i
    if index >= 1 && index <= @expenses.length
      puts "Enter value of money"
      a = gets.chomp
      @expenses[index - 1].amount = a
      puts "Enter value of category"
      b = gets.chomp
      b.upcase!
      @expenses[index - 1].category = b

      puts "Expense updated successfully!"
    else
      puts "Invalid Index!"
    end
  end
end
