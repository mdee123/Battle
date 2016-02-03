require 'sinatra/base'
require './lib/player'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
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
    @player.attack(@player2)
    erb :attack
  end
  run! if app_file == $0
end
