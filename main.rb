require_relative "addexpense"
require_relative "view"
require_relative "filter"
require_relative "total"
require_relative "delete"
require_relative "update"
require_relative "analyze"

class Expencetracker
  def initialize
    @expenses = []
  end

  def start
    loop do
      puts "\nExpense Tracker"
      puts "1. Add Expense"
      puts "2. View Expenses"
      puts "3. Filter Expenses Through Category"
      puts "4. Calculate Total Expenses"
      puts "5. Update Expense"
      puts "6. Delete Expense"
      puts "7. Analyze the expenses"
      puts "8. Exit"
      print "Please enter your choice: "
      choice = gets.chomp.to_i
      case choice
      when 1
        Add.new.add_expense(@expenses)
      when 2
        View.new.view_expenses(@expenses)
      when 3
        Filter.new.filter_expenses(@expenses)
      when 4
        Total.new.calculate_total_expenses(@expenses)
      when 5
        Update.new.update_expense(@expenses)
      when 6
        Delete.new.delete_expense(@expenses)
      when 7
        Analyze.new.analyze_expense(@expenses)
      when 8
        puts "..............Exiting.............."
        puts "..............Thank you.............."
        break
      else
        puts ".....................Invalid choice!..........."
        puts "............Please Enter Right No From 1 to 8......... "
      end
    end
  end
end

Expencetracker.new.start
