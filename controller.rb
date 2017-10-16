require('sinatra')
require('sinatra/contrib/all')


get '/rock/paper' do
  return "paper wins"
end

get '/paper/rock' do
  return "paper wins"
end

get '/rock/scissors' do
  return "rock wins"
end

get '/scissors/rock' do
  return "rock wins"
end

get '/paper/scissors' do
  return "scissors wins"
end

get '/scissors/paper' do
  return "scissors wins"
end
