require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require 'json'

require_relative './models/rock_paper_scissors'

get "/" do
  erb(:home)
end

get "/about_us" do
  erb(:about_us)
end

get "/game/:player1/:player2" do
  new_game = RockPaperScissors.new(params[:player1], params[:player2])
  @outcome = new_game.game
  erb(:result)
end