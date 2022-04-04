require 'sinatra'
require "sinatra/reloader" if development?

get'/' do
  "Hello World :: => hello"
end
get '/secret' do
  "This is a secret world"
end

get '/about' do
  "This is my story"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
 p @name = params[:name]
  erb(:index)
end
