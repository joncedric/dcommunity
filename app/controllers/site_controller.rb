class SiteController < ApplicationController
	def index
		@dance_styles = DanceStyle.all
	end
end
