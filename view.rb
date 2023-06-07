# require_relative "expense.rb"
# require_relative "analyze.rb"

class View
  def view_expenses(expenses)
    @expenses = expenses
    puts "Expense List:"
    @expenses.each do |expense|
      puts "ID: #{expense.id}  ,Amount₹: #{expense.amount}, Category: #{expense.category}, Date: #{expense.date}"
    end
  end

  def chart(string, expenses)
    @expenses = expenses
    total_expenses = 0
    category_expenses = 0
    chart = 0
    @expenses.each do |i|
      total_expenses += i.amount.to_f
    end
    if @expenses.any? { |i| i.category == string }
      @expenses.each do |i|
        if i.category == string
          category_expenses += i.amount.to_f
        end
      end
      chart = category_expenses / total_expenses * 20
      print ":"
      for i in 1..chart.to_i
        print "*"
      end
      print " #{string} = #{category_expenses}\n\n"
    end
  end
end
