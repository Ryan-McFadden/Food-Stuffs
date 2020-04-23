require "net/http"
require "open-uri"
require "json"


class FoodStuffs::API

  def self.parse

    url = "https://www.themealdb.com/api/json/v1/1/random.php"

    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    recipe = JSON.parse(response.body)

    recipe
    
  end
    
end