class Menu

  attr_reader :meal_choice, :choice_cost

  MENU = {
    margherita_pizza: 3.50,
    pepperoni_pizza: 3.80,
    hawaiian_pizza: 3.80,
    fries: 2.00,
    cheesy_fries: 2.50,
    chicken_kebab: 4.00
  }

  def self.print_menu
    MENU
  end

  def select_meal(choice: choice, quantity: quantity)
    @choice_cost = Menu::MENU.fetch(choice) * quantity
    @meal_choice = Menu::MENU.keys.select {|x| x == choice}
  end



end
