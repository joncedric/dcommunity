class DanceStyle < ActiveRecord::Base
	has_and_belongs_to_many :events

	scope :top_styles, -> { where("name IN (?)", %w(Hip\ Hop Breaking Locking Popping))}
end
