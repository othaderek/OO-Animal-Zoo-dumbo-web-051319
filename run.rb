require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


atl = Zoo.new("AtlZoo", "Atlanta")
nyc = Zoo.new("NYZoo", "NYC")
nyc1 = Zoo.new("BKZoo", "NYC")

fluffy = Animal.new("cat", "fluffy", 10, atl)
fuzzo = Animal.new("cat", "fuzzo", 11, atl)
scaler = Animal.new("lizard", "scaler", 11, atl)
pupper = Animal.new("dog", "pupper", 20, nyc)
pino = Animal.new("elephant", "pino", 1000, nyc)
spike = Animal.new("dog", "spike", 30, nyc)


binding.pry
puts "done"
