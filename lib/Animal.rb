

class Animal

  attr_accessor :weight
  attr_reader :species, :nickname, :zoo

  @@all = []

  def initialize(species, nickname, weight, zoo)
    @species = species
    @nickname = nickname
    @weight = weight
    @zoo = zoo
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    spe = []
    self.all.select do |s|
      if s.species == species
        spe << s
      end
    end
    spe
  end


end
