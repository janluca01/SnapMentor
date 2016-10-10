class Snap < ApplicationRecord
	belongs_to :admin
		
	has_many :snap_categories
	has_many :categories, through: :snap_categories

	
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
