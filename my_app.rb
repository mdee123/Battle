require 'sinatra/base'
require './lib/player'
require './lib/game'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    @player2_name = $player2.name
    @player2_points = $player2.points
    erb :play
  end

  get '/attack' do
    @player = $player
    @player2 = $player2
    Game.new.attack(@player2)
    erb :attack
  end
  run! if app_file == $0
end
