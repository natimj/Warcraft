require_relative 'footman'
require_relative 'unit'
require_relative 'peasant'

class Barracks < Footman
  
  attr_reader :gold, :food

  def initialize
    @gold=1000
    @food=80
  end

  def train_footman
    if can_train_footman?
      @gold -=135
      @food -=2
      new_footman = Footman.new
    end
  end

  def can_train_footman?
    food>1 && gold>134
  end

  def train_peasant
    if can_train_peasant? 
      @gold-=90
      @food-=5
      new_peasant = Peasant.new
    end
  end

   def can_train_peasant?
    food>4 && gold>89
  end


end

# p a= Barracks.new.train_footman
# p a.class
