require 'rails_helper'

RSpec.describe FoodFacade do
  before(:each) do
    @facade = FoodFacade.new("sweet potatoes")
  end

  it 'exists', :vcr do
    expect(@facade).to be_a(FoodFacade)
  end

  it 'returns an array of food objects', :vcr do
    expect(@facade.foods).to be_an(Array)

    @facade.foods.each do |food|
      expect(food).to be_a(Food)
    end
  end

  it 'returns a count of the results for a search', :vcr do
    expect(@facade.count).to eq(56850)
  end
end
