class Food
  attr_reader :id,
              :gtinupc,
              :description,
              :brand_owner,
              :ingredients

  def initialize(food_data)
    @id = food_data[:fdcId]
    @gtinupc = food_data[:gtinUpc]
    @description = food_data[:description]
    @brand_owner = food_data[:brandOwner]
    @ingredients = food_data[:ingredients]
  end
end