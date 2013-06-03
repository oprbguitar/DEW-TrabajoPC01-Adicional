class User < ActiveRecord::Base
  attr_accessible :email, :name, :password
 def self.from_omniauth(auth)
  	where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
  		user.provider = auth.provider
  		user.uid = auth.uid
  		user.name = auth.info.name
  		user.oauth_token = auth.credentials.token
        user.oauth_expire_at = Time.at(auth.credentials.expire_at)
        user.save!
  	end
  end
end
