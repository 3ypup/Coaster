require 'rubygems'
require "sinatra"
require 'sinatra/reloader'
require 'sinatra/activerecord'


set :database, "sqlite3:blog.db"

class Message < ActiveRecord::Base

	has_many :comments
end


class Comment < ActiveRecord::Base

	belongs_to :message

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

@comment = Comment.where(post_id: params[:post_id]).order "created_at"

erb :details

	


end

post '/details/:post_id' do

@text = params[:text]

@post_id = params[:post_id]

Comment.create :text => params[:text], :post_id => params[:post_id]

@post = Message.find(params[:post_id])

@comment = Comment.where(post_id: params[:post_id]).order "created_at"



erb :details

	


end