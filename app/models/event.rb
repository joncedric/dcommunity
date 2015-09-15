class Event < ActiveRecord::Base
	validates :name, presence: true
	validates :time, presence: true
	validates :description, presence: true

	has_attached_file :flyer_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :flyer_image, :content_type => /\Aimage\/.*\Z/
end
