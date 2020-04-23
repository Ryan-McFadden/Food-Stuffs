# CLI Controller

class FoodStuffs::CLI
    attr_accessor :recipes

    def call
        puts " "
        puts "Hello User! What are we making today?"
        puts " "
        search 
        select
        goodbye
    end

    def search

        @recipes = []

        3.times do 
            @recipes << FoodStuffs::Recipe.new
        end

        @recipes.each_with_index do |recipe, num|
            puts " "
            puts "#{num + 1}. #{recipe.name}"
            puts " "
        end
    end

    def select

        input = nil

        while input != "exit"
            puts "Please enter the number of the recipe you would like to try!"
            puts "Want to see the list again? type 'list' to review!"
            puts "No recipies that you like? type 'refresh' to get a new list!"
            puts "If you would like to exit the program enter 'exit'"
            puts " "

            input = gets.strip.downcase
            
            case input
            when "1"
                puts " "
                puts "#{@recipes[0].name}"
                puts " "

                puts "Ingredients:"
                puts " "
                @recipes[0].ingredients.each do |ingredient|
                    puts "  #{ingredient}" unless ingredient == " "
                end
                puts " "

                puts "Instructions:"
                puts " "
                puts "  #{@recipes[0].instructions}"
                puts " "
                puts " "
                puts " "

            when "2"
                puts " "
                puts "#{@recipes[1].name}"
                puts " "

                puts "Ingredients:"
                puts " "
                @recipes[1].ingredients.each do |ingredient|
                    puts "  #{ingredient}" unless ingredient == " "
                end
                puts " "

                puts "Instructions:"
                puts " "
                puts "  #{@recipes[1].instructions}"
                puts " "
                puts " "
                puts " "

            when "3"
                puts " "
                puts "#{@recipes[2].name}"
                puts " "

                puts "Ingredients:"
                puts " "
                @recipes[2].ingredients.each do |ingredient|
                    puts "  #{ingredient}" unless ingredient == " "
                end
                puts " "

                puts "Instructions:"
                puts " "
                puts "  #{@recipes[2].instructions}"
                puts " "
                puts " "
                puts " "

            when "list"
                @recipes.each_with_index do |recipe, num|
                    puts " "
                    puts "#{num + 1}. #{recipe.name}"
                    puts " "
                end

            when "refresh"
                search 

            else
                puts " "
                puts "I'm sorry but that doesnt appear to be one of the options"
                puts " "
            end
        end
    end

    def goodbye 
        puts "See you next time!"
        puts " "
    end

end