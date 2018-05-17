 #  def fetch_online_status(sourceStream)
	# 	stream = open('https://api.twitch.tv/kraken/streams/' + sourceStream)
	# 	response_body = stream.read[559,441]
	# 	if response_body.nil?
	# 		 false
	# 	else
	# 		 true
	# 	end
	# end
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  # protect_from_forgery with: :exception
  # include SessionsHelper
  # include ApplicationHelper
  # @scgg = fetch_online_status("smartcastgg")
  # @scgg2 = fetch_online_status("smartcastgg2")
  # @mecha = fetch_online_status("ikkou901")
  # @will = fetch_online_status("promech")
end

