Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 		 ENV['FACEBOOK_TEST_ID'], ENV['FACEBOOK_TEST_SECRET']
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'] 
end