
require_relative 'spec_helper'

describe Barracks  do
  before :each  do
    @barracks = Barracks.new
  end

  it "has and knows its HP (health points)" do
    expect(@barracks.health_points).to eq(500)
  end
  
end

describe Footman do 

  before :each do
    @footman=Footman.new
  end

  describe "#attack!" do 
    it "Footman attacks a Barrack, but only causes half the damage of AP" do
    enemy=Barracks.new
    expect(enemy).to receive(:damage).with((@footman.attack_power/2).ceil)
    @footman.attack!(enemy)
  end

    describe "#attack!" do 
    it "Footman attacks a Barrack, but only causes half the damage of AP" do
    enemy=Barracks.new
    expect(enemy).to receive(:damage).with((@footman.attack_power/2).ceil)
    @footman.attack!(enemy)
  end
  end
end

# (attack_power.to_f/2).cei