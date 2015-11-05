

class Hand

  include Comparable

  HAND_VALUES = {
    straight_flush: 9,
    four_of_a_kind: 8,
    full_house: 7,
    flush: 6,
    straight: 5,
    three_of_a_kind: 4,
    two_pair: 3,
    one_pair: 2,
    high_card: 1
  }

  attr_reader :hand_value
  attr_accessor :cards

  def initialize(cards = [])
    @cards = cards
    @hand_value = determine_hand
  end

  attr_reader :hand_value

  def <=>(other_hand)
    hand_value <=> other_hand.hand_value
  end

  def determine_hand
    if high_card?
      HAND_VALUES[:high_card]
    elsif one_pair?
      HAND_VALUES[:one_pair]
    end
  end

  def card_values
    values = @cards.map { |card| card.value }
  end

  def card_suits
    suits = @cards.map { |card| card.suit }
  end

  def high_card?
    card_values == card_values.uniq && card_suits.uniq.length != 1
  end

  def one_pair?
    card_values.uniq.length == 4
  end
end
