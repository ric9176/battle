require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

    enable :sessions


  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new params[:name1]
    player2 = Player.new params[:name2]
    $game = Game.new(player1,player2)
    redirect '/play'
  end

  post '/attack' do
    session[:attack_confirmation] = params[:attack_confirmation]
    @game = $game
    @game.attack(@game.player2)
    redirect '/gameover' unless @game.players[1].alive
    @game.switch
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @attack_confirmation = session[:attack_confirmation]
    erb :play
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
