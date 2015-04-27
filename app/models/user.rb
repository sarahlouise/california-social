class User < ActiveRecord::Base
attr_reader :password

def password=(unencrypted_password) 
	@password = unencrypted_password 
	self.password_digest = BCrypt::Password.create(unencrypted_password) 
end 

def authenticate(unencrypted_password) 
	if BCrypt::Password.new(self.password_digest) == unencrypted_password 
		return self 
	else 
		return false 
	end 
end 

def password=(unencrypted_password) 
	unless unencrypted_password.empty? 
		@password = unencrypted_password 
		self.password_digest = BCrypt::Password.create(unencrypted_password) 
	end 
end 

end
