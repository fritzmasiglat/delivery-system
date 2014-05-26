class Cashout < ActiveRecord::Base
	belongs_to :customer_order
end
