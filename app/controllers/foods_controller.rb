class FoodsController < ApplicationController
	def index
		@foods = Food.all
	end

	def show
		@food = Food.find(params[:id])
	end

	def new
		@food = Food.new
	end

	def create
		@food = Food.new
		@food.name = params[:food][:name]
		@food.foodtype = params[:food][:foodtype]
		@food.price = params[:food][:price]

		if @food.save
			redirect_to :action => :index
		else
			render :new
		end
	end

	def edit
		@food = Food.find(params[:id])
	end

	def update
		@food = Food.find(params[:id])
		@food.name = params[:food][:name]
		@food.foodtype = params[:food][:foodtype]
		@food.price = params[:food][:price]

		if @food.save
			redirect_to :action => :index
		else
			render :edit
		end
	end
end
