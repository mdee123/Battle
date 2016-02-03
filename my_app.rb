require 'sinatra/base'
require 'player'

class MyApp < Sinatra::Base
  # enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $name = Player.new(params[:player_1_name])
    $name2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @name = $name.name
    @name2 = $name2.name
    @player_2_points = 100
    erb :play
  end

  get '/attack' do
    @name = $name.name
    @name2 = $name.name
    erb :attack
  end
  run! if app_file == $0
end
