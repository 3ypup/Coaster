require 'rubygems'
require "sinatra"
require 'sinatra/reloader'
require 'sinatra/activerecord'


set :database, "sqlite3:blog.db"

class Message < ActiveRecord::Base
end





get "/" do
		erb " <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\"></a>"		
		erb :index	

end

get '/photo' do
  erb :photo
end


get '/video' do
  erb :video
end

get '/blog' do

@posts = Message.order "created_at DESC"
	

  erb :blog
end

post '/blog' do
 	 
 	#@content = params[:content]

	#Message.create :content => @content
 	
	@post = Message.new params[:message]
	@post.save
	
 
 	 erb :details
end




get '/details/:post_id' do


@post = Message.find(params[:post_id])

erb :details

	


end