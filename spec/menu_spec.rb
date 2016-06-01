require 'menu'

RSpec.describe Menu do

  subject(:menu) {described_class.new}

  it "shows the customer a menu" do
    expect(Menu.print_menu).to include("Margherita_pizza £3.50,")
  end

  it "selects a meal" do
    selection = menu.select_meal(meal: :fries, quantity: 1)
    expect(selection).to eq({ item: {fries: 2.00}, quantity: 1 })
  end
end
