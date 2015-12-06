class Album < ActiveRecord::Base
	has_many :pictures
	belongs_to :event
end
