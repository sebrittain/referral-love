class SessionsController < ApplicationController
	def new
	end

	def create
	    user = User.find_by_name(params[:session][:name])
		if user && params[:session][:password] == user.password
			# Sign the user in and redirect to the user's show page.
			session[:user_id] = user.id
			redirect_to root_url, :notice => 'Hello, ' + user.name + '!'
		else
			# display errors
		    render 'new'
		end
	end

	def destroy
		session[:user_id] = nil
        redirect_to root_url
	end
end
