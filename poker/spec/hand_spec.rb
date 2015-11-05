require 'rspec'
require 'hand'

describe Hand do
  let(:one_pair) do
    cards = [
      Card.new(:spades, :king),
      Card.new(:spades, :queen),
      Card.new(:spades, :jack),
      Card.new(:hearts, :jack),
      Card.new(:spades, :eight)
    ]
    Hand.new(cards)
  end

  let(:high_card) do
    cards = [
      Card.new(:diamonds, :two),
      Card.new(:spades, :seven),
      Card.new(:hearts, :four),
      Card.new(:clubs, :three),
      Card.new(:clubs, :five)
    ]
    Hand.new(cards)
  end

  describe "#<=>" do
    it "compares a one pair hand to a high card hand correctly" do
      expect(one_pair <=> high_card).to eq(1)
    end
  end
end
