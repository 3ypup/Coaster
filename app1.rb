require "sinatra"

get "/" do
	erb :index
end


get "/contacts" do
	

	@title = "contacts"
	@message = "89265699563"

	erb :message
end

get "/FAQ" do
	@title = "FAQ"
	@message = "Under Construction"

	erb :message
end

post "/" do 
	@user_name = params[:user_name]
	@phone = params[:phone]
	@date_time = params[:date_time]
	

	if @user_name && @phone == "admin"
				

				@f= File.open("users.txt", "r")
				@title = "Client list"
				@message = "Users:"
				@list = {}
				n = 0
				@f.each_line do |line|
				n=n+1
				@list[n] = line
				end

				@f.close
				erb :message
				
	else
				@title = "Thank you"
				@message = "Dear #{@user_name}, we will be waiting for you at #{@date_time}, your phone number is #{@phone}"
				@list = {}
				f = File.open "users.txt", "a"
				f.write "User: #{@user_name}, Phone: #{@phone}, Date: #{@date_time}\n"
				f.close



				erb :message
	end
	
end