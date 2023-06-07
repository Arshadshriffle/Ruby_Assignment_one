require_relative "expense"
require "date"

class Add
  def add_expense(expenses)
    @expenses = expenses

    count = 0
    flag = false
    begin
      puts "Enter the amount spent:"
      amount = gets.chomp.to_i
      if amount < 1 and amount.blank?
        raise
      else
        flag = true
        count = 0
      end
    rescue Exception => e
      count += 1
      if (count != 3)
        retry
      else
        puts "enter valid number"
      end
    end
    if flag == true
      begin
        puts "Enter the category:"
        puts "like Food , Saving , Entertainment , Investment, health etc"
        category = gets.chomp.to_s
        category.upcase!

        if category.empty?
          raise
        else
          count = 0
        end
      rescue Exception => e
        count += 1
        if count != 3
          retry
        else
          puts "!............................Plz enter something.................................!"
          flag = false
        end
      end
    end

    if flag == true
      loop do
        puts "Enter a date (YYYY-MM-DD)"
        @date = gets.chomp
        begin
          datenew = Date.strptime(@date, "%Y-%m-%d")
          break
        rescue
          puts "Invalid date function"
        end
      end
    end

    if flag == true
      begin
        if @expenses.empty?
          id = 1
        else
          id = @expenses.length + 1
        end
      end
      if flag == true
        expense = Expense.new(amount, category, @date, id)
        @expenses << expense
        puts "Expense added successfully!"
      else
        puts ".....You try to many times...Reflecting to main page....."
      end
    end
  end
end
