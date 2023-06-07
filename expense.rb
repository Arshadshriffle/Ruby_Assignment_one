class Expense
  attr_accessor :amount, :category, :date, :id

  def initialize(amount, category, date, id)
    @amount = amount
    @category = category
    @date = date
    @id = id
  end
end
