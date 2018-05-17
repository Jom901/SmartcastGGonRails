class Album < ActiveRecord::Base
	has_many :pictures
	belongs_to :event
	has_attached_file :avatar, storage: :imgur
end
