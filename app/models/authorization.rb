class Authorization < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :user_id, :uid, :provider
	validates_uniqueness_of :uid, :scope => :provider

	def self.find_with_omniauth (auth)
		find_by(uid: auth['uid'], provider: auth['provider'])
	end

	def self.create_with_omniauth(auth, user = nil)
		user ||= User.create_with_omniauth (auth)
		create!(:user => user, uid: auth['uid'], provider: auth['provider'], oauth_token: auth.credentials['token'], oauth_expires_at: Time.at(auth.credentials['expires_at']))
		
	end
end

