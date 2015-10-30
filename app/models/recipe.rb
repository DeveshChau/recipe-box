class Recipe < ActiveRecord::Base
  belongs_to :user	
	has_many :ingradients
	has_many :directions

	accepts_nested_attributes_for :ingradients,
	reject_if: proc { |attributes| attributes['name'].blank? },
  	allow_destroy: true
 	
 	accepts_nested_attributes_for :directions,
  	reject_if: proc { |attributes| attributes['step'].blank? },
  	allow_destroy: true

  	validates :title, :description, :image, presence: true

	has_attached_file :image
  
  	validates_attachment :image, styles: { medium: "300x300#" },
      content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] },
      size: { :in => 0..30.kilobytes } 
end
