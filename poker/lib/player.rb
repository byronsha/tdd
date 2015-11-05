class Player

  attr_reader :hand
  attr_accessor :hand, :stash

  def initialize
    @hand = nil
    @stash = 0
  end

  def discard(cards)
    cards.each do |card|
      hand.cards.delete_at(card)
    end
  end

  def prompt_for_discard
    puts "Please enter the positions of the cards you wish to discard."
    cards = gets.chomp.to_a
  end

  def prompt_for_move
    puts "Please enter f, s , or r to fold, see, or raise."
    move = gets.chomp
  end

  def prompt_for_bet
    puts "How much do you want to bet?"
    bet = gets.chomp.to_i
  end
end
