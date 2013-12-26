class Recipe

  attr_reader :name, :quantity, :ingredients, :instructions

  def initialize(name, &block)
    @name = name
    @ingredients = []
    instance_eval(&block)
  end

  def makes(measure, unit)
    @quantity = Quantity.new(measure, unit)
  end

  def ingredient(name, measure, unit, **extra)
    @ingredients << Ingredient.new(name, extra[:type], Quantity.new(measure, unit))
  end

  def instructions(text)
    @instructions = text
  end

  def option(name, &block)
    @ingredients << Option.new(name, &block)
  end

end

class Quantity

  attr_reader :measure, :unit

  def initialize(measure, unit)
    @measure = measure
    @unit = unit
  end

end

class Ingredient

  attr_reader :name, :type, :quantity

  def initialize(name, type, quantity)
    @name = name
    @type = type
    @quantity = quantity
  end

end

class Option

  attr_reader :name, :options

  def initialize(name, &block)
    @name = name
    @options = []
    instance_eval(&block)
  end

  def ingredient(name, measure, unit, **extra)
    @options << Ingredient.new(name, extra[:type], Quantity.new(measure, unit))
  end

end

class RecipeDB

  def initialize
    @recipes = {}
  end

  def store(recipe)
    raise Exception.new('Duplicate recipe') if @recipes.include? recipe.name
    @recipes[recipe.name] = recipe
  end

  def find_by_ingredients(ingredients)
    matches = []
    @recipes.each do |name, recipe|
      intersection = recipe.ingredients.collect(&:name) & ingredients
      matches << recipe if !intersection.empty?
    end
    matches
  end

end

def recipe(name, &block)
  @db ||= RecipeDB.new
  @db.store(Recipe.new(name, &block))
end
