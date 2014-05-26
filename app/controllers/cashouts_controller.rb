class CashoutsController < ApplicationController
	def index
		
	end

	def new
		@cashout = Cashout.new 
	end

	def create
		@cashout = Cashout.new
		@cashout.customer_order_id = params[:cashout][:customer_id]
		@cashout.total_sale_price = params[:cashout][:c_sub_total]
		@cashout.delivery_charge = params[:cashout][:c_del_charge]
		@cashout.grand_total_sale_price = params[:cashout][:c_grand_total]
		@cashout.save!
		redirect_to :action => :index
	end

	def thanks
		
	end
end
