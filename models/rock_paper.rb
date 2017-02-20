

class RockPaper

def initialize
  @array = ["Rock", "Paper", "Scissors"]
end


def play(choice1, choice2)

choice1_include = @array.include? choice1
choice2_include = @array.include? choice2
@valid = choice1_include and choice2_include

if @valid == false
  return "You must choose Rock, Paper or Scissors"
 elsif choice1 != choice2
  choices = [choice1, choice2]
  @array = @array - choices
  case @array
  when ["Scissors"]
    return "Paper Wins!"
  when ["Paper"]
    return "Rock Wins!"
  when ["Rock"]
    return "Scissors Wins!"
  end
  else
  return "Draw!"
end

end

end