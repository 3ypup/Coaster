require 'rubygems'
require "sinatra"
require 'sinatra/reloader'

get "/" do
	erb "<a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\""
end

get '/photo' do
  erb :photo
end


get '/video' do
  erb :video
end

get '/blog' do
  "Hello World"
end



	
