require_relative 'dsl'


recipe "flush-a-bye-baby" do
  makes 200, :milliliters

  ingredient :cranberry, 250, :grams
  option do
    ingredient :watermelon, 250, :grams
    ingredient :galia_melon, 250, :grams
  end
  ingredient :cucumber, 250, :grams

  instructions "Juice all the ingredients. Including the pips of the melon and the skin of the cucumber. Serve in a tumbler and decorate with melon sticks."
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

  instructions 'Juice the melon and cucumber. Whizz in a blender with avocado, apricots, wheatgerm and a couple of ice cubes. Decorate with dried apricot slivers.'
end

recipe 'moody blues' do
  makes 200, :milliliters

  ingredient :blackberry, 375, :grams
  ingredient :pineapple, 375, :grams

  instructions 'Juice the blackberries first, then the pineapple, to push through the pulp.  Blend the juice with a couple of ice cubes and serve in a tall glass, decorated with a pineapple sliver.'
end

recipe 'cool down' do
  makes 200, :milliliters

  ingredient :carrot, 175, :grams
  ingredient :beetroot, 100, :grams
  option do
    ingredient :yam, 175, :grams
    ingredient :sweet_potato, 175, :grams
  end
  ingredient :fennel, 125, :grams

  instructions 'Juice all the ingredients. Mix well and serve in a glass with ice cubes. Decorate with fennel fronds.'
end

recipe 'six pack' do
  makes 200, :milliliters

  ingredient :asparagus, 125, :grams, :type => :spears
  ingredient :dandelion_leaves, 100, :grams
  ingredient :melon, 125, :grams
  ingredient :cucumber, 175, :grams
  ingredient :pear, 200, :grams

  instructions 'Trim the woody bits off the asparagus spears. Roll the dandelion leaves into a ball and juice them (if you have picked wild leaves, wash them first) with the asparagus. Peel and juice the melon. Juice the cucumber and pear with their skins. Whizz everything in a blender and serve in a tall glass with ice cubes.'
end

recipe 'bumpy ride' do
  makes 150, :milliliters

  ingredient :apple, 200, :grams
  ingredient :beetroot, 50, :grams
  ingredient :celery, 90, :grams

  instructions 'Juice together all ingredients and serve over ice in a tumbler. Decorate with apple slices.'
end

recipe 'root 66' do
  makes 200, :milliliters

  ingredient :carrot, 175, :grams
  ingredient :parsnip, 175, :grams
  ingredient :celery, 175, :grams
  ingredient :sweet_potato, 175, :grams
  ingredient :parsley, 1, :handful
  ingredient :garlic, 1, :clove

  instructions 'Juice all the ingredients together and whizz in a blender with 2 ice cubes. Serve in a wide glass decorated with a wedge of lemon and parsley sprig.'
end

recipe 'chilli queen' do
  makes 200, :milliliters

  ingredient :carrot, 250, :grams
  option do
    ingredient :chilli, 0.5, :small, :type => :deseeded
    ingredient :chilli_powder, 1, :sprinkling
  end
  ingredient :pineapple, 250, :grams
  ingredient :corriander_leaves, 1, :tablespoon, :type => :chopped

  instructions 'Juice the carrot, chilli and pineapple. Serve in a tall glass over ice cubes. Squeeze in the lime juice and stir in a the chopped coriander leaves.'
end

recipe 'frisky sour' do
  makes 200, :milliliters

  ingredient :papaya, 150, :grams
  ingredient :grapefruit, 150, :grams
  ingredient :raspberry, 150, :grams
  ingredient :lime, 0.5, nil

  instructions 'Scoop out the flesh of the papaya, and juice it with the grapefruit (with the pith left on), and the raspberries. Squeeze in the lime juice and mix. Serve with a few ice cubes and decorate with lime slices.'
end

recipe 'loosen up 1' do
  makes 50, :milliliters

  ingredient :horseradish, 0.5, :teaspoons, :type => :pulverised
  ingredient :lemon, 0.5, nil

  instructions 'Pulverise the horseradish by juicing a small amount and mixing the juice and the pulp. put it into a shot glass and stir in the lemon juice. Take twice a day.'
end

recipe 'loosen up 2' do
  makes 200, :milliliters

  ingredient :carrot, 175, :grams
  ingredient :radish, 100, :grams, :type => :whole # with tops and leaves
  ingredient :ginger, 2.5, :centimetre, :type => :fresh_cubed

  instructions 'Juice the carrot, radishes and ginger. Add some ice cubes. Drink one hour after Loosen Up 1.'
end

recipe 'evergreen' do
  makes 200, :milliliters

  ingredient :celery, 50, :grams
  ingredient :fennel, 50, :grams
  ingredient :lettuce, 125, :grams, :type => :romaine
  ingredient :pineapple, 175, :grams
  ingredient :tarragon, 1, :teaspoon, :type => :chopped

  instructions 'Juice all the ingredients and whizz in a blender with 2 ice cubes. Serve in a tall glass and decorate with tarragon sprigs.'
end

recipe 'power pack' do
  makes 200, :milliliters

  ingredient :carrot, 250, :grams
  ingredient :beetroot, 125, :grams
  ingredient :orange, 1, nil
  ingredient :strawberries, 125, :grams

  instructions 'Juice the carrot, beetroot and orange. Put the juice into a blender with a couple of ice cubes and the strawberries. Whizz for 20 seconds and serve in a tall glass. Decorate with strips of orange rind.'
end

recipe 'kale and hearty' do
  makes 50, :milliliters

  ingredient :kale, 25, :grams
  ingredient :wheatgrass, 100, :grams
  ingredient :spirulina, 1, :teaspoon

  instructions 'Juice the kale and the wheatgrass; stir in the spirulina powder. Serve in a small glass decorated with wheatgrass blades.'
end
