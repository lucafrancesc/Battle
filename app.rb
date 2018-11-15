require 'sinatra/base'
require 'shotgun'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    erb :play
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    Game.new.attack(@player2)
    erb :attack
  end

  run! if app_file == $0
end
