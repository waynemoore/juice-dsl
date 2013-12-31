require_relative 'data'
require_relative 'views'

# TODO, searching options doesn't work
rcps = @db.find_by_ingredients([:carrot])

rcps.each do |recipe|
  TextRecipeView.new(recipe).render
end
