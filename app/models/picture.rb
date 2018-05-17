class Picture < ActiveRecord::Base
	belongs_to :album
	has_attached_file :avatar, storage: :imgur
end
