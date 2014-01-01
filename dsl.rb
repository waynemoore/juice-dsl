require 'singleton'


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

  def option(&block)
    @ingredients << Option.new(&block)
  end

  def contains(ingredients)
    all = []
    @ingredients.each do |ingredient|
      if ingredient.kind_of?(Option) # yuck
        all << ingredient.options
      else
        all << ingredient
      end
    end
    intersection = all.flatten.collect(&:name) & ingredients
    !intersection.empty?
  end

  def to_json(*a)
    {
      :name => @name,
      :quanty => @quantity,
      :ingredients => @ingredients,
      :instructions => @instructions,
    }.to_json(*a)
  end

end

class Quantity

  attr_reader :measure, :unit

  def initialize(measure, unit)
    @measure = measure
    @unit = unit
  end

  def to_json(*a)
    {
      :measure => @measure,
      :unit => @unit,
    }.to_json(*a)
  end
end

class Ingredient

  attr_reader :name, :type, :quantity

  def initialize(name, type, quantity)
    @name = name
    @type = type
    @quantity = quantity
  end

  def to_json(*a)
    {
      :name => @name,
      :type => @type,
      :quantity => @quantity,
    }.to_json(*a)
  end
end

class Option

  attr_reader :options

  def initialize(&block)
    @options = []
    instance_eval(&block)
  end

  def ingredient(name, measure, unit, **extra)
    @options << Ingredient.new(name, extra[:type], Quantity.new(measure, unit))
  end

  def to_json(*a)
    @options.to_json(*a)
  end
end

class RecipeDB

  include Singleton

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
      matches << recipe if recipe.contains(ingredients)
    end
    matches
  end

  def all
    @recipes.values
  end

end

def recipe(name, &block)
  RecipeDB.instance.store(Recipe.new(name, &block))
end
