require 'basket.rb'

RSpec.describe Basket do
  subject(:basket){described_class.new(menu)}
  let(:menu){double (:menu)}
  let(:pizza){double (:pizza)}

  before do

  end

  context '#add_meal_to_basket' do
    it "adds a meal to basket_items" do
      basket.add_meal_to_basket(meal: pizza, quantity: 3)
      expect(basket.basket_items[pizza]).to eq 3
    end
  end

  context "#basket_total" do
    it "returns the cost of basket items" do
      allow(basket).to receive(:item_totals).and_return([1, 3, 5, 7])
      expect(basket.basket_total).to eq(16)
    end
  end
end
