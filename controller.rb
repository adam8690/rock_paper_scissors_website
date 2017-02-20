require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/rock_paper.rb')
require('json')

get '/' do 
return "Hello"
end

# get '/add/:num1/:num2' do
# calculator = Calculator.new( params[:num1].to_f , params[:num2].to_f )
# @calculation = calculator.add
# erb( :result )
# # return "#{calculator.add}"
# end

get '/rock_paper_scissors/:choice1/:choice2' do
  rockpaper = RockPaper.new
  @result = rockpaper.play("rock", "scissors")
  erb( :rock_paper_result )
end

