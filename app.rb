require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello, Ben & Petra :)!"
end

get '/secret' do
  'Hello secret world!'
end

get '/random-cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
#  @last_name = params[:last_name]
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end
