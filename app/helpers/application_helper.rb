module ApplicationHelper
	require 'open-uri'
	def full_title(page_title='')
		base_title = "SmartcastGG"
		if page_title.empty?
			base_title
		else
			page_title + "|" + "SmartcastGG"
		end
	end


end
