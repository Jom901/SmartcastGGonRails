class Worker < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	validates :bio, presence: true
	validates :role, presence: true
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
