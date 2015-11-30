class Event < ActiveRecord::Base
	has_and_belongs_to_many :dance_styles

	validates :name, presence: true
	validates :time, presence: true
	validates :description, presence: true

	has_attached_file :flyer_image, :styles => { :small => "70x70>", :medium => "300x300>", :thumb => "100x100#", :square => "180x180#" }, :default_url => "blank_event.jpg"
	validates_attachment_content_type :flyer_image, :content_type => /\Aimage\/.*\Z/

  geocoded_by :location
  after_validation :geocode
end
