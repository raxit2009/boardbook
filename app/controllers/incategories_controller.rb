class IncategoriesController < ApplicationController
	def index
	
	end

	def import
	  Incategory.import(params[:file])
	  redirect_to root_url, notice: "Expanse imported."
	end

	def show
		@related_category = Category.find(params[:id])
		@related_incategory = Incategory.where("account_number =?", @related_category.account_number)
	end
end
