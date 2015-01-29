class CategoriesController < ApplicationController

	def index
	
	end

	def import
    	Category.import(params[:file])
    	redirect_to root_url, notice: "Categories imported."
  	end
end
