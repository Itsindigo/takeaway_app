require_relative 'menu'

class Order

  attr_accessor :ordered_items, :cost

  def initialize(menu=nil)
    @menu = menu
    @ordered_items = []
    @cost = 0
  end

  def order_meal
    @ordered_items << @menu.meal_choice
    @cost += @menu.choice_cost
  end

  private


end
