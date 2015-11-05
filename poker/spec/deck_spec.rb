require "deck"
require "rspec"

describe Deck do
  let(:small_deck) do
    small_deck = [
      Card.new(:spades, :king),
      Card.new(:spades, :queen),
      Card.new(:spades, :jack)
    ]
  end

  describe "#initialize" do
    it "defaults to 52 new cards" do
      deck = Deck.new
      expect(deck.cards.count).to eq(52)
    end

    it "can initialize with a smaller deck" do
      deck = Deck.new(small_deck)
      expect(deck.cards.count).to eq(3)
    end
  end

  describe "#shuffle!" do
    it "randomly shuffles the original deck" do
      deck = Deck.new
      expect(deck.shuffle!).not_to eq(deck)
    end
  end

  describe "#draw_cards" do
    it "draws five cards by default" do
      deck = Deck.new
      expect(deck.draw_cards.size).to eq(5)
    end
  end
end
