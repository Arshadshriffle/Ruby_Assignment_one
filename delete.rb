class Delete
  def delete_expense(expenses)
    @expenses = expenses
    puts "Enter the index of the expense to delete:"
    index = gets.chomp.to_i
    if index >= 1 && index <= @expenses.length
      @expenses.delete_at(index - 1)
      puts "Expense deleted successfully!"
    else
      puts "Invalid Index!"
    end
  end
end
