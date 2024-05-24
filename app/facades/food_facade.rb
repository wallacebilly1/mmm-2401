class FoodFacade
  attr_reader :ingredient
  def initialize(ingredient = '')
    @ingredient = ingredient
  end

  def foods
    service = FoodService.new

    json = service.foods_with_ingr(@ingredient)

    @foods = json[:foods].map do |food_data|
      Food.new(food_data)
    end
    @foods[0..9]
  end

  def count
    service = FoodService.new

    json = service.foods_with_ingr(@ingredient)

    json[:totalHits]
  end
end