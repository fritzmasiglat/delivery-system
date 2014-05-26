class SubordersController < ApplicationController
	attr_accessor :food, :sub_order

	def index
		@foods = Food.all
		@suborders = Suborder.all
	end

	def new
		#@food = Food.find(params[:id])
		#@food = Food.all
		@food = Food.find(params[:id])
		@suborder = Suborder.new
	end

	def create
		@suborder = Suborder.new
		@suborder.name = params[:suborder][:name]
		@suborder.foodtype = params[:suborder][:foodtype]
		@suborder.quantity = params[:suborder][:quantity]
		@price = params[:suborder][:price]
		#total = @food.price * @suborder.quantity

		@suborder.totalprice = params[:suborder][total]
		#@suborder.save!
		#@sub_order.foods << Food.find(params[:id])
		@suborder.save!

		redirect_to :action => :index
	end
end
