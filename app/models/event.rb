class Event < ActiveRecord::Base
	validates :name, presence: true
	validates :time, presence: true
	validates :description, presence: true
end
