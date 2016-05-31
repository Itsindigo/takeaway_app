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
    MENU
  end

  def select_meal(choice: choice, quantity: quantity)
    item = MENU.select { |name, price| name == choice }
    @meal_choice = { item: item, quantity: quantity }
  end


end

# brewhouse.io

# methods are either commands or queries -
# if it's a command, you shouldn't care about the return value
# AND it will change the state of something
# if it's query, you're asking for a value, and it shouldn't change
# the state
