class OrderBook < ApplicationRecord
	belongs_to :home 

	validates_presence_of :booktitle,:quantity
	# validates_uniqueness_of :home
	validates_length_of(:isbn,maximum:6)
	# validates  presence: {message:'must be!'}
	validates :isbn, presence:{message:'Enter Last 6 Digits Only!'}
end
