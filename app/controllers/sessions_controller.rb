class SessionsController < ApplicationController
	def create
		auth = request.env['omniauth.auth']
		# unless @auth = Authorization.find_with_omniauth(auth)
		# 	@auth = Authorization.create_with_omniauth(auth, current_user)
		# end

		# self.current_user = @auth.user
		# render :text => "Welcome, #{current_user.first_name}"
		# user = User.from_omniauth(env['omniauth.auth'])
		# session[:user_id] = user.id 
		# redirect_to user_path(user.id)
 # Find an identity here
  @identity = Authorization.find_with_omniauth(auth)
  

  if @identity.nil?
    # If no identity was found, create a brand new one here
    @identity = Authorization.create_with_omniauth(auth, current_user)
  end

  if user_signed_in?
    if @identity.user == current_user
      # User is signed in so they are trying to link an identity with their
      # account. But we found the identity and the user associated with it 
      # is the current user. So the identity is already associated with 
      # this user. So let's display an error message.
      redirect_to user_path(current_user), notice: "Already linked that account!"
    else
      # The identity is not associated with the current_user so lets 
      # associate the identity
      @identity.user = current_user
      @identity.save()
      redirect_to user_path(current_user), notice: "Successfully linked that account!"
    end
  else
    if @identity.user.present?
      # The identity we found had a user associated with it so let's 
      # just log them in here
      self.current_user = @identity.user
      redirect_to user_path(current_user), notice: "Signed in!"
    else
      # No user associated with the identity so we need to create a new one
      redirect_to new_user_url, notice: "Please finish registering"
    end
  end

	end

	def destroy
		self.current_user = nil
		# session[:user_id] = nil
		redirect_to root_url
	end

		
end