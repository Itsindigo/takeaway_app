require 'menu'

RSpec.describe Menu do

  subject(:menu) {described_class.new}

  it "shows the customer a menu" do
    expect(Menu.print_menu).to include("Margherita_pizza £3.50,")
  end

  it "returns a price" do
    expect(menu.price(:fries)).to eq(2.00)
  end
end
