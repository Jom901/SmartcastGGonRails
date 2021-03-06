class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
	validates :email, presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: false }

	has_secure_password
	validates :password, length:{ minimum:6 }, presence: true
end
