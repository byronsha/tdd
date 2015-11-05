require "rspec"
require "player"

describe Player do
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

  describe "#discard" do
    it "discards 1 card" do
      player = Player.new
      player.hand = one_pair
      player.discard([0])
      expect(player.hand.cards.size).to eq(4)
    end

    it "discards 3 cards" do
      player = Player.new
      player.hand = one_pair
      player.discard([0,1,2])
      expect(player.hand.cards.size).to eq(2)
    end
  end
end
