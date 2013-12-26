require_relative 'data'
require_relative 'views'

rcps = @db.find_by_ingredients([:cranberry])

rcps.each do |recipe|
  TextRecipeView.new(recipe).render
end
