require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./rock_paper.rb')
require('json')

get '/' do 
return "Hello"
end