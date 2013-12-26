class TextRecipeView

  def initialize(recipe)
    @recipe = recipe
  end

  def render
    puts "#{@recipe.name}"
    puts "    Makes #{@recipe.quantity.measure} #{@recipe.quantity.unit}"
    puts ""
    puts "    Ingredients:"
    @recipe.ingredients.each do |ingredient|
      if ingredient.kind_of?(Option)
        options = (ingredient.options.collect {|i| render_ingredient(i)}).join(' OR ')
        puts "      #{options}"
      else
        puts "      #{render_ingredient(ingredient)}"
      end
    end
    puts
    puts
  end

  private

  def render_ingredient ingredient
    [ingredient.quantity.measure, ingredient.quantity.unit, ingredient.type, ingredient.name].reject(&:nil?).join(' ')
  end

end
