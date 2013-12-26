require_relative 'dsl'


recipe "flush-a-bye-baby" do
  makes 200, :milliliters

  ingredient :cranberry, 250, :grams
  option :melon do
    ingredient :watermelon, 250, :grams
    ingredient :galia_melon, 250, :grams
  end
  ingredient :cucumber, 250, :grams

  instructions "Juice all the ingredients. Including the pips of the melon and the skin of the cucumber. Serve in a tumbler and decorate with melon sticks, if liked."
end

recipe 'culture shock' do
  makes 200, :milliliters

  ingredient :apple, 250, :grams
  ingredient :cranberry, 100, :grams, :type => :frozen
  ingredient :yoghurt, 100, :grams, :type => :live_natural
  ingredient :honey, 1, :tablespoon

  instructions 'Juice the apple and whizz in a blender with the other ingredients. Serve in a tumbler over ice cubes.'
end

recipe 'passion thriller' do
  makes 200, :milliliters

  ingredient :melon, 175, :grams
  ingredient :cucumber, 125, :grams
  ingredient :avocado, 125, :grams
  ingredient :apricots, 125, :grams, :type => :dried
  ingredient :wheatgerm, 1, :tablespoon

  instructions 'Juice the melon and cucumber. Whizz in a blender with avocado, apricots, wheatgerm and a couple of ice cubes. Decorate with dried apricot slivers, if liked.'
end

