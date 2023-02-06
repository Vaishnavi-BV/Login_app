class Book < ApplicationRecord

	include ImageUploader::Attachment(:image)
 	validates_presence_of :title ,:author, :image, :price, :category_id
 	belongs_to :category

end
