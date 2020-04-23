class FoodStuffs::Recipe
    attr_accessor :name, :ingredients, :instructions

    def initialize

        meal = FoodStuffs::API.parse

        self.name = "#{meal["meals"][0]["strMeal"]}"

        self.ingredients = [
            "#{meal["meals"][0]["strMeasure1"]} #{meal["meals"][0]["strIngredient1"]}",
            "#{meal["meals"][0]["strMeasure2"]} #{meal["meals"][0]["strIngredient2"]}",
            "#{meal["meals"][0]["strMeasure3"]} #{meal["meals"][0]["strIngredient3"]}",
            "#{meal["meals"][0]["strMeasure4"]} #{meal["meals"][0]["strIngredient4"]}",
            "#{meal["meals"][0]["strMeasure5"]} #{meal["meals"][0]["strIngredient5"]}",
            "#{meal["meals"][0]["strMeasure6"]} #{meal["meals"][0]["strIngredient6"]}",
            "#{meal["meals"][0]["strMeasure7"]} #{meal["meals"][0]["strIngredient7"]}",
            "#{meal["meals"][0]["strMeasure8"]} #{meal["meals"][0]["strIngredient8"]}",
            "#{meal["meals"][0]["strMeasure9"]} #{meal["meals"][0]["strIngredient9"]}",
            "#{meal["meals"][0]["strMeasure10"]} #{meal["meals"][0]["strIngredient10"]}",
            "#{meal["meals"][0]["strMeasure11"]} #{meal["meals"][0]["strIngredient11"]}",
            "#{meal["meals"][0]["strMeasure12"]} #{meal["meals"][0]["strIngredient12"]}",
            "#{meal["meals"][0]["strMeasure13"]} #{meal["meals"][0]["strIngredient13"]}",
            "#{meal["meals"][0]["strMeasure14"]} #{meal["meals"][0]["strIngredient14"]}",
            "#{meal["meals"][0]["strMeasure15"]} #{meal["meals"][0]["strIngredient15"]}",
            "#{meal["meals"][0]["strMeasure16"]} #{meal["meals"][0]["strIngredient16"]}",
            "#{meal["meals"][0]["strMeasure17"]} #{meal["meals"][0]["strIngredient17"]}",
            "#{meal["meals"][0]["strMeasure18"]} #{meal["meals"][0]["strIngredient18"]}",
            "#{meal["meals"][0]["strMeasure19"]} #{meal["meals"][0]["strIngredient19"]}",
            "#{meal["meals"][0]["strMeasure20"]} #{meal["meals"][0]["strIngredient20"]}"
        ]
      
        self.instructions = "#{meal["meals"][0]["strInstructions"]}"

    end

end