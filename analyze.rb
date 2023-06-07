require_relative "view"

class Analyze
  def analyze_expense(expenses)
    @expenses = expenses
    if @expenses.empty?
      puts "No Data Avilable to show"
    else
      puts "Data Visualization"
      total_expenses = 0
      @expenses.each do |i|
        total_expenses += i.amount.to_f
      end
      category_expenses = 0
      if @expenses.any? { |i| i.category != "FOOD" && i.category != "TRANSPORTATION" && i.category != "ENTERTAINMENT" && i.category != "INVESTMENT" && i.category != "HEALTH" && i.category != "SAVING" }
        @expenses.each do |i|
          category_expenses += i.amount.to_f
        end
        chart = category_expenses / total_expenses * 20
        print ":"
        for i in 1..chart.to_i
          print "*"
        end
        puts " unknown =#{category_expenses}\n\n"
      end
      View.new.chart("FOOD", expenses)
      View.new.chart("TRANSPORTATION", expenses)
      View.new.chart("ENTERTAINMENT", expenses)
      View.new.chart("HEALTH", expenses)
      View.new.chart("SAVING", expenses)
      View.new.chart("INVESTMENT", expenses)
    end
  end
end
