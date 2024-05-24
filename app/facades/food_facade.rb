class FoodFacade
  def initialize(ingredient = '')
    @ingredient = ingredient
  end

  def foods
    service = FoodService.new

    json = service.foods_with_ingr(@ingredient)

    @foods = json[:data].map do |food_data|
      Food.new(food_data)
    end
  end

  def count
    service = FoodService.new

    json = service.foods_with_ingr(@ingredient)

    json[:total]
  end
end