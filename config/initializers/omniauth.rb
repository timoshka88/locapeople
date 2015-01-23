Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_TEST_ID'], ENV['FACEBOOK_TEST_SECRET']
end