require 'menu'

RSpec.describe Menu do

  subject(:menu) {described_class.new}

  it "shows the customer a menu" do
    expect(Menu.print_menu).to be_a(Hash)
  end

  it "selects a meal" do
    selection = menu.select_meal(choice: :fries, quantity: 1)
    expect(selection).to eq({ item: {fries: 2.00}, quantity: 1 })
  end
end
