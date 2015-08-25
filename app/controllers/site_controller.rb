class SiteController < ApplicationController
	def index
		@dance_styles = DanceStyle.all
		@upcoming_events = Event.where('time >= ?', Time.now)
	end
end
