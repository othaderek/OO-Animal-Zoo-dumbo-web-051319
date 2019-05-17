
class Zoo
  attr_accessor :name, :location

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end
# If you call this on an instance of zoo
# it returns all instances of animal within that zoo object
  def animals
    Animal.all.select {|i| i.zoo == self}
  end

  def animal_species
    s = []
    Animal.all.select {|i| s << i.species}
    s.uniq
  end

  def find_by_species(species)
    s = []
    Animal.all.select do |i|
      if i.species == species
        s << i
      end
    end
      s
  end

  def animal_nicknames
    s = []
    Animal.all.select {|i| s << i.nickname}
    s
  end

  def self.find_by_location(location)
    loc = []
    self.all.select do |z|
      if z.location == location
        loc << z
      end
    end
    loc
  end



end
