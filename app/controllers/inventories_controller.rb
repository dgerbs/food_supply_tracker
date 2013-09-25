class InventoriesController < ApplicationController
	def index
		@inventory = Inventory.all
	end

	def show
		@inventory = Inventory.find(params[:id])
	end

	def new
		@inventory = Inventory.new
	end

	def create
		@inventory = Inventory.new(reg_params)
		if @inventory.nil?
			flash[:notice] = 'You entered incorrect information, make sure the field are properly filled'
			redirect_to new_inventory_path
		elsif @inventory.save
			flash[:notice] = 'You entered a record successfully'
			redirect_to inventories_path
		else
			render :new
		end
	end

	protected

	def reg_params
		params.require(:inventory).permit(
			:title,
			:description,
			:quantity
			)
	end
end
