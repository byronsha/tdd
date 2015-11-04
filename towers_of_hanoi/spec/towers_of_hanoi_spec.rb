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
    let(:bad_towers) { TowersOfHanoi.new([[3,2], [1], []]) }

    it "moves discs correctly" do
      towers.move(0, 1)
      expect(towers.board).to eq([[3, 2], [1], []])
    end

    it "doesn't allow a large disc on top of a small disc" do
      expect { bad_towers.move(0, 1) }.to raise_error
    end
  end

  describe "#won?" do
    let(:won_board) { TowersOfHanoi.new([[],[],[3,2,1]])}

    it "returns true when won" do
      expect(won_board.won?).to be_truthy
    end

    it "return false for initial board" do
      expect(towers.won?).to be_falsey
    end
  end

  describe "#render" do
    it "prints towers to the console" do
      expect(towers.render).to eq("[[3, 2, 1], [], []]")
    end
  end

end
