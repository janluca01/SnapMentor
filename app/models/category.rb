class Category < ApplicationRecord
	has_many :snap_categories
	has_many :snaps, through: :snap_categories
	
	validates :name, presence: true, length: { maximum: 25, minimum: 3 }
	validates_uniqueness_of :name

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
