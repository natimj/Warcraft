require_relative 'spec_helper'

describe Barracks  do
  
  before :each do 
    @barracks = Barracks.new
  end

  describe "lumber" do
    it "Barrack needs lumber" do 
      expect(@barracks.lumber).to eq(500)
    end
  end

  describe "#train_siege_engine" do 
    # train_siege= @barracks.train_siege_engine

    it "costs 200 gold" do
      @barracks.train_siege_engine
      expect(@barracks.gold).to eq(800)
    end

    it "costs 3 food" do
      @barracks.train_siege_engine
      expect(@barracks.food).to eq(77)
    end

    it "costs 60 lumber"do 
      @barracks.train_siege_engine
      expect(@barracks.lumber).to eq(440)
    end
  end

end

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
  end

  describe "#attack!" do
    

    it "can attack Barracks x2 AP" do
      enemy=Barracks.new
      expect(enemy).to receive(:damage).with(100)
      @siege_engine.attack!(enemy)
    end

    it "cannot attack a Footman" do
      enemy=Footman.new
      expect(enemy).to receive(:damage).with(0)
      @siege_engine.attack!(enemy)
    end
  end



end
