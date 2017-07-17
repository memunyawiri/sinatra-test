require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello, Ben & Petra :)!"
end

get '/secret' do
  'Hello secret world!'
end

get '/cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb(:index)
end
