require 'menu'

RSpec.describe Menu do

  subject(:menu) {described_class.new}

  it "shows the customer a menu" do
    expect(Menu.print_menu).to be_a(Hash)
  end

  it "selects a meal and assigns meal choice to a variable" do
    stub_const("Menu::MENU", {fries: 2.00})
    menu.select_meal(choice: :fries, quantity: 1)
    expect(menu.meal_choice).to eq([:fries])
    expect(menu.choice_cost).to eq(2.00)
  end
end
