class SessionsController < ApplicationController
	def create
		auth = request.env(['omniauth.auth'])
		unless @auth = Authorization.find_from_hash(auth)
			@auth = Authorization.create_from_hash(auth, current_user)
		end

		self.current_user = @auth.user
		render :text => "Welcome, #{current_user.first_name}"
		# user = User.from_omniauth(env['omniauth.auth'])
		# session[:user_id] = user.id 
		# redirect_to user_path(user.id)
	end

	def destroy
		self.current_user = nil
		# session[:user_id] = nil
		redirect_to root_url
	end

		
end