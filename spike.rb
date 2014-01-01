require 'json'

require_relative 'data'
require_relative 'views'

# TODO, searching options doesn't work
rcps = RecipeDB.instance.find_by_ingredients([:carrot])

rcps.each do |recipe|
  TextRecipeView.new(recipe).render
end
