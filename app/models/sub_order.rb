class SubOrder < ActiveRecord::Base
	has_many :foods
	belongs_to :customer_order
end
