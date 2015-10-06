class Worker < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	validates :bio, presence: true
	validates :role, presence: true
end
