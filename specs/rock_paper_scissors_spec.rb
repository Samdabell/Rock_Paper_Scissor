require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/rock_paper_scissors'

class TestRockPaperScissors < Minitest::Test

  def setup
    @rock = RockPaperScissors.new('rock', 'scissors')
    @rock2 = RockPaperScissors.new('scissors', 'rock')
    @paper = RockPaperScissors.new('paper', 'rock')
    @paper2 = RockPaperScissors.new('rock', 'paper')
    @scissors = RockPaperScissors.new('scissors', 'paper')
    @scissors2 = RockPaperScissors.new('paper', 'scissors')
    @draw = RockPaperScissors.new('rock', 'rock')
  end

  def test_rock_win
    assert_equal("Player 1 wins with rock", @rock.game)
  end

  def test_rock_win2
    assert_equal("Player 2 wins with rock", @rock2.game)
  end

  def test_paper_win
    assert_equal("Player 1 wins with paper", @paper.game)
  end

  def test_paper_win2
    assert_equal("Player 2 wins with paper", @paper2.game)
  end

  def test_scissors_win
    assert_equal("Player 1 wins with scissors", @scissors.game)
  end

  def test_scissors_win2
    assert_equal("Player 2 wins with scissors", @scissors2.game)
  end

  def test_draw
    assert_equal("Draw", @draw.game)
  end

end
