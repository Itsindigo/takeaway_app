require 'order.rb'

RSpec.describe Order do
  subject(:order){described_class.new(menu)}
  let(:menu){double (:menu)}
  let(:pizza){double (:meal_choice)}

  before do

  end

  context '#add_meal_to_order' do
    it "adds a meal to ordered_items" do
      allow(menu).to receive(:meal_choice).and_return({item: {fries: 2.00}, quantity: 1})
      expect{order.add_meal_to_order}.to change{order.ordered_items.size}.by(1)
    end

    it "adds the costs of quantity of meals to the cost attribute" do
      allow(menu).to receive(:meal_choice).and_return({item: {fries: 2.00}, quantity: 2})
      expect{order.add_meal_to_order}.to change{order.cost}.by(4.00)
    end
  end
end
