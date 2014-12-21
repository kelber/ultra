class VehicleCategoriesController < ApplicationController

	before_action :find_vehicle_category, only: [:show, :destroy] 

	respond_to :html

	def index
		@vehicle_categories = VehicleCategory.all.order("name ASC")
	end

	def new
		@vehicle_category = VehicleCategory.new
	end

	def create
		@vehicle_category = VehicleCategory.new(vehicle_category_params)
		if @vehicle_category.save
			redirect_to @vehicle_category, notice: "Categoria criada com sucesso" 
		else
			render 'new'
		end
	end

	def destroy
		 @vehicle_category.destroy
    respond_with(@vehicle_category)
	end


	private

	def find_vehicle_category
	 	 @vehicle_category = VehicleCategory.find(params[:id])
	end

	def vehicle_category_params
		params.require(:vehicle_category).permit(:name)
	end




end
