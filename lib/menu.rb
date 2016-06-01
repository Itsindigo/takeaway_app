class Menu

  attr_reader :meal_choice, :choice_cost

  MENU = {
    margherita_pizza: 3.50,
    pepperoni_pizza: 3.80,
    hawaiian_pizza: 3.80,
    fries: 2.00,
    cheesy_fries: 2.50,
    chicken_kebab: 4.00
  }.freeze

  def self.print_menu
    MENU.map do |meal, price|
      "%s £%.2f" % [meal.to_s.capitalize, price]
    end.join(", ")
  end


  def price(meal)
    MENU[meal]
  end

end
