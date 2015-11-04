require 'towers_of_hanoi'
require 'rspec'

describe TowersOfHanoi do
  subject(:towers) { TowersOfHanoi.new }

  describe "#initialize" do
    it "has three towers" do
      expect(towers.board.size).to eq(3)
    end
  end

  describe "#move" do
    it "can move discs" do
      towers.move(0, 1)
      expect(towers).to receive(:move)
    end

    it "moves discs correctly" do
      towers.move(0, 1)
      expect(towers.board).to eq([[3, 2], [1], []])
    end

    it "doesn't allow a large disc on top of a small disc" do
      towers.move(0, 1)
      expect(towers.move(0, 1)).to raise_error
    end

    
end
