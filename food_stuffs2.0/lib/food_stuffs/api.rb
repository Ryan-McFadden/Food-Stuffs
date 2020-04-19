require "net/http"
require "open-uri"
require "json"


class FoodStuffs::API
    attr_accessor :name, :ingredients, :instructions

    def self.list

      url = "https://www.themealdb.com/api/json/v1/1/random.php"

      uri = URI.parse(url)
      response = Net::HTTP.get_response(uri)
      recipe = JSON.parse(response.body)

      meal = FoodStuffs::API.new
      meal.name = "#{recipe["meals"][0]["strMeal"]}"
      meal.ingredients = [
        "#{recipe["meals"][0]["strMeasure1"]} #{recipe["meals"][0]["strIngredient1"]}",
        "#{recipe["meals"][0]["strMeasure2"]} #{recipe["meals"][0]["strIngredient2"]}",
        "#{recipe["meals"][0]["strMeasure3"]} #{recipe["meals"][0]["strIngredient3"]}",
        "#{recipe["meals"][0]["strMeasure4"]} #{recipe["meals"][0]["strIngredient4"]}",
        "#{recipe["meals"][0]["strMeasure5"]} #{recipe["meals"][0]["strIngredient5"]}",
        "#{recipe["meals"][0]["strMeasure6"]} #{recipe["meals"][0]["strIngredient6"]}",
        "#{recipe["meals"][0]["strMeasure7"]} #{recipe["meals"][0]["strIngredient7"]}",
        "#{recipe["meals"][0]["strMeasure8"]} #{recipe["meals"][0]["strIngredient8"]}",
        "#{recipe["meals"][0]["strMeasure9"]} #{recipe["meals"][0]["strIngredient9"]}",
        "#{recipe["meals"][0]["strMeasure10"]} #{recipe["meals"][0]["strIngredient10"]}",
        "#{recipe["meals"][0]["strMeasure11"]} #{recipe["meals"][0]["strIngredient11"]}",
        "#{recipe["meals"][0]["strMeasure12"]} #{recipe["meals"][0]["strIngredient12"]}",
        "#{recipe["meals"][0]["strMeasure13"]} #{recipe["meals"][0]["strIngredient13"]}",
        "#{recipe["meals"][0]["strMeasure14"]} #{recipe["meals"][0]["strIngredient14"]}",
        "#{recipe["meals"][0]["strMeasure15"]} #{recipe["meals"][0]["strIngredient15"]}",
        "#{recipe["meals"][0]["strMeasure16"]} #{recipe["meals"][0]["strIngredient16"]}",
        "#{recipe["meals"][0]["strMeasure17"]} #{recipe["meals"][0]["strIngredient17"]}",
        "#{recipe["meals"][0]["strMeasure18"]} #{recipe["meals"][0]["strIngredient18"]}",
        "#{recipe["meals"][0]["strMeasure19"]} #{recipe["meals"][0]["strIngredient19"]}",
        "#{recipe["meals"][0]["strMeasure20"]} #{recipe["meals"][0]["strIngredient20"]}"
      ]
      
      meal.instructions = "#{recipe["meals"][0]["strInstructions"]}"

      meal

    end
    
end