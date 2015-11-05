require_relative "card"

class Deck

  attr_reader :cards

  # SUITS = [♠,♥,♦,♣]
  SUITS = [:spades, :hearts, :clubs, :daimonds]
  VALUES = [:two, :three, :four, :five, :six, :seven,
            :eight, :nine, :ten, :jack, :queen, :king, :ace]

  def initialize(cards = nil)
    @cards = cards || create_normal_deck
  end

  def create_normal_deck
    normal_deck = []
    SUITS.each do |suit|
      VALUES.each do |value|
        normal_deck << Card.new(suit, value)
      end
    end
    normal_deck
  end

  def draw_cards(num = 5)
    @cards.pop(num)
  end

  def shuffle!
    @cards.shuffle!
  end

end

# d = Deck.new([ Card.new(:hearts, :four),
#         Card.new(:hearts, :five),
#         Card.new(:hearts, :six) ])
# p d.cards
# p d.cards.length
