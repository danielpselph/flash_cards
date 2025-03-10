require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require 'pry'

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @deck = Deck.new([@card_1, @card_2, @card_3])
    @round = Round.new(@deck)
  end

  def test_round_exists

    assert_instance_of Round, @round
  end

  def test_has_deck

    assert_equal @deck, @round.deck
  end

  def test_round_has_turns

    assert_equal [], @round.turns
  end

  def test_has_current_card

    assert_equal @card_1, @round.current_card
  end

  def test_take_turn_changes_current_card
    current_card = @round.current_card
    @round.take_turn("string")
    new_card = @round.current_card
    assert_not_equal current_card, new_card
    # binding.pry

    #   result = @round.take_turn("Juneau")
    # assert_instance_of Turn, result #check result.guess is "Juneau"
    #   # @round.current_card
    # assert_equal @card_2, @round.current_card
  end



end
