gem 'minitest'
require './lib/player'
require 'minitest/autorun'
require 'minitest/pride'

class PlayerTest < Minitest::Test
  def test_player_exists
    assert Player.new("Player Name")
  end

end
