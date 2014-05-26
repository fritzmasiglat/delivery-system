class Food < ActiveRecord::Base
	belongs_to :sub_order

	validates :name, :presence => true
	validates :foodtype, :presence => true
	validates :price, :presence => true
end
