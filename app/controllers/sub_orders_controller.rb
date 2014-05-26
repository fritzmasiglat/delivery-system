class SubOrdersController < ApplicationController
	attr_accessor :food, :sub_order, :food_id, :id, :c_id
	def index
		@foods = Food.all
		#@sub_orders = SubOrder.find_by(:customer_order_id, :c_id)
		@sub_orders = SubOrder.where(:customer_order_id => params[:c_id])
		@delivery_charge = 40
	end

	def new
		#@food = Food.find(params[:id])
		#@food = Food.all
		@food = Food.find(params[:id])
		@sub_order = SubOrder.new
	end

	def create
		@sub_order = SubOrder.new
		@sub_order.customer_order_id = params[:sub_order][:cust_id]
		id = @sub_order.customer_order_id
		@sub_order.food_id = params[:sub_order][:food_id]
		@sub_order.name = params[:sub_order][:name]
		@sub_order.foodtype = params[:sub_order][:foodtype]
		@sub_order.quantity = params[:sub_order][:quantity]
		@price = params[:sub_order][:price]
		total = @price.to_i * @sub_order.quantity.to_i

		@sub_order.totalprice = total
		#@suborder.save!
		#@sub_order.foods << Food.find(params[:id])
		@sub_order.save!

		redirect_to(sub_orders_path(:c_id => id))
	end

	def edit
		@sub_order = SubOrder.find(params[:id])
		@food = Food.find(@sub_order.food_id)
	end

	def update
		@sub_order = SubOrder.find(params[:id])
		@sub_order.customer_order_id = params[:sub_order][:cust_id]
		id = @sub_order.customer_order_id
		@sub_order.food_id = params[:sub_order][:food_id]
		@sub_order.name = params[:sub_order][:name]
		@sub_order.foodtype = params[:sub_order][:foodtype]
		@sub_order.quantity = params[:sub_order][:quantity]
		@price = params[:sub_order][:price]
		total = @price.to_i * @sub_order.quantity.to_i

		@sub_order.totalprice = total
		#@suborder.save!
		#@sub_order.foods << Food.find(params[:id])
		@sub_order.save!

		redirect_to(sub_orders_path(:c_id => id))
	end

	def destroy
		@sub_order = SubOrder.find(params[:id])
		@sub_order.destroy!
		redirect_to :action => :index	
	end

	def admin
		@sub_orders = SubOrder.where(:customer_order_id => params[:c_id])
		@cashouts = Cashout.where(:customer_order_id => params[:c_id])
		@delivery_charge = 40
	end
end
