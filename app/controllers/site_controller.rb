class SiteController < ApplicationController
	def index
		@dance_styles = DanceStyle.top_styles
    # @upcoming_events = Event.where('time >= ?', Time.now)
		@upcoming_events = Event.all
	end
end
