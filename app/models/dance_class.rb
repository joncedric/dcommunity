class DanceClass < ActiveRecord::Base
	belongs_to :dance_style
	belongs_to :teacher
	validates :time, presence: true
	validates :description, presence: true
	validates :dance_style, presence: true
	validates :teacher, presence: true
end