require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/rock_paper.rb')
require('json')

get '/rock_paper_scissors/welcome' do 
erb(:welcome)
end

get '/rock_paper_scissors/:choice1/:choice2' do
  rockpaper = RockPaper.new
  @result = rockpaper.play(params[:choice1], params[:choice2])
  erb( :rock_paper_result )
end

