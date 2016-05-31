require 'order.rb'

RSpec.describe Order do
  subject(:order){described_class.new(menu)}
  let(:menu){double (:menu)}
  let(:pizza){double (:meal_choice)}

  before do

  end

  it "push your meal choice into the ordered items array" do
    allow(menu).to receive(:meal_choice).and_return(pizza)
    allow(menu).to receive(:choice_cost).and_return(4.00)
    order.order_meal
    expect(order.ordered_items).to eq([pizza])
  end

  it "totalises the cost of your order as meals are added" do
    allow(menu).to receive(:meal_choice).and_return(pizza)
    allow(menu).to receive(:choice_cost).and_return(4.00)
    order.order_meal
    order.order_meal
    expect(order.cost).to eq(8.00)
  end

  
end
