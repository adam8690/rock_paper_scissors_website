

class RockPaper

# def initialize
#   # @array = ["rock", "paper", "scissors"]
# end


def play(choice1, choice2)

choice1.downcase!
choice2.downcase!
array = ["rock", "paper", "scissors"]

if array.include?(choice1) == false or array.include?(choice2) == false
  return "you didn't choose Rock, Paper or Scissors!! Try again."
 elsif choice1 != choice2
  choices = [choice1, choice2]
  array = array - choices
  case array
  when ["scissors"]
    return "Paper Wins!"
  when ["paper"]
    return "Rock Wins!"
  when ["rock"]
    return "Scissors Wins!"
  end
  else
  return "Draw!"
end

end

end