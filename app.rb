require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    # session[:player1_hp] = 100
    # session[:player2_hp] = 100
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    # @player1_hp = session[:player1_hp]
    # @player2_hp = session[:player2_hp]
    erb :play
  end

  run! if app_file == $0
end
