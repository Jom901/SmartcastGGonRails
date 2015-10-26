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

	def fetch_online_status(sourceStream)
		stream = open('https://api.twitch.tv/kraken/streams/' + sourceStream)
		response_body = stream.read[559,441]
		if response_body.nil?
			 false
		else
			 true
		end
	end
end
