require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello, Ben & Petra :)!"
end

get '/secret' do
  'Hello secret world!'
end
