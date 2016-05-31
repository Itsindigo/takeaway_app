require_relative 'menu'

class Order

  attr_accessor :ordered_items, :cost

  def initialize(menu=nil)
    @menu = menu
    @ordered_items = []
    @cost = 0
  end

  def add_meal_to_order
    @cost += (meal_price * meal_quantity)
    @ordered_items << your_meal * meal_quantity
    format_ordered_items
  end


  private
  def format_ordered_items
    @ordered_items.flatten.map {|x| x.to_s}
  end

  def your_meal
    @menu.meal_choice[:item].keys
  end


  def meal_price
    @menu.meal_choice[:item].values[0]
  end

  def meal_quantity
    @menu.meal_choice[:quantity]
  end

end
