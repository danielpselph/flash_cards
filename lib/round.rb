class Round
  attr_reader :deck, :turns, :current_card

  def initialize(deck)
    @deck = deck
    @turns = []
    @current_card = deck.cards[0]
  end

  # def current_card
  #   @deck.cards[0]
  # end

  def take_turn(guess)
    # require "pry"; binding.pry
    new_turn = Turn.new(current_card, guess)
    @current_card += 1
  end




end
