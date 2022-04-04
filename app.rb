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

get '/cat' do
  @random_name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end