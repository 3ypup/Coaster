require "sinatra"
require 'sinatra/reloader'

get "/" do
	erb :index
end

get '/photo' do
  erb :photo
end


get '/video' do
  "Hello World"
end

get '/blog' do
  "Hello World"
end



	
