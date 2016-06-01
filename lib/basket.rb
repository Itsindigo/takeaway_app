require_relative 'menu'

class Basket

  attr_reader :basket_items, :cost

  def initialize(menu)
    @menu = menu
    @basket_items = {}
  end

  def add_meal_to_basket(meal: meal, quantity: quantity)
    basket_items[meal] = quantity
  end

  def basket_total
    item_totals.inject(:+)
  end

  # def calculate_cost
  #   @cost = basket_items.map do |x|
  #     x[:item].values[0] * x[:quantity]
  #   end.inject(:+)
  # end

  # def return_formatted_basket
  #   basket_items.map do |item|
  #     item.map do |dish, quantity|
  #       "%s Quantity:" % [dish[:item].keys[0].to_s, dish[:quantity]]
  #     end
  #   end.join(", ")
  #   puts "Total cost: #{cost}"
  # end

  private

  def item_totals
    basket_items.map do |meal, quantity|
      @menu.price(meal) * quantity
    end
  end

end
