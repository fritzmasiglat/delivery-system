class CustomerOrdersController < ApplicationController
	attr_accessor :id, :c_id

	def index
		@customer_orders = CustomerOrder.all
	end

	def new
		@customer_order = CustomerOrder.new
	end

	def create
		@customer_order = CustomerOrder.new
		@customer_order.customer_name = params[:customer_order][:customer_name]
		@customer_order.contact_number = params[:customer_order][:contact_number]
		@customer_order.email = params[:customer_order][:email]
		@customer_order.address = params[:customer_order][:address]
		@customer_order.order_date = params[:customer_order][:order_date]
		
		if @customer_order.save
		id = @customer_order.id
		redirect_to(sub_orders_path(:c_id => id))

		else
			render :new
		end
	end

	def edit
		@customer_order = CustomerOrder.find(params[:id])
	end

	def update
		@customer_order = CustomerOrder.find(params[:id])
		@customer_order.customer_name = params[:customer_order][:customer_name]
		@customer_order.contact_number = params[:customer_order][:contact_number]
		@customer_order.email = params[:customer_order][:email]
		@customer_order.address = params[:customer_order][:address]
		@customer_order.order_date = params[:customer_order][:order_date]
		
		if @customer_order.save
		id = @customer_order.id
		redirect_to :action => :admin

		else
			render :edit
		end
	end

	def destroy
		@customer_order = CustomerOrder.find(params[:id])
		@customer_order.destroy!
		redirect_to :action => :admin
	end

	def admin
		@customer_orders = CustomerOrder.all
	end

end
