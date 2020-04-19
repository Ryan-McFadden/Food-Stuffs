class FoodStuffs::Recipes

    def self.list

    recipe_1 = FoodStuffs::API.list
    recipe_2 = FoodStuffs::API.list
    recipe_3 = FoodStuffs::API.list

    [recipe_1, recipe_2, recipe_3]

    end

end