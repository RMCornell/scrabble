gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'

class ScrabbleTest < Minitest::Test



  def test_nil_value_returns_score_of_zero
    scrabble = Scrabble.new
    assert_equal 0, scrabble.score(nil)
  end

  def test_no_input_returns_score_of_zero
    scrabble = Scrabble.new
    assert_equal 0, scrabble.score("")
  end

  def test_it_can_score_a_single_letter

    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_two_letters
    assert_equal 5, Scrabble.new.score("af")
    assert_equal 11, Scrabble.new.score("az")
  end

  def test_it_can_score_three_letters
    assert_equal 5, Scrabble.new.score("rob")
  end

  def test_it_can__score_letters_of_differnt_casees
    assert_equal 5, Scrabble.new.score("RoB")
  end

  def test_it_ignores_spaces_in_words
    assert_equal 5, Scrabble.new.score("RoB ")
  end

end
