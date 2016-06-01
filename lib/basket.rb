require_relative 'menu'

class Basket

  attr_reader :basket_items, :cost

  def initialize(menu=nil)
    @menu = menu
    @basket_items = []
  end

  def add_meal_to_basket
    basket_items << @menu.meal_choice
  end

  def calculate_cost
    basket_items.map! { |x| x[:item].values[0] * x[:quantity] }
    @cost = basket_items.inject(:+)
  end

  private


end
