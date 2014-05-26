class CustomerOrder < ActiveRecord::Base
	has_many :sub_orders
	has_one :cashout

	validates :customer_name, :presence => true
	validates :contact_number, :presence => true
	validates :email, :presence => true
	validates :address, :presence => true
end
