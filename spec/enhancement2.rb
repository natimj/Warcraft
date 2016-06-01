require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit= Unit.new(100, 3)
  end

  describe "#dead?" do
    it 'should recieve health points and return false' do
      not_dead = @unit.dead?
      expect(not_dead).to be false
    end
  end

   describe "#attack!" do
    it 'should attack if not #dead?'do
      attack = @unit.attack!(Footman.new)
      expect(attack).to be(57)
    end

    it 'shouldn\'t attack if ENEMY_UNIT is DEAD' do
      enemy_unit = Unit.new(0, 3)
      attack = @unit.attack!(enemy_unit)
      expect(attack).to be_nil
    end

    it 'should attack if ENEMY_UNIT is NOT dead' do
      enemy_unit = Unit.new(100, 3)
      attack = @unit.attack!(enemy_unit)
      expect(attack).to be(97)
    end

  end

end

describe Unit do

  before :each do
    @unit= Unit.new(0, 3)
  end

  describe "#dead?" do
    it 'should recieve health points and return true' do
      @health_points=0
      dead = @unit.dead?
      expect(dead).to be true
    end
  end

  describe "#attack!" do
    it 'shouldn\'t attack if dead?' do
      attack = @unit.attack!(Footman.new)
      expect(attack).to be_nil
    end
  end



end