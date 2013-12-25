class Recipe

  attr_reader :name, :quantity, :ingredients, :instructions

  def initialize(name, &block)
    @name = name
    @ingredients = []
    instance_eval(&block)
  end

  def quantity(measure, unit)
    @quantity = Quantity.new(measure, unit)
  end

  def ingredient(name, measure, unit)
    @ingredients << Ingredient.new(name, Quantity.new(measure, unit))
  end

  def instructions(text)
    @instructions = text
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

  attr_reader :name, :quantity

  def initialize(name, quantity)
    @name = name
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

  def ingredient(name, measure, unit)
    @options << Ingredient.new(name, Quantity.new(measure, unit))
  end

end

def recipe(name, &block)
  p Recipe.new(name, &block)
end

def option(name, &block)
  Option.new(name, &block)
end

recipe "flush-a-bye-baby" do
  quantity 200, :milliliters

  ingredient :cranberry, 250, :grams
  option :melon do
    ingredient :watermelon, 250, :grams
    ingredient :galia_melon, 250, :grams
  end
  ingredient :cucumber, 250, :grams

  instructions "Juice all the ingredients. Including the pips of the melon and the skin of the cucumber. Serve in a tumbler and decorate with melon sticks, if liked."
end
