require 'minitest/autorun'
require_relative '../models/rock_paper.rb'

class TestRockPaper < Minitest::Test

def setup
  @rockpaper = RockPaper.new()
end

def test_paper_rock
assert_equal("Paper Wins!", @rockpaper.play("Paper", "Rock"))
end

def test_rock_paper
assert_equal("Paper Wins!", @rockpaper.play("Rock", "Paper"))
end

def test_scissors_rock
assert_equal("Rock Wins!", @rockpaper.play("Scissors", "Rock"))
end

def test_draw
assert_equal("Draw!", @rockpaper.play("Paper", "Paper"))
end

def test_invalid
assert_equal("you didn't choose Rock, Paper or Scissors!! Try again.", @rockpaper.play("Lizard", "Spock"))
end











end