class Home < ApplicationRecord
	validates_presence_of :name, :age, :address, :phone
	validates_length_of(:address, minimum: 10)
	validates_length_of(:phone, maximum: 10)
	validates :name ,presence: {message: " must be."}

	has_many :order_books

end
