require 'minitest/autorun'
require('minitest/rg')
require_relative '../models/game.rb'

class TestGame < Minitest::Test

  def setup
    @game = Game.new( 'rock', 'paper')
    @game1 = Game.new( 'rock', 'scissors')
    @game2 = Game.new( 'rock', 'rock')
    @game3 = Game.new( 'paper', 'scissors')
    @game4 = Game.new( 'scissors', 'paper')
    @game5 = Game.new( 'paper', 'paper')
    @game6 = Game.new( 'scissors', 'scissors')
    @game7 = Game.new( 'scissors', 'rock')
    @game8 = Game.new( 'paper', 'rock')
  end

  def test_rock_paper
    assert_equal('paper wins', @game.game_result())
  end

  def test_rock_scissors
    assert_equal('rock wins', @game1.game_result())
  end

  def test_rock_rock
    assert_equal("It's a draw", @game2.game_result())
  end

  def test_paper_scissors
    assert_equal('scissors wins', @game3.game_result())
  end

  def test_scissors_paper
    assert_equal('scissors wins', @game4.game_result())
  end

  def test_paper_paper
    assert_equal("It's a draw", @game5.game_result())
  end

  def test_scissors_scissors
    assert_equal("It's a draw", @game6.game_result())
  end

  def test_scissors_rock
    assert_equal("rock wins", @game7.game_result())
  end

  def test_paper_rock
    assert_equal("paper wins", @game8.game_result())
  end

end
