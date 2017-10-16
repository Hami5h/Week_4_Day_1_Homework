require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game.rb')

get '/' do
  erb(:home)
end

get '/welcome' do
  erb(:welcome)
end

get '/game/:hand1/:hand2' do
  result = Game.new(params[:hand1], params[:hand2])
  @game = result.game_result()
  erb(:result)
end

# get '/rock/paper' do
#   return "paper wins"
# end
#
# get '/paper/rock' do
#   return "paper wins"
# end
#
# get '/rock/scissors' do
#   return "rock wins"
# end
#
# get '/scissors/rock' do
#   return "rock wins"
# end
#
# get '/paper/scissors' do
#   return "scissors wins"
# end
#
# get '/scissors/paper' do
#   return "scissors wins"
# end
#
# get '/scissors/scissors' do
#   return "It's a draw"
# end
#
# get '/rock/rock' do
#   return "It's a draw"
# end
#
# get '/paper/paper' do
#   return "it's a draw"
# end
