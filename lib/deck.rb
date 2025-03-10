class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count #@cards.count? #NOT @deck.cards
  end

  def cards_in_category(category)
    @cards.find_all do |card|
      card.category == category
    end
  end


end
