class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:email].downcase)
		if user && user.authenticate(params[:password])
			sign_in user
			redirect_back_or user
		else
			flash.now[:error] = "Invalid email/password combination"
			render 'new'
		end
	end

	def destroy	
		sign_out
		redirect_to root_url	
	end
end

# def create	DEPRECATED IN EX 8.5.1
# 		user = User.find_by(email: params[:session] [:email].downcase)
# 		if user && user.authenticate(params[:session][:password])
# 			sign_in user
# 			redirect_to user, notice: "Signed in"
# 		else
# 			flash.now[:error] = "Invalid email/password combination"
# 			render 'new'
# 		end
# 	end

# 	def destroy	
# 		sign_out
# 		redirect_to root_url	
# 	end