class FoodsController < ApplicationController
	before_action :set_food, only: [:show, :update, :destroy]
	respond_to :json

	def index
		@foods = Food.all

		respond_with @foods
	end

	def show
		respond_with @food
	end

	def create
		@food = Food.new(food_params)
		@food.save

		respond_with @food
	end

	def update
		@food.update(food_params)

		respond_with @food
	end

	def destroy
		@food.destroy

		respond_with @food
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_food
		@food = Food.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def food_params
		params.require(:food, :name).permit(:place)
	end
end