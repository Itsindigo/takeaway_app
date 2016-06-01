require 'basket.rb'
require 'byebug'

RSpec.describe Basket do
  subject(:basket){described_class.new(menu)}
  let(:menu){double (:menu)}
  let(:pizza){double (:meal_choice)}

  before do

  end

  context '#add_meal_to_basket' do
    it "adds a meal to basket_items" do
      allow(menu).to receive(:meal_choice).and_return({item: {fries: 2.00}, quantity: 1})
      expect{basket.add_meal_to_basket}.to change{basket.basket_items.size}.by(1)
    end
  end

  context "#calculate_cost" do
    it "returns the cost of basket items" do
      allow(basket).to receive(:basket_items).and_return([{item:{chicken_kebab: 4.0}, quantity: 1}, {item:{fries: 2.0}, quantity:2}])
      expect(basket.calculate_cost).to eq(8.0)
    end
  end
end
