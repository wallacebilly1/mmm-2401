class FoodService
  def conn
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.params["api_key"] = Rails.application.credentials.foods[:key]
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def foods_with_ingr(query)
    get_url("foods/search?query=#{query}")
  end
end