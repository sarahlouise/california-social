class SessionsController < ApplicationController
	
	def new 
	end 

	def create 
		user = User.find_by(email: params[:login][:email])
		if user && user.authenticate(params[:login][:password]) 
		# make a new key in our session object which gets stored in a cookie on our hard drive 
		# we'll store the user's ID to make for a fast User.find later on 
		session[:user_id] = user.id.to_s 
		redirect_to static_pages_welcome_path 
		else 
		  redirect_to login_path 
		end 
	end 

	def destroy 
	# delete that key/value pair in our sessions hash 
	  session.delete(:user_id) 
	  redirect_to login_path 
	end 

end
